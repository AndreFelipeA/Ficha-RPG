class CharacterController < ApplicationController
    def index
        @item = Item.all
        user = User.find_by_id(session[:user_id])
        if user.isAdmin == true
            @characters = Character.all
        else
            @characters = user.characters
        end
    end



    def create
        @character = Character.create(character_params)
        @character.user = User.find_by_id(session[:user_id])
        @history = History.create(history_params)
        item = Item.find_by_name(params[:item_id])

        if @character.valid? && item.valid?
            @character.items << item
            item.characters << @character
            @character.build_history(history_params)
            @character.save
            redirect_to character_path
        else
            flash[:alert] = "Invalid email or password"
        end
    end

    def destroy
        character = Character.find(params[:id])
        if character.destroy!
            redirect_to character_path
        end
        
    end

    def update
        @character = Character.find(params[:id])
        @history = History.find_by_character_id(@character.id)
        if @character.update(params.require(:character).permit(:name, :classe, :str, :dex, :int, :con, :wis, :cha))
            if @history.update(params.require(:character).permit(:history, :city, :characteristics, :race))
                redirect_to character_path
            end
        end
            
     

    end

    def edit
        @item = Item.all
        @character = Character.find(params[:id])
        @itemCharacter = CharactersItem.find_by(params[:id])
        @history = History.find_by_character_id(@character.id)
        
    end
    
    def character_params
        params.permit(:name, :classe, :str, :dex, :int, :con, :wis, :cha)
    end

    def history_params
        params.permit(:history, :city, :characteristics, :race)
    end
end

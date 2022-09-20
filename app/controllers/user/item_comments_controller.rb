class User::ItemCommentsController < ApplicationController
    def create
        @item=Item.find(parames[:item_id])
        item_comment=current_user.item_comments.new(item_comment_params)
        item_comment.item_id=item.id
        item_comment.save
        redirect_to user_item_path(@item)
    end
    
    def destroy
        item_comment.find(params[:id]).destroy
        redirect_to user_item_path(@item)
    end
end

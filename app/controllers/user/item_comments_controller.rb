class User::ItemCommentsController < ApplicationController
    def create
        @item=Item.find(params[:item_id])
        item_comment=current_user.item_comments.new(item_comment_params)
        item_comment.item_id=@item.id
        item_comment.save
        redirect_to user_item_path(@item)
    end
    
    def destroy
        ItemComment.find(params[:id]).destroy
        @item=Item.find(params[:item_id])
        redirect_to user_item_path(@item)
    end
    
    private
    
    def item_comment_params
        params.require(:item_comment).permit(:item_comment)
    end
end

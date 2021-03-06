class NotificationsController < ApplicationController
    before_action :find_notification, only: %i[show edit update destroy change_status]
    before_action :authenticate_user!

    def index
        @notification = Notification.all.order('status DESC')
    end

    def new
        @notification = Notification.new
    end

    def create
        authorize! :create, :Notification
        values = notification_params
        values[:status] = 1;
        @notification = Notification.new(values)

        if @notification.save
            redirect_to notifications_path
        else
            render 'new'
        end
    end

    def change_status
      authorize! :update, :Book
      @notification.update(:status => 0)
      redirect_to notifications_path
    end

    def destroy
        authorize! :destroy, :Notification
        @notification.destroy
        redirect_to notifications_path
    end



    private
        def notification_params
            params.require(:notification).permit(:title,:description,:status)
        end

        def find_notification
            @notification = Notification.find(params[:id])
        end
end

class GroupsController < ApplicationController
  attr_reader :members, :group

  def create_groups
    @slices = Event.group_slices
    return unless @slices.present?

    Group.destroy_all unless Group.count.zero?
    @slices.each do |slice|
      @members = slice.map(&:employee)
      @group = Group.create(leader: leader)
      update_gids
    end
    redirect_to action: :index
  end

  def index
    @groups = Group.all
  end

  private

  def leader
    @members.sample
  end

  def update_gids
    @members.map { |member| member.update(group_id: @group.id) }
  end
end

module TasksHelper
  def completed?(task, user)
    task.users.exists?(user.id)
  end
end

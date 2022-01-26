
class BackupWorker
  include Sidekiq::Worker
  def perform(*args)
    `pg_dump $DATABASE_URL --file=/opt/backups/rmb_$(date +%Y-%m-%d-%H%M).sql`
  end
end


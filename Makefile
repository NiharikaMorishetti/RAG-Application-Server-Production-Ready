# Makefile - ADD THIS
.PHONY: server worker redis eval-collect eval-run eval-full

# Development servers
server:
	./start_server.sh

worker:
	./start_worker.sh

redis:
	./start_redis.sh

# Stop services
stop:
	./stopAll.sh

# Evaluation tasks
eval-collect:
	poetry run python evaluation/scripts/collect_data.py

eval-run:
	poetry run python evaluation/scripts/run_evaluation.py

eval-full: eval-collect eval-run
	@echo "✅ Evaluation complete!"
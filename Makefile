## http://korea.gnu.org/manual/release/make/make-sjp/make-ko_toc.html
.PHONY : help clean dump-postgres
.DEFAULT : xxx

DUMP-FILE := ${PWD}/postgres/dump/dump.sql
DUMP-FILE-EXISTENCE := $(shell find ${PWD}/postgres/dump/dump.sql)

## https://gist.github.com/prwhite/8168133#gistcomment-3785627
help: ## show help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

dump-postgres: ## Dump Real DB
ifneq ($(DUMP-FILE-EXISTENCE),$(DUMP-FILE))
	${PWD}/postgres/run.sh
else
	@echo "Dump file is exist"
endif
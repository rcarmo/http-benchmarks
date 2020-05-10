IMAGE_NAME?=golang:1.14-buster
BINARY_NAME?=gearbox

build:
	docker run --rm -v "${PWD}":/usr/src/${BINARY_NAME} -w /usr/src/${BINARY_NAME} ${IMAGE_NAME} make binary

binary:
	make deps
	go build -o ${BINARY_NAME} main.go

deps:
	go get -u github.com/abahmed/gearbox

clean:
	rm -f ${BINARY_NAME}
	docker rmi --force ${IMAGE_NAME}

serve:
	./${BINARY_NAME}  &> /dev/null
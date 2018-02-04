.PHONY: build cluster test

default: build

build:
	go build -o bin/swarm    github.com/CouponOne/Coupon.One/cmd/swarm
	go build -o bin/geth     github.com/CouponOne/Coupon.One/cmd/geth
	go build -o bin/bootnode github.com/CouponOne/Coupon.One/cmd/bootnode

cluster: build
	scripts/boot-cluster.sh

test:
	go test -v github.com/CouponOne/Coupon.One/swarm/...

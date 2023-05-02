hello:
	echo "Hello"

gen_new_service:
	go run main.go $(service_name)

build_admin_bff_image:
	docker build -f bff/admin_bff/Dockerfile -t public.ecr.aws/h3x4i1u8/admin-bff:$(shell date '+%Y%m%d%H%M%S') .

build_customer_bff_image:
	docker build -f bff/customer_bff/Dockerfile -t public.ecr.aws/h3x4i1u8/customer-bff:$(shell date '+%Y%m%d%H%M%S') .

build_shared_bff_image:
	docker build -f bff/shared_bff/Dockerfile -t public.ecr.aws/h3x4i1u8/shared-bff:$(shell date '+%Y%m%d%H%M%S') .

build_account_service_image:
	docker build -f account_service/Dockerfile -t public.ecr.aws/h3x4i1u8/account-service:$(shell date '+%Y%m%d%H%M%S') .

build_account_service_migration:
	docker build -f account_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/account-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_branch_service_image:
	docker build -f branch_service/Dockerfile -t public.ecr.aws/h3x4i1u8/branch-service:$(shell date '+%Y%m%d%H%M%S') .

build_branch_service_migration:
	docker build -f branch_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/branch-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_cart_service_image:
	docker build -f cart_service/Dockerfile -t public.ecr.aws/h3x4i1u8/cart-service:$(shell date '+%Y%m%d%H%M%S') .

build_cart_service_migration:
	docker build -f cart_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/cart-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_customer_service_image:
	docker build -f customer_service/Dockerfile -t public.ecr.aws/h3x4i1u8/customer-service:$(shell date '+%Y%m%d%H%M%S') .

build_customer_service_migration:
	docker build -f customer_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/customer-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_event_service_image:
	docker build -f event_service/Dockerfile -t public.ecr.aws/h3x4i1u8/event-service:$(shell date '+%Y%m%d%H%M%S') .

build_event_service_migration:
	docker build -f event_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/event-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_goods_service_image:
	docker build -f goods_service/Dockerfile -t public.ecr.aws/h3x4i1u8/goods-service:$(shell date '+%Y%m%d%H%M%S') .

build_goods_service_migration:
	docker build -f goods_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/goods-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_order_service_image:
	docker build -f order_service/Dockerfile -t public.ecr.aws/h3x4i1u8/order-service:$(shell date '+%Y%m%d%H%M%S') .

build_order_service_migration:
	docker build -f order_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/order-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_staff_service_image:
	docker build -f staff_service/Dockerfile -t public.ecr.aws/h3x4i1u8/staff-service:$(shell date '+%Y%m%d%H%M%S') .

build_staff_service_migration:
	docker build -f staff_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/staff-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_statistic_service_image:
	docker build -f statistic_service/Dockerfile -t public.ecr.aws/h3x4i1u8/statistic-service:$(shell date '+%Y%m%d%H%M%S') .

build_statistic_service_migration:
	docker build -f statistic_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/statistic-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

build_warehouse_service_image:
	docker build -f warehouse_service/Dockerfile -t public.ecr.aws/h3x4i1u8/warehouse-service:$(shell date '+%Y%m%d%H%M%S') .

build_warehouse_service_migration:
	docker build -f warehouse_service/Dockerfile.migration -t public.ecr.aws/h3x4i1u8/warehouse-service-db-migration:$(shell date '+%Y%m%d%H%M%S') .

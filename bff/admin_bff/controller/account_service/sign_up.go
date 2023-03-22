package account_service

import (
	"context"
	"store-bpel/account_service/schema"
	"store-bpel/bff/admin_bff/schema/account_service"
)

func (c *accountBffController) SignUp(ctx context.Context, request *account_service.SignUpRequest) error {
	return c.accountAdapter.SignUp(ctx, &schema.SignUpRequest{
		Username: request.Username,
		Password: request.Password,
		Role:     request.Role,
		Email:    request.Email,
		Name:     request.Name,
		Phone:    request.Phone,
		Gender:   request.Gender,
		Age:      request.Age,
		Street:   request.Street,
		Ward:     request.Ward,
		District: request.District,
		Province: request.Province,
	})
}

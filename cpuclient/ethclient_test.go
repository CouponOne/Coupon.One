// Copyright 2016 The go-conponone Authors
// This file is part of the go-conponone library.
//
// The go-conponone library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// The go-conponone library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with the go-conponone library. If not, see <http://www.gnu.org/licenses/>.

package ethclient

import "github.com/CouponOne/Coupon.One"

// Verify that Client implements the conponone interfaces.
var (
	_ = conponone.ChainReader(&Client{})
	_ = conponone.TransactionReader(&Client{})
	_ = conponone.ChainStateReader(&Client{})
	_ = conponone.ChainSyncReader(&Client{})
	_ = conponone.ContractCaller(&Client{})
	_ = conponone.GasEstimator(&Client{})
	_ = conponone.GasPricer(&Client{})
	_ = conponone.LogFilterer(&Client{})
	_ = conponone.PendingStateReader(&Client{})
	// _ = conponone.PendingStateEventer(&Client{})
	_ = conponone.PendingContractCaller(&Client{})
)

{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.WAFV2.GetPermissionPolicy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the IAM policy that is attached to the specified rule group.
--
-- You must be the owner of the rule group to perform this operation.
module Amazonka.WAFV2.GetPermissionPolicy
  ( -- * Creating a Request
    GetPermissionPolicy (..),
    newGetPermissionPolicy,

    -- * Request Lenses
    getPermissionPolicy_resourceArn,

    -- * Destructuring the Response
    GetPermissionPolicyResponse (..),
    newGetPermissionPolicyResponse,

    -- * Response Lenses
    getPermissionPolicyResponse_policy,
    getPermissionPolicyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WAFV2.Types

-- | /See:/ 'newGetPermissionPolicy' smart constructor.
data GetPermissionPolicy = GetPermissionPolicy'
  { -- | The Amazon Resource Name (ARN) of the rule group for which you want to
    -- get the policy.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPermissionPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'getPermissionPolicy_resourceArn' - The Amazon Resource Name (ARN) of the rule group for which you want to
-- get the policy.
newGetPermissionPolicy ::
  -- | 'resourceArn'
  Prelude.Text ->
  GetPermissionPolicy
newGetPermissionPolicy pResourceArn_ =
  GetPermissionPolicy' {resourceArn = pResourceArn_}

-- | The Amazon Resource Name (ARN) of the rule group for which you want to
-- get the policy.
getPermissionPolicy_resourceArn :: Lens.Lens' GetPermissionPolicy Prelude.Text
getPermissionPolicy_resourceArn = Lens.lens (\GetPermissionPolicy' {resourceArn} -> resourceArn) (\s@GetPermissionPolicy' {} a -> s {resourceArn = a} :: GetPermissionPolicy)

instance Core.AWSRequest GetPermissionPolicy where
  type
    AWSResponse GetPermissionPolicy =
      GetPermissionPolicyResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPermissionPolicyResponse'
            Prelude.<$> (x Core..?> "Policy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPermissionPolicy where
  hashWithSalt _salt GetPermissionPolicy' {..} =
    _salt `Prelude.hashWithSalt` resourceArn

instance Prelude.NFData GetPermissionPolicy where
  rnf GetPermissionPolicy' {..} =
    Prelude.rnf resourceArn

instance Core.ToHeaders GetPermissionPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSWAF_20190729.GetPermissionPolicy" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetPermissionPolicy where
  toJSON GetPermissionPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ResourceArn" Core..= resourceArn)]
      )

instance Core.ToPath GetPermissionPolicy where
  toPath = Prelude.const "/"

instance Core.ToQuery GetPermissionPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPermissionPolicyResponse' smart constructor.
data GetPermissionPolicyResponse = GetPermissionPolicyResponse'
  { -- | The IAM policy that is attached to the specified rule group.
    policy :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPermissionPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policy', 'getPermissionPolicyResponse_policy' - The IAM policy that is attached to the specified rule group.
--
-- 'httpStatus', 'getPermissionPolicyResponse_httpStatus' - The response's http status code.
newGetPermissionPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPermissionPolicyResponse
newGetPermissionPolicyResponse pHttpStatus_ =
  GetPermissionPolicyResponse'
    { policy =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The IAM policy that is attached to the specified rule group.
getPermissionPolicyResponse_policy :: Lens.Lens' GetPermissionPolicyResponse (Prelude.Maybe Prelude.Text)
getPermissionPolicyResponse_policy = Lens.lens (\GetPermissionPolicyResponse' {policy} -> policy) (\s@GetPermissionPolicyResponse' {} a -> s {policy = a} :: GetPermissionPolicyResponse)

-- | The response's http status code.
getPermissionPolicyResponse_httpStatus :: Lens.Lens' GetPermissionPolicyResponse Prelude.Int
getPermissionPolicyResponse_httpStatus = Lens.lens (\GetPermissionPolicyResponse' {httpStatus} -> httpStatus) (\s@GetPermissionPolicyResponse' {} a -> s {httpStatus = a} :: GetPermissionPolicyResponse)

instance Prelude.NFData GetPermissionPolicyResponse where
  rnf GetPermissionPolicyResponse' {..} =
    Prelude.rnf policy
      `Prelude.seq` Prelude.rnf httpStatus
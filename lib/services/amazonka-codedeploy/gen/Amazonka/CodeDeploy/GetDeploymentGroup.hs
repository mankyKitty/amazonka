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
-- Module      : Amazonka.CodeDeploy.GetDeploymentGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a deployment group.
module Amazonka.CodeDeploy.GetDeploymentGroup
  ( -- * Creating a Request
    GetDeploymentGroup (..),
    newGetDeploymentGroup,

    -- * Request Lenses
    getDeploymentGroup_applicationName,
    getDeploymentGroup_deploymentGroupName,

    -- * Destructuring the Response
    GetDeploymentGroupResponse (..),
    newGetDeploymentGroupResponse,

    -- * Response Lenses
    getDeploymentGroupResponse_deploymentGroupInfo,
    getDeploymentGroupResponse_httpStatus,
  )
where

import Amazonka.CodeDeploy.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input of a @GetDeploymentGroup@ operation.
--
-- /See:/ 'newGetDeploymentGroup' smart constructor.
data GetDeploymentGroup = GetDeploymentGroup'
  { -- | The name of an AWS CodeDeploy application associated with the IAM user
    -- or AWS account.
    applicationName :: Prelude.Text,
    -- | The name of a deployment group for the specified application.
    deploymentGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeploymentGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'getDeploymentGroup_applicationName' - The name of an AWS CodeDeploy application associated with the IAM user
-- or AWS account.
--
-- 'deploymentGroupName', 'getDeploymentGroup_deploymentGroupName' - The name of a deployment group for the specified application.
newGetDeploymentGroup ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'deploymentGroupName'
  Prelude.Text ->
  GetDeploymentGroup
newGetDeploymentGroup
  pApplicationName_
  pDeploymentGroupName_ =
    GetDeploymentGroup'
      { applicationName =
          pApplicationName_,
        deploymentGroupName = pDeploymentGroupName_
      }

-- | The name of an AWS CodeDeploy application associated with the IAM user
-- or AWS account.
getDeploymentGroup_applicationName :: Lens.Lens' GetDeploymentGroup Prelude.Text
getDeploymentGroup_applicationName = Lens.lens (\GetDeploymentGroup' {applicationName} -> applicationName) (\s@GetDeploymentGroup' {} a -> s {applicationName = a} :: GetDeploymentGroup)

-- | The name of a deployment group for the specified application.
getDeploymentGroup_deploymentGroupName :: Lens.Lens' GetDeploymentGroup Prelude.Text
getDeploymentGroup_deploymentGroupName = Lens.lens (\GetDeploymentGroup' {deploymentGroupName} -> deploymentGroupName) (\s@GetDeploymentGroup' {} a -> s {deploymentGroupName = a} :: GetDeploymentGroup)

instance Core.AWSRequest GetDeploymentGroup where
  type
    AWSResponse GetDeploymentGroup =
      GetDeploymentGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDeploymentGroupResponse'
            Prelude.<$> (x Core..?> "deploymentGroupInfo")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDeploymentGroup

instance Prelude.NFData GetDeploymentGroup

instance Core.ToHeaders GetDeploymentGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeDeploy_20141006.GetDeploymentGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetDeploymentGroup where
  toJSON GetDeploymentGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("applicationName" Core..= applicationName),
            Prelude.Just
              ("deploymentGroupName" Core..= deploymentGroupName)
          ]
      )

instance Core.ToPath GetDeploymentGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery GetDeploymentGroup where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a @GetDeploymentGroup@ operation.
--
-- /See:/ 'newGetDeploymentGroupResponse' smart constructor.
data GetDeploymentGroupResponse = GetDeploymentGroupResponse'
  { -- | Information about the deployment group.
    deploymentGroupInfo :: Prelude.Maybe DeploymentGroupInfo,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeploymentGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentGroupInfo', 'getDeploymentGroupResponse_deploymentGroupInfo' - Information about the deployment group.
--
-- 'httpStatus', 'getDeploymentGroupResponse_httpStatus' - The response's http status code.
newGetDeploymentGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDeploymentGroupResponse
newGetDeploymentGroupResponse pHttpStatus_ =
  GetDeploymentGroupResponse'
    { deploymentGroupInfo =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the deployment group.
getDeploymentGroupResponse_deploymentGroupInfo :: Lens.Lens' GetDeploymentGroupResponse (Prelude.Maybe DeploymentGroupInfo)
getDeploymentGroupResponse_deploymentGroupInfo = Lens.lens (\GetDeploymentGroupResponse' {deploymentGroupInfo} -> deploymentGroupInfo) (\s@GetDeploymentGroupResponse' {} a -> s {deploymentGroupInfo = a} :: GetDeploymentGroupResponse)

-- | The response's http status code.
getDeploymentGroupResponse_httpStatus :: Lens.Lens' GetDeploymentGroupResponse Prelude.Int
getDeploymentGroupResponse_httpStatus = Lens.lens (\GetDeploymentGroupResponse' {httpStatus} -> httpStatus) (\s@GetDeploymentGroupResponse' {} a -> s {httpStatus = a} :: GetDeploymentGroupResponse)

instance Prelude.NFData GetDeploymentGroupResponse
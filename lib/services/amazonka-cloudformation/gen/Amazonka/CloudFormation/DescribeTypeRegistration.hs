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
-- Module      : Amazonka.CloudFormation.DescribeTypeRegistration
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an extension\'s registration, including its
-- current status and type and version identifiers.
--
-- When you initiate a registration request using @ RegisterType @, you can
-- then use @ DescribeTypeRegistration @ to monitor the progress of that
-- registration request.
--
-- Once the registration request has completed, use @ DescribeType @ to
-- return detailed information about an extension.
module Amazonka.CloudFormation.DescribeTypeRegistration
  ( -- * Creating a Request
    DescribeTypeRegistration (..),
    newDescribeTypeRegistration,

    -- * Request Lenses
    describeTypeRegistration_registrationToken,

    -- * Destructuring the Response
    DescribeTypeRegistrationResponse (..),
    newDescribeTypeRegistrationResponse,

    -- * Response Lenses
    describeTypeRegistrationResponse_description,
    describeTypeRegistrationResponse_progressStatus,
    describeTypeRegistrationResponse_typeArn,
    describeTypeRegistrationResponse_typeVersionArn,
    describeTypeRegistrationResponse_httpStatus,
  )
where

import Amazonka.CloudFormation.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeTypeRegistration' smart constructor.
data DescribeTypeRegistration = DescribeTypeRegistration'
  { -- | The identifier for this registration request.
    --
    -- This registration token is generated by CloudFormation when you initiate
    -- a registration request using @ RegisterType @.
    registrationToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTypeRegistration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registrationToken', 'describeTypeRegistration_registrationToken' - The identifier for this registration request.
--
-- This registration token is generated by CloudFormation when you initiate
-- a registration request using @ RegisterType @.
newDescribeTypeRegistration ::
  -- | 'registrationToken'
  Prelude.Text ->
  DescribeTypeRegistration
newDescribeTypeRegistration pRegistrationToken_ =
  DescribeTypeRegistration'
    { registrationToken =
        pRegistrationToken_
    }

-- | The identifier for this registration request.
--
-- This registration token is generated by CloudFormation when you initiate
-- a registration request using @ RegisterType @.
describeTypeRegistration_registrationToken :: Lens.Lens' DescribeTypeRegistration Prelude.Text
describeTypeRegistration_registrationToken = Lens.lens (\DescribeTypeRegistration' {registrationToken} -> registrationToken) (\s@DescribeTypeRegistration' {} a -> s {registrationToken = a} :: DescribeTypeRegistration)

instance Core.AWSRequest DescribeTypeRegistration where
  type
    AWSResponse DescribeTypeRegistration =
      DescribeTypeRegistrationResponse
  request overrides =
    Request.postQuery (overrides defaultService)
  response =
    Response.receiveXMLWrapper
      "DescribeTypeRegistrationResult"
      ( \s h x ->
          DescribeTypeRegistrationResponse'
            Prelude.<$> (x Data..@? "Description")
            Prelude.<*> (x Data..@? "ProgressStatus")
            Prelude.<*> (x Data..@? "TypeArn")
            Prelude.<*> (x Data..@? "TypeVersionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeTypeRegistration where
  hashWithSalt _salt DescribeTypeRegistration' {..} =
    _salt `Prelude.hashWithSalt` registrationToken

instance Prelude.NFData DescribeTypeRegistration where
  rnf DescribeTypeRegistration' {..} =
    Prelude.rnf registrationToken

instance Data.ToHeaders DescribeTypeRegistration where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath DescribeTypeRegistration where
  toPath = Prelude.const "/"

instance Data.ToQuery DescribeTypeRegistration where
  toQuery DescribeTypeRegistration' {..} =
    Prelude.mconcat
      [ "Action"
          Data.=: ("DescribeTypeRegistration" :: Prelude.ByteString),
        "Version"
          Data.=: ("2010-05-15" :: Prelude.ByteString),
        "RegistrationToken" Data.=: registrationToken
      ]

-- | /See:/ 'newDescribeTypeRegistrationResponse' smart constructor.
data DescribeTypeRegistrationResponse = DescribeTypeRegistrationResponse'
  { -- | The description of the extension registration request.
    description :: Prelude.Maybe Prelude.Text,
    -- | The current status of the extension registration request.
    progressStatus :: Prelude.Maybe RegistrationStatus,
    -- | The Amazon Resource Name (ARN) of the extension being registered.
    --
    -- For registration requests with a @ProgressStatus@ of other than
    -- @COMPLETE@, this will be @null@.
    typeArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of this specific version of the extension
    -- being registered.
    --
    -- For registration requests with a @ProgressStatus@ of other than
    -- @COMPLETE@, this will be @null@.
    typeVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTypeRegistrationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'describeTypeRegistrationResponse_description' - The description of the extension registration request.
--
-- 'progressStatus', 'describeTypeRegistrationResponse_progressStatus' - The current status of the extension registration request.
--
-- 'typeArn', 'describeTypeRegistrationResponse_typeArn' - The Amazon Resource Name (ARN) of the extension being registered.
--
-- For registration requests with a @ProgressStatus@ of other than
-- @COMPLETE@, this will be @null@.
--
-- 'typeVersionArn', 'describeTypeRegistrationResponse_typeVersionArn' - The Amazon Resource Name (ARN) of this specific version of the extension
-- being registered.
--
-- For registration requests with a @ProgressStatus@ of other than
-- @COMPLETE@, this will be @null@.
--
-- 'httpStatus', 'describeTypeRegistrationResponse_httpStatus' - The response's http status code.
newDescribeTypeRegistrationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTypeRegistrationResponse
newDescribeTypeRegistrationResponse pHttpStatus_ =
  DescribeTypeRegistrationResponse'
    { description =
        Prelude.Nothing,
      progressStatus = Prelude.Nothing,
      typeArn = Prelude.Nothing,
      typeVersionArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The description of the extension registration request.
describeTypeRegistrationResponse_description :: Lens.Lens' DescribeTypeRegistrationResponse (Prelude.Maybe Prelude.Text)
describeTypeRegistrationResponse_description = Lens.lens (\DescribeTypeRegistrationResponse' {description} -> description) (\s@DescribeTypeRegistrationResponse' {} a -> s {description = a} :: DescribeTypeRegistrationResponse)

-- | The current status of the extension registration request.
describeTypeRegistrationResponse_progressStatus :: Lens.Lens' DescribeTypeRegistrationResponse (Prelude.Maybe RegistrationStatus)
describeTypeRegistrationResponse_progressStatus = Lens.lens (\DescribeTypeRegistrationResponse' {progressStatus} -> progressStatus) (\s@DescribeTypeRegistrationResponse' {} a -> s {progressStatus = a} :: DescribeTypeRegistrationResponse)

-- | The Amazon Resource Name (ARN) of the extension being registered.
--
-- For registration requests with a @ProgressStatus@ of other than
-- @COMPLETE@, this will be @null@.
describeTypeRegistrationResponse_typeArn :: Lens.Lens' DescribeTypeRegistrationResponse (Prelude.Maybe Prelude.Text)
describeTypeRegistrationResponse_typeArn = Lens.lens (\DescribeTypeRegistrationResponse' {typeArn} -> typeArn) (\s@DescribeTypeRegistrationResponse' {} a -> s {typeArn = a} :: DescribeTypeRegistrationResponse)

-- | The Amazon Resource Name (ARN) of this specific version of the extension
-- being registered.
--
-- For registration requests with a @ProgressStatus@ of other than
-- @COMPLETE@, this will be @null@.
describeTypeRegistrationResponse_typeVersionArn :: Lens.Lens' DescribeTypeRegistrationResponse (Prelude.Maybe Prelude.Text)
describeTypeRegistrationResponse_typeVersionArn = Lens.lens (\DescribeTypeRegistrationResponse' {typeVersionArn} -> typeVersionArn) (\s@DescribeTypeRegistrationResponse' {} a -> s {typeVersionArn = a} :: DescribeTypeRegistrationResponse)

-- | The response's http status code.
describeTypeRegistrationResponse_httpStatus :: Lens.Lens' DescribeTypeRegistrationResponse Prelude.Int
describeTypeRegistrationResponse_httpStatus = Lens.lens (\DescribeTypeRegistrationResponse' {httpStatus} -> httpStatus) (\s@DescribeTypeRegistrationResponse' {} a -> s {httpStatus = a} :: DescribeTypeRegistrationResponse)

instance
  Prelude.NFData
    DescribeTypeRegistrationResponse
  where
  rnf DescribeTypeRegistrationResponse' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf progressStatus
      `Prelude.seq` Prelude.rnf typeArn
      `Prelude.seq` Prelude.rnf typeVersionArn
      `Prelude.seq` Prelude.rnf httpStatus

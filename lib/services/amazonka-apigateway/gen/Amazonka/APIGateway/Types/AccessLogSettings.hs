{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.APIGateway.Types.AccessLogSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.APIGateway.Types.AccessLogSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Access log settings, including the access log format and access log
-- destination ARN.
--
-- /See:/ 'newAccessLogSettings' smart constructor.
data AccessLogSettings = AccessLogSettings'
  { -- | A single line format of the access logs of data, as specified by
    -- selected $context variables. The format must include at least
    -- @$context.requestId@.
    format :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the CloudWatch Logs log group or
    -- Kinesis Data Firehose delivery stream to receive access logs. If you
    -- specify a Kinesis Data Firehose delivery stream, the stream name must
    -- begin with @amazon-apigateway-@.
    destinationArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccessLogSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'format', 'accessLogSettings_format' - A single line format of the access logs of data, as specified by
-- selected $context variables. The format must include at least
-- @$context.requestId@.
--
-- 'destinationArn', 'accessLogSettings_destinationArn' - The Amazon Resource Name (ARN) of the CloudWatch Logs log group or
-- Kinesis Data Firehose delivery stream to receive access logs. If you
-- specify a Kinesis Data Firehose delivery stream, the stream name must
-- begin with @amazon-apigateway-@.
newAccessLogSettings ::
  AccessLogSettings
newAccessLogSettings =
  AccessLogSettings'
    { format = Prelude.Nothing,
      destinationArn = Prelude.Nothing
    }

-- | A single line format of the access logs of data, as specified by
-- selected $context variables. The format must include at least
-- @$context.requestId@.
accessLogSettings_format :: Lens.Lens' AccessLogSettings (Prelude.Maybe Prelude.Text)
accessLogSettings_format = Lens.lens (\AccessLogSettings' {format} -> format) (\s@AccessLogSettings' {} a -> s {format = a} :: AccessLogSettings)

-- | The Amazon Resource Name (ARN) of the CloudWatch Logs log group or
-- Kinesis Data Firehose delivery stream to receive access logs. If you
-- specify a Kinesis Data Firehose delivery stream, the stream name must
-- begin with @amazon-apigateway-@.
accessLogSettings_destinationArn :: Lens.Lens' AccessLogSettings (Prelude.Maybe Prelude.Text)
accessLogSettings_destinationArn = Lens.lens (\AccessLogSettings' {destinationArn} -> destinationArn) (\s@AccessLogSettings' {} a -> s {destinationArn = a} :: AccessLogSettings)

instance Core.FromJSON AccessLogSettings where
  parseJSON =
    Core.withObject
      "AccessLogSettings"
      ( \x ->
          AccessLogSettings'
            Prelude.<$> (x Core..:? "format")
            Prelude.<*> (x Core..:? "destinationArn")
      )

instance Prelude.Hashable AccessLogSettings where
  hashWithSalt _salt AccessLogSettings' {..} =
    _salt `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` destinationArn

instance Prelude.NFData AccessLogSettings where
  rnf AccessLogSettings' {..} =
    Prelude.rnf format
      `Prelude.seq` Prelude.rnf destinationArn

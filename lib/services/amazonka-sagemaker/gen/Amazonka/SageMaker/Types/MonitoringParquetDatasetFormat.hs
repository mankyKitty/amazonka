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
-- Module      : Amazonka.SageMaker.Types.MonitoringParquetDatasetFormat
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.MonitoringParquetDatasetFormat where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Represents the Parquet dataset format used when running a monitoring
-- job.
--
-- /See:/ 'newMonitoringParquetDatasetFormat' smart constructor.
data MonitoringParquetDatasetFormat = MonitoringParquetDatasetFormat'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MonitoringParquetDatasetFormat' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newMonitoringParquetDatasetFormat ::
  MonitoringParquetDatasetFormat
newMonitoringParquetDatasetFormat =
  MonitoringParquetDatasetFormat'

instance Data.FromJSON MonitoringParquetDatasetFormat where
  parseJSON =
    Data.withObject
      "MonitoringParquetDatasetFormat"
      (\x -> Prelude.pure MonitoringParquetDatasetFormat')

instance
  Prelude.Hashable
    MonitoringParquetDatasetFormat
  where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance
  Prelude.NFData
    MonitoringParquetDatasetFormat
  where
  rnf _ = ()

instance Data.ToJSON MonitoringParquetDatasetFormat where
  toJSON = Prelude.const (Data.Object Prelude.mempty)

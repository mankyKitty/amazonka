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
-- Module      : Amazonka.EC2.Types.DescribeFastLaunchImagesSuccessItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.DescribeFastLaunchImagesSuccessItem where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.FastLaunchLaunchTemplateSpecificationResponse
import Amazonka.EC2.Types.FastLaunchResourceType
import Amazonka.EC2.Types.FastLaunchSnapshotConfigurationResponse
import Amazonka.EC2.Types.FastLaunchStateCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describe details about a fast-launch enabled Windows image that meets
-- the requested criteria. Criteria are defined by the
-- @DescribeFastLaunchImages@ action filters.
--
-- /See:/ 'newDescribeFastLaunchImagesSuccessItem' smart constructor.
data DescribeFastLaunchImagesSuccessItem = DescribeFastLaunchImagesSuccessItem'
  { -- | The resource type that is used for pre-provisioning the Windows AMI.
    -- Supported values include: @snapshot@.
    resourceType :: Prelude.Maybe FastLaunchResourceType,
    -- | The owner ID for the fast-launch enabled Windows AMI.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | The launch template that the fast-launch enabled Windows AMI uses when
    -- it launches Windows instances from pre-provisioned snapshots.
    launchTemplate :: Prelude.Maybe FastLaunchLaunchTemplateSpecificationResponse,
    -- | The time that faster launching for the Windows AMI changed to the
    -- current state.
    stateTransitionTime :: Prelude.Maybe Core.ISO8601,
    -- | The current state of faster launching for the specified Windows AMI.
    state :: Prelude.Maybe FastLaunchStateCode,
    -- | The reason that faster launching for the Windows AMI changed to the
    -- current state.
    stateTransitionReason :: Prelude.Maybe Prelude.Text,
    -- | A group of parameters that are used for pre-provisioning the associated
    -- Windows AMI using snapshots.
    snapshotConfiguration :: Prelude.Maybe FastLaunchSnapshotConfigurationResponse,
    -- | The maximum number of parallel instances that are launched for creating
    -- resources.
    maxParallelLaunches :: Prelude.Maybe Prelude.Int,
    -- | The image ID that identifies the fast-launch enabled Windows image.
    imageId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFastLaunchImagesSuccessItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'describeFastLaunchImagesSuccessItem_resourceType' - The resource type that is used for pre-provisioning the Windows AMI.
-- Supported values include: @snapshot@.
--
-- 'ownerId', 'describeFastLaunchImagesSuccessItem_ownerId' - The owner ID for the fast-launch enabled Windows AMI.
--
-- 'launchTemplate', 'describeFastLaunchImagesSuccessItem_launchTemplate' - The launch template that the fast-launch enabled Windows AMI uses when
-- it launches Windows instances from pre-provisioned snapshots.
--
-- 'stateTransitionTime', 'describeFastLaunchImagesSuccessItem_stateTransitionTime' - The time that faster launching for the Windows AMI changed to the
-- current state.
--
-- 'state', 'describeFastLaunchImagesSuccessItem_state' - The current state of faster launching for the specified Windows AMI.
--
-- 'stateTransitionReason', 'describeFastLaunchImagesSuccessItem_stateTransitionReason' - The reason that faster launching for the Windows AMI changed to the
-- current state.
--
-- 'snapshotConfiguration', 'describeFastLaunchImagesSuccessItem_snapshotConfiguration' - A group of parameters that are used for pre-provisioning the associated
-- Windows AMI using snapshots.
--
-- 'maxParallelLaunches', 'describeFastLaunchImagesSuccessItem_maxParallelLaunches' - The maximum number of parallel instances that are launched for creating
-- resources.
--
-- 'imageId', 'describeFastLaunchImagesSuccessItem_imageId' - The image ID that identifies the fast-launch enabled Windows image.
newDescribeFastLaunchImagesSuccessItem ::
  DescribeFastLaunchImagesSuccessItem
newDescribeFastLaunchImagesSuccessItem =
  DescribeFastLaunchImagesSuccessItem'
    { resourceType =
        Prelude.Nothing,
      ownerId = Prelude.Nothing,
      launchTemplate = Prelude.Nothing,
      stateTransitionTime = Prelude.Nothing,
      state = Prelude.Nothing,
      stateTransitionReason =
        Prelude.Nothing,
      snapshotConfiguration =
        Prelude.Nothing,
      maxParallelLaunches = Prelude.Nothing,
      imageId = Prelude.Nothing
    }

-- | The resource type that is used for pre-provisioning the Windows AMI.
-- Supported values include: @snapshot@.
describeFastLaunchImagesSuccessItem_resourceType :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe FastLaunchResourceType)
describeFastLaunchImagesSuccessItem_resourceType = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {resourceType} -> resourceType) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {resourceType = a} :: DescribeFastLaunchImagesSuccessItem)

-- | The owner ID for the fast-launch enabled Windows AMI.
describeFastLaunchImagesSuccessItem_ownerId :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe Prelude.Text)
describeFastLaunchImagesSuccessItem_ownerId = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {ownerId} -> ownerId) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {ownerId = a} :: DescribeFastLaunchImagesSuccessItem)

-- | The launch template that the fast-launch enabled Windows AMI uses when
-- it launches Windows instances from pre-provisioned snapshots.
describeFastLaunchImagesSuccessItem_launchTemplate :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe FastLaunchLaunchTemplateSpecificationResponse)
describeFastLaunchImagesSuccessItem_launchTemplate = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {launchTemplate} -> launchTemplate) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {launchTemplate = a} :: DescribeFastLaunchImagesSuccessItem)

-- | The time that faster launching for the Windows AMI changed to the
-- current state.
describeFastLaunchImagesSuccessItem_stateTransitionTime :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe Prelude.UTCTime)
describeFastLaunchImagesSuccessItem_stateTransitionTime = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {stateTransitionTime} -> stateTransitionTime) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {stateTransitionTime = a} :: DescribeFastLaunchImagesSuccessItem) Prelude.. Lens.mapping Core._Time

-- | The current state of faster launching for the specified Windows AMI.
describeFastLaunchImagesSuccessItem_state :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe FastLaunchStateCode)
describeFastLaunchImagesSuccessItem_state = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {state} -> state) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {state = a} :: DescribeFastLaunchImagesSuccessItem)

-- | The reason that faster launching for the Windows AMI changed to the
-- current state.
describeFastLaunchImagesSuccessItem_stateTransitionReason :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe Prelude.Text)
describeFastLaunchImagesSuccessItem_stateTransitionReason = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {stateTransitionReason} -> stateTransitionReason) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {stateTransitionReason = a} :: DescribeFastLaunchImagesSuccessItem)

-- | A group of parameters that are used for pre-provisioning the associated
-- Windows AMI using snapshots.
describeFastLaunchImagesSuccessItem_snapshotConfiguration :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe FastLaunchSnapshotConfigurationResponse)
describeFastLaunchImagesSuccessItem_snapshotConfiguration = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {snapshotConfiguration} -> snapshotConfiguration) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {snapshotConfiguration = a} :: DescribeFastLaunchImagesSuccessItem)

-- | The maximum number of parallel instances that are launched for creating
-- resources.
describeFastLaunchImagesSuccessItem_maxParallelLaunches :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe Prelude.Int)
describeFastLaunchImagesSuccessItem_maxParallelLaunches = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {maxParallelLaunches} -> maxParallelLaunches) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {maxParallelLaunches = a} :: DescribeFastLaunchImagesSuccessItem)

-- | The image ID that identifies the fast-launch enabled Windows image.
describeFastLaunchImagesSuccessItem_imageId :: Lens.Lens' DescribeFastLaunchImagesSuccessItem (Prelude.Maybe Prelude.Text)
describeFastLaunchImagesSuccessItem_imageId = Lens.lens (\DescribeFastLaunchImagesSuccessItem' {imageId} -> imageId) (\s@DescribeFastLaunchImagesSuccessItem' {} a -> s {imageId = a} :: DescribeFastLaunchImagesSuccessItem)

instance
  Core.FromXML
    DescribeFastLaunchImagesSuccessItem
  where
  parseXML x =
    DescribeFastLaunchImagesSuccessItem'
      Prelude.<$> (x Core..@? "resourceType")
      Prelude.<*> (x Core..@? "ownerId")
      Prelude.<*> (x Core..@? "launchTemplate")
      Prelude.<*> (x Core..@? "stateTransitionTime")
      Prelude.<*> (x Core..@? "state")
      Prelude.<*> (x Core..@? "stateTransitionReason")
      Prelude.<*> (x Core..@? "snapshotConfiguration")
      Prelude.<*> (x Core..@? "maxParallelLaunches")
      Prelude.<*> (x Core..@? "imageId")

instance
  Prelude.Hashable
    DescribeFastLaunchImagesSuccessItem
  where
  hashWithSalt
    _salt
    DescribeFastLaunchImagesSuccessItem' {..} =
      _salt `Prelude.hashWithSalt` resourceType
        `Prelude.hashWithSalt` ownerId
        `Prelude.hashWithSalt` launchTemplate
        `Prelude.hashWithSalt` stateTransitionTime
        `Prelude.hashWithSalt` state
        `Prelude.hashWithSalt` stateTransitionReason
        `Prelude.hashWithSalt` snapshotConfiguration
        `Prelude.hashWithSalt` maxParallelLaunches
        `Prelude.hashWithSalt` imageId

instance
  Prelude.NFData
    DescribeFastLaunchImagesSuccessItem
  where
  rnf DescribeFastLaunchImagesSuccessItem' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf ownerId
      `Prelude.seq` Prelude.rnf launchTemplate
      `Prelude.seq` Prelude.rnf stateTransitionTime
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf stateTransitionReason
      `Prelude.seq` Prelude.rnf snapshotConfiguration
      `Prelude.seq` Prelude.rnf maxParallelLaunches
      `Prelude.seq` Prelude.rnf imageId

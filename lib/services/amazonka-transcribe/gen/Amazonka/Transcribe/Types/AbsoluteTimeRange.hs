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
-- Module      : Amazonka.Transcribe.Types.AbsoluteTimeRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.AbsoluteTimeRange where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A time range, in milliseconds, between two points in your media file.
--
-- You can use @StartTime@ and @EndTime@ to search a custom segment. For
-- example, setting @StartTime@ to 10000 and @EndTime@ to 50000 only
-- searches for your specified criteria in the audio contained between the
-- 10,000 millisecond mark and the 50,000 millisecond mark of your media
-- file. You must use @StartTime@ and @EndTime@ as a set; that is, if you
-- include one, you must include both.
--
-- You can use also @First@ to search from the start of the audio until the
-- time you specify, or @Last@ to search from the time you specify until
-- the end of the audio. For example, setting @First@ to 50000 only
-- searches for your specified criteria in the audio contained between the
-- start of the media file to the 50,000 millisecond mark. You can use
-- @First@ and @Last@ independently of each other.
--
-- If you prefer to use percentage instead of milliseconds, see .
--
-- /See:/ 'newAbsoluteTimeRange' smart constructor.
data AbsoluteTimeRange = AbsoluteTimeRange'
  { -- | The time, in milliseconds, when Amazon Transcribe stops searching for
    -- the specified criteria in your audio. If you include @EndTime@ in your
    -- request, you must also include @StartTime@.
    endTime :: Prelude.Maybe Prelude.Natural,
    -- | The time, in milliseconds, from the value you specify until the end of
    -- your media file in which Amazon Transcribe searches for your specified
    -- criteria.
    last :: Prelude.Maybe Prelude.Natural,
    -- | The time, in milliseconds, from the start of your media file until the
    -- value you specify in which Amazon Transcribe searches for your specified
    -- criteria.
    first :: Prelude.Maybe Prelude.Natural,
    -- | The time, in milliseconds, when Amazon Transcribe starts searching for
    -- the specified criteria in your audio. If you include @StartTime@ in your
    -- request, you must also include @EndTime@.
    startTime :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AbsoluteTimeRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endTime', 'absoluteTimeRange_endTime' - The time, in milliseconds, when Amazon Transcribe stops searching for
-- the specified criteria in your audio. If you include @EndTime@ in your
-- request, you must also include @StartTime@.
--
-- 'last', 'absoluteTimeRange_last' - The time, in milliseconds, from the value you specify until the end of
-- your media file in which Amazon Transcribe searches for your specified
-- criteria.
--
-- 'first', 'absoluteTimeRange_first' - The time, in milliseconds, from the start of your media file until the
-- value you specify in which Amazon Transcribe searches for your specified
-- criteria.
--
-- 'startTime', 'absoluteTimeRange_startTime' - The time, in milliseconds, when Amazon Transcribe starts searching for
-- the specified criteria in your audio. If you include @StartTime@ in your
-- request, you must also include @EndTime@.
newAbsoluteTimeRange ::
  AbsoluteTimeRange
newAbsoluteTimeRange =
  AbsoluteTimeRange'
    { endTime = Prelude.Nothing,
      last = Prelude.Nothing,
      first = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | The time, in milliseconds, when Amazon Transcribe stops searching for
-- the specified criteria in your audio. If you include @EndTime@ in your
-- request, you must also include @StartTime@.
absoluteTimeRange_endTime :: Lens.Lens' AbsoluteTimeRange (Prelude.Maybe Prelude.Natural)
absoluteTimeRange_endTime = Lens.lens (\AbsoluteTimeRange' {endTime} -> endTime) (\s@AbsoluteTimeRange' {} a -> s {endTime = a} :: AbsoluteTimeRange)

-- | The time, in milliseconds, from the value you specify until the end of
-- your media file in which Amazon Transcribe searches for your specified
-- criteria.
absoluteTimeRange_last :: Lens.Lens' AbsoluteTimeRange (Prelude.Maybe Prelude.Natural)
absoluteTimeRange_last = Lens.lens (\AbsoluteTimeRange' {last} -> last) (\s@AbsoluteTimeRange' {} a -> s {last = a} :: AbsoluteTimeRange)

-- | The time, in milliseconds, from the start of your media file until the
-- value you specify in which Amazon Transcribe searches for your specified
-- criteria.
absoluteTimeRange_first :: Lens.Lens' AbsoluteTimeRange (Prelude.Maybe Prelude.Natural)
absoluteTimeRange_first = Lens.lens (\AbsoluteTimeRange' {first} -> first) (\s@AbsoluteTimeRange' {} a -> s {first = a} :: AbsoluteTimeRange)

-- | The time, in milliseconds, when Amazon Transcribe starts searching for
-- the specified criteria in your audio. If you include @StartTime@ in your
-- request, you must also include @EndTime@.
absoluteTimeRange_startTime :: Lens.Lens' AbsoluteTimeRange (Prelude.Maybe Prelude.Natural)
absoluteTimeRange_startTime = Lens.lens (\AbsoluteTimeRange' {startTime} -> startTime) (\s@AbsoluteTimeRange' {} a -> s {startTime = a} :: AbsoluteTimeRange)

instance Core.FromJSON AbsoluteTimeRange where
  parseJSON =
    Core.withObject
      "AbsoluteTimeRange"
      ( \x ->
          AbsoluteTimeRange'
            Prelude.<$> (x Core..:? "EndTime")
            Prelude.<*> (x Core..:? "Last")
            Prelude.<*> (x Core..:? "First")
            Prelude.<*> (x Core..:? "StartTime")
      )

instance Prelude.Hashable AbsoluteTimeRange where
  hashWithSalt _salt AbsoluteTimeRange' {..} =
    _salt `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` last
      `Prelude.hashWithSalt` first
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData AbsoluteTimeRange where
  rnf AbsoluteTimeRange' {..} =
    Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf last
      `Prelude.seq` Prelude.rnf first
      `Prelude.seq` Prelude.rnf startTime

instance Core.ToJSON AbsoluteTimeRange where
  toJSON AbsoluteTimeRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EndTime" Core..=) Prelude.<$> endTime,
            ("Last" Core..=) Prelude.<$> last,
            ("First" Core..=) Prelude.<$> first,
            ("StartTime" Core..=) Prelude.<$> startTime
          ]
      )

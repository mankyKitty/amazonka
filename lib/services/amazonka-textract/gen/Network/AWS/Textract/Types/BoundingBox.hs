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
-- Module      : Network.AWS.Textract.Types.BoundingBox
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Textract.Types.BoundingBox where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The bounding box around the detected page, text, key-value pair, table,
-- table cell, or selection element on a document page. The @left@
-- (x-coordinate) and @top@ (y-coordinate) are coordinates that represent
-- the top and left sides of the bounding box. Note that the upper-left
-- corner of the image is the origin (0,0).
--
-- The @top@ and @left@ values returned are ratios of the overall document
-- page size. For example, if the input image is 700 x 200 pixels, and the
-- top-left coordinate of the bounding box is 350 x 50 pixels, the API
-- returns a @left@ value of 0.5 (350\/700) and a @top@ value of 0.25
-- (50\/200).
--
-- The @width@ and @height@ values represent the dimensions of the bounding
-- box as a ratio of the overall document page dimension. For example, if
-- the document page size is 700 x 200 pixels, and the bounding box width
-- is 70 pixels, the width returned is 0.1.
--
-- /See:/ 'newBoundingBox' smart constructor.
data BoundingBox = BoundingBox'
  { -- | The height of the bounding box as a ratio of the overall document page
    -- height.
    height :: Prelude.Maybe Prelude.Double,
    -- | The width of the bounding box as a ratio of the overall document page
    -- width.
    width :: Prelude.Maybe Prelude.Double,
    -- | The left coordinate of the bounding box as a ratio of overall document
    -- page width.
    left :: Prelude.Maybe Prelude.Double,
    -- | The top coordinate of the bounding box as a ratio of overall document
    -- page height.
    top :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BoundingBox' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'height', 'boundingBox_height' - The height of the bounding box as a ratio of the overall document page
-- height.
--
-- 'width', 'boundingBox_width' - The width of the bounding box as a ratio of the overall document page
-- width.
--
-- 'left', 'boundingBox_left' - The left coordinate of the bounding box as a ratio of overall document
-- page width.
--
-- 'top', 'boundingBox_top' - The top coordinate of the bounding box as a ratio of overall document
-- page height.
newBoundingBox ::
  BoundingBox
newBoundingBox =
  BoundingBox'
    { height = Prelude.Nothing,
      width = Prelude.Nothing,
      left = Prelude.Nothing,
      top = Prelude.Nothing
    }

-- | The height of the bounding box as a ratio of the overall document page
-- height.
boundingBox_height :: Lens.Lens' BoundingBox (Prelude.Maybe Prelude.Double)
boundingBox_height = Lens.lens (\BoundingBox' {height} -> height) (\s@BoundingBox' {} a -> s {height = a} :: BoundingBox)

-- | The width of the bounding box as a ratio of the overall document page
-- width.
boundingBox_width :: Lens.Lens' BoundingBox (Prelude.Maybe Prelude.Double)
boundingBox_width = Lens.lens (\BoundingBox' {width} -> width) (\s@BoundingBox' {} a -> s {width = a} :: BoundingBox)

-- | The left coordinate of the bounding box as a ratio of overall document
-- page width.
boundingBox_left :: Lens.Lens' BoundingBox (Prelude.Maybe Prelude.Double)
boundingBox_left = Lens.lens (\BoundingBox' {left} -> left) (\s@BoundingBox' {} a -> s {left = a} :: BoundingBox)

-- | The top coordinate of the bounding box as a ratio of overall document
-- page height.
boundingBox_top :: Lens.Lens' BoundingBox (Prelude.Maybe Prelude.Double)
boundingBox_top = Lens.lens (\BoundingBox' {top} -> top) (\s@BoundingBox' {} a -> s {top = a} :: BoundingBox)

instance Core.FromJSON BoundingBox where
  parseJSON =
    Core.withObject
      "BoundingBox"
      ( \x ->
          BoundingBox'
            Prelude.<$> (x Core..:? "Height")
            Prelude.<*> (x Core..:? "Width")
            Prelude.<*> (x Core..:? "Left")
            Prelude.<*> (x Core..:? "Top")
      )

instance Prelude.Hashable BoundingBox

instance Prelude.NFData BoundingBox
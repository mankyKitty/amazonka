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
-- Module      : Amazonka.EBS.PutSnapshotBlock
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes a block of data to a snapshot. If the specified block contains
-- data, the existing data is overwritten. The target snapshot must be in
-- the @pending@ state.
--
-- Data written to a snapshot must be aligned with 512-KiB sectors.
module Amazonka.EBS.PutSnapshotBlock
  ( -- * Creating a Request
    PutSnapshotBlock (..),
    newPutSnapshotBlock,

    -- * Request Lenses
    putSnapshotBlock_progress,
    putSnapshotBlock_snapshotId,
    putSnapshotBlock_blockIndex,
    putSnapshotBlock_dataLength,
    putSnapshotBlock_checksum,
    putSnapshotBlock_checksumAlgorithm,
    putSnapshotBlock_blockData,

    -- * Destructuring the Response
    PutSnapshotBlockResponse (..),
    newPutSnapshotBlockResponse,

    -- * Response Lenses
    putSnapshotBlockResponse_checksumAlgorithm,
    putSnapshotBlockResponse_checksum,
    putSnapshotBlockResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EBS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutSnapshotBlock' smart constructor.
data PutSnapshotBlock = PutSnapshotBlock'
  { -- | The progress of the write process, as a percentage.
    progress :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the snapshot.
    --
    -- If the specified snapshot is encrypted, you must have permission to use
    -- the KMS key that was used to encrypt the snapshot. For more information,
    -- see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html Using encryption>
    -- in the /Amazon Elastic Compute Cloud User Guide/..
    snapshotId :: Prelude.Text,
    -- | The block index of the block in which to write the data. A block index
    -- is a logical index in units of @512@ KiB blocks. To identify the block
    -- index, divide the logical offset of the data in the logical volume by
    -- the block size (logical offset of data\/@524288@). The logical offset of
    -- the data must be @512@ KiB aligned.
    blockIndex :: Prelude.Natural,
    -- | The size of the data to write to the block, in bytes. Currently, the
    -- only supported size is @524288@ bytes.
    --
    -- Valid values: @524288@
    dataLength :: Prelude.Int,
    -- | A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are
    -- supported.
    checksum :: Prelude.Text,
    -- | The algorithm used to generate the checksum. Currently, the only
    -- supported algorithm is @SHA256@.
    checksumAlgorithm :: ChecksumAlgorithm,
    -- | The data to write to the block.
    --
    -- The block data is not signed as part of the Signature Version 4 signing
    -- process. As a result, you must generate and provide a Base64-encoded
    -- SHA256 checksum for the block data using the __x-amz-Checksum__ header.
    -- Also, you must specify the checksum algorithm using the
    -- __x-amz-Checksum-Algorithm__ header. The checksum that you provide is
    -- part of the Signature Version 4 signing process. It is validated against
    -- a checksum generated by Amazon EBS to ensure the validity and
    -- authenticity of the data. If the checksums do not correspond, the
    -- request fails. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums Using checksums with the EBS direct APIs>
    -- in the /Amazon Elastic Compute Cloud User Guide/.
    blockData :: Core.HashedBody
  }
  deriving (Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutSnapshotBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'progress', 'putSnapshotBlock_progress' - The progress of the write process, as a percentage.
--
-- 'snapshotId', 'putSnapshotBlock_snapshotId' - The ID of the snapshot.
--
-- If the specified snapshot is encrypted, you must have permission to use
-- the KMS key that was used to encrypt the snapshot. For more information,
-- see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html Using encryption>
-- in the /Amazon Elastic Compute Cloud User Guide/..
--
-- 'blockIndex', 'putSnapshotBlock_blockIndex' - The block index of the block in which to write the data. A block index
-- is a logical index in units of @512@ KiB blocks. To identify the block
-- index, divide the logical offset of the data in the logical volume by
-- the block size (logical offset of data\/@524288@). The logical offset of
-- the data must be @512@ KiB aligned.
--
-- 'dataLength', 'putSnapshotBlock_dataLength' - The size of the data to write to the block, in bytes. Currently, the
-- only supported size is @524288@ bytes.
--
-- Valid values: @524288@
--
-- 'checksum', 'putSnapshotBlock_checksum' - A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are
-- supported.
--
-- 'checksumAlgorithm', 'putSnapshotBlock_checksumAlgorithm' - The algorithm used to generate the checksum. Currently, the only
-- supported algorithm is @SHA256@.
--
-- 'blockData', 'putSnapshotBlock_blockData' - The data to write to the block.
--
-- The block data is not signed as part of the Signature Version 4 signing
-- process. As a result, you must generate and provide a Base64-encoded
-- SHA256 checksum for the block data using the __x-amz-Checksum__ header.
-- Also, you must specify the checksum algorithm using the
-- __x-amz-Checksum-Algorithm__ header. The checksum that you provide is
-- part of the Signature Version 4 signing process. It is validated against
-- a checksum generated by Amazon EBS to ensure the validity and
-- authenticity of the data. If the checksums do not correspond, the
-- request fails. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums Using checksums with the EBS direct APIs>
-- in the /Amazon Elastic Compute Cloud User Guide/.
newPutSnapshotBlock ::
  -- | 'snapshotId'
  Prelude.Text ->
  -- | 'blockIndex'
  Prelude.Natural ->
  -- | 'dataLength'
  Prelude.Int ->
  -- | 'checksum'
  Prelude.Text ->
  -- | 'checksumAlgorithm'
  ChecksumAlgorithm ->
  -- | 'blockData'
  Core.HashedBody ->
  PutSnapshotBlock
newPutSnapshotBlock
  pSnapshotId_
  pBlockIndex_
  pDataLength_
  pChecksum_
  pChecksumAlgorithm_
  pBlockData_ =
    PutSnapshotBlock'
      { progress = Prelude.Nothing,
        snapshotId = pSnapshotId_,
        blockIndex = pBlockIndex_,
        dataLength = pDataLength_,
        checksum = pChecksum_,
        checksumAlgorithm = pChecksumAlgorithm_,
        blockData = pBlockData_
      }

-- | The progress of the write process, as a percentage.
putSnapshotBlock_progress :: Lens.Lens' PutSnapshotBlock (Prelude.Maybe Prelude.Natural)
putSnapshotBlock_progress = Lens.lens (\PutSnapshotBlock' {progress} -> progress) (\s@PutSnapshotBlock' {} a -> s {progress = a} :: PutSnapshotBlock)

-- | The ID of the snapshot.
--
-- If the specified snapshot is encrypted, you must have permission to use
-- the KMS key that was used to encrypt the snapshot. For more information,
-- see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html Using encryption>
-- in the /Amazon Elastic Compute Cloud User Guide/..
putSnapshotBlock_snapshotId :: Lens.Lens' PutSnapshotBlock Prelude.Text
putSnapshotBlock_snapshotId = Lens.lens (\PutSnapshotBlock' {snapshotId} -> snapshotId) (\s@PutSnapshotBlock' {} a -> s {snapshotId = a} :: PutSnapshotBlock)

-- | The block index of the block in which to write the data. A block index
-- is a logical index in units of @512@ KiB blocks. To identify the block
-- index, divide the logical offset of the data in the logical volume by
-- the block size (logical offset of data\/@524288@). The logical offset of
-- the data must be @512@ KiB aligned.
putSnapshotBlock_blockIndex :: Lens.Lens' PutSnapshotBlock Prelude.Natural
putSnapshotBlock_blockIndex = Lens.lens (\PutSnapshotBlock' {blockIndex} -> blockIndex) (\s@PutSnapshotBlock' {} a -> s {blockIndex = a} :: PutSnapshotBlock)

-- | The size of the data to write to the block, in bytes. Currently, the
-- only supported size is @524288@ bytes.
--
-- Valid values: @524288@
putSnapshotBlock_dataLength :: Lens.Lens' PutSnapshotBlock Prelude.Int
putSnapshotBlock_dataLength = Lens.lens (\PutSnapshotBlock' {dataLength} -> dataLength) (\s@PutSnapshotBlock' {} a -> s {dataLength = a} :: PutSnapshotBlock)

-- | A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are
-- supported.
putSnapshotBlock_checksum :: Lens.Lens' PutSnapshotBlock Prelude.Text
putSnapshotBlock_checksum = Lens.lens (\PutSnapshotBlock' {checksum} -> checksum) (\s@PutSnapshotBlock' {} a -> s {checksum = a} :: PutSnapshotBlock)

-- | The algorithm used to generate the checksum. Currently, the only
-- supported algorithm is @SHA256@.
putSnapshotBlock_checksumAlgorithm :: Lens.Lens' PutSnapshotBlock ChecksumAlgorithm
putSnapshotBlock_checksumAlgorithm = Lens.lens (\PutSnapshotBlock' {checksumAlgorithm} -> checksumAlgorithm) (\s@PutSnapshotBlock' {} a -> s {checksumAlgorithm = a} :: PutSnapshotBlock)

-- | The data to write to the block.
--
-- The block data is not signed as part of the Signature Version 4 signing
-- process. As a result, you must generate and provide a Base64-encoded
-- SHA256 checksum for the block data using the __x-amz-Checksum__ header.
-- Also, you must specify the checksum algorithm using the
-- __x-amz-Checksum-Algorithm__ header. The checksum that you provide is
-- part of the Signature Version 4 signing process. It is validated against
-- a checksum generated by Amazon EBS to ensure the validity and
-- authenticity of the data. If the checksums do not correspond, the
-- request fails. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums Using checksums with the EBS direct APIs>
-- in the /Amazon Elastic Compute Cloud User Guide/.
putSnapshotBlock_blockData :: Lens.Lens' PutSnapshotBlock Core.HashedBody
putSnapshotBlock_blockData = Lens.lens (\PutSnapshotBlock' {blockData} -> blockData) (\s@PutSnapshotBlock' {} a -> s {blockData = a} :: PutSnapshotBlock)

instance Core.AWSRequest PutSnapshotBlock where
  type
    AWSResponse PutSnapshotBlock =
      PutSnapshotBlockResponse
  request = Request.putBody defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutSnapshotBlockResponse'
            Prelude.<$> (h Core..#? "x-amz-Checksum-Algorithm")
            Prelude.<*> (h Core..#? "x-amz-Checksum")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Core.ToBody PutSnapshotBlock where
  toBody PutSnapshotBlock' {..} = Core.toBody blockData

instance Core.ToHeaders PutSnapshotBlock where
  toHeaders PutSnapshotBlock' {..} =
    Prelude.mconcat
      [ "x-amz-Progress" Core.=# progress,
        "x-amz-Data-Length" Core.=# dataLength,
        "x-amz-Checksum" Core.=# checksum,
        "x-amz-Checksum-Algorithm" Core.=# checksumAlgorithm,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath PutSnapshotBlock where
  toPath PutSnapshotBlock' {..} =
    Prelude.mconcat
      [ "/snapshots/",
        Core.toBS snapshotId,
        "/blocks/",
        Core.toBS blockIndex
      ]

instance Core.ToQuery PutSnapshotBlock where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutSnapshotBlockResponse' smart constructor.
data PutSnapshotBlockResponse = PutSnapshotBlockResponse'
  { -- | The algorithm used by Amazon EBS to generate the checksum.
    checksumAlgorithm :: Prelude.Maybe ChecksumAlgorithm,
    -- | The SHA256 checksum generated for the block data by Amazon EBS.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutSnapshotBlockResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'checksumAlgorithm', 'putSnapshotBlockResponse_checksumAlgorithm' - The algorithm used by Amazon EBS to generate the checksum.
--
-- 'checksum', 'putSnapshotBlockResponse_checksum' - The SHA256 checksum generated for the block data by Amazon EBS.
--
-- 'httpStatus', 'putSnapshotBlockResponse_httpStatus' - The response's http status code.
newPutSnapshotBlockResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutSnapshotBlockResponse
newPutSnapshotBlockResponse pHttpStatus_ =
  PutSnapshotBlockResponse'
    { checksumAlgorithm =
        Prelude.Nothing,
      checksum = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The algorithm used by Amazon EBS to generate the checksum.
putSnapshotBlockResponse_checksumAlgorithm :: Lens.Lens' PutSnapshotBlockResponse (Prelude.Maybe ChecksumAlgorithm)
putSnapshotBlockResponse_checksumAlgorithm = Lens.lens (\PutSnapshotBlockResponse' {checksumAlgorithm} -> checksumAlgorithm) (\s@PutSnapshotBlockResponse' {} a -> s {checksumAlgorithm = a} :: PutSnapshotBlockResponse)

-- | The SHA256 checksum generated for the block data by Amazon EBS.
putSnapshotBlockResponse_checksum :: Lens.Lens' PutSnapshotBlockResponse (Prelude.Maybe Prelude.Text)
putSnapshotBlockResponse_checksum = Lens.lens (\PutSnapshotBlockResponse' {checksum} -> checksum) (\s@PutSnapshotBlockResponse' {} a -> s {checksum = a} :: PutSnapshotBlockResponse)

-- | The response's http status code.
putSnapshotBlockResponse_httpStatus :: Lens.Lens' PutSnapshotBlockResponse Prelude.Int
putSnapshotBlockResponse_httpStatus = Lens.lens (\PutSnapshotBlockResponse' {httpStatus} -> httpStatus) (\s@PutSnapshotBlockResponse' {} a -> s {httpStatus = a} :: PutSnapshotBlockResponse)

instance Prelude.NFData PutSnapshotBlockResponse where
  rnf PutSnapshotBlockResponse' {..} =
    Prelude.rnf checksumAlgorithm
      `Prelude.seq` Prelude.rnf checksum
      `Prelude.seq` Prelude.rnf httpStatus

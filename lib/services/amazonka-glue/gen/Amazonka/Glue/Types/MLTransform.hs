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
-- Module      : Amazonka.Glue.Types.MLTransform
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.MLTransform where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Glue.Types.EvaluationMetrics
import Amazonka.Glue.Types.GlueTable
import Amazonka.Glue.Types.SchemaColumn
import Amazonka.Glue.Types.TransformEncryption
import Amazonka.Glue.Types.TransformParameters
import Amazonka.Glue.Types.TransformStatusType
import Amazonka.Glue.Types.WorkerType
import qualified Amazonka.Prelude as Prelude

-- | A structure for a machine learning transform.
--
-- /See:/ 'newMLTransform' smart constructor.
data MLTransform = MLTransform'
  { -- | A timestamp. The time and date that this machine learning transform was
    -- created.
    createdOn :: Prelude.Maybe Data.POSIX,
    -- | A user-defined, long-form description text for the machine learning
    -- transform. Descriptions are not guaranteed to be unique and can be
    -- changed at any time.
    description :: Prelude.Maybe Prelude.Text,
    -- | An @EvaluationMetrics@ object. Evaluation metrics provide an estimate of
    -- the quality of your machine learning transform.
    evaluationMetrics :: Prelude.Maybe EvaluationMetrics,
    -- | This value determines which version of Glue this machine learning
    -- transform is compatible with. Glue 1.0 is recommended for most
    -- customers. If the value is not set, the Glue compatibility defaults to
    -- Glue 0.9. For more information, see
    -- <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions Glue Versions>
    -- in the developer guide.
    glueVersion :: Prelude.Maybe Prelude.Text,
    -- | A list of Glue table definitions used by the transform.
    inputRecordTables :: Prelude.Maybe [GlueTable],
    -- | A count identifier for the labeling files generated by Glue for this
    -- transform. As you create a better transform, you can iteratively
    -- download, label, and upload the labeling file.
    labelCount :: Prelude.Maybe Prelude.Int,
    -- | A timestamp. The last point in time when this machine learning transform
    -- was modified.
    lastModifiedOn :: Prelude.Maybe Data.POSIX,
    -- | The number of Glue data processing units (DPUs) that are allocated to
    -- task runs for this transform. You can allocate from 2 to 100 DPUs; the
    -- default is 10. A DPU is a relative measure of processing power that
    -- consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    -- information, see the
    -- <http://aws.amazon.com/glue/pricing/ Glue pricing page>.
    --
    -- @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and
    -- @WorkerType@.
    --
    -- -   If either @NumberOfWorkers@ or @WorkerType@ is set, then
    --     @MaxCapacity@ cannot be set.
    --
    -- -   If @MaxCapacity@ is set then neither @NumberOfWorkers@ or
    --     @WorkerType@ can be set.
    --
    -- -   If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
    --     versa).
    --
    -- -   @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
    --
    -- When the @WorkerType@ field is set to a value other than @Standard@, the
    -- @MaxCapacity@ field is set automatically and becomes read-only.
    maxCapacity :: Prelude.Maybe Prelude.Double,
    -- | The maximum number of times to retry after an @MLTaskRun@ of the machine
    -- learning transform fails.
    maxRetries :: Prelude.Maybe Prelude.Int,
    -- | A user-defined name for the machine learning transform. Names are not
    -- guaranteed unique and can be changed at any time.
    name :: Prelude.Maybe Prelude.Text,
    -- | The number of workers of a defined @workerType@ that are allocated when
    -- a task of the transform runs.
    --
    -- If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
    -- versa).
    numberOfWorkers :: Prelude.Maybe Prelude.Int,
    -- | A @TransformParameters@ object. You can use parameters to tune
    -- (customize) the behavior of the machine learning transform by specifying
    -- what data it learns from and your preference on various tradeoffs (such
    -- as precious vs. recall, or accuracy vs. cost).
    parameters :: Prelude.Maybe TransformParameters,
    -- | The name or Amazon Resource Name (ARN) of the IAM role with the required
    -- permissions. The required permissions include both Glue service role
    -- permissions to Glue resources, and Amazon S3 permissions required by the
    -- transform.
    --
    -- -   This role needs Glue service role permissions to allow access to
    --     resources in Glue. See
    --     <https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html Attach a Policy to IAM Users That Access Glue>.
    --
    -- -   This role needs permission to your Amazon Simple Storage Service
    --     (Amazon S3) sources, targets, temporary directory, scripts, and any
    --     libraries used by the task run for this transform.
    role' :: Prelude.Maybe Prelude.Text,
    -- | A map of key-value pairs representing the columns and data types that
    -- this transform can run against. Has an upper bound of 100 columns.
    schema :: Prelude.Maybe [SchemaColumn],
    -- | The current status of the machine learning transform.
    status :: Prelude.Maybe TransformStatusType,
    -- | The timeout in minutes of the machine learning transform.
    timeout :: Prelude.Maybe Prelude.Natural,
    -- | The encryption-at-rest settings of the transform that apply to accessing
    -- user data. Machine learning transforms can access user data encrypted in
    -- Amazon S3 using KMS.
    transformEncryption :: Prelude.Maybe TransformEncryption,
    -- | The unique transform ID that is generated for the machine learning
    -- transform. The ID is guaranteed to be unique and does not change.
    transformId :: Prelude.Maybe Prelude.Text,
    -- | The type of predefined worker that is allocated when a task of this
    -- transform runs. Accepts a value of Standard, G.1X, or G.2X.
    --
    -- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
    --     of memory and a 50GB disk, and 2 executors per worker.
    --
    -- -   For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of
    --     memory and a 64GB disk, and 1 executor per worker.
    --
    -- -   For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of
    --     memory and a 128GB disk, and 1 executor per worker.
    --
    -- @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and
    -- @WorkerType@.
    --
    -- -   If either @NumberOfWorkers@ or @WorkerType@ is set, then
    --     @MaxCapacity@ cannot be set.
    --
    -- -   If @MaxCapacity@ is set then neither @NumberOfWorkers@ or
    --     @WorkerType@ can be set.
    --
    -- -   If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
    --     versa).
    --
    -- -   @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
    workerType :: Prelude.Maybe WorkerType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MLTransform' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdOn', 'mLTransform_createdOn' - A timestamp. The time and date that this machine learning transform was
-- created.
--
-- 'description', 'mLTransform_description' - A user-defined, long-form description text for the machine learning
-- transform. Descriptions are not guaranteed to be unique and can be
-- changed at any time.
--
-- 'evaluationMetrics', 'mLTransform_evaluationMetrics' - An @EvaluationMetrics@ object. Evaluation metrics provide an estimate of
-- the quality of your machine learning transform.
--
-- 'glueVersion', 'mLTransform_glueVersion' - This value determines which version of Glue this machine learning
-- transform is compatible with. Glue 1.0 is recommended for most
-- customers. If the value is not set, the Glue compatibility defaults to
-- Glue 0.9. For more information, see
-- <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions Glue Versions>
-- in the developer guide.
--
-- 'inputRecordTables', 'mLTransform_inputRecordTables' - A list of Glue table definitions used by the transform.
--
-- 'labelCount', 'mLTransform_labelCount' - A count identifier for the labeling files generated by Glue for this
-- transform. As you create a better transform, you can iteratively
-- download, label, and upload the labeling file.
--
-- 'lastModifiedOn', 'mLTransform_lastModifiedOn' - A timestamp. The last point in time when this machine learning transform
-- was modified.
--
-- 'maxCapacity', 'mLTransform_maxCapacity' - The number of Glue data processing units (DPUs) that are allocated to
-- task runs for this transform. You can allocate from 2 to 100 DPUs; the
-- default is 10. A DPU is a relative measure of processing power that
-- consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
-- information, see the
-- <http://aws.amazon.com/glue/pricing/ Glue pricing page>.
--
-- @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and
-- @WorkerType@.
--
-- -   If either @NumberOfWorkers@ or @WorkerType@ is set, then
--     @MaxCapacity@ cannot be set.
--
-- -   If @MaxCapacity@ is set then neither @NumberOfWorkers@ or
--     @WorkerType@ can be set.
--
-- -   If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
--     versa).
--
-- -   @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
--
-- When the @WorkerType@ field is set to a value other than @Standard@, the
-- @MaxCapacity@ field is set automatically and becomes read-only.
--
-- 'maxRetries', 'mLTransform_maxRetries' - The maximum number of times to retry after an @MLTaskRun@ of the machine
-- learning transform fails.
--
-- 'name', 'mLTransform_name' - A user-defined name for the machine learning transform. Names are not
-- guaranteed unique and can be changed at any time.
--
-- 'numberOfWorkers', 'mLTransform_numberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when
-- a task of the transform runs.
--
-- If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
-- versa).
--
-- 'parameters', 'mLTransform_parameters' - A @TransformParameters@ object. You can use parameters to tune
-- (customize) the behavior of the machine learning transform by specifying
-- what data it learns from and your preference on various tradeoffs (such
-- as precious vs. recall, or accuracy vs. cost).
--
-- 'role'', 'mLTransform_role' - The name or Amazon Resource Name (ARN) of the IAM role with the required
-- permissions. The required permissions include both Glue service role
-- permissions to Glue resources, and Amazon S3 permissions required by the
-- transform.
--
-- -   This role needs Glue service role permissions to allow access to
--     resources in Glue. See
--     <https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html Attach a Policy to IAM Users That Access Glue>.
--
-- -   This role needs permission to your Amazon Simple Storage Service
--     (Amazon S3) sources, targets, temporary directory, scripts, and any
--     libraries used by the task run for this transform.
--
-- 'schema', 'mLTransform_schema' - A map of key-value pairs representing the columns and data types that
-- this transform can run against. Has an upper bound of 100 columns.
--
-- 'status', 'mLTransform_status' - The current status of the machine learning transform.
--
-- 'timeout', 'mLTransform_timeout' - The timeout in minutes of the machine learning transform.
--
-- 'transformEncryption', 'mLTransform_transformEncryption' - The encryption-at-rest settings of the transform that apply to accessing
-- user data. Machine learning transforms can access user data encrypted in
-- Amazon S3 using KMS.
--
-- 'transformId', 'mLTransform_transformId' - The unique transform ID that is generated for the machine learning
-- transform. The ID is guaranteed to be unique and does not change.
--
-- 'workerType', 'mLTransform_workerType' - The type of predefined worker that is allocated when a task of this
-- transform runs. Accepts a value of Standard, G.1X, or G.2X.
--
-- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
--     of memory and a 50GB disk, and 2 executors per worker.
--
-- -   For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of
--     memory and a 64GB disk, and 1 executor per worker.
--
-- -   For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of
--     memory and a 128GB disk, and 1 executor per worker.
--
-- @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and
-- @WorkerType@.
--
-- -   If either @NumberOfWorkers@ or @WorkerType@ is set, then
--     @MaxCapacity@ cannot be set.
--
-- -   If @MaxCapacity@ is set then neither @NumberOfWorkers@ or
--     @WorkerType@ can be set.
--
-- -   If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
--     versa).
--
-- -   @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
newMLTransform ::
  MLTransform
newMLTransform =
  MLTransform'
    { createdOn = Prelude.Nothing,
      description = Prelude.Nothing,
      evaluationMetrics = Prelude.Nothing,
      glueVersion = Prelude.Nothing,
      inputRecordTables = Prelude.Nothing,
      labelCount = Prelude.Nothing,
      lastModifiedOn = Prelude.Nothing,
      maxCapacity = Prelude.Nothing,
      maxRetries = Prelude.Nothing,
      name = Prelude.Nothing,
      numberOfWorkers = Prelude.Nothing,
      parameters = Prelude.Nothing,
      role' = Prelude.Nothing,
      schema = Prelude.Nothing,
      status = Prelude.Nothing,
      timeout = Prelude.Nothing,
      transformEncryption = Prelude.Nothing,
      transformId = Prelude.Nothing,
      workerType = Prelude.Nothing
    }

-- | A timestamp. The time and date that this machine learning transform was
-- created.
mLTransform_createdOn :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.UTCTime)
mLTransform_createdOn = Lens.lens (\MLTransform' {createdOn} -> createdOn) (\s@MLTransform' {} a -> s {createdOn = a} :: MLTransform) Prelude.. Lens.mapping Data._Time

-- | A user-defined, long-form description text for the machine learning
-- transform. Descriptions are not guaranteed to be unique and can be
-- changed at any time.
mLTransform_description :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Text)
mLTransform_description = Lens.lens (\MLTransform' {description} -> description) (\s@MLTransform' {} a -> s {description = a} :: MLTransform)

-- | An @EvaluationMetrics@ object. Evaluation metrics provide an estimate of
-- the quality of your machine learning transform.
mLTransform_evaluationMetrics :: Lens.Lens' MLTransform (Prelude.Maybe EvaluationMetrics)
mLTransform_evaluationMetrics = Lens.lens (\MLTransform' {evaluationMetrics} -> evaluationMetrics) (\s@MLTransform' {} a -> s {evaluationMetrics = a} :: MLTransform)

-- | This value determines which version of Glue this machine learning
-- transform is compatible with. Glue 1.0 is recommended for most
-- customers. If the value is not set, the Glue compatibility defaults to
-- Glue 0.9. For more information, see
-- <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions Glue Versions>
-- in the developer guide.
mLTransform_glueVersion :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Text)
mLTransform_glueVersion = Lens.lens (\MLTransform' {glueVersion} -> glueVersion) (\s@MLTransform' {} a -> s {glueVersion = a} :: MLTransform)

-- | A list of Glue table definitions used by the transform.
mLTransform_inputRecordTables :: Lens.Lens' MLTransform (Prelude.Maybe [GlueTable])
mLTransform_inputRecordTables = Lens.lens (\MLTransform' {inputRecordTables} -> inputRecordTables) (\s@MLTransform' {} a -> s {inputRecordTables = a} :: MLTransform) Prelude.. Lens.mapping Lens.coerced

-- | A count identifier for the labeling files generated by Glue for this
-- transform. As you create a better transform, you can iteratively
-- download, label, and upload the labeling file.
mLTransform_labelCount :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Int)
mLTransform_labelCount = Lens.lens (\MLTransform' {labelCount} -> labelCount) (\s@MLTransform' {} a -> s {labelCount = a} :: MLTransform)

-- | A timestamp. The last point in time when this machine learning transform
-- was modified.
mLTransform_lastModifiedOn :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.UTCTime)
mLTransform_lastModifiedOn = Lens.lens (\MLTransform' {lastModifiedOn} -> lastModifiedOn) (\s@MLTransform' {} a -> s {lastModifiedOn = a} :: MLTransform) Prelude.. Lens.mapping Data._Time

-- | The number of Glue data processing units (DPUs) that are allocated to
-- task runs for this transform. You can allocate from 2 to 100 DPUs; the
-- default is 10. A DPU is a relative measure of processing power that
-- consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
-- information, see the
-- <http://aws.amazon.com/glue/pricing/ Glue pricing page>.
--
-- @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and
-- @WorkerType@.
--
-- -   If either @NumberOfWorkers@ or @WorkerType@ is set, then
--     @MaxCapacity@ cannot be set.
--
-- -   If @MaxCapacity@ is set then neither @NumberOfWorkers@ or
--     @WorkerType@ can be set.
--
-- -   If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
--     versa).
--
-- -   @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
--
-- When the @WorkerType@ field is set to a value other than @Standard@, the
-- @MaxCapacity@ field is set automatically and becomes read-only.
mLTransform_maxCapacity :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Double)
mLTransform_maxCapacity = Lens.lens (\MLTransform' {maxCapacity} -> maxCapacity) (\s@MLTransform' {} a -> s {maxCapacity = a} :: MLTransform)

-- | The maximum number of times to retry after an @MLTaskRun@ of the machine
-- learning transform fails.
mLTransform_maxRetries :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Int)
mLTransform_maxRetries = Lens.lens (\MLTransform' {maxRetries} -> maxRetries) (\s@MLTransform' {} a -> s {maxRetries = a} :: MLTransform)

-- | A user-defined name for the machine learning transform. Names are not
-- guaranteed unique and can be changed at any time.
mLTransform_name :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Text)
mLTransform_name = Lens.lens (\MLTransform' {name} -> name) (\s@MLTransform' {} a -> s {name = a} :: MLTransform)

-- | The number of workers of a defined @workerType@ that are allocated when
-- a task of the transform runs.
--
-- If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
-- versa).
mLTransform_numberOfWorkers :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Int)
mLTransform_numberOfWorkers = Lens.lens (\MLTransform' {numberOfWorkers} -> numberOfWorkers) (\s@MLTransform' {} a -> s {numberOfWorkers = a} :: MLTransform)

-- | A @TransformParameters@ object. You can use parameters to tune
-- (customize) the behavior of the machine learning transform by specifying
-- what data it learns from and your preference on various tradeoffs (such
-- as precious vs. recall, or accuracy vs. cost).
mLTransform_parameters :: Lens.Lens' MLTransform (Prelude.Maybe TransformParameters)
mLTransform_parameters = Lens.lens (\MLTransform' {parameters} -> parameters) (\s@MLTransform' {} a -> s {parameters = a} :: MLTransform)

-- | The name or Amazon Resource Name (ARN) of the IAM role with the required
-- permissions. The required permissions include both Glue service role
-- permissions to Glue resources, and Amazon S3 permissions required by the
-- transform.
--
-- -   This role needs Glue service role permissions to allow access to
--     resources in Glue. See
--     <https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html Attach a Policy to IAM Users That Access Glue>.
--
-- -   This role needs permission to your Amazon Simple Storage Service
--     (Amazon S3) sources, targets, temporary directory, scripts, and any
--     libraries used by the task run for this transform.
mLTransform_role :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Text)
mLTransform_role = Lens.lens (\MLTransform' {role'} -> role') (\s@MLTransform' {} a -> s {role' = a} :: MLTransform)

-- | A map of key-value pairs representing the columns and data types that
-- this transform can run against. Has an upper bound of 100 columns.
mLTransform_schema :: Lens.Lens' MLTransform (Prelude.Maybe [SchemaColumn])
mLTransform_schema = Lens.lens (\MLTransform' {schema} -> schema) (\s@MLTransform' {} a -> s {schema = a} :: MLTransform) Prelude.. Lens.mapping Lens.coerced

-- | The current status of the machine learning transform.
mLTransform_status :: Lens.Lens' MLTransform (Prelude.Maybe TransformStatusType)
mLTransform_status = Lens.lens (\MLTransform' {status} -> status) (\s@MLTransform' {} a -> s {status = a} :: MLTransform)

-- | The timeout in minutes of the machine learning transform.
mLTransform_timeout :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Natural)
mLTransform_timeout = Lens.lens (\MLTransform' {timeout} -> timeout) (\s@MLTransform' {} a -> s {timeout = a} :: MLTransform)

-- | The encryption-at-rest settings of the transform that apply to accessing
-- user data. Machine learning transforms can access user data encrypted in
-- Amazon S3 using KMS.
mLTransform_transformEncryption :: Lens.Lens' MLTransform (Prelude.Maybe TransformEncryption)
mLTransform_transformEncryption = Lens.lens (\MLTransform' {transformEncryption} -> transformEncryption) (\s@MLTransform' {} a -> s {transformEncryption = a} :: MLTransform)

-- | The unique transform ID that is generated for the machine learning
-- transform. The ID is guaranteed to be unique and does not change.
mLTransform_transformId :: Lens.Lens' MLTransform (Prelude.Maybe Prelude.Text)
mLTransform_transformId = Lens.lens (\MLTransform' {transformId} -> transformId) (\s@MLTransform' {} a -> s {transformId = a} :: MLTransform)

-- | The type of predefined worker that is allocated when a task of this
-- transform runs. Accepts a value of Standard, G.1X, or G.2X.
--
-- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
--     of memory and a 50GB disk, and 2 executors per worker.
--
-- -   For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of
--     memory and a 64GB disk, and 1 executor per worker.
--
-- -   For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of
--     memory and a 128GB disk, and 1 executor per worker.
--
-- @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and
-- @WorkerType@.
--
-- -   If either @NumberOfWorkers@ or @WorkerType@ is set, then
--     @MaxCapacity@ cannot be set.
--
-- -   If @MaxCapacity@ is set then neither @NumberOfWorkers@ or
--     @WorkerType@ can be set.
--
-- -   If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice
--     versa).
--
-- -   @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
mLTransform_workerType :: Lens.Lens' MLTransform (Prelude.Maybe WorkerType)
mLTransform_workerType = Lens.lens (\MLTransform' {workerType} -> workerType) (\s@MLTransform' {} a -> s {workerType = a} :: MLTransform)

instance Data.FromJSON MLTransform where
  parseJSON =
    Data.withObject
      "MLTransform"
      ( \x ->
          MLTransform'
            Prelude.<$> (x Data..:? "CreatedOn")
            Prelude.<*> (x Data..:? "Description")
            Prelude.<*> (x Data..:? "EvaluationMetrics")
            Prelude.<*> (x Data..:? "GlueVersion")
            Prelude.<*> ( x Data..:? "InputRecordTables"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "LabelCount")
            Prelude.<*> (x Data..:? "LastModifiedOn")
            Prelude.<*> (x Data..:? "MaxCapacity")
            Prelude.<*> (x Data..:? "MaxRetries")
            Prelude.<*> (x Data..:? "Name")
            Prelude.<*> (x Data..:? "NumberOfWorkers")
            Prelude.<*> (x Data..:? "Parameters")
            Prelude.<*> (x Data..:? "Role")
            Prelude.<*> (x Data..:? "Schema" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "Status")
            Prelude.<*> (x Data..:? "Timeout")
            Prelude.<*> (x Data..:? "TransformEncryption")
            Prelude.<*> (x Data..:? "TransformId")
            Prelude.<*> (x Data..:? "WorkerType")
      )

instance Prelude.Hashable MLTransform where
  hashWithSalt _salt MLTransform' {..} =
    _salt `Prelude.hashWithSalt` createdOn
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` evaluationMetrics
      `Prelude.hashWithSalt` glueVersion
      `Prelude.hashWithSalt` inputRecordTables
      `Prelude.hashWithSalt` labelCount
      `Prelude.hashWithSalt` lastModifiedOn
      `Prelude.hashWithSalt` maxCapacity
      `Prelude.hashWithSalt` maxRetries
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` numberOfWorkers
      `Prelude.hashWithSalt` parameters
      `Prelude.hashWithSalt` role'
      `Prelude.hashWithSalt` schema
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` timeout
      `Prelude.hashWithSalt` transformEncryption
      `Prelude.hashWithSalt` transformId
      `Prelude.hashWithSalt` workerType

instance Prelude.NFData MLTransform where
  rnf MLTransform' {..} =
    Prelude.rnf createdOn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf evaluationMetrics
      `Prelude.seq` Prelude.rnf glueVersion
      `Prelude.seq` Prelude.rnf inputRecordTables
      `Prelude.seq` Prelude.rnf labelCount
      `Prelude.seq` Prelude.rnf lastModifiedOn
      `Prelude.seq` Prelude.rnf maxCapacity
      `Prelude.seq` Prelude.rnf maxRetries
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf numberOfWorkers
      `Prelude.seq` Prelude.rnf parameters
      `Prelude.seq` Prelude.rnf role'
      `Prelude.seq` Prelude.rnf schema
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf timeout
      `Prelude.seq` Prelude.rnf transformEncryption
      `Prelude.seq` Prelude.rnf transformId
      `Prelude.seq` Prelude.rnf workerType

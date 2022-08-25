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
-- Module      : Amazonka.ElasticSearch.UpdateElasticsearchDomainConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the cluster configuration of the specified Elasticsearch
-- domain, setting as setting the instance type and the number of
-- instances.
module Amazonka.ElasticSearch.UpdateElasticsearchDomainConfig
  ( -- * Creating a Request
    UpdateElasticsearchDomainConfig (..),
    newUpdateElasticsearchDomainConfig,

    -- * Request Lenses
    updateElasticsearchDomainConfig_nodeToNodeEncryptionOptions,
    updateElasticsearchDomainConfig_advancedOptions,
    updateElasticsearchDomainConfig_elasticsearchClusterConfig,
    updateElasticsearchDomainConfig_advancedSecurityOptions,
    updateElasticsearchDomainConfig_cognitoOptions,
    updateElasticsearchDomainConfig_encryptionAtRestOptions,
    updateElasticsearchDomainConfig_dryRun,
    updateElasticsearchDomainConfig_eBSOptions,
    updateElasticsearchDomainConfig_accessPolicies,
    updateElasticsearchDomainConfig_vPCOptions,
    updateElasticsearchDomainConfig_autoTuneOptions,
    updateElasticsearchDomainConfig_domainEndpointOptions,
    updateElasticsearchDomainConfig_snapshotOptions,
    updateElasticsearchDomainConfig_logPublishingOptions,
    updateElasticsearchDomainConfig_domainName,

    -- * Destructuring the Response
    UpdateElasticsearchDomainConfigResponse (..),
    newUpdateElasticsearchDomainConfigResponse,

    -- * Response Lenses
    updateElasticsearchDomainConfigResponse_dryRunResults,
    updateElasticsearchDomainConfigResponse_httpStatus,
    updateElasticsearchDomainConfigResponse_domainConfig,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ElasticSearch.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Container for the parameters to the @UpdateElasticsearchDomain@
-- operation. Specifies the type and number of instances in the domain
-- cluster.
--
-- /See:/ 'newUpdateElasticsearchDomainConfig' smart constructor.
data UpdateElasticsearchDomainConfig = UpdateElasticsearchDomainConfig'
  { -- | Specifies the NodeToNodeEncryptionOptions.
    nodeToNodeEncryptionOptions :: Prelude.Maybe NodeToNodeEncryptionOptions,
    -- | Modifies the advanced option to allow references to indices in an HTTP
    -- request body. Must be @false@ when configuring access to individual
    -- sub-resources. By default, the value is @true@. See
    -- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options Configuration Advanced Options>
    -- for more information.
    advancedOptions :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The type and number of instances to instantiate for the domain cluster.
    elasticsearchClusterConfig :: Prelude.Maybe ElasticsearchClusterConfig,
    -- | Specifies advanced security options.
    advancedSecurityOptions :: Prelude.Maybe AdvancedSecurityOptionsInput,
    -- | Options to specify the Cognito user and identity pools for Kibana
    -- authentication. For more information, see
    -- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana>.
    cognitoOptions :: Prelude.Maybe CognitoOptions,
    -- | Specifies the Encryption At Rest Options.
    encryptionAtRestOptions :: Prelude.Maybe EncryptionAtRestOptions,
    -- | This flag, when set to True, specifies whether the
    -- @UpdateElasticsearchDomain@ request should return the results of
    -- validation checks without actually applying the change. This flag, when
    -- set to True, specifies the deployment mechanism through which the update
    -- shall be applied on the domain. This will not actually perform the
    -- Update.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | Specify the type and size of the EBS volume that you want to use.
    eBSOptions :: Prelude.Maybe EBSOptions,
    -- | IAM access policy as a JSON-formatted string.
    accessPolicies :: Prelude.Maybe Prelude.Text,
    -- | Options to specify the subnets and security groups for VPC endpoint. For
    -- more information, see
    -- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc Creating a VPC>
    -- in /VPC Endpoints for Amazon Elasticsearch Service Domains/
    vPCOptions :: Prelude.Maybe VPCOptions,
    -- | Specifies Auto-Tune options.
    autoTuneOptions :: Prelude.Maybe AutoTuneOptions,
    -- | Options to specify configuration that will be applied to the domain
    -- endpoint.
    domainEndpointOptions :: Prelude.Maybe DomainEndpointOptions,
    -- | Option to set the time, in UTC format, for the daily automated snapshot.
    -- Default value is @0@ hours.
    snapshotOptions :: Prelude.Maybe SnapshotOptions,
    -- | Map of @LogType@ and @LogPublishingOption@, each containing options to
    -- publish a given type of Elasticsearch log.
    logPublishingOptions :: Prelude.Maybe (Prelude.HashMap LogType LogPublishingOption),
    -- | The name of the Elasticsearch domain that you are updating.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateElasticsearchDomainConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nodeToNodeEncryptionOptions', 'updateElasticsearchDomainConfig_nodeToNodeEncryptionOptions' - Specifies the NodeToNodeEncryptionOptions.
--
-- 'advancedOptions', 'updateElasticsearchDomainConfig_advancedOptions' - Modifies the advanced option to allow references to indices in an HTTP
-- request body. Must be @false@ when configuring access to individual
-- sub-resources. By default, the value is @true@. See
-- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options Configuration Advanced Options>
-- for more information.
--
-- 'elasticsearchClusterConfig', 'updateElasticsearchDomainConfig_elasticsearchClusterConfig' - The type and number of instances to instantiate for the domain cluster.
--
-- 'advancedSecurityOptions', 'updateElasticsearchDomainConfig_advancedSecurityOptions' - Specifies advanced security options.
--
-- 'cognitoOptions', 'updateElasticsearchDomainConfig_cognitoOptions' - Options to specify the Cognito user and identity pools for Kibana
-- authentication. For more information, see
-- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana>.
--
-- 'encryptionAtRestOptions', 'updateElasticsearchDomainConfig_encryptionAtRestOptions' - Specifies the Encryption At Rest Options.
--
-- 'dryRun', 'updateElasticsearchDomainConfig_dryRun' - This flag, when set to True, specifies whether the
-- @UpdateElasticsearchDomain@ request should return the results of
-- validation checks without actually applying the change. This flag, when
-- set to True, specifies the deployment mechanism through which the update
-- shall be applied on the domain. This will not actually perform the
-- Update.
--
-- 'eBSOptions', 'updateElasticsearchDomainConfig_eBSOptions' - Specify the type and size of the EBS volume that you want to use.
--
-- 'accessPolicies', 'updateElasticsearchDomainConfig_accessPolicies' - IAM access policy as a JSON-formatted string.
--
-- 'vPCOptions', 'updateElasticsearchDomainConfig_vPCOptions' - Options to specify the subnets and security groups for VPC endpoint. For
-- more information, see
-- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc Creating a VPC>
-- in /VPC Endpoints for Amazon Elasticsearch Service Domains/
--
-- 'autoTuneOptions', 'updateElasticsearchDomainConfig_autoTuneOptions' - Specifies Auto-Tune options.
--
-- 'domainEndpointOptions', 'updateElasticsearchDomainConfig_domainEndpointOptions' - Options to specify configuration that will be applied to the domain
-- endpoint.
--
-- 'snapshotOptions', 'updateElasticsearchDomainConfig_snapshotOptions' - Option to set the time, in UTC format, for the daily automated snapshot.
-- Default value is @0@ hours.
--
-- 'logPublishingOptions', 'updateElasticsearchDomainConfig_logPublishingOptions' - Map of @LogType@ and @LogPublishingOption@, each containing options to
-- publish a given type of Elasticsearch log.
--
-- 'domainName', 'updateElasticsearchDomainConfig_domainName' - The name of the Elasticsearch domain that you are updating.
newUpdateElasticsearchDomainConfig ::
  -- | 'domainName'
  Prelude.Text ->
  UpdateElasticsearchDomainConfig
newUpdateElasticsearchDomainConfig pDomainName_ =
  UpdateElasticsearchDomainConfig'
    { nodeToNodeEncryptionOptions =
        Prelude.Nothing,
      advancedOptions = Prelude.Nothing,
      elasticsearchClusterConfig =
        Prelude.Nothing,
      advancedSecurityOptions = Prelude.Nothing,
      cognitoOptions = Prelude.Nothing,
      encryptionAtRestOptions = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      eBSOptions = Prelude.Nothing,
      accessPolicies = Prelude.Nothing,
      vPCOptions = Prelude.Nothing,
      autoTuneOptions = Prelude.Nothing,
      domainEndpointOptions = Prelude.Nothing,
      snapshotOptions = Prelude.Nothing,
      logPublishingOptions = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | Specifies the NodeToNodeEncryptionOptions.
updateElasticsearchDomainConfig_nodeToNodeEncryptionOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe NodeToNodeEncryptionOptions)
updateElasticsearchDomainConfig_nodeToNodeEncryptionOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {nodeToNodeEncryptionOptions} -> nodeToNodeEncryptionOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {nodeToNodeEncryptionOptions = a} :: UpdateElasticsearchDomainConfig)

-- | Modifies the advanced option to allow references to indices in an HTTP
-- request body. Must be @false@ when configuring access to individual
-- sub-resources. By default, the value is @true@. See
-- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options Configuration Advanced Options>
-- for more information.
updateElasticsearchDomainConfig_advancedOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateElasticsearchDomainConfig_advancedOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {advancedOptions} -> advancedOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {advancedOptions = a} :: UpdateElasticsearchDomainConfig) Prelude.. Lens.mapping Lens.coerced

-- | The type and number of instances to instantiate for the domain cluster.
updateElasticsearchDomainConfig_elasticsearchClusterConfig :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe ElasticsearchClusterConfig)
updateElasticsearchDomainConfig_elasticsearchClusterConfig = Lens.lens (\UpdateElasticsearchDomainConfig' {elasticsearchClusterConfig} -> elasticsearchClusterConfig) (\s@UpdateElasticsearchDomainConfig' {} a -> s {elasticsearchClusterConfig = a} :: UpdateElasticsearchDomainConfig)

-- | Specifies advanced security options.
updateElasticsearchDomainConfig_advancedSecurityOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe AdvancedSecurityOptionsInput)
updateElasticsearchDomainConfig_advancedSecurityOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {advancedSecurityOptions} -> advancedSecurityOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {advancedSecurityOptions = a} :: UpdateElasticsearchDomainConfig)

-- | Options to specify the Cognito user and identity pools for Kibana
-- authentication. For more information, see
-- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana>.
updateElasticsearchDomainConfig_cognitoOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe CognitoOptions)
updateElasticsearchDomainConfig_cognitoOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {cognitoOptions} -> cognitoOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {cognitoOptions = a} :: UpdateElasticsearchDomainConfig)

-- | Specifies the Encryption At Rest Options.
updateElasticsearchDomainConfig_encryptionAtRestOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe EncryptionAtRestOptions)
updateElasticsearchDomainConfig_encryptionAtRestOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {encryptionAtRestOptions} -> encryptionAtRestOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {encryptionAtRestOptions = a} :: UpdateElasticsearchDomainConfig)

-- | This flag, when set to True, specifies whether the
-- @UpdateElasticsearchDomain@ request should return the results of
-- validation checks without actually applying the change. This flag, when
-- set to True, specifies the deployment mechanism through which the update
-- shall be applied on the domain. This will not actually perform the
-- Update.
updateElasticsearchDomainConfig_dryRun :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe Prelude.Bool)
updateElasticsearchDomainConfig_dryRun = Lens.lens (\UpdateElasticsearchDomainConfig' {dryRun} -> dryRun) (\s@UpdateElasticsearchDomainConfig' {} a -> s {dryRun = a} :: UpdateElasticsearchDomainConfig)

-- | Specify the type and size of the EBS volume that you want to use.
updateElasticsearchDomainConfig_eBSOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe EBSOptions)
updateElasticsearchDomainConfig_eBSOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {eBSOptions} -> eBSOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {eBSOptions = a} :: UpdateElasticsearchDomainConfig)

-- | IAM access policy as a JSON-formatted string.
updateElasticsearchDomainConfig_accessPolicies :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe Prelude.Text)
updateElasticsearchDomainConfig_accessPolicies = Lens.lens (\UpdateElasticsearchDomainConfig' {accessPolicies} -> accessPolicies) (\s@UpdateElasticsearchDomainConfig' {} a -> s {accessPolicies = a} :: UpdateElasticsearchDomainConfig)

-- | Options to specify the subnets and security groups for VPC endpoint. For
-- more information, see
-- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc Creating a VPC>
-- in /VPC Endpoints for Amazon Elasticsearch Service Domains/
updateElasticsearchDomainConfig_vPCOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe VPCOptions)
updateElasticsearchDomainConfig_vPCOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {vPCOptions} -> vPCOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {vPCOptions = a} :: UpdateElasticsearchDomainConfig)

-- | Specifies Auto-Tune options.
updateElasticsearchDomainConfig_autoTuneOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe AutoTuneOptions)
updateElasticsearchDomainConfig_autoTuneOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {autoTuneOptions} -> autoTuneOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {autoTuneOptions = a} :: UpdateElasticsearchDomainConfig)

-- | Options to specify configuration that will be applied to the domain
-- endpoint.
updateElasticsearchDomainConfig_domainEndpointOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe DomainEndpointOptions)
updateElasticsearchDomainConfig_domainEndpointOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {domainEndpointOptions} -> domainEndpointOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {domainEndpointOptions = a} :: UpdateElasticsearchDomainConfig)

-- | Option to set the time, in UTC format, for the daily automated snapshot.
-- Default value is @0@ hours.
updateElasticsearchDomainConfig_snapshotOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe SnapshotOptions)
updateElasticsearchDomainConfig_snapshotOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {snapshotOptions} -> snapshotOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {snapshotOptions = a} :: UpdateElasticsearchDomainConfig)

-- | Map of @LogType@ and @LogPublishingOption@, each containing options to
-- publish a given type of Elasticsearch log.
updateElasticsearchDomainConfig_logPublishingOptions :: Lens.Lens' UpdateElasticsearchDomainConfig (Prelude.Maybe (Prelude.HashMap LogType LogPublishingOption))
updateElasticsearchDomainConfig_logPublishingOptions = Lens.lens (\UpdateElasticsearchDomainConfig' {logPublishingOptions} -> logPublishingOptions) (\s@UpdateElasticsearchDomainConfig' {} a -> s {logPublishingOptions = a} :: UpdateElasticsearchDomainConfig) Prelude.. Lens.mapping Lens.coerced

-- | The name of the Elasticsearch domain that you are updating.
updateElasticsearchDomainConfig_domainName :: Lens.Lens' UpdateElasticsearchDomainConfig Prelude.Text
updateElasticsearchDomainConfig_domainName = Lens.lens (\UpdateElasticsearchDomainConfig' {domainName} -> domainName) (\s@UpdateElasticsearchDomainConfig' {} a -> s {domainName = a} :: UpdateElasticsearchDomainConfig)

instance
  Core.AWSRequest
    UpdateElasticsearchDomainConfig
  where
  type
    AWSResponse UpdateElasticsearchDomainConfig =
      UpdateElasticsearchDomainConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateElasticsearchDomainConfigResponse'
            Prelude.<$> (x Core..?> "DryRunResults")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "DomainConfig")
      )

instance
  Prelude.Hashable
    UpdateElasticsearchDomainConfig
  where
  hashWithSalt
    _salt
    UpdateElasticsearchDomainConfig' {..} =
      _salt
        `Prelude.hashWithSalt` nodeToNodeEncryptionOptions
        `Prelude.hashWithSalt` advancedOptions
        `Prelude.hashWithSalt` elasticsearchClusterConfig
        `Prelude.hashWithSalt` advancedSecurityOptions
        `Prelude.hashWithSalt` cognitoOptions
        `Prelude.hashWithSalt` encryptionAtRestOptions
        `Prelude.hashWithSalt` dryRun
        `Prelude.hashWithSalt` eBSOptions
        `Prelude.hashWithSalt` accessPolicies
        `Prelude.hashWithSalt` vPCOptions
        `Prelude.hashWithSalt` autoTuneOptions
        `Prelude.hashWithSalt` domainEndpointOptions
        `Prelude.hashWithSalt` snapshotOptions
        `Prelude.hashWithSalt` logPublishingOptions
        `Prelude.hashWithSalt` domainName

instance
  Prelude.NFData
    UpdateElasticsearchDomainConfig
  where
  rnf UpdateElasticsearchDomainConfig' {..} =
    Prelude.rnf nodeToNodeEncryptionOptions
      `Prelude.seq` Prelude.rnf advancedOptions
      `Prelude.seq` Prelude.rnf elasticsearchClusterConfig
      `Prelude.seq` Prelude.rnf advancedSecurityOptions
      `Prelude.seq` Prelude.rnf cognitoOptions
      `Prelude.seq` Prelude.rnf encryptionAtRestOptions
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf eBSOptions
      `Prelude.seq` Prelude.rnf accessPolicies
      `Prelude.seq` Prelude.rnf vPCOptions
      `Prelude.seq` Prelude.rnf autoTuneOptions
      `Prelude.seq` Prelude.rnf domainEndpointOptions
      `Prelude.seq` Prelude.rnf snapshotOptions
      `Prelude.seq` Prelude.rnf logPublishingOptions
      `Prelude.seq` Prelude.rnf domainName

instance
  Core.ToHeaders
    UpdateElasticsearchDomainConfig
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateElasticsearchDomainConfig where
  toJSON UpdateElasticsearchDomainConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NodeToNodeEncryptionOptions" Core..=)
              Prelude.<$> nodeToNodeEncryptionOptions,
            ("AdvancedOptions" Core..=)
              Prelude.<$> advancedOptions,
            ("ElasticsearchClusterConfig" Core..=)
              Prelude.<$> elasticsearchClusterConfig,
            ("AdvancedSecurityOptions" Core..=)
              Prelude.<$> advancedSecurityOptions,
            ("CognitoOptions" Core..=)
              Prelude.<$> cognitoOptions,
            ("EncryptionAtRestOptions" Core..=)
              Prelude.<$> encryptionAtRestOptions,
            ("DryRun" Core..=) Prelude.<$> dryRun,
            ("EBSOptions" Core..=) Prelude.<$> eBSOptions,
            ("AccessPolicies" Core..=)
              Prelude.<$> accessPolicies,
            ("VPCOptions" Core..=) Prelude.<$> vPCOptions,
            ("AutoTuneOptions" Core..=)
              Prelude.<$> autoTuneOptions,
            ("DomainEndpointOptions" Core..=)
              Prelude.<$> domainEndpointOptions,
            ("SnapshotOptions" Core..=)
              Prelude.<$> snapshotOptions,
            ("LogPublishingOptions" Core..=)
              Prelude.<$> logPublishingOptions
          ]
      )

instance Core.ToPath UpdateElasticsearchDomainConfig where
  toPath UpdateElasticsearchDomainConfig' {..} =
    Prelude.mconcat
      [ "/2015-01-01/es/domain/",
        Core.toBS domainName,
        "/config"
      ]

instance Core.ToQuery UpdateElasticsearchDomainConfig where
  toQuery = Prelude.const Prelude.mempty

-- | The result of an @UpdateElasticsearchDomain@ request. Contains the
-- status of the Elasticsearch domain being updated.
--
-- /See:/ 'newUpdateElasticsearchDomainConfigResponse' smart constructor.
data UpdateElasticsearchDomainConfigResponse = UpdateElasticsearchDomainConfigResponse'
  { -- | Contains result of DryRun.
    dryRunResults :: Prelude.Maybe DryRunResults,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of the updated Elasticsearch domain.
    domainConfig :: ElasticsearchDomainConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateElasticsearchDomainConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRunResults', 'updateElasticsearchDomainConfigResponse_dryRunResults' - Contains result of DryRun.
--
-- 'httpStatus', 'updateElasticsearchDomainConfigResponse_httpStatus' - The response's http status code.
--
-- 'domainConfig', 'updateElasticsearchDomainConfigResponse_domainConfig' - The status of the updated Elasticsearch domain.
newUpdateElasticsearchDomainConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'domainConfig'
  ElasticsearchDomainConfig ->
  UpdateElasticsearchDomainConfigResponse
newUpdateElasticsearchDomainConfigResponse
  pHttpStatus_
  pDomainConfig_ =
    UpdateElasticsearchDomainConfigResponse'
      { dryRunResults =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        domainConfig = pDomainConfig_
      }

-- | Contains result of DryRun.
updateElasticsearchDomainConfigResponse_dryRunResults :: Lens.Lens' UpdateElasticsearchDomainConfigResponse (Prelude.Maybe DryRunResults)
updateElasticsearchDomainConfigResponse_dryRunResults = Lens.lens (\UpdateElasticsearchDomainConfigResponse' {dryRunResults} -> dryRunResults) (\s@UpdateElasticsearchDomainConfigResponse' {} a -> s {dryRunResults = a} :: UpdateElasticsearchDomainConfigResponse)

-- | The response's http status code.
updateElasticsearchDomainConfigResponse_httpStatus :: Lens.Lens' UpdateElasticsearchDomainConfigResponse Prelude.Int
updateElasticsearchDomainConfigResponse_httpStatus = Lens.lens (\UpdateElasticsearchDomainConfigResponse' {httpStatus} -> httpStatus) (\s@UpdateElasticsearchDomainConfigResponse' {} a -> s {httpStatus = a} :: UpdateElasticsearchDomainConfigResponse)

-- | The status of the updated Elasticsearch domain.
updateElasticsearchDomainConfigResponse_domainConfig :: Lens.Lens' UpdateElasticsearchDomainConfigResponse ElasticsearchDomainConfig
updateElasticsearchDomainConfigResponse_domainConfig = Lens.lens (\UpdateElasticsearchDomainConfigResponse' {domainConfig} -> domainConfig) (\s@UpdateElasticsearchDomainConfigResponse' {} a -> s {domainConfig = a} :: UpdateElasticsearchDomainConfigResponse)

instance
  Prelude.NFData
    UpdateElasticsearchDomainConfigResponse
  where
  rnf UpdateElasticsearchDomainConfigResponse' {..} =
    Prelude.rnf dryRunResults
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf domainConfig

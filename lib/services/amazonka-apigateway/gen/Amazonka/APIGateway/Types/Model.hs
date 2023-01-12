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
-- Module      : Amazonka.APIGateway.Types.Model
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.APIGateway.Types.Model where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Represents the data structure of a method\'s request or response
-- payload.
--
-- /See:/ 'newModel' smart constructor.
data Model = Model'
  { -- | The content-type for the model.
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The description of the model.
    description :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the model resource.
    id :: Prelude.Maybe Prelude.Text,
    -- | The name of the model. Must be an alphanumeric string.
    name :: Prelude.Maybe Prelude.Text,
    -- | The schema for the model. For @application\/json@ models, this should be
    -- JSON schema draft 4 model. Do not include \"\\*\/\" characters in the
    -- description of any properties because such \"\\*\/\" characters may be
    -- interpreted as the closing marker for comments in some languages, such
    -- as Java or JavaScript, causing the installation of your API\'s SDK
    -- generated by API Gateway to fail.
    schema :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Model' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentType', 'model_contentType' - The content-type for the model.
--
-- 'description', 'model_description' - The description of the model.
--
-- 'id', 'model_id' - The identifier for the model resource.
--
-- 'name', 'model_name' - The name of the model. Must be an alphanumeric string.
--
-- 'schema', 'model_schema' - The schema for the model. For @application\/json@ models, this should be
-- JSON schema draft 4 model. Do not include \"\\*\/\" characters in the
-- description of any properties because such \"\\*\/\" characters may be
-- interpreted as the closing marker for comments in some languages, such
-- as Java or JavaScript, causing the installation of your API\'s SDK
-- generated by API Gateway to fail.
newModel ::
  Model
newModel =
  Model'
    { contentType = Prelude.Nothing,
      description = Prelude.Nothing,
      id = Prelude.Nothing,
      name = Prelude.Nothing,
      schema = Prelude.Nothing
    }

-- | The content-type for the model.
model_contentType :: Lens.Lens' Model (Prelude.Maybe Prelude.Text)
model_contentType = Lens.lens (\Model' {contentType} -> contentType) (\s@Model' {} a -> s {contentType = a} :: Model)

-- | The description of the model.
model_description :: Lens.Lens' Model (Prelude.Maybe Prelude.Text)
model_description = Lens.lens (\Model' {description} -> description) (\s@Model' {} a -> s {description = a} :: Model)

-- | The identifier for the model resource.
model_id :: Lens.Lens' Model (Prelude.Maybe Prelude.Text)
model_id = Lens.lens (\Model' {id} -> id) (\s@Model' {} a -> s {id = a} :: Model)

-- | The name of the model. Must be an alphanumeric string.
model_name :: Lens.Lens' Model (Prelude.Maybe Prelude.Text)
model_name = Lens.lens (\Model' {name} -> name) (\s@Model' {} a -> s {name = a} :: Model)

-- | The schema for the model. For @application\/json@ models, this should be
-- JSON schema draft 4 model. Do not include \"\\*\/\" characters in the
-- description of any properties because such \"\\*\/\" characters may be
-- interpreted as the closing marker for comments in some languages, such
-- as Java or JavaScript, causing the installation of your API\'s SDK
-- generated by API Gateway to fail.
model_schema :: Lens.Lens' Model (Prelude.Maybe Prelude.Text)
model_schema = Lens.lens (\Model' {schema} -> schema) (\s@Model' {} a -> s {schema = a} :: Model)

instance Data.FromJSON Model where
  parseJSON =
    Data.withObject
      "Model"
      ( \x ->
          Model'
            Prelude.<$> (x Data..:? "contentType")
            Prelude.<*> (x Data..:? "description")
            Prelude.<*> (x Data..:? "id")
            Prelude.<*> (x Data..:? "name")
            Prelude.<*> (x Data..:? "schema")
      )

instance Prelude.Hashable Model where
  hashWithSalt _salt Model' {..} =
    _salt `Prelude.hashWithSalt` contentType
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` schema

instance Prelude.NFData Model where
  rnf Model' {..} =
    Prelude.rnf contentType
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf schema

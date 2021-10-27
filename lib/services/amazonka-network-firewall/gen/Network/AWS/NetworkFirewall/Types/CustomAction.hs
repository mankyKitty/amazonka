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
-- Module      : Network.AWS.NetworkFirewall.Types.CustomAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.CustomAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkFirewall.Types.ActionDefinition
import qualified Network.AWS.Prelude as Prelude

-- | An optional, non-standard action to use for stateless packet handling.
-- You can define this in addition to the standard action that you must
-- specify.
--
-- You define and name the custom actions that you want to be able to use,
-- and then you reference them by name in your actions settings.
--
-- You can use custom actions in the following places:
--
-- -   In a rule group\'s StatelessRulesAndCustomActions specification. The
--     custom actions are available for use by name inside the
--     @StatelessRulesAndCustomActions@ where you define them. You can use
--     them for your stateless rule actions to specify what to do with a
--     packet that matches the rule\'s match attributes.
--
-- -   In a FirewallPolicy specification, in @StatelessCustomActions@. The
--     custom actions are available for use inside the policy where you
--     define them. You can use them for the policy\'s default stateless
--     actions settings to specify what to do with packets that don\'t
--     match any of the policy\'s stateless rules.
--
-- /See:/ 'newCustomAction' smart constructor.
data CustomAction = CustomAction'
  { -- | The descriptive name of the custom action. You can\'t change the name of
    -- a custom action after you create it.
    actionName :: Prelude.Text,
    -- | The custom action associated with the action name.
    actionDefinition :: ActionDefinition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionName', 'customAction_actionName' - The descriptive name of the custom action. You can\'t change the name of
-- a custom action after you create it.
--
-- 'actionDefinition', 'customAction_actionDefinition' - The custom action associated with the action name.
newCustomAction ::
  -- | 'actionName'
  Prelude.Text ->
  -- | 'actionDefinition'
  ActionDefinition ->
  CustomAction
newCustomAction pActionName_ pActionDefinition_ =
  CustomAction'
    { actionName = pActionName_,
      actionDefinition = pActionDefinition_
    }

-- | The descriptive name of the custom action. You can\'t change the name of
-- a custom action after you create it.
customAction_actionName :: Lens.Lens' CustomAction Prelude.Text
customAction_actionName = Lens.lens (\CustomAction' {actionName} -> actionName) (\s@CustomAction' {} a -> s {actionName = a} :: CustomAction)

-- | The custom action associated with the action name.
customAction_actionDefinition :: Lens.Lens' CustomAction ActionDefinition
customAction_actionDefinition = Lens.lens (\CustomAction' {actionDefinition} -> actionDefinition) (\s@CustomAction' {} a -> s {actionDefinition = a} :: CustomAction)

instance Core.FromJSON CustomAction where
  parseJSON =
    Core.withObject
      "CustomAction"
      ( \x ->
          CustomAction'
            Prelude.<$> (x Core..: "ActionName")
            Prelude.<*> (x Core..: "ActionDefinition")
      )

instance Prelude.Hashable CustomAction

instance Prelude.NFData CustomAction

instance Core.ToJSON CustomAction where
  toJSON CustomAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ActionName" Core..= actionName),
            Prelude.Just
              ("ActionDefinition" Core..= actionDefinition)
          ]
      )

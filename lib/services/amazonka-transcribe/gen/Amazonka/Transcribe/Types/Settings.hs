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
-- Module      : Amazonka.Transcribe.Types.Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.Settings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Transcribe.Types.VocabularyFilterMethod

-- | Allows additional optional settings in your request, including channel
-- identification, alternative transcriptions, and speaker labeling; allows
-- you to apply custom vocabularies to your transcription job.
--
-- /See:/ 'newSettings' smart constructor.
data Settings = Settings'
  { -- | Specify how you want your vocabulary filter applied to your transcript.
    --
    -- To replace words with @***@, choose @mask@.
    --
    -- To delete words, choose @remove@.
    --
    -- To flag words without changing them, choose @tag@.
    vocabularyFilterMethod :: Prelude.Maybe VocabularyFilterMethod,
    -- | The name of the custom vocabulary you want to use in your transcription
    -- job request. This name is case sensitive, cannot contain spaces, and
    -- must be unique within an Amazon Web Services account.
    vocabularyName :: Prelude.Maybe Prelude.Text,
    -- | Specify the maximum number of speakers you want to identify in your
    -- media.
    --
    -- Note that if your media contains more speakers than the specified
    -- number, multiple speakers will be identified as a single speaker.
    --
    -- If you specify the @MaxSpeakerLabels@ field, you must set the
    -- @ShowSpeakerLabels@ field to true.
    maxSpeakerLabels :: Prelude.Maybe Prelude.Natural,
    -- | Indicate the maximum number of alternative transcriptions you want
    -- Amazon Transcribe to include in your transcript.
    --
    -- If you select a number greater than the number of alternative
    -- transcriptions generated by Amazon Transcribe, only the actual number of
    -- alternative transcriptions are included.
    --
    -- If you include @MaxAlternatives@ in your request, you must also include
    -- @ShowAlternatives@ with a value of @true@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
    maxAlternatives :: Prelude.Maybe Prelude.Natural,
    -- | The name of the custom vocabulary filter you want to use in your
    -- transcription job request. This name is case sensitive, cannot contain
    -- spaces, and must be unique within an Amazon Web Services account.
    --
    -- Note that if you include @VocabularyFilterName@ in your request, you
    -- must also include @VocabularyFilterMethod@.
    vocabularyFilterName :: Prelude.Maybe Prelude.Text,
    -- | Enables speaker identification (diarization) in your transcription
    -- output. Speaker identification labels the speech from individual
    -- speakers in your media file.
    --
    -- If you enable @ShowSpeakerLabels@ in your request, you must also include
    -- @MaxSpeakerLabels@.
    --
    -- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
    -- in the same request. Including both parameters returns a
    -- @BadRequestException@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html Identifying speakers (diarization)>.
    showSpeakerLabels :: Prelude.Maybe Prelude.Bool,
    -- | Enables channel identification in multi-channel audio.
    --
    -- Channel identification transcribes the audio on each channel
    -- independently, then appends the output for each channel into one
    -- transcript.
    --
    -- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
    -- in the same request. Including both parameters returns a
    -- @BadRequestException@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html Transcribing multi-channel audio>.
    channelIdentification :: Prelude.Maybe Prelude.Bool,
    -- | To include alternative transcriptions within your transcription output,
    -- include @ShowAlternatives@ in your transcription request.
    --
    -- If you have multi-channel audio and do not enable channel
    -- identification, your audio is transcribed in a continuous manner and
    -- your transcript does not separate the speech by channel.
    --
    -- If you include @ShowAlternatives@, you must also include
    -- @MaxAlternatives@, which is the maximum number of alternative
    -- transcriptions you want Amazon Transcribe to generate.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
    showAlternatives :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Settings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyFilterMethod', 'settings_vocabularyFilterMethod' - Specify how you want your vocabulary filter applied to your transcript.
--
-- To replace words with @***@, choose @mask@.
--
-- To delete words, choose @remove@.
--
-- To flag words without changing them, choose @tag@.
--
-- 'vocabularyName', 'settings_vocabularyName' - The name of the custom vocabulary you want to use in your transcription
-- job request. This name is case sensitive, cannot contain spaces, and
-- must be unique within an Amazon Web Services account.
--
-- 'maxSpeakerLabels', 'settings_maxSpeakerLabels' - Specify the maximum number of speakers you want to identify in your
-- media.
--
-- Note that if your media contains more speakers than the specified
-- number, multiple speakers will be identified as a single speaker.
--
-- If you specify the @MaxSpeakerLabels@ field, you must set the
-- @ShowSpeakerLabels@ field to true.
--
-- 'maxAlternatives', 'settings_maxAlternatives' - Indicate the maximum number of alternative transcriptions you want
-- Amazon Transcribe to include in your transcript.
--
-- If you select a number greater than the number of alternative
-- transcriptions generated by Amazon Transcribe, only the actual number of
-- alternative transcriptions are included.
--
-- If you include @MaxAlternatives@ in your request, you must also include
-- @ShowAlternatives@ with a value of @true@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
--
-- 'vocabularyFilterName', 'settings_vocabularyFilterName' - The name of the custom vocabulary filter you want to use in your
-- transcription job request. This name is case sensitive, cannot contain
-- spaces, and must be unique within an Amazon Web Services account.
--
-- Note that if you include @VocabularyFilterName@ in your request, you
-- must also include @VocabularyFilterMethod@.
--
-- 'showSpeakerLabels', 'settings_showSpeakerLabels' - Enables speaker identification (diarization) in your transcription
-- output. Speaker identification labels the speech from individual
-- speakers in your media file.
--
-- If you enable @ShowSpeakerLabels@ in your request, you must also include
-- @MaxSpeakerLabels@.
--
-- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
-- in the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html Identifying speakers (diarization)>.
--
-- 'channelIdentification', 'settings_channelIdentification' - Enables channel identification in multi-channel audio.
--
-- Channel identification transcribes the audio on each channel
-- independently, then appends the output for each channel into one
-- transcript.
--
-- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
-- in the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html Transcribing multi-channel audio>.
--
-- 'showAlternatives', 'settings_showAlternatives' - To include alternative transcriptions within your transcription output,
-- include @ShowAlternatives@ in your transcription request.
--
-- If you have multi-channel audio and do not enable channel
-- identification, your audio is transcribed in a continuous manner and
-- your transcript does not separate the speech by channel.
--
-- If you include @ShowAlternatives@, you must also include
-- @MaxAlternatives@, which is the maximum number of alternative
-- transcriptions you want Amazon Transcribe to generate.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
newSettings ::
  Settings
newSettings =
  Settings'
    { vocabularyFilterMethod = Prelude.Nothing,
      vocabularyName = Prelude.Nothing,
      maxSpeakerLabels = Prelude.Nothing,
      maxAlternatives = Prelude.Nothing,
      vocabularyFilterName = Prelude.Nothing,
      showSpeakerLabels = Prelude.Nothing,
      channelIdentification = Prelude.Nothing,
      showAlternatives = Prelude.Nothing
    }

-- | Specify how you want your vocabulary filter applied to your transcript.
--
-- To replace words with @***@, choose @mask@.
--
-- To delete words, choose @remove@.
--
-- To flag words without changing them, choose @tag@.
settings_vocabularyFilterMethod :: Lens.Lens' Settings (Prelude.Maybe VocabularyFilterMethod)
settings_vocabularyFilterMethod = Lens.lens (\Settings' {vocabularyFilterMethod} -> vocabularyFilterMethod) (\s@Settings' {} a -> s {vocabularyFilterMethod = a} :: Settings)

-- | The name of the custom vocabulary you want to use in your transcription
-- job request. This name is case sensitive, cannot contain spaces, and
-- must be unique within an Amazon Web Services account.
settings_vocabularyName :: Lens.Lens' Settings (Prelude.Maybe Prelude.Text)
settings_vocabularyName = Lens.lens (\Settings' {vocabularyName} -> vocabularyName) (\s@Settings' {} a -> s {vocabularyName = a} :: Settings)

-- | Specify the maximum number of speakers you want to identify in your
-- media.
--
-- Note that if your media contains more speakers than the specified
-- number, multiple speakers will be identified as a single speaker.
--
-- If you specify the @MaxSpeakerLabels@ field, you must set the
-- @ShowSpeakerLabels@ field to true.
settings_maxSpeakerLabels :: Lens.Lens' Settings (Prelude.Maybe Prelude.Natural)
settings_maxSpeakerLabels = Lens.lens (\Settings' {maxSpeakerLabels} -> maxSpeakerLabels) (\s@Settings' {} a -> s {maxSpeakerLabels = a} :: Settings)

-- | Indicate the maximum number of alternative transcriptions you want
-- Amazon Transcribe to include in your transcript.
--
-- If you select a number greater than the number of alternative
-- transcriptions generated by Amazon Transcribe, only the actual number of
-- alternative transcriptions are included.
--
-- If you include @MaxAlternatives@ in your request, you must also include
-- @ShowAlternatives@ with a value of @true@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
settings_maxAlternatives :: Lens.Lens' Settings (Prelude.Maybe Prelude.Natural)
settings_maxAlternatives = Lens.lens (\Settings' {maxAlternatives} -> maxAlternatives) (\s@Settings' {} a -> s {maxAlternatives = a} :: Settings)

-- | The name of the custom vocabulary filter you want to use in your
-- transcription job request. This name is case sensitive, cannot contain
-- spaces, and must be unique within an Amazon Web Services account.
--
-- Note that if you include @VocabularyFilterName@ in your request, you
-- must also include @VocabularyFilterMethod@.
settings_vocabularyFilterName :: Lens.Lens' Settings (Prelude.Maybe Prelude.Text)
settings_vocabularyFilterName = Lens.lens (\Settings' {vocabularyFilterName} -> vocabularyFilterName) (\s@Settings' {} a -> s {vocabularyFilterName = a} :: Settings)

-- | Enables speaker identification (diarization) in your transcription
-- output. Speaker identification labels the speech from individual
-- speakers in your media file.
--
-- If you enable @ShowSpeakerLabels@ in your request, you must also include
-- @MaxSpeakerLabels@.
--
-- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
-- in the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html Identifying speakers (diarization)>.
settings_showSpeakerLabels :: Lens.Lens' Settings (Prelude.Maybe Prelude.Bool)
settings_showSpeakerLabels = Lens.lens (\Settings' {showSpeakerLabels} -> showSpeakerLabels) (\s@Settings' {} a -> s {showSpeakerLabels = a} :: Settings)

-- | Enables channel identification in multi-channel audio.
--
-- Channel identification transcribes the audio on each channel
-- independently, then appends the output for each channel into one
-- transcript.
--
-- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
-- in the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html Transcribing multi-channel audio>.
settings_channelIdentification :: Lens.Lens' Settings (Prelude.Maybe Prelude.Bool)
settings_channelIdentification = Lens.lens (\Settings' {channelIdentification} -> channelIdentification) (\s@Settings' {} a -> s {channelIdentification = a} :: Settings)

-- | To include alternative transcriptions within your transcription output,
-- include @ShowAlternatives@ in your transcription request.
--
-- If you have multi-channel audio and do not enable channel
-- identification, your audio is transcribed in a continuous manner and
-- your transcript does not separate the speech by channel.
--
-- If you include @ShowAlternatives@, you must also include
-- @MaxAlternatives@, which is the maximum number of alternative
-- transcriptions you want Amazon Transcribe to generate.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
settings_showAlternatives :: Lens.Lens' Settings (Prelude.Maybe Prelude.Bool)
settings_showAlternatives = Lens.lens (\Settings' {showAlternatives} -> showAlternatives) (\s@Settings' {} a -> s {showAlternatives = a} :: Settings)

instance Core.FromJSON Settings where
  parseJSON =
    Core.withObject
      "Settings"
      ( \x ->
          Settings'
            Prelude.<$> (x Core..:? "VocabularyFilterMethod")
            Prelude.<*> (x Core..:? "VocabularyName")
            Prelude.<*> (x Core..:? "MaxSpeakerLabels")
            Prelude.<*> (x Core..:? "MaxAlternatives")
            Prelude.<*> (x Core..:? "VocabularyFilterName")
            Prelude.<*> (x Core..:? "ShowSpeakerLabels")
            Prelude.<*> (x Core..:? "ChannelIdentification")
            Prelude.<*> (x Core..:? "ShowAlternatives")
      )

instance Prelude.Hashable Settings where
  hashWithSalt _salt Settings' {..} =
    _salt `Prelude.hashWithSalt` vocabularyFilterMethod
      `Prelude.hashWithSalt` vocabularyName
      `Prelude.hashWithSalt` maxSpeakerLabels
      `Prelude.hashWithSalt` maxAlternatives
      `Prelude.hashWithSalt` vocabularyFilterName
      `Prelude.hashWithSalt` showSpeakerLabels
      `Prelude.hashWithSalt` channelIdentification
      `Prelude.hashWithSalt` showAlternatives

instance Prelude.NFData Settings where
  rnf Settings' {..} =
    Prelude.rnf vocabularyFilterMethod
      `Prelude.seq` Prelude.rnf vocabularyName
      `Prelude.seq` Prelude.rnf maxSpeakerLabels
      `Prelude.seq` Prelude.rnf maxAlternatives
      `Prelude.seq` Prelude.rnf vocabularyFilterName
      `Prelude.seq` Prelude.rnf showSpeakerLabels
      `Prelude.seq` Prelude.rnf channelIdentification
      `Prelude.seq` Prelude.rnf showAlternatives

instance Core.ToJSON Settings where
  toJSON Settings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VocabularyFilterMethod" Core..=)
              Prelude.<$> vocabularyFilterMethod,
            ("VocabularyName" Core..=)
              Prelude.<$> vocabularyName,
            ("MaxSpeakerLabels" Core..=)
              Prelude.<$> maxSpeakerLabels,
            ("MaxAlternatives" Core..=)
              Prelude.<$> maxAlternatives,
            ("VocabularyFilterName" Core..=)
              Prelude.<$> vocabularyFilterName,
            ("ShowSpeakerLabels" Core..=)
              Prelude.<$> showSpeakerLabels,
            ("ChannelIdentification" Core..=)
              Prelude.<$> channelIdentification,
            ("ShowAlternatives" Core..=)
              Prelude.<$> showAlternatives
          ]
      )

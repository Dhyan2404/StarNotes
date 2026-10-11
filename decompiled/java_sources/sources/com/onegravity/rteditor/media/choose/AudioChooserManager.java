package com.onegravity.rteditor.media.choose;

import android.content.Intent;
import android.os.Bundle;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.MonitoredActivity;
import com.onegravity.rteditor.media.choose.MediaChooserManager;
import com.onegravity.rteditor.media.choose.processor.AudioProcessor;
import com.onegravity.rteditor.utils.Constants;

/* loaded from: classes7.dex */
public class AudioChooserManager extends MediaChooserManager implements AudioProcessor.AudioProcessorListener {

    /* loaded from: classes7.dex */
    public interface AudioChooserListener extends MediaChooserManager.MediaChooserListener {
        void onAudioChosen(RTAudio rTAudio);
    }

    public AudioChooserManager(MonitoredActivity monitoredActivity, Constants.MediaAction mediaAction, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, AudioChooserListener audioChooserListener, Bundle bundle) {
        super(monitoredActivity, mediaAction, rTMediaFactory, audioChooserListener, bundle);
    }

    @Override // com.onegravity.rteditor.media.choose.MediaChooserManager
    /* renamed from: a */
    public boolean mo31679a() throws IllegalArgumentException {
        return false;
    }

    @Override // com.onegravity.rteditor.media.choose.MediaChooserManager
    /* renamed from: e */
    public void mo31680e(Constants.MediaAction mediaAction, Intent intent) {
    }

    @Override // com.onegravity.rteditor.media.choose.processor.AudioProcessor.AudioProcessorListener
    public void onAudioProcessed(RTAudio rTAudio) {
    }
}

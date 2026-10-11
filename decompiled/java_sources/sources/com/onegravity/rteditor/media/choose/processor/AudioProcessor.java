package com.onegravity.rteditor.media.choose.processor;

import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.choose.processor.MediaProcessor;
import java.io.IOException;

/* loaded from: classes7.dex */
public class AudioProcessor extends MediaProcessor {

    /* loaded from: classes7.dex */
    public interface AudioProcessorListener extends MediaProcessor.MediaProcessorListener {
        void onAudioProcessed(RTAudio rTAudio);
    }

    public AudioProcessor(String str, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, AudioProcessorListener audioProcessorListener) {
        super(str, rTMediaFactory, audioProcessorListener);
    }

    @Override // com.onegravity.rteditor.media.choose.processor.MediaProcessor
    public void processMedia() throws IOException, Exception {
    }
}

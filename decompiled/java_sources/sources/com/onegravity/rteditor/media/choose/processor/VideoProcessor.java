package com.onegravity.rteditor.media.choose.processor;

import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.choose.processor.MediaProcessor;
import java.io.IOException;

/* loaded from: classes7.dex */
public class VideoProcessor extends MediaProcessor {

    /* loaded from: classes7.dex */
    public interface VideoProcessorListener extends MediaProcessor.MediaProcessorListener {
        void onVideoProcessed(RTVideo rTVideo);
    }

    public VideoProcessor(String str, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, VideoProcessorListener videoProcessorListener) {
        super(str, rTMediaFactory, videoProcessorListener);
    }

    @Override // com.onegravity.rteditor.media.choose.processor.MediaProcessor
    public void processMedia() throws IOException, Exception {
    }
}

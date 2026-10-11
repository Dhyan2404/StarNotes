package com.onegravity.rteditor.media.choose.processor;

import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTMediaSource;
import com.onegravity.rteditor.api.media.RTMediaType;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.media.choose.processor.MediaProcessor;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes7.dex */
public class ImageProcessor extends MediaProcessor {

    /* renamed from: g */
    public ImageProcessorListener f40410g;

    /* loaded from: classes7.dex */
    public interface ImageProcessorListener extends MediaProcessor.MediaProcessorListener {
        void onImageProcessed(RTImage rTImage);
    }

    public ImageProcessor(String str, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory, ImageProcessorListener imageProcessorListener) {
        super(str, rTMediaFactory, imageProcessorListener);
        this.f40410g = imageProcessorListener;
    }

    @Override // com.onegravity.rteditor.media.choose.processor.MediaProcessor
    public void processMedia() throws IOException, Exception {
        ImageProcessorListener imageProcessorListener;
        InputStream inputStream = super.getInputStream();
        if (inputStream == null) {
            ImageProcessorListener imageProcessorListener2 = this.f40410g;
            if (imageProcessorListener2 != null) {
                imageProcessorListener2.onError("No file found to process");
                return;
            }
            return;
        }
        RTImage createImage = this.mMediaFactory.createImage(new RTMediaSource(RTMediaType.IMAGE, inputStream, getOriginalFile(), getMimeType()));
        if (createImage == null || (imageProcessorListener = this.f40410g) == null) {
            return;
        }
        imageProcessorListener.onImageProcessed(createImage);
    }
}

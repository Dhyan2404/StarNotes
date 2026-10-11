package com.onegravity.rteditor.api;

import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTMediaSource;
import com.onegravity.rteditor.api.media.RTVideo;
import java.io.Serializable;

/* loaded from: classes7.dex */
public interface RTMediaFactory<I extends RTImage, A extends RTAudio, V extends RTVideo> extends Serializable {
    A createAudio(RTMediaSource rTMediaSource);

    A createAudio(String str);

    I createImage(RTMediaSource rTMediaSource);

    I createImage(String str);

    V createVideo(RTMediaSource rTMediaSource);

    V createVideo(String str);
}

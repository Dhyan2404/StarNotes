package com.onegravity.rteditor.spans;

import com.onegravity.rteditor.api.media.RTVideo;

/* loaded from: classes7.dex */
public class VideoSpan extends MediaSpan {
    public VideoSpan(RTVideo rTVideo, boolean z) {
        super(rTVideo, z);
    }

    public RTVideo getVideo() {
        return (RTVideo) this.mMedia;
    }
}

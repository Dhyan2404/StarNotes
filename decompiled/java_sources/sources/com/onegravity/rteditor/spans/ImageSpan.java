package com.onegravity.rteditor.spans;

import com.onegravity.rteditor.api.media.RTImage;

/* loaded from: classes7.dex */
public class ImageSpan extends MediaSpan {
    public ImageSpan(RTImage rTImage, boolean z) {
        super(rTImage, z);
    }

    public RTImage getImage() {
        return (RTImage) this.mMedia;
    }
}

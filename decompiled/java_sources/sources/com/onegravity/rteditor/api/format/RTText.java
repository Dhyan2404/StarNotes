package com.onegravity.rteditor.api.format;

import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;

/* loaded from: classes7.dex */
public abstract class RTText {

    /* renamed from: a */
    public final RTFormat f40136a;

    /* renamed from: b */
    public final CharSequence f40137b;

    public RTText(RTFormat rTFormat, CharSequence charSequence) {
        this.f40136a = rTFormat;
        this.f40137b = charSequence;
    }

    public RTText convertTo(RTFormat rTFormat, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory) {
        if (rTFormat == this.f40136a) {
            return this;
        }
        throw new UnsupportedOperationException("Can't convert from " + this.f40136a.getClass().getSimpleName() + " to " + rTFormat.getClass().getSimpleName());
    }

    public RTFormat getFormat() {
        return this.f40136a;
    }

    public CharSequence getText() {
        return this.f40137b;
    }
}

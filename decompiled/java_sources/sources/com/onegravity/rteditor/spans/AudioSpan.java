package com.onegravity.rteditor.spans;

import com.onegravity.rteditor.api.media.RTAudio;

/* loaded from: classes7.dex */
public class AudioSpan extends MediaSpan {
    public AudioSpan(RTAudio rTAudio, boolean z) {
        super(rTAudio, z);
    }

    public RTAudio getAudio() {
        return (RTAudio) this.mMedia;
    }
}

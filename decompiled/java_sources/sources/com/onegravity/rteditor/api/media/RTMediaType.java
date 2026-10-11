package com.onegravity.rteditor.api.media;

import com.onyx.galaxy.note.message.data.MessageConst;

/* loaded from: classes7.dex */
public enum RTMediaType {
    IMAGE(MessageConst.KEY_IMAGES),
    VIDEO("videos"),
    AUDIO("audios");

    private String mMediaPath;

    RTMediaType(String str) {
        this.mMediaPath = str;
    }

    public String mediaPath() {
        return this.mMediaPath;
    }
}

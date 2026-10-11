package com.onegravity.rteditor.spans;

import com.onegravity.rteditor.api.RTApi;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTMedia;
import com.onegravity.rteditor.media.MediaUtils;

/* loaded from: classes7.dex */
public abstract class MediaSpan extends android.text.style.ImageSpan {

    /* renamed from: e */
    public final boolean f40511e;
    protected final RTMedia mMedia;

    public MediaSpan(RTMedia rTMedia, boolean z) {
        super(RTApi.getApplicationContext(), MediaUtils.createFileUri(rTMedia.getFilePath(RTFormat.SPANNED)));
        this.mMedia = rTMedia;
        this.f40511e = z;
    }

    public RTMedia getMedia() {
        return this.mMedia;
    }

    public boolean isSaved() {
        return this.f40511e;
    }
}

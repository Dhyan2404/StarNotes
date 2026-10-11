package com.onegravity.rteditor.api.media;

import java.io.InputStream;

/* loaded from: classes7.dex */
public class RTMediaSource {

    /* renamed from: a */
    public final RTMediaType f40138a;

    /* renamed from: b */
    public final InputStream f40139b;

    /* renamed from: c */
    public final String f40140c;

    /* renamed from: d */
    public final String f40141d;

    public RTMediaSource(RTMediaType rTMediaType, InputStream inputStream, String str, String str2) {
        this.f40138a = rTMediaType;
        this.f40139b = inputStream;
        this.f40140c = str;
        this.f40141d = str2;
    }

    public InputStream getInputStream() {
        return this.f40139b;
    }

    public RTMediaType getMediaType() {
        return this.f40138a;
    }

    public String getMimeType() {
        return this.f40141d;
    }

    public String getName() {
        return this.f40140c;
    }
}

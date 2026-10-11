package com.onyx.harfbuzz.graphics;

import android.graphics.Bitmap;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;

/* loaded from: classes9.dex */
public class GlyphImage {

    /* renamed from: a */
    @NonNull
    public final Bitmap f62757a;

    /* renamed from: b */
    public final int f62758b;

    /* renamed from: c */
    public final int f62759c;

    /* renamed from: d */
    public final long f62760d;

    /* renamed from: e */
    public final long f62761e;

    /* renamed from: f */
    public final long f62762f;

    /* renamed from: g */
    public final long f62763g;

    /* renamed from: h */
    public final long f62764h;

    /* renamed from: i */
    public final long f62765i;

    @Keep
    public GlyphImage(@NonNull Bitmap bitmap, int i, int i2, long j, long j2, long j3, long j4, long j5, long j6) {
        this.f62758b = i;
        this.f62759c = i2;
        this.f62760d = j;
        this.f62761e = j2;
        this.f62762f = j3;
        this.f62763g = j4;
        this.f62764h = j5;
        this.f62765i = j6;
        this.f62757a = bitmap;
    }

    @NonNull
    public Bitmap bitmap() {
        return this.f62757a;
    }

    public int bottom() {
        return this.f62759c + this.f62757a.getHeight();
    }

    public long getHoriAdvance() {
        return this.f62764h;
    }

    public long getVertAdvance() {
        return this.f62765i;
    }

    public long horiBearingX() {
        return this.f62762f;
    }

    public long horiBearingY() {
        return this.f62763g;
    }

    public int left() {
        return this.f62758b;
    }

    public int right() {
        return this.f62758b + this.f62757a.getWidth();
    }

    public String toString() {
        return "GlyphImage{bitmap=" + this.f62757a + ", left=" + this.f62758b + ", top=" + this.f62759c + ", vertBearingX=" + this.f62760d + ", vertBearingY=" + this.f62761e + ", horiBearingX=" + this.f62762f + ", horiBearingY=" + this.f62763g + ", horiAdvance=" + this.f62764h + ", vertAdvance=" + this.f62765i + '}';
    }

    public int top() {
        return this.f62759c;
    }

    public long vertBearingX() {
        return this.f62760d;
    }

    public long vertBearingY() {
        return this.f62761e;
    }
}

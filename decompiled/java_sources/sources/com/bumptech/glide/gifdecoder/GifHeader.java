package com.bumptech.glide.gifdecoder;

import androidx.annotation.ColorInt;
import com.sunia.HTREnginev2.u2h;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class GifHeader {
    public static final int NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST = -1;
    public static final int NETSCAPE_LOOP_COUNT_FOREVER = 0;

    /* renamed from: d */
    public u2h f14397d;

    /* renamed from: f */
    public int f14399f;

    /* renamed from: g */
    public int f14400g;

    /* renamed from: h */
    public boolean f14401h;

    /* renamed from: i */
    public int f14402i;

    /* renamed from: j */
    public int f14403j;

    /* renamed from: k */
    public int f14404k;

    /* renamed from: l */
    @ColorInt
    public int f14405l;

    /* renamed from: a */
    @ColorInt
    public int[] f14394a = null;

    /* renamed from: b */
    public int f14395b = 0;

    /* renamed from: c */
    public int f14396c = 0;

    /* renamed from: e */
    public final List<u2h> f14398e = new ArrayList();

    /* renamed from: m */
    public int f14406m = -1;

    public int getHeight() {
        return this.f14400g;
    }

    public int getNumFrames() {
        return this.f14396c;
    }

    public int getStatus() {
        return this.f14395b;
    }

    public int getWidth() {
        return this.f14399f;
    }
}

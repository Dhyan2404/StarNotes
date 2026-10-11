package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.PreFillType;
import com.bumptech.glide.util.Util;
import com.sunia.HTREnginev2.RunnableC13948js;
import com.sunia.HTREnginev2.m5l;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class BitmapPreFiller {

    /* renamed from: a */
    public final MemoryCache f14832a;

    /* renamed from: b */
    public final BitmapPool f14833b;

    /* renamed from: c */
    public final DecodeFormat f14834c;

    /* renamed from: d */
    public RunnableC13948js f14835d;

    public BitmapPreFiller(MemoryCache memoryCache, BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this.f14832a = memoryCache;
        this.f14833b = bitmapPool;
        this.f14834c = decodeFormat;
    }

    /* renamed from: b */
    public static int m8867b(PreFillType preFillType) {
        return Util.getBitmapByteSize(preFillType.m8872d(), preFillType.m8870b(), preFillType.m8869a());
    }

    @VisibleForTesting
    /* renamed from: a */
    public m5l m8868a(PreFillType... preFillTypeArr) {
        long maxSize = (this.f14832a.getMaxSize() - this.f14832a.getCurrentSize()) + this.f14833b.getMaxSize();
        int i = 0;
        for (PreFillType preFillType : preFillTypeArr) {
            i += preFillType.m8871c();
        }
        float f = ((float) maxSize) / i;
        HashMap hashMap = new HashMap();
        for (PreFillType preFillType2 : preFillTypeArr) {
            hashMap.put(preFillType2, Integer.valueOf(Math.round(preFillType2.m8871c() * f) / m8867b(preFillType2)));
        }
        return new m5l(hashMap);
    }

    public void preFill(PreFillType.Builder... builderArr) {
        RunnableC13948js runnableC13948js = this.f14835d;
        if (runnableC13948js != null) {
            runnableC13948js.m55032b();
        }
        PreFillType[] preFillTypeArr = new PreFillType[builderArr.length];
        for (int i = 0; i < builderArr.length; i++) {
            PreFillType.Builder builder = builderArr[i];
            if (builder.m8874b() == null) {
                builder.setConfig(this.f14834c == DecodeFormat.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            }
            preFillTypeArr[i] = builder.m8873a();
        }
        RunnableC13948js runnableC13948js2 = new RunnableC13948js(this.f14833b, this.f14832a, m8868a(preFillTypeArr));
        this.f14835d = runnableC13948js2;
        Util.postOnUiThread(runnableC13948js2);
    }
}

package com.google.android.libraries.vision.visionkit.pipeline;

import android.annotation.SuppressLint;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zbbf {

    /* renamed from: a */
    public final int f30141a;

    /* renamed from: b */
    public final Map f30142b = new HashMap();

    @SuppressLint({"UseSparseArrays"})
    public zbbf(int i) {
        this.f30141a = i;
    }

    public final synchronized void zba(long j) {
        this.f30142b.remove(Long.valueOf(j));
    }

    public final synchronized boolean zbb(Object obj, long j) {
        if (this.f30142b.size() != this.f30141a) {
            this.f30142b.put(Long.valueOf(j), obj);
            return true;
        }
        com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbcq.zba.zbc(this, "Buffer is full. Drop frame " + j, new Object[0]);
        return false;
    }
}

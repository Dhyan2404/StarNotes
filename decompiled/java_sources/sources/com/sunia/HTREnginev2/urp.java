package com.sunia.HTREnginev2;

import com.google.android.gms.common.zzu;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class urp extends bsp {

    /* renamed from: f */
    public final Callable f86788f;

    public /* synthetic */ urp(Callable callable, zzu zzuVar) {
        super();
        this.f86788f = callable;
    }

    @Override // com.sunia.HTREnginev2.bsp
    /* renamed from: a */
    public final String mo53342a() {
        try {
            return (String) this.f86788f.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

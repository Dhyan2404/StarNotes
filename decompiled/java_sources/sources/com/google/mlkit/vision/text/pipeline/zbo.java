package com.google.mlkit.vision.text.pipeline;

import android.os.RemoteException;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbki;
import com.sunia.HTREnginev2.rcp;

/* loaded from: classes6.dex */
public abstract class zbo {
    /* renamed from: a */
    public static zbo m28596a(int i, RemoteException remoteException) {
        return new rcp(i, zbki.zbe(remoteException));
    }

    public abstract int zba();

    public abstract zbki zbb();

    public final boolean zbd() {
        return !zbb().zbc();
    }
}

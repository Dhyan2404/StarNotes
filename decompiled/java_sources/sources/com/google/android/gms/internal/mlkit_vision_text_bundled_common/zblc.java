package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes5.dex */
public final class zblc {
    public static List zba(List list, zbkf zbkfVar) {
        return list instanceof RandomAccess ? new zbkz(list, zbkfVar) : new zblb(list, zbkfVar);
    }
}

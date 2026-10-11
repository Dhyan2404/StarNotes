package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import java.io.Closeable;

/* loaded from: classes5.dex */
public final class zzza {
    public static Pair zza(final ParcelFileDescriptor parcelFileDescriptor) {
        return Pair.create(new Uri.Builder().scheme("fd").opaquePart(String.valueOf(parcelFileDescriptor.getFd())).build(), new Closeable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzyz
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                parcelFileDescriptor.close();
            }
        });
    }
}

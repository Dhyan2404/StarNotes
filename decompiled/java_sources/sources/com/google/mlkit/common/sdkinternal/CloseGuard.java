package com.google.mlkit.common.sdkinternal;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_common.zzmm;
import com.google.android.gms.internal.mlkit_common.zzmn;
import com.google.android.gms.internal.mlkit_common.zzmv;
import com.google.android.gms.internal.mlkit_common.zzmw;
import com.google.android.gms.internal.mlkit_common.zzsh;
import com.google.android.gms.internal.mlkit_common.zzsk;
import com.google.android.gms.internal.mlkit_common.zzss;
import com.google.mlkit.common.sdkinternal.Cleaner;
import java.io.Closeable;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

@KeepForSdk
/* loaded from: classes6.dex */
public class CloseGuard implements Closeable {

    @KeepForSdk
    public static final int API_TRANSLATE = 1;

    /* renamed from: e */
    public final AtomicBoolean f36549e = new AtomicBoolean();

    /* renamed from: f */
    public final String f36550f;

    /* renamed from: g */
    public final Cleaner.Cleanable f36551g;

    @KeepForSdk
    /* loaded from: classes6.dex */
    public static class Factory {

        /* renamed from: a */
        public final Cleaner f36552a;

        public Factory(@NonNull Cleaner cleaner) {
            this.f36552a = cleaner;
        }

        @NonNull
        @KeepForSdk
        public CloseGuard create(@NonNull Object obj, int i, @NonNull Runnable runnable) {
            return new CloseGuard(obj, i, this.f36552a, runnable, zzss.zzb("common"));
        }
    }

    public CloseGuard(Object obj, final int i, Cleaner cleaner, final Runnable runnable, final zzsh zzshVar) {
        this.f36550f = obj.toString();
        this.f36551g = cleaner.register(obj, new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zze
            @Override // java.lang.Runnable
            public final void run() {
                CloseGuard.this.m28528f(i, zzshVar, runnable);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f36549e.set(true);
        this.f36551g.clean();
    }

    /* renamed from: f */
    public final /* synthetic */ void m28528f(int i, zzsh zzshVar, Runnable runnable) {
        if (!this.f36549e.get()) {
            Log.e("MlKitCloseGuard", String.format(Locale.ENGLISH, "%s has not been closed", this.f36550f));
            zzmw zzmwVar = new zzmw();
            zzmn zzmnVar = new zzmn();
            zzmnVar.zzb(zzmm.zzb(i));
            zzmwVar.zzh(zzmnVar.zzc());
            zzshVar.zzd(zzsk.zzf(zzmwVar), zzmv.HANDLE_LEAKED);
        }
        runnable.run();
    }
}

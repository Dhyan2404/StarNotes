package com.google.mlkit.common.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_common.zzq;
import com.google.android.gms.internal.mlkit_common.zzr;

/* loaded from: classes6.dex */
public abstract class RemoteModelSource {

    /* renamed from: a */
    @Nullable
    public final String f36546a;

    @KeepForSdk
    public RemoteModelSource(@Nullable String str) {
        this.f36546a = str;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj.getClass().equals(getClass())) {
            return Objects.equal(this.f36546a, ((RemoteModelSource) obj).f36546a);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f36546a);
    }

    @NonNull
    public String toString() {
        zzq zzb = zzr.zzb("RemoteModelSource");
        zzb.zza("firebaseModelName", this.f36546a);
        return zzb.toString();
    }

    @Nullable
    public final String zza() {
        return this.f36546a;
    }
}

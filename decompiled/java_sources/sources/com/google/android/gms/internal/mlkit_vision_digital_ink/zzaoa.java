package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collections;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes5.dex */
public final class zzaoa {
    private static final Comparator zza = new zzans();
    private static final Comparator zzb = new zzant();
    private static final zzaoa zzc = new zzaoa(new zzany(Collections.emptyList()));
    private final zzany zzd;

    private zzaoa(zzany zzanyVar) {
        this.zzd = zzanyVar;
    }

    public static zzaoa zza() {
        return zzc;
    }

    public final boolean equals(@NullableDecl Object obj) {
        return (obj instanceof zzaoa) && ((zzaoa) obj).zzd.equals(this.zzd);
    }

    public final int hashCode() {
        return ~this.zzd.hashCode();
    }

    public final String toString() {
        return this.zzd.toString();
    }
}

package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzcb {

    @NotNull
    public static final zzcb zza = new zzcb();

    @Nullable
    private static Set zzb;

    @Nullable
    private static Set zzc;

    @Nullable
    private static Long zzd;
    private static int zze;

    private zzcb() {
    }

    public static final void zza(@NotNull zznz zznzVar) {
        Set set;
        Set set2;
        set = CollectionsKt___CollectionsKt.toSet(zznzVar.zzf().zzi());
        zzb = set;
        set2 = CollectionsKt___CollectionsKt.toSet(zznzVar.zzg().zzi());
        zzc = set2;
    }

    public static final boolean zzb(@NotNull String str) {
        Set set = zzb;
        if (set == null || zzc == null) {
            if (zzd == null) {
                zzd = Long.valueOf(System.currentTimeMillis());
            }
            zze++;
            return true;
        }
        Intrinsics.checkNotNull(set, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
        if (set.isEmpty()) {
            return true;
        }
        Set set2 = zzc;
        Intrinsics.checkNotNull(set2, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
        if (zzc(str, set2)) {
            return false;
        }
        return zzc(str, set);
    }

    private static final boolean zzc(String str, Set set) {
        List split$default;
        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null);
        Iterator it2 = split$default.iterator();
        String str2 = "";
        while (it2.hasNext()) {
            String concat = str2.concat(String.valueOf((String) it2.next()));
            if (set.contains(concat)) {
                return true;
            }
            str2 = concat.concat(".");
        }
        return false;
    }
}

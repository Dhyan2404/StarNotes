package com.google.android.recaptcha.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzef {

    @NotNull
    private List zza;

    public zzef() {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.zza = emptyList;
    }

    public final long zza(@NotNull long[] jArr) {
        List list;
        List plus;
        List list2 = this.zza;
        list = ArraysKt___ArraysKt.toList(jArr);
        plus = CollectionsKt___CollectionsKt.plus((Collection) list2, (Iterable) list);
        Iterator it2 = plus.iterator();
        if (!it2.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it2.next();
        while (it2.hasNext()) {
            next = Long.valueOf(((Number) it2.next()).longValue() ^ ((Number) next).longValue());
        }
        return ((Number) next).longValue();
    }

    public final void zzb(@NotNull long[] jArr) {
        List list;
        list = ArraysKt___ArraysKt.toList(jArr);
        this.zza = list;
    }
}

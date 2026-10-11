package com.onyx.android.sdk.base.lite.extension;

import androidx.core.math.MathUtils;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\u001a'\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u0002¢\u0006\u0002\u0010\u0005\u001a\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0007\u001a)\u0010\b\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\n¢\u0006\u0002\u0010\u000b\u001a\u0010\u0010\f\u001a\u00020\r*\b\u0012\u0002\b\u0003\u0018\u00010\u000e\u001a'\u0010\u000f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u0002¢\u0006\u0002\u0010\u0005\u001a,\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r¨\u0006\u0014"}, m61528d2 = {"add", "", "T", "", "target", "(Ljava/util/Collection;Ljava/lang/Object;)V", "ensureMutableList", "", "firstOrPut", "defaultValue", "Lkotlin/Function0;", "(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getSize", "", "", "safeAdd", "safelySubList", "", ApiBroadCastReceiver.ARGS_FROM_INDEX, ApiBroadCastReceiver.ARGS_TO_INDEX, "sdk-baselite_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CollectionKt {
    public static final <T> void add(@Nullable Collection<T> collection, @Nullable T t) {
        if (collection == null || t == null) {
            return;
        }
        collection.add(t);
    }

    @NotNull
    public static final <T> List<T> ensureMutableList(@Nullable List<T> list) {
        return list == null ? new ArrayList() : list;
    }

    public static final <T> T firstOrPut(@NotNull List<T> list, @NotNull Function0<? extends T> defaultValue) {
        Object first;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (list.isEmpty()) {
            safeAdd(list, defaultValue.invoke());
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        return (T) first;
    }

    public static final int getSize(@Nullable Collection<?> collection) {
        if (collection != null) {
            return collection.size();
        }
        return 0;
    }

    public static final <T> void safeAdd(@Nullable Collection<T> collection, @Nullable T t) {
        add(collection, t);
    }

    @NotNull
    public static final <T> List<T> safelySubList(@NotNull List<? extends T> list, int i, int i2) {
        List<T> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends T> list2 = list;
        if (!list2.isEmpty() && i <= i2) {
            int size = getSize(list2);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list.subList(MathUtils.clamp(i, 0, size), MathUtils.clamp(i2, 0, size)));
            return mutableList;
        }
        return new ArrayList();
    }
}

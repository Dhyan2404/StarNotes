package com.onyx.android.sdk.base.lite.extension;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0003"}, m61528d2 = {"toIntList", "Lcom/onyx/android/sdk/base/lite/extension/IntList;", "", "sdk-baselite_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TypeExtKt {
    @NotNull
    public static final IntList toIntList(@Nullable int[] iArr) {
        List list;
        IntList intList = new IntList();
        if (iArr != null) {
            list = ArraysKt___ArraysKt.toList(iArr);
            intList.addAll(list);
        }
        return intList;
    }
}

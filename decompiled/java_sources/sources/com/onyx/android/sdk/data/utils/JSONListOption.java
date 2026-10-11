package com.onyx.android.sdk.data.utils;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00010\u0004j\b\u0012\u0004\u0012\u0002H\u0001`\u00050\u0003BW\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u001e\b\u0002\u0010\n\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u00000\u0004j\b\u0012\u0004\u0012\u00028\u0000`\u00050\u000b\u0012\u001e\b\u0002\u0010\f\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u00000\u0004j\b\u0012\u0004\u0012\u00028\u0000`\u00050\r¢\u0006\u0002\u0010\u000eJ\u001a\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u0012J\u0013\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/JSONListOption;", "T", "", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "typeRef", "Lcom/alibaba/fastjson2/TypeReference;", "defaultValue", "Lkotlin/Function0;", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V", Keywords.FUNC_CONTAINS_STRING, "", "predicate", "Lkotlin/Function1;", "t", "(Ljava/lang/Object;)Z", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class JSONListOption<T> extends JSONObjectOption<ArrayList<T>> {
    public /* synthetic */ JSONListOption(MMKV mmkv, String str, TypeReference typeReference, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MMKVUtils.INSTANCE.get() : mmkv, str, (i & 4) != 0 ? new TypeReference<ArrayList<T>>() { // from class: com.onyx.android.sdk.data.utils.JSONListOption.1
        } : typeReference, (i & 8) != 0 ? new Function0<ArrayList<T>>() { // from class: com.onyx.android.sdk.data.utils.JSONListOption.2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ArrayList<T> invoke() {
                return new ArrayList<>();
            }
        } : function0);
    }

    public final boolean contains(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return ((ArrayList) get()).contains(t);
    }

    public final boolean contains(@NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return CollectionKt.contains((Iterable) get(), predicate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JSONListOption(@NotNull MMKV parent, @NotNull String key, @NotNull TypeReference<ArrayList<T>> typeRef, @NotNull Function0<? extends ArrayList<T>> defaultValue) {
        super(parent, key, typeRef, defaultValue);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(typeRef, "typeRef");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
    }
}

package com.onyx.android.sdk.data.account.bean;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/Items;", "T", "", "()V", FirebaseAnalytics.Param.ITEMS, "", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Items<T> {

    @NotNull
    private List<? extends T> items;

    public Items() {
        List<? extends T> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.items = emptyList;
    }

    @NotNull
    public final List<T> getItems() {
        return this.items;
    }

    public final void setItems(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }
}

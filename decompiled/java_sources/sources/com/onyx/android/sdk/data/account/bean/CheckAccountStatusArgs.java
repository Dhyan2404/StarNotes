package com.onyx.android.sdk.data.account.bean;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusArgs;", "", FirebaseAnalytics.Param.ITEMS, "", "", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckAccountStatusArgs {

    @NotNull
    private final List<String> items;

    /* JADX WARN: Multi-variable type inference failed */
    public CheckAccountStatusArgs() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @NotNull
    public final List<String> getItems() {
        return this.items;
    }

    public CheckAccountStatusArgs(@NotNull List<String> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    public /* synthetic */ CheckAccountStatusArgs(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}

package com.onyx.android.sdk.data.account.bean;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusData;", "", "inactiveItems", "", "", "(Ljava/util/List;)V", "getInactiveItems", "()Ljava/util/List;", "setInactiveItems", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckAccountStatusData {

    @NotNull
    private List<String> inactiveItems;

    /* JADX WARN: Multi-variable type inference failed */
    public CheckAccountStatusData() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @NotNull
    public final List<String> getInactiveItems() {
        return this.inactiveItems;
    }

    public final void setInactiveItems(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.inactiveItems = list;
    }

    public CheckAccountStatusData(@NotNull List<String> inactiveItems) {
        Intrinsics.checkNotNullParameter(inactiveItems, "inactiveItems");
        this.inactiveItems = inactiveItems;
    }

    public /* synthetic */ CheckAccountStatusData(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : list);
    }
}

package com.onyx.android.sdk.data.account.bean;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\b¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;", "", "()V", "category", "", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "subItems", "", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;", "getSubItems", "()Ljava/util/List;", "setSubItems", "(Ljava/util/List;)V", "title", "getTitle", "setTitle", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountQuotaItemData {

    @NotNull
    private List<AccountQuotaSubItem> subItems;

    @NotNull
    private String category = "";

    @NotNull
    private String title = "";

    public AccountQuotaItemData() {
        List<AccountQuotaSubItem> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.subItems = emptyList;
    }

    @NotNull
    public final String getCategory() {
        return this.category;
    }

    @NotNull
    public final List<AccountQuotaSubItem> getSubItems() {
        return this.subItems;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setCategory(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.category = str;
    }

    public final void setSubItems(@NotNull List<AccountQuotaSubItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.subItems = list;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }
}

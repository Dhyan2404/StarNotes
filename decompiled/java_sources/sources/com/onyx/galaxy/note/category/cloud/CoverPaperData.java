package com.onyx.galaxy.note.category.cloud;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016R(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0005\u001a\u0004\b\r\u0010\u0007\"\u0004\b\u000e\u0010\tR(\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0005\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\t¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;", "", "", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;", "a", "Ljava/util/List;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", FirebaseAnalytics.Param.ITEMS, "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;", "b", "getCategories", "setCategories", "categories", "Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;", "c", "getItemCategoryShips", "setItemCategoryShips", "itemCategoryShips", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CoverPaperData {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<CoverPaperItem> items = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<CoverPaperCategoryItem> categories = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<CategoryRelationItem> itemCategoryShips = new ArrayList();

    @NotNull
    public final List<CoverPaperCategoryItem> getCategories() {
        return this.categories;
    }

    @NotNull
    public final List<CategoryRelationItem> getItemCategoryShips() {
        return this.itemCategoryShips;
    }

    @NotNull
    public final List<CoverPaperItem> getItems() {
        return this.items;
    }

    public final void setCategories(@NotNull List<CoverPaperCategoryItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.categories = list;
    }

    public final void setItemCategoryShips(@NotNull List<CategoryRelationItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.itemCategoryShips = list;
    }

    public final void setItems(@NotNull List<CoverPaperItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }
}

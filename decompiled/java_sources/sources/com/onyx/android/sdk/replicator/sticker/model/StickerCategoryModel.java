package com.onyx.android.sdk.replicator.sticker.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.TitleModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TitleModelKt;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010&\u001a\u00020\u00042\b\u0010'\u001a\u0004\u0018\u00010(H\u0096\u0002J\u0010\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0000H\u0002J\b\u0010+\u001a\u00020\tH\u0007J\b\u0010,\u001a\u00020\tH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00000\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0015\"\u0004\b\u001f\u0010\u0017R\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "isPlaceholder", "", Constants.BOOLEAN_VALUE_SIG, "setPlaceholder", "(Z)V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "getParentUniqueId", "setParentUniqueId", "stickers", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "getStickers", "()Ljava/util/List;", "setStickers", "(Ljava/util/List;)V", "subCategory", "getSubCategory", "setSubCategory", MessageConst.KEY_TITLE_LIST, "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "getTitleList", "setTitleList", "type", "", "getType", "()I", "setType", "(I)V", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equalsTo", "another", "getLocalTitle", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nStickerCategoryModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerCategoryModel.kt\ncom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,77:1\n41#2,5:78\n*S KotlinDebug\n*F\n+ 1 StickerCategoryModel.kt\ncom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel\n*L\n40#1:78,5\n*E\n"})
/* loaded from: classes8.dex */
public final class StickerCategoryModel extends BaseReplicatorModel {
    private transient boolean isPlaceholder;

    @NotNull
    private transient List<StickerModel> stickers;

    @NotNull
    private transient List<StickerCategoryModel> subCategory;

    @NotNull
    private List<TitleModel> titleList;
    private int type;

    @NotNull
    private String parentUniqueId = "";

    @NotNull
    private String name = "";

    public StickerCategoryModel() {
        List<TitleModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.titleList = emptyList;
        this.subCategory = new ArrayList();
        this.stickers = new ArrayList();
    }

    private final boolean equalsTo(StickerCategoryModel another) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{-2, -1});
        if (listOf.contains(Integer.valueOf(this.type)) && this.type == another.type) {
            return true;
        }
        if (Intrinsics.areEqual(getUniqueId(), another.getUniqueId()) && Intrinsics.areEqual(this.parentUniqueId, another.parentUniqueId) && Intrinsics.areEqual(this.name, another.name)) {
            return Intrinsics.areEqual(this.subCategory, another.subCategory);
        }
        return false;
    }

    public boolean equals(@Nullable Object other) {
        StickerCategoryModel stickerCategoryModel = other instanceof StickerCategoryModel ? (StickerCategoryModel) other : null;
        return stickerCategoryModel != null ? equalsTo(stickerCategoryModel) : super.equals(other);
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getLocalTitle() {
        return TitleModelKt.getLocalTitle(this.titleList, this.name);
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    @NotNull
    public final List<StickerModel> getStickers() {
        return this.stickers;
    }

    @NotNull
    public final List<StickerCategoryModel> getSubCategory() {
        return this.subCategory;
    }

    @NotNull
    public final List<TitleModel> getTitleList() {
        return this.titleList;
    }

    public final int getType() {
        return this.type;
    }

    /* renamed from: isPlaceholder, reason: from getter */
    public final boolean getIsPlaceholder() {
        return this.isPlaceholder;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setParentUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.parentUniqueId = str;
    }

    public final void setPlaceholder(boolean z) {
        this.isPlaceholder = z;
    }

    public final void setStickers(@NotNull List<StickerModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.stickers = list;
    }

    public final void setSubCategory(@NotNull List<StickerCategoryModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.subCategory = list;
    }

    public final void setTitleList(@NotNull List<TitleModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.titleList = list;
    }

    public final void setType(int i) {
        this.type = i;
    }

    @NotNull
    public String toString() {
        return this.name + ':' + this.type + ':' + getUniqueId() + ':' + this.parentUniqueId;
    }
}

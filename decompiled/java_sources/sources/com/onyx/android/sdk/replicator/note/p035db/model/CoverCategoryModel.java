package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.galaxy.note.message.data.MessageConst;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\"\u001a\u00020\u0010H\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u0014R\u001a\u0010\u001f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\f\"\u0004\b!\u0010\u000e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", "source", "", "getSource", "()I", "setSource", "(I)V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", MessageConst.KEY_TITLE_LIST, "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "getTitleList", "()Ljava/util/List;", "setTitleList", "(Ljava/util/List;)V", "titleResName", "getTitleResName", "setTitleResName", "version", "getVersion", "setVersion", "getLocalTitle", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CoverCategoryModel extends BaseReplicatorModel {
    private int source;

    @NotNull
    private List<TitleModel> titleList;
    private int version;

    @NotNull
    private String title = "";

    @NotNull
    private String titleResName = "";
    private float orderIndex = -1.0f;

    public CoverCategoryModel() {
        List<TitleModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.titleList = emptyList;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getLocalTitle() {
        return TitleModelKt.getLocalTitle(this.titleList, this.title);
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    public final int getSource() {
        return this.source;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final List<TitleModel> getTitleList() {
        return this.titleList;
    }

    @NotNull
    public final String getTitleResName() {
        return this.titleResName;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setTitleList(@NotNull List<TitleModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.titleList = list;
    }

    public final void setTitleResName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.titleResName = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }
}

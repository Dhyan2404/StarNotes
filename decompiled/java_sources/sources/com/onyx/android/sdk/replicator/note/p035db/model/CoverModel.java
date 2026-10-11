package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.galaxy.note.message.data.MessageConst;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010>\u001a\u00020\u0004H\u0007J\b\u0010?\u001a\u00020@H\u0007J\b\u0010A\u001a\u00020@H\u0007J\b\u0010B\u001a\u00020@H\u0007J\u0006\u0010C\u001a\u00020DJ\b\u0010E\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010'\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001e\u0010*\u001a\u00020+8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR \u00103\u001a\b\u0012\u0004\u0012\u00020504X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u001b\"\u0004\b7\u0010\u001dR\u001a\u00108\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u0006\"\u0004\b:\u0010\bR\u001a\u0010;\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u0015\"\u0004\b=\u0010\u0017¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_CATEGORY_ID, "", "getCategoryId", "()Ljava/lang/String;", "setCategoryId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CONTENT_PAGE_ID, "getContentPageId", "setContentPageId", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", "orientation", "", "getOrientation", "()I", "setOrientation", "(I)V", "resourceIdList", "", "getResourceIdList", "()Ljava/util/List;", "setResourceIdList", "(Ljava/util/List;)V", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", CouchFieldKey.KEY_SIZE_FORMAT, "getSizeFormat", "setSizeFormat", "source", "getSource", "setSource", "status", "getStatus", "setStatus", "templateResourceWrapper", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;", "getTemplateResourceWrapper", "()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;", "setTemplateResourceWrapper", "(Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;)V", "title", "getTitle", "setTitle", MessageConst.KEY_TITLE_LIST, "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "getTitleList", "setTitleList", "titleResName", "getTitleResName", "setTitleResName", "version", "getVersion", "setVersion", "getLocalTitle", "isLandscape", "", "isOfficialSource", "isPortrait", "resetRevisionId", "", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCoverModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/CoverModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"})
/* loaded from: classes8.dex */
public final class CoverModel extends BaseReplicatorModel {
    private int source;
    private int status;

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    private transient TemplateResourceWrapper templateResourceWrapper;

    @NotNull
    private List<TitleModel> titleList;
    private int version;

    @NotNull
    private String title = "";

    @NotNull
    private String titleResName = "";
    private int orientation = Orientation.PORTRAIT.getValue();

    @NotNull
    private String sizeFormat = "A4";

    @NotNull
    private String categoryId = "";

    @NotNull
    private String contentPageId = "";

    @NotNull
    private List<String> resourceIdList = new ArrayList();
    private float orderIndex = -1.0f;

    @NotNull
    private String revisionId = "";

    public CoverModel() {
        List<TitleModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.titleList = emptyList;
        TemplateResourceWrapper templateResourceWrapper = new TemplateResourceWrapper();
        templateResourceWrapper.setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(this.categoryId, getUniqueId()));
        this.templateResourceWrapper = templateResourceWrapper;
    }

    @NotNull
    public final String getCategoryId() {
        return this.categoryId;
    }

    @NotNull
    public final String getContentPageId() {
        return this.contentPageId;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getLocalTitle() {
        return TitleModelKt.getLocalTitle(this.titleList, this.title);
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final List<String> getResourceIdList() {
        return this.resourceIdList;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getSizeFormat() {
        return this.sizeFormat;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final TemplateResourceWrapper getTemplateResourceWrapper() {
        return this.templateResourceWrapper;
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

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLandscape() {
        return Orientation.INSTANCE.isLandscape(this.orientation);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isOfficialSource() {
        int i = this.source;
        return i == 0 || i == 2;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isPortrait() {
        return Orientation.INSTANCE.isPortrait(this.orientation);
    }

    public final void resetRevisionId() {
        this.revisionId = "";
    }

    public final void setCategoryId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.categoryId = str;
    }

    public final void setContentPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPageId = str;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setOrientation(int i) {
        this.orientation = i;
    }

    public final void setResourceIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resourceIdList = list;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setSizeFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sizeFormat = str;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTemplateResourceWrapper(@NotNull TemplateResourceWrapper templateResourceWrapper) {
        Intrinsics.checkNotNullParameter(templateResourceWrapper, "<set-?>");
        this.templateResourceWrapper = templateResourceWrapper;
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

    @NotNull
    public String toString() {
        return "uniqueId:" + getUniqueId() + ", orientation:" + this.orientation + ", sizeFormat:" + this.sizeFormat + ", templateResourceWrapper:" + this.templateResourceWrapper + ' ';
    }
}

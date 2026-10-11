package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\b\u0016\u0018\u0000 52\u00020\u00012\u00020\u0002:\u0003567B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\"\u001a\u00020\u0000H\u0016J\u0006\u0010#\u001a\u00020\u0005J\b\u0010$\u001a\u0004\u0018\u00010\u0005J\u0006\u0010%\u001a\u00020\bJ\b\u0010&\u001a\u0004\u0018\u00010\u0005J\b\u0010'\u001a\u0004\u0018\u00010\u0005J\u0006\u0010(\u001a\u00020\bJ\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020,2\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010.\u001a\u00020,2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010/\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u00100\u001a\u00020,2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u00101\u001a\u00020,2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u000e\u00102\u001a\u00020,2\u0006\u0010\u0016\u001a\u00020\bJ\u000e\u00103\u001a\u00020,2\u0006\u00104\u001a\u00020\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "", "()V", "content", "", "documentId", CouchFieldKey.KEY_MODE_TYPE, "", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_PARENT_ID, CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "()Ljava/lang/String;", "setRevisionId", "(Ljava/lang/String;)V", "status", "style", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "getStyle", "()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "setStyle", "(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V", "type", "getType", "()I", "setType", "(I)V", "clone", "getContent", "getDocumentId", "getModeType", "getPageUniqueId", "getParentId", "getStatus", "isEnabled", "", "resetRevisionId", "", "setContent", "setDocumentId", "setModeType", "setPageUniqueId", "setParentId", "setStatus", "updateModelField", Constants.ATTRVAL_OTHER, "Companion", "TagStatus", "TagType", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class SyncTagModel extends BaseReplicatorModel implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String documentId;

    @Nullable
    private String pageUniqueId;

    @Nullable
    private String parentId;

    @Nullable
    private String revisionId;
    private int status;
    private int type;

    @NotNull
    private String content = "";
    private int modeType = 1;

    @NotNull
    private StyleAttr style = new StyleAttr();
    private float orderIndex = -1.0f;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;", "", "()V", "createModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "title", "", "pId", "styleAttr", "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SyncTagModel createModel(@NotNull String title, @Nullable String pId, @NotNull StyleAttr styleAttr) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(styleAttr, "styleAttr");
            SyncTagModel syncTagModel = new SyncTagModel();
            syncTagModel.setContent(title);
            syncTagModel.setType(2);
            syncTagModel.setStatus(0);
            syncTagModel.ensureUniqueIdExist();
            syncTagModel.beforeSave();
            syncTagModel.setStyle(styleAttr);
            syncTagModel.setOrderIndex(-1.0f);
            syncTagModel.setParentId(pId);
            return syncTagModel;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$TagStatus;", "", "()V", "TAG_ENABLED", "", "TAG_FORCE_REMOVED", "TAG_REMOVED", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class TagStatus {

        @NotNull
        public static final TagStatus INSTANCE = new TagStatus();
        public static final int TAG_ENABLED = 0;
        public static final int TAG_FORCE_REMOVED = 1;
        public static final int TAG_REMOVED = 2;
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$TagType;", "", "()V", "DOC_TAG", "", "PAGE_TAG", "SHAPE_TAG", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class TagType {
        public static final int DOC_TAG = 2;

        @NotNull
        public static final TagType INSTANCE = new TagType();
        public static final int PAGE_TAG = 1;
        public static final int SHAPE_TAG = 0;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    public final int getModeType() {
        return this.modeType;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    @Nullable
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    @Nullable
    public final String getRevisionId() {
        return this.revisionId;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final StyleAttr getStyle() {
        return this.style;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isEnabled() {
        return this.status == 0;
    }

    public final void resetRevisionId() {
        this.revisionId = null;
    }

    public final void setContent(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.content = content;
    }

    public final void setDocumentId(@Nullable String documentId) {
        this.documentId = documentId;
    }

    public final void setModeType(int modeType) {
        this.modeType = modeType;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setPageUniqueId(@Nullable String pageUniqueId) {
        this.pageUniqueId = pageUniqueId;
    }

    public final void setParentId(@Nullable String parentId) {
        this.parentId = parentId;
    }

    public final void setRevisionId(@Nullable String str) {
        this.revisionId = str;
    }

    public final void setStatus(int status) {
        this.status = status;
    }

    public final void setStyle(@NotNull StyleAttr styleAttr) {
        Intrinsics.checkNotNullParameter(styleAttr, "<set-?>");
        this.style = styleAttr;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void updateModelField(@NotNull SyncTagModel other) {
        Intrinsics.checkNotNullParameter(other, "other");
        setUniqueId(other.getUniqueId());
        setUser(other.getUser());
        setDbId(other.getDbId());
        setCreatedAt(other.getCreatedAt());
        setUpdatedAt(other.getUpdatedAt());
        this.documentId = other.documentId;
        this.parentId = other.parentId;
        this.pageUniqueId = other.pageUniqueId;
        this.content = other.content;
        this.status = other.status;
        this.modeType = other.modeType;
        this.revisionId = other.revisionId;
        this.type = other.type;
        this.style = other.style;
        this.orderIndex = other.orderIndex;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SyncTagModel m72394clone() {
        SyncTagModel syncTagModel = new SyncTagModel();
        syncTagModel.updateModelField(this);
        syncTagModel.style = this.style.m72375clone();
        return syncTagModel;
    }
}

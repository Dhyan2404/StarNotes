package com.onyx.android.sdk.replicator.note.p035db.model;

import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.replicator.note.utils.ShapeLinkUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b/\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 H2\u00020\u0001:\u0002HIB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010?\u001a\u00020@J\n\u0010A\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010B\u001a\u00020CH\u0007J\b\u0010D\u001a\u00020CH\u0007J\b\u0010E\u001a\u0004\u0018\u00010\nJ\u0012\u0010F\u001a\u00020\u00002\b\u0010G\u001a\u0004\u0018\u00010\u0004H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001c\u0010!\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR\u001c\u0010$\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR\u001a\u0010'\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0012\"\u0004\b)\u0010\u0014R\u001c\u0010*\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\f\"\u0004\b,\u0010\u000eR\u001a\u0010-\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\f\"\u0004\b/\u0010\u000eR\u001c\u00100\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\f\"\u0004\b2\u0010\u000eR\u001a\u00103\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0012\"\u0004\b5\u0010\u0014R\u001c\u00106\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\f\"\u0004\b8\u0010\u000eR\u001a\u00109\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\f\"\u0004\b;\u0010\u000eR\u001c\u0010<\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\f\"\u0004\b>\u0010\u000e¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "boundingRect", "Landroid/graphics/RectF;", "getBoundingRect", "()Landroid/graphics/RectF;", "setBoundingRect", "(Landroid/graphics/RectF;)V", "content", "", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "displayStyle", "", "getDisplayStyle", "()I", "setDisplayStyle", "(I)V", "documentId", "getDocumentId", "setDocumentId", "extra", "getExtra", "setExtra", CouchFieldKey.KEY_PAGE_ID, "getPageUniqueId", "setPageUniqueId", "path", "getPath", "setPath", "remark", "getRemark", "setRemark", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "status", "getStatus", "setStatus", "targetDocId", "getTargetDocId", "setTargetDocId", "targetObjId", "getTargetObjId", "setTargetObjId", "targetPageId", "getTargetPageId", "setTargetPageId", "targetPageIndex", "getTargetPageIndex", "setTargetPageIndex", "title", "getTitle", "setTitle", "type", "getType", "setType", Constant.TAG_USER_ID, "getUserId", "setUserId", "clearRevisionId", "", "getLinkRect", "isEnabled", "", "isOnlyIconStyle", "loadDisplayTitle", "setLinkRect", "linkRect", "Companion", "LinkStatus", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LinkModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private RectF boundingRect;

    @Nullable
    private String content;

    @Nullable
    private String documentId;

    @Nullable
    private String extra;

    @Nullable
    private String pageUniqueId;

    @Nullable
    private String path;

    @Nullable
    private String remark;

    @Nullable
    private String revisionId;
    private int status;

    @Nullable
    private String targetDocId;

    @Nullable
    private String targetPageId;
    private int targetPageIndex;

    @Nullable
    private String title;

    @Nullable
    private String userId;

    @NotNull
    private String type = ShapeLinkType.LINK_DOCUMENT;
    private int displayStyle = ShapeLinkBean.DisplayStyle.INSTANCE.getONLY_ICON();

    @NotNull
    private String targetObjId = "";

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "docBean", "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LinkModel create(@Nullable LinkDocBean docBean) {
            if (docBean == null) {
                return new LinkModel();
            }
            LinkModel linkModel = new LinkModel();
            linkModel.setTargetDocId(docBean.getDocumentId());
            linkModel.setTargetPageId(docBean.getPageId());
            linkModel.setTargetPageIndex(docBean.getPageIndex());
            linkModel.setTitle(docBean.getTitle());
            linkModel.setPath(docBean.getPath());
            return linkModel;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$LinkStatus;", "", "()V", "LINK_ENABLED", "", "LINK_FORCE_REMOVED", "LINK_REMOVED", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class LinkStatus {

        @NotNull
        public static final LinkStatus INSTANCE = new LinkStatus();
        public static final int LINK_ENABLED = 0;
        public static final int LINK_FORCE_REMOVED = 1;
        public static final int LINK_REMOVED = 2;
    }

    public final void clearRevisionId() {
        this.revisionId = null;
    }

    @Nullable
    public final RectF getBoundingRect() {
        return this.boundingRect;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    public final int getDisplayStyle() {
        return this.displayStyle;
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getExtra() {
        return this.extra;
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final RectF getLinkRect() {
        return this.boundingRect;
    }

    @Nullable
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final String getRemark() {
        return this.remark;
    }

    @Nullable
    public final String getRevisionId() {
        return this.revisionId;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTargetDocId() {
        return this.targetDocId;
    }

    @NotNull
    public final String getTargetObjId() {
        return this.targetObjId;
    }

    @Nullable
    public final String getTargetPageId() {
        return this.targetPageId;
    }

    public final int getTargetPageIndex() {
        return this.targetPageIndex;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isEnabled() {
        return this.status == 0;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isOnlyIconStyle() {
        return this.displayStyle == ShapeLinkBean.DisplayStyle.INSTANCE.getONLY_ICON();
    }

    @Nullable
    public final String loadDisplayTitle() {
        if (StringUtils.isNotBlank(this.remark)) {
            return this.remark;
        }
        String str = this.type;
        return Intrinsics.areEqual(str, "NOTE") ? true : Intrinsics.areEqual(str, ShapeLinkType.LINK_DOCUMENT) ? ShapeLinkUtils.INSTANCE.getLinkNoteDisplayTitle(this.title, this.targetPageIndex) : this.content;
    }

    public final void setBoundingRect(@Nullable RectF rectF) {
        this.boundingRect = rectF;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setDisplayStyle(int i) {
        this.displayStyle = i;
    }

    public final void setDocumentId(@Nullable String str) {
        this.documentId = str;
    }

    public final void setExtra(@Nullable String str) {
        this.extra = str;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final LinkModel setLinkRect(@Nullable RectF linkRect) {
        this.boundingRect = linkRect;
        return this;
    }

    public final void setPageUniqueId(@Nullable String str) {
        this.pageUniqueId = str;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    public final void setRemark(@Nullable String str) {
        this.remark = str;
    }

    public final void setRevisionId(@Nullable String str) {
        this.revisionId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTargetDocId(@Nullable String str) {
        this.targetDocId = str;
    }

    public final void setTargetObjId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.targetObjId = str;
    }

    public final void setTargetPageId(@Nullable String str) {
        this.targetPageId = str;
    }

    public final void setTargetPageIndex(int i) {
        this.targetPageIndex = i;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }
}

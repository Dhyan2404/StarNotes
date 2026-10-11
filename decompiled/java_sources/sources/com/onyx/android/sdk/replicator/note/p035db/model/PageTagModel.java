package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 -2\u00020\u0001:\u0001-B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020+2\u0006\u0010\f\u001a\u00020\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001b\"\u0004\b&\u0010\u001dR\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\b¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "docTitle", "", "getDocTitle", "()Ljava/lang/String;", "setDocTitle", "(Ljava/lang/String;)V", "documentId", "getDocumentId", "setDocumentId", "orientation", "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "pageAllTagIdList", "", "getPageAllTagIdList", "()Ljava/util/List;", "setPageAllTagIdList", "(Ljava/util/List;)V", "pageIndex", "", "getPageIndex", "()I", "setPageIndex", "(I)V", CouchFieldKey.KEY_PAGE_ID, "getPageUniqueId", "setPageUniqueId", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "status", "getStatus", "setStatus", CouchFieldKey.KEY_TAG_ID, "getTagId", "setTagId", "resetRevisionId", "", "setOrientationValue", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class PageTagModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int pageIndex;

    @Nullable
    private String revisionId;
    private int status;

    @NotNull
    private String documentId = "";

    @NotNull
    private String pageUniqueId = "";

    @NotNull
    private String tagId = "";

    @NotNull
    private String docTitle = "";

    @NotNull
    private transient List<String> pageAllTagIdList = new ArrayList();

    @NotNull
    private Orientation orientation = Orientation.PORTRAIT;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", EditorConstants.ARGS_DOC_ID, "", CouchFieldKey.KEY_TOC_PAGE_ID, CouchFieldKey.KEY_TAG_ID, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PageTagModel create(@NotNull String docId, @NotNull String pageId, @NotNull String tagId) {
            Intrinsics.checkNotNullParameter(docId, "docId");
            Intrinsics.checkNotNullParameter(pageId, "pageId");
            Intrinsics.checkNotNullParameter(tagId, "tagId");
            PageTagModel pageTagModel = new PageTagModel();
            pageTagModel.setDocumentId(docId);
            pageTagModel.setPageUniqueId(pageId);
            pageTagModel.setTagId(tagId);
            return pageTagModel;
        }

        public Companion() {
        }
    }

    @NotNull
    public final String getDocTitle() {
        return this.docTitle;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final List<String> getPageAllTagIdList() {
        return this.pageAllTagIdList;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Nullable
    public final String getRevisionId() {
        return this.revisionId;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTagId() {
        return this.tagId;
    }

    public final void resetRevisionId() {
        this.revisionId = null;
    }

    public final void setDocTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.docTitle = str;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }

    public final void setOrientationValue(int orientation) {
        if (Orientation.INSTANCE.isLandscape(orientation)) {
            this.orientation = Orientation.LANDSCAPE;
        } else {
            this.orientation = Orientation.PORTRAIT;
        }
    }

    public final void setPageAllTagIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.pageAllTagIdList = list;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setRevisionId(@Nullable String str) {
        this.revisionId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTagId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tagId = str;
    }
}

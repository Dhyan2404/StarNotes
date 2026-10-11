package com.onyx.android.sdk.replicator.note.proto.data;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\fJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0002J\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0013J\u0006\u0010\u0017\u001a\u00020\u0002R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R\u0016\u0010\u0007\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u0019R$\u0010)\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "", "", "getDocumentId", "documentId", "setDocumentId", "getRevisionId", CouchFieldKey.KEY_REVISION_ID, "setRevisionId", "getPageId", CouchFieldKey.KEY_TOC_PAGE_ID, "setPageId", "", "getCreateAt", "createAt", "setCreateAt", "pbDirPath", "setPbDirPath", "getPbDirPath", "", "isSaveExportRecord", "save", "setSaveExportRecord", "getDebugInfo", "a", Constants.STRING_SIG, "b", "c", "d", "J", "e", Constants.HASIDCALL_INDEX_SIG, "saveExportRecord", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "getProvider", "()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "setProvider", "(Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;)V", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeDocumentArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public String documentId;

    /* renamed from: b, reason: from kotlin metadata */
    public String pageId;

    /* renamed from: d, reason: from kotlin metadata */
    public long createAt;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean saveExportRecord;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public PBDocRecordProvider provider;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String revisionId = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String pbDirPath = SyncConstant.INSTANCE.appDocDir();

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;", "", "()V", "compare", "", "args1", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "args2", "descCompare", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int compare(@Nullable ShapeDocumentArgs args1, @Nullable ShapeDocumentArgs args2) {
            if (args1 == null && args2 == null) {
                return 0;
            }
            if (args1 == null) {
                return -1;
            }
            if (args2 == null) {
                return 1;
            }
            return Intrinsics.compare(args1.createAt, args2.createAt);
        }

        public final int descCompare(@Nullable ShapeDocumentArgs args1, @Nullable ShapeDocumentArgs args2) {
            if (args1 == null && args2 == null) {
                return 0;
            }
            if (args1 == null) {
                return 1;
            }
            if (args2 == null) {
                return -1;
            }
            return -Intrinsics.compare(args1.createAt, args2.createAt);
        }

        public Companion() {
        }
    }

    public final long getCreateAt() {
        return this.createAt;
    }

    @NotNull
    public final String getDebugInfo() {
        StringBuilder sb = new StringBuilder();
        sb.append("Args{documentId='");
        String str = this.documentId;
        String str2 = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("documentId");
            str = null;
        }
        sb.append(str);
        sb.append("', revisionId='");
        sb.append(this.revisionId);
        sb.append("', pageId='");
        String str3 = this.pageId;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_TOC_PAGE_ID);
        } else {
            str2 = str3;
        }
        sb.append(str2);
        sb.append("', createAt=");
        sb.append(this.createAt);
        sb.append('}');
        return sb.toString();
    }

    @NotNull
    public final String getDocumentId() {
        String str = this.documentId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("documentId");
        return null;
    }

    @NotNull
    public final String getPageId() {
        String str = this.pageId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_TOC_PAGE_ID);
        return null;
    }

    @NotNull
    public final String getPbDirPath() {
        return this.pbDirPath;
    }

    @Nullable
    public final PBDocRecordProvider getProvider() {
        return this.provider;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    /* renamed from: isSaveExportRecord, reason: from getter */
    public final boolean getSaveExportRecord() {
        return this.saveExportRecord;
    }

    @NotNull
    public final ShapeDocumentArgs setCreateAt(long createAt) {
        this.createAt = createAt;
        return this;
    }

    @NotNull
    public final ShapeDocumentArgs setDocumentId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        return this;
    }

    @NotNull
    public final ShapeDocumentArgs setPageId(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
        return this;
    }

    @NotNull
    public final ShapeDocumentArgs setPbDirPath(@NotNull String pbDirPath) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        this.pbDirPath = pbDirPath;
        return this;
    }

    public final void setProvider(@Nullable PBDocRecordProvider pBDocRecordProvider) {
        this.provider = pBDocRecordProvider;
    }

    @NotNull
    public final ShapeDocumentArgs setRevisionId(@NotNull String revisionId) {
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        this.revisionId = revisionId;
        return this;
    }

    @NotNull
    public final ShapeDocumentArgs setSaveExportRecord(boolean save) {
        this.saveExportRecord = save;
        return this;
    }
}

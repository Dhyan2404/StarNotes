package com.onyx.android.sdk.replicator.note.proto.data;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0002J\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\fJ\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0010R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0006\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;", "", "", "getDocumentId", "documentId", "setDocumentId", "docDirPath", "setDocDirPath", "getDocDirPath", "getRevisionId", CouchFieldKey.KEY_REVISION_ID, "setRevisionId", "", "getCreateAt", "createAt", "setCreateAt", "", "isSaveExportRecord", "save", "setSaveExportRecord", "a", Constants.STRING_SIG, "b", "c", "d", "J", "e", Constants.HASIDCALL_INDEX_SIG, "saveExportRecord", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ResourceDocumentArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String revisionId;

    /* renamed from: d, reason: from kotlin metadata */
    public long createAt;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean saveExportRecord;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String documentId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String docDirPath = SyncConstant.INSTANCE.appDocDir();

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs$Companion;", "", "()V", "compare", "", "args1", "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;", "args2", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int compare(@Nullable ResourceDocumentArgs args1, @Nullable ResourceDocumentArgs args2) {
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

        public Companion() {
        }
    }

    public final long getCreateAt() {
        return this.createAt;
    }

    @NotNull
    public final String getDocDirPath() {
        return this.docDirPath;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getRevisionId() {
        return this.revisionId;
    }

    /* renamed from: isSaveExportRecord, reason: from getter */
    public final boolean getSaveExportRecord() {
        return this.saveExportRecord;
    }

    @NotNull
    public final ResourceDocumentArgs setCreateAt(long createAt) {
        this.createAt = createAt;
        return this;
    }

    @NotNull
    public final ResourceDocumentArgs setDocDirPath(@NotNull String docDirPath) {
        Intrinsics.checkNotNullParameter(docDirPath, "docDirPath");
        this.docDirPath = docDirPath;
        return this;
    }

    @NotNull
    public final ResourceDocumentArgs setDocumentId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        return this;
    }

    @NotNull
    public final ResourceDocumentArgs setRevisionId(@Nullable String revisionId) {
        this.revisionId = revisionId;
        return this;
    }

    @NotNull
    public final ResourceDocumentArgs setSaveExportRecord(boolean save) {
        this.saveExportRecord = save;
        return this;
    }
}

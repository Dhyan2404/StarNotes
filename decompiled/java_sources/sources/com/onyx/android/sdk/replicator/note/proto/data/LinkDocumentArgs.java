package com.onyx.android.sdk.replicator.note.proto.data;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002R$\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR$\u0010\u0005\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\rR$\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;", "", "", "documentId", "setDocumentId", CouchFieldKey.KEY_REVISION_ID, "setRevisionId", "docDirPath", "setDocDirPath", "<set-?>", "a", Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "b", "getRevisionId", "c", "getDocDirPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LinkDocumentArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String documentId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String revisionId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String docDirPath = SyncConstant.INSTANCE.appDocDir();

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs$Companion;", "", "()V", "compare", "", "args1", "Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;", "args2", "isNullOrEmpty", "", "args", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int compare(@NotNull LinkDocumentArgs args1, @NotNull LinkDocumentArgs args2) {
            Intrinsics.checkNotNullParameter(args1, "args1");
            Intrinsics.checkNotNullParameter(args2, "args2");
            if (isNullOrEmpty(args1) && isNullOrEmpty(args2)) {
                return 0;
            }
            if (isNullOrEmpty(args1)) {
                return -1;
            }
            if (isNullOrEmpty(args2)) {
                return 1;
            }
            return UUID.fromString(args1.getRevisionId()).compareTo(UUID.fromString(args2.getRevisionId()));
        }

        public final boolean isNullOrEmpty(@Nullable LinkDocumentArgs args) {
            if (args == null) {
                return true;
            }
            String revisionId = args.getRevisionId();
            return revisionId == null || revisionId.length() == 0;
        }

        public Companion() {
        }
    }

    @NotNull
    public final String getDocDirPath() {
        return this.docDirPath;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final LinkDocumentArgs setDocDirPath(@NotNull String docDirPath) {
        Intrinsics.checkNotNullParameter(docDirPath, "docDirPath");
        this.docDirPath = docDirPath;
        return this;
    }

    @NotNull
    public final LinkDocumentArgs setDocumentId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        return this;
    }

    @NotNull
    public final LinkDocumentArgs setRevisionId(@NotNull String revisionId) {
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        this.revisionId = revisionId;
        return this;
    }
}

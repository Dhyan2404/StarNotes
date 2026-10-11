package com.onyx.android.sdk.replicator.note.proto.data;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002J\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\fR\u0016\u0010\u0007\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "", "", "getUserId", Constant.TAG_USER_ID, "setUserId", "getDocumentId", "documentId", "setDocumentId", "getRevisionId", CouchFieldKey.KEY_REVISION_ID, "setRevisionId", "", "isSaveExportRecord", "save", "setSaveExportRecord", "a", Constants.STRING_SIG, "b", "c", "d", Constants.HASIDCALL_INDEX_SIG, "saveExportRecord", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PBDocumentArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String documentId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String userId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String revisionId;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean saveExportRecord;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;", "", "()V", "compare", "", "args1", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "args2", "isNullOrEmpty", "", "args", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int compare(@NotNull PBDocumentArgs args1, @NotNull PBDocumentArgs args2) {
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
            return UUID.fromString(args1.revisionId).compareTo(UUID.fromString(args2.revisionId));
        }

        public final boolean isNullOrEmpty(@Nullable PBDocumentArgs args) {
            return args == null || StringUtils.isEmpty(args.revisionId);
        }

        public Companion() {
        }
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    /* renamed from: isSaveExportRecord, reason: from getter */
    public final boolean getSaveExportRecord() {
        return this.saveExportRecord;
    }

    @NotNull
    public final PBDocumentArgs setDocumentId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        return this;
    }

    @NotNull
    public final PBDocumentArgs setRevisionId(@Nullable String revisionId) {
        this.revisionId = revisionId;
        return this;
    }

    @NotNull
    public final PBDocumentArgs setSaveExportRecord(boolean save) {
        this.saveExportRecord = save;
        return this;
    }

    @NotNull
    public final PBDocumentArgs setUserId(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        return this;
    }
}

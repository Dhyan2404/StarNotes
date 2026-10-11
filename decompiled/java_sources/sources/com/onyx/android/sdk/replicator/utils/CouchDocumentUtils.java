package com.onyx.android.sdk.replicator.utils;

import com.couchbase.lite.Document;
import com.couchbase.lite.MutableDocument;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/utils/CouchDocumentUtils;", "", "()V", "isCommitPoint", "", "document", "Lcom/couchbase/lite/Document;", "isNoteDocCommitPoint", "isNoteDocEnabled", "Lcom/couchbase/lite/MutableDocument;", "isNoteDocSyncEnabled", "isNoteDocument", "isNoteLibrary", "isNoteTagDocument", "isNoteTreeSyncEnabled", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CouchDocumentUtils {

    @NotNull
    public static final CouchDocumentUtils INSTANCE = new CouchDocumentUtils();

    public final boolean isCommitPoint(@NotNull Document document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return document.contains(CouchFieldKey.KEY_COMMIT_STATUS);
    }

    public final boolean isNoteDocCommitPoint(@NotNull Document document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return isCommitPoint(document) && document.getInt(CouchFieldKey.KEY_COMMIT_TYPE) == 1;
    }

    public final boolean isNoteDocEnabled(@NotNull MutableDocument document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return document.getInt("status") == 1;
    }

    public final boolean isNoteDocSyncEnabled(@NotNull MutableDocument document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return isNoteDocument(document) && isNoteDocEnabled(document) && document.getLong(CouchFieldKey.KEY_NOTE_POINT_SIZE) > -1 && isNoteTreeSyncEnabled(document);
    }

    public final boolean isNoteDocument(@NotNull MutableDocument document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return document.contains("type") && document.getInt("type") == 1;
    }

    public final boolean isNoteLibrary(@NotNull MutableDocument document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return document.contains("type") && document.getInt("type") == 0;
    }

    public final boolean isNoteTagDocument(@NotNull Document document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return document.contains(CouchFieldKey.KEY_MODE_TYPE) && document.getInt(CouchFieldKey.KEY_MODE_TYPE) == 1;
    }

    public final boolean isNoteTreeSyncEnabled(@NotNull Document document) {
        Intrinsics.checkNotNullParameter(document, "document");
        return !document.contains(CouchFieldKey.KEY_NOTE_SYNC_STATUS) || document.getInt(CouchFieldKey.KEY_NOTE_SYNC_STATUS) == 1;
    }
}

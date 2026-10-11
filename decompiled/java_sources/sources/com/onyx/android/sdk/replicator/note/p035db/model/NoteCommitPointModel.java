package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0018\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001d\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_COMMIT_ID, "", "getCommitId", "()Ljava/lang/String;", "setCommitId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_COMMIT_STATUS, "", "getCommitStatus", "()I", "setCommitStatus", "(I)V", CouchFieldKey.KEY_COMMIT_TYPE, "getCommitType", "setCommitType", CouchFieldKey.KEY_DOCUMENT_ID, "getDocumentUniqueId", "setDocumentUniqueId", CouchFieldKey.KEY_PAGE_ID, "getPageUniqueId", "setPageUniqueId", CouchFieldKey.KEY_RECORD_FILE_EXTENSION, "getRecordFileExtension", "setRecordFileExtension", CouchFieldKey.KEY_RECORD_FILE_PATH, "getRecordFilePath", "setRecordFilePath", CouchFieldKey.KEY_RECORD_TYPE, "getRecordType", "setRecordType", "status", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteCommitPointModel extends BaseReplicatorModel {

    @Nullable
    private String commitId;
    private int commitType;

    @Nullable
    private String pageUniqueId;

    @Nullable
    private String recordFileExtension;

    @Nullable
    private String recordFilePath;

    @NotNull
    private String documentUniqueId = "";
    private int commitStatus = 1;
    private int recordType = 1;

    @Nullable
    public final String getCommitId() {
        return this.commitId;
    }

    public final int getCommitStatus() {
        return this.commitStatus;
    }

    public final int getCommitType() {
        return this.commitType;
    }

    @NotNull
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @Nullable
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Nullable
    public final String getRecordFileExtension() {
        return this.recordFileExtension;
    }

    @Nullable
    public final String getRecordFilePath() {
        return this.recordFilePath;
    }

    public final int getRecordType() {
        return this.recordType;
    }

    /* renamed from: setCommitId, reason: collision with other method in class */
    public final void m72378setCommitId(@Nullable String str) {
        this.commitId = str;
    }

    /* renamed from: setCommitStatus, reason: collision with other method in class */
    public final void m72379setCommitStatus(int i) {
        this.commitStatus = i;
    }

    /* renamed from: setCommitType, reason: collision with other method in class */
    public final void m72380setCommitType(int i) {
        this.commitType = i;
    }

    /* renamed from: setDocumentUniqueId, reason: collision with other method in class */
    public final void m72381setDocumentUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentUniqueId = str;
    }

    /* renamed from: setPageUniqueId, reason: collision with other method in class */
    public final void m72382setPageUniqueId(@Nullable String str) {
        this.pageUniqueId = str;
    }

    /* renamed from: setRecordFileExtension, reason: collision with other method in class */
    public final void m72383setRecordFileExtension(@Nullable String str) {
        this.recordFileExtension = str;
    }

    /* renamed from: setRecordFilePath, reason: collision with other method in class */
    public final void m72384setRecordFilePath(@Nullable String str) {
        this.recordFilePath = str;
    }

    /* renamed from: setRecordType, reason: collision with other method in class */
    public final void m72385setRecordType(int i) {
        this.recordType = i;
    }

    @NotNull
    public final NoteCommitPointModel setCommitId(@Nullable String commitId) {
        this.commitId = commitId;
        return this;
    }

    @NotNull
    public final NoteCommitPointModel setCommitStatus(int status) {
        this.commitStatus = status;
        return this;
    }

    @NotNull
    public final NoteCommitPointModel setCommitType(int commitType) {
        this.commitType = commitType;
        return this;
    }

    @NotNull
    public final NoteCommitPointModel setDocumentUniqueId(@NotNull String documentUniqueId) {
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        this.documentUniqueId = documentUniqueId;
        return this;
    }

    @NotNull
    public final NoteCommitPointModel setPageUniqueId(@Nullable String pageUniqueId) {
        this.pageUniqueId = pageUniqueId;
        return this;
    }

    @NotNull
    public final NoteCommitPointModel setRecordFileExtension(@Nullable String recordFileExtension) {
        this.recordFileExtension = recordFileExtension;
        return this;
    }

    @NotNull
    public final NoteCommitPointModel setRecordFilePath(@Nullable String recordFilePath) {
        this.recordFilePath = recordFilePath;
        return this;
    }

    @NotNull
    public final NoteCommitPointModel setRecordType(int recordType) {
        this.recordType = recordType;
        return this;
    }
}

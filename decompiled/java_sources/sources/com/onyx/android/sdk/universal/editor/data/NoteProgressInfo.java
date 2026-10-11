package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\"J\b\u0010#\u001a\u0004\u0018\u00010\u0010J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010&\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;", "", "()V", "ignoreResult", "", "getIgnoreResult", Constants.BOOLEAN_VALUE_SIG, "setIgnoreResult", "(Z)V", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setNoteModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "noteTitle", "", "getNoteTitle", "()Ljava/lang/String;", "setNoteTitle", "(Ljava/lang/String;)V", "progressInfo", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "getProgressInfo", "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "setProgressInfo", "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V", "throwable", "", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "checkNoSpaceError", "", "getImportFileName", "isError", "isFinished", "isSuccess", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteProgressInfo {
    private boolean ignoreResult;

    @Nullable
    private SyncNoteModel noteModel;

    @Nullable
    private String noteTitle;

    @NotNull
    private ProgressInfo progressInfo = new ProgressInfo();

    @Nullable
    private Throwable throwable;

    public final void checkNoSpaceError() {
        if (isError()) {
            OnyxException.Companion companion = OnyxException.INSTANCE;
            Throwable th = this.throwable;
            Intrinsics.checkNotNull(th);
            companion.checkNoSpace(th);
        }
    }

    public final boolean getIgnoreResult() {
        return this.ignoreResult;
    }

    @Nullable
    public final String getImportFileName() {
        String str = this.noteTitle;
        if (str != null) {
            return str;
        }
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel != null) {
            return syncNoteModel.getTitle();
        }
        return null;
    }

    @Nullable
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    @Nullable
    public final String getNoteTitle() {
        return this.noteTitle;
    }

    @NotNull
    public final ProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final boolean isError() {
        return this.throwable != null;
    }

    public final boolean isFinished() {
        return this.progressInfo.isComplete() || this.throwable != null;
    }

    public final boolean isSuccess() {
        return !isError() && this.progressInfo.isComplete();
    }

    public final void setIgnoreResult(boolean z) {
        this.ignoreResult = z;
    }

    public final void setNoteModel(@Nullable SyncNoteModel syncNoteModel) {
        this.noteModel = syncNoteModel;
    }

    public final void setNoteTitle(@Nullable String str) {
        this.noteTitle = str;
    }

    public final void setProgressInfo(@NotNull ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(progressInfo, "<set-?>");
        this.progressInfo = progressInfo;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }
}

package com.onyx.galaxy.note.settings.data;

import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000R\"\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001f\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u0018\"\u0004\b\u001e\u0010\u001a¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/ImportResultBean;", "", "importResultBean", "", "copy", "", "a", Constants.HASIDCALL_INDEX_SIG, "isSuccess", Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", "Lcom/onyx/galaxy/note/settings/data/BackupErrorType;", "b", "Lcom/onyx/galaxy/note/settings/data/BackupErrorType;", "getErrorType", "()Lcom/onyx/galaxy/note/settings/data/BackupErrorType;", "setErrorType", "(Lcom/onyx/galaxy/note/settings/data/BackupErrorType;)V", "errorType", "", "c", Constants.STRING_SIG, "getBackupName", "()Ljava/lang/String;", "setBackupName", "(Ljava/lang/String;)V", "backupName", "d", "getDocId", "setDocId", EditorConstants.ARGS_DOC_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportResultBean {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isSuccess;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public BackupErrorType errorType;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String backupName = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String docId = "";

    public final void copy(@NotNull ImportResultBean importResultBean) {
        Intrinsics.checkNotNullParameter(importResultBean, "importResultBean");
        this.isSuccess = importResultBean.isSuccess;
        this.errorType = importResultBean.errorType;
    }

    @NotNull
    public final String getBackupName() {
        return this.backupName;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    @Nullable
    public final BackupErrorType getErrorType() {
        return this.errorType;
    }

    /* renamed from: isSuccess, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final void setBackupName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.backupName = str;
    }

    public final void setDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.docId = str;
    }

    public final void setErrorType(@Nullable BackupErrorType backupErrorType) {
        this.errorType = backupErrorType;
    }

    public final void setSuccess(boolean z) {
        this.isSuccess = z;
    }
}

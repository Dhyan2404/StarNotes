package com.onyx.android.sdk.universal.p042ui.data;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b+\u0010,J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0010\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R(\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010*\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;", "", "", "backupEnabled", "isError", "onlyCloudBackup", "onlyLocalBackup", "", "a", Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "documentId", "b", Constants.HASIDCALL_INDEX_SIG, "getLocalBackup", Constants.BOOLEAN_VALUE_SIG, "setLocalBackup", "(Z)V", CouchFieldKey.KEY_LOCAL_BACKUP, "c", "getCloudBackup", "setCloudBackup", CouchFieldKey.KEY_CLOUD_BACKUP, "", "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;", "d", "Ljava/util/List;", "getAutoBackupModels", "()Ljava/util/List;", "setAutoBackupModels", "(Ljava/util/List;)V", "autoBackupModels", "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "e", "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "getBackupContext", "()Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "setBackupContext", "(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V", "backupContext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AutoBackupContext {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String documentId;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean localBackup;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean cloudBackup;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<AutoBackupModel> autoBackupModels;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public BackupContext backupContext;

    public AutoBackupContext(@NotNull String documentId, boolean z, boolean z2) {
        List<AutoBackupModel> emptyList;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        this.localBackup = z;
        this.cloudBackup = z2;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.autoBackupModels = emptyList;
    }

    public final boolean backupEnabled() {
        return this.localBackup || this.cloudBackup;
    }

    @NotNull
    public final List<AutoBackupModel> getAutoBackupModels() {
        return this.autoBackupModels;
    }

    @Nullable
    public final BackupContext getBackupContext() {
        return this.backupContext;
    }

    public final boolean getCloudBackup() {
        return this.cloudBackup;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    public final boolean getLocalBackup() {
        return this.localBackup;
    }

    public final boolean isError() {
        BackupContext backupContext = this.backupContext;
        if (backupContext != null) {
            return backupContext.isError();
        }
        return false;
    }

    public final boolean onlyCloudBackup() {
        return !this.localBackup && this.cloudBackup;
    }

    public final boolean onlyLocalBackup() {
        return this.localBackup && !this.cloudBackup;
    }

    public final void setAutoBackupModels(@NotNull List<AutoBackupModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.autoBackupModels = list;
    }

    public final void setBackupContext(@Nullable BackupContext backupContext) {
        this.backupContext = backupContext;
    }

    public final void setCloudBackup(boolean z) {
        this.cloudBackup = z;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setLocalBackup(boolean z) {
        this.localBackup = z;
    }
}

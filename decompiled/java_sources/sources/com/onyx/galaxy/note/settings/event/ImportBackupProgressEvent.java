package com.onyx.galaxy.note.settings.event;

import com.onyx.galaxy.note.settings.data.BackupBean;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/event/ImportBackupProgressEvent;", "", "Lcom/onyx/galaxy/note/settings/data/BackupBean;", "a", "Lcom/onyx/galaxy/note/settings/data/BackupBean;", "getBackupBean", "()Lcom/onyx/galaxy/note/settings/data/BackupBean;", "setBackupBean", "(Lcom/onyx/galaxy/note/settings/data/BackupBean;)V", "backupBean", Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportBackupProgressEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public BackupBean backupBean;

    public ImportBackupProgressEvent(@NotNull BackupBean backupBean) {
        Intrinsics.checkNotNullParameter(backupBean, "backupBean");
        this.backupBean = backupBean;
    }

    @NotNull
    public final BackupBean getBackupBean() {
        return this.backupBean;
    }

    public final void setBackupBean(@NotNull BackupBean backupBean) {
        Intrinsics.checkNotNullParameter(backupBean, "<set-?>");
        this.backupBean = backupBean;
    }
}

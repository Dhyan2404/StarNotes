package com.onyx.galaxy.note.settings.event;

import com.onyx.galaxy.note.settings.data.ImportResultBean;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/event/ImportBackupProgressResultEvent;", "", "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;", "a", "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;", "getImportResult", "()Lcom/onyx/galaxy/note/settings/data/ImportResultBean;", "setImportResult", "(Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)V", "importResult", Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportBackupProgressResultEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ImportResultBean importResult;

    public ImportBackupProgressResultEvent(@NotNull ImportResultBean importResult) {
        Intrinsics.checkNotNullParameter(importResult, "importResult");
        this.importResult = importResult;
    }

    @NotNull
    public final ImportResultBean getImportResult() {
        return this.importResult;
    }

    public final void setImportResult(@NotNull ImportResultBean importResultBean) {
        Intrinsics.checkNotNullParameter(importResultBean, "<set-?>");
        this.importResult = importResultBean;
    }
}

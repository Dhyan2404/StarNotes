package com.onyx.galaxy.note.usercenter.handler;

import com.onyx.galaxy.note.usercenter.data.FileDownloadArgs;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0002\u001a\u00020\u0001R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;", "", "getDownloadArgsForJavascript", "", "a", "I", "getStatus", "()I", "setStatus", "(I)V", "status", "b", "getProgress", "setProgress", "progress", "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;", "c", "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;", "getDownloadArgs", "()Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;", "setDownloadArgs", "(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V", "downloadArgs", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FileDownloadEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public int status;

    /* renamed from: b, reason: from kotlin metadata */
    public int progress;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public FileDownloadArgs downloadArgs = new FileDownloadArgs();

    @NotNull
    public final FileDownloadArgs getDownloadArgs() {
        return this.downloadArgs;
    }

    @NotNull
    public final Object getDownloadArgsForJavascript() {
        int i = this.status;
        String str = i != -5 ? i != -3 ? i != -1 ? JavascriptArgs.EVENT_DOWNLOAD_PROGRESS : JavascriptArgs.EVENT_FILE_SAVE_FAILED : JavascriptArgs.EVENT_FILE_SAVED : JavascriptArgs.EVENT_NO_FILE_PERMISSION;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("type", str);
        linkedHashMap.put(JavascriptArgs.KEY_TASK_ID, this.downloadArgs.getTaskId());
        linkedHashMap.put("progress", Integer.valueOf(this.progress));
        return linkedHashMap;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setDownloadArgs(@NotNull FileDownloadArgs fileDownloadArgs) {
        Intrinsics.checkNotNullParameter(fileDownloadArgs, "<set-?>");
        this.downloadArgs = fileDownloadArgs;
    }

    public final void setProgress(int i) {
        this.progress = i;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}

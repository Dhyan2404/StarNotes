package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;", "", "", "a", Constants.STRING_SIG, "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", HuaweiYunQueryArgs.FILE_NAME, "", "b", "I", "getProgress", "()I", "setProgress", "(I)V", "progress", "c", "getCurrentNumber", "setCurrentNumber", "currentNumber", "d", "getTotalCount", "setTotalCount", "totalCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportProgressArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String fileName = "";

    /* renamed from: b, reason: from kotlin metadata */
    public int progress;

    /* renamed from: c, reason: from kotlin metadata */
    public int currentNumber;

    /* renamed from: d, reason: from kotlin metadata */
    public int totalCount;

    public final int getCurrentNumber() {
        return this.currentNumber;
    }

    @NotNull
    public final String getFileName() {
        return this.fileName;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final void setCurrentNumber(int i) {
        this.currentNumber = i;
    }

    public final void setFileName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fileName = str;
    }

    public final void setProgress(int i) {
        this.progress = i;
    }

    public final void setTotalCount(int i) {
        this.totalCount = i;
    }
}

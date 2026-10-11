package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0019\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0010\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;", "", "", "a", Constants.STRING_SIG, "getDirPath", "()Ljava/lang/String;", "setDirPath", "(Ljava/lang/String;)V", "dirPath", "b", "getFileName", "setFileName", HuaweiYunQueryArgs.FILE_NAME, "", "c", Constants.HASIDCALL_INDEX_SIG, "getSupportCompress", Constants.BOOLEAN_VALUE_SIG, "setSupportCompress", "(Z)V", "supportCompress", "d", "getOnlyDoc", "setOnlyDoc", "onlyDoc", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ExportImportArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String dirPath = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String fileName = "";

    /* renamed from: c, reason: from kotlin metadata */
    public boolean supportCompress;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean onlyDoc;

    @NotNull
    public final String getDirPath() {
        return this.dirPath;
    }

    @NotNull
    public final String getFileName() {
        return this.fileName;
    }

    public final boolean getOnlyDoc() {
        return this.onlyDoc;
    }

    public final boolean getSupportCompress() {
        return this.supportCompress;
    }

    public final void setDirPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.dirPath = str;
    }

    public final void setFileName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fileName = str;
    }

    public final void setOnlyDoc(boolean z) {
        this.onlyDoc = z;
    }

    public final void setSupportCompress(boolean z) {
        this.supportCompress = z;
    }
}

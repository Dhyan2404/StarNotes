package com.onyx.android.sdk.replicator.note.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "", "()V", "exportAllFolder", "", "getExportAllFolder", Constants.BOOLEAN_VALUE_SIG, "setExportAllFolder", "(Z)V", "exportAllTag", "getExportAllTag", "setExportAllTag", "exportDirPath", "", "getExportDirPath", "()Ljava/lang/String;", "setExportDirPath", "(Ljava/lang/String;)V", "exportFont", "getExportFont", "setExportFont", "exportNoteArgsList", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "getExportNoteArgsList", "()Ljava/util/List;", "setExportNoteArgsList", "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExportNoteListArgs {
    private boolean exportAllFolder;
    private boolean exportAllTag;
    private boolean exportFont;

    @NotNull
    private List<ExportNoteArgs> exportNoteArgsList = new ArrayList();

    @NotNull
    private String exportDirPath = "";

    public final boolean getExportAllFolder() {
        return this.exportAllFolder;
    }

    public final boolean getExportAllTag() {
        return this.exportAllTag;
    }

    @NotNull
    public final String getExportDirPath() {
        return this.exportDirPath;
    }

    public final boolean getExportFont() {
        return this.exportFont;
    }

    @NotNull
    public final List<ExportNoteArgs> getExportNoteArgsList() {
        return this.exportNoteArgsList;
    }

    public final void setExportAllFolder(boolean z) {
        this.exportAllFolder = z;
    }

    public final void setExportAllTag(boolean z) {
        this.exportAllTag = z;
    }

    public final void setExportDirPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.exportDirPath = str;
    }

    public final void setExportFont(boolean z) {
        this.exportFont = z;
    }

    public final void setExportNoteArgsList(@NotNull List<ExportNoteArgs> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.exportNoteArgsList = list;
    }
}

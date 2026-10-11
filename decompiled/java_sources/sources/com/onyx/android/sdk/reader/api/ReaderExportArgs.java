package com.onyx.android.sdk.reader.api;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.neopdf.lib.UUIDUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u0015\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;", "", "", "a", Constants.STRING_SIG, "getSourceFilePassword", "()Ljava/lang/String;", "setSourceFilePassword", "(Ljava/lang/String;)V", "sourceFilePassword", "b", "getOutputPath", "setOutputPath", "outputPath", "c", "getFileId", "setFileId", "fileId", "", "d", Constants.TYPES_INDEX_SIG, "getPages", "()[I", "setPages", "([I)V", NotificationCompat.WearableExtender.f5053s, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderExportArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String sourceFilePassword = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String outputPath = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String fileId = UUIDUtils.INSTANCE.rawUUID();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public int[] pages = {0};

    @NotNull
    public final String getFileId() {
        return this.fileId;
    }

    @NotNull
    public final String getOutputPath() {
        return this.outputPath;
    }

    @NotNull
    public final int[] getPages() {
        return this.pages;
    }

    @NotNull
    public final String getSourceFilePassword() {
        return this.sourceFilePassword;
    }

    public final void setFileId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fileId = str;
    }

    public final void setOutputPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.outputPath = str;
    }

    public final void setPages(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.pages = iArr;
    }

    public final void setSourceFilePassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sourceFilePassword = str;
    }
}

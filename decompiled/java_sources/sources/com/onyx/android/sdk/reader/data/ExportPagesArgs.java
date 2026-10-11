package com.onyx.android.sdk.reader.data;

import com.onyx.android.sdk.reader.api.ReaderExportArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;", "", "", "a", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "path", "b", "getPassword", "password", "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;", "c", "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;", "getReaderExportArgs", "()Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;", "readerExportArgs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExportPagesArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String path;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String password;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ReaderExportArgs readerExportArgs;

    public ExportPagesArgs(@NotNull String path, @NotNull String password, @NotNull ReaderExportArgs readerExportArgs) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(readerExportArgs, "readerExportArgs");
        this.path = path;
        this.password = password;
        this.readerExportArgs = readerExportArgs;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final ReaderExportArgs getReaderExportArgs() {
        return this.readerExportArgs;
    }

    public /* synthetic */ ExportPagesArgs(String str, String str2, ReaderExportArgs readerExportArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, readerExportArgs);
    }
}

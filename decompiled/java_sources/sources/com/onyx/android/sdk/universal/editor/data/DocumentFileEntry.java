package com.onyx.android.sdk.universal.editor.data;

import android.net.Uri;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "", "fileUri", "Landroid/net/Uri;", "(Landroid/net/Uri;)V", "extensionName", "", "getExtensionName", "()Ljava/lang/String;", "setExtensionName", "(Ljava/lang/String;)V", "file", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "setFile", "(Ljava/io/File;)V", "filePassword", "getFilePassword", "setFilePassword", "getFileUri", "()Landroid/net/Uri;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DocumentFileEntry {

    @NotNull
    private String extensionName;

    @Nullable
    private File file;

    @NotNull
    private String filePassword;

    @NotNull
    private final Uri fileUri;

    public DocumentFileEntry(@NotNull Uri fileUri) {
        Intrinsics.checkNotNullParameter(fileUri, "fileUri");
        this.fileUri = fileUri;
        this.filePassword = "";
        this.extensionName = "";
    }

    @NotNull
    public final String getExtensionName() {
        return this.extensionName;
    }

    @Nullable
    public final File getFile() {
        return this.file;
    }

    @NotNull
    public final String getFilePassword() {
        return this.filePassword;
    }

    @NotNull
    public final Uri getFileUri() {
        return this.fileUri;
    }

    public final void setExtensionName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.extensionName = str;
    }

    public final void setFile(@Nullable File file) {
        this.file = file;
    }

    public final void setFilePassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filePassword = str;
    }
}

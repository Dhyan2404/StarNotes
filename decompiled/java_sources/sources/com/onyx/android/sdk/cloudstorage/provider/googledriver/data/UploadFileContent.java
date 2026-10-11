package com.onyx.android.sdk.cloudstorage.provider.googledriver.data;

import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.util.Preconditions;
import com.onyx.android.sdk.cloudstorage.common.utils.ProcessInputStream;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.data.UploadFileContent;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;", "Lcom/google/api/client/http/AbstractInputStreamContent;", "type", "", "file", "Ljava/io/File;", "(Ljava/lang/String;Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "progressListener", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;", "getProgressListener", "()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;", "setProgressListener", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;)V", "getInputStream", "Ljava/io/InputStream;", "getLength", "", "retrySupported", "", "setCloseInputStream", "closeInputStream", "setType", "ProgressListener", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UploadFileContent extends AbstractInputStreamContent {

    @NotNull
    private final File file;

    @Nullable
    private ProgressListener progressListener;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;", "", "notifyProgress", "", "progressInfo", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public interface ProgressListener {
        void notifyProgress(@NotNull ProgressInfo progressInfo);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UploadFileContent(@NotNull String type, @NotNull File file) {
        super(type);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(file, "file");
        Object checkNotNull = Preconditions.checkNotNull(file);
        Intrinsics.checkNotNullExpressionValue(checkNotNull, "checkNotNull(...)");
        this.file = (File) checkNotNull;
    }

    @NotNull
    public final File getFile() {
        return this.file;
    }

    @Override // com.google.api.client.http.AbstractInputStreamContent
    @NotNull
    public InputStream getInputStream() throws IOException {
        final FileInputStream fileInputStream = new FileInputStream(this.file);
        final long length = this.file.length();
        return new ProcessInputStream(fileInputStream, length) { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.data.UploadFileContent$getInputStream$1
            @Override // com.onyx.android.sdk.cloudstorage.common.utils.ProcessInputStream
            public void notifyProgress(@NotNull ProgressInfo progressInfo) {
                Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
                if (UploadFileContent.this.getProgressListener() != null) {
                    UploadFileContent.ProgressListener progressListener = UploadFileContent.this.getProgressListener();
                    Intrinsics.checkNotNull(progressListener);
                    progressListener.notifyProgress(progressInfo);
                }
            }
        };
    }

    @Override // com.google.api.client.http.HttpContent
    public long getLength() {
        return this.file.length();
    }

    @Nullable
    public final ProgressListener getProgressListener() {
        return this.progressListener;
    }

    @Override // com.google.api.client.http.HttpContent
    public boolean retrySupported() {
        return true;
    }

    public final void setProgressListener(@Nullable ProgressListener progressListener) {
        this.progressListener = progressListener;
    }

    @Override // com.google.api.client.http.AbstractInputStreamContent
    @NotNull
    public UploadFileContent setCloseInputStream(boolean closeInputStream) {
        AbstractInputStreamContent closeInputStream2 = super.setCloseInputStream(closeInputStream);
        Intrinsics.checkNotNull(closeInputStream2, "null cannot be cast to non-null type com.onyx.android.sdk.cloudstorage.provider.googledriver.data.UploadFileContent");
        return (UploadFileContent) closeInputStream2;
    }

    @Override // com.google.api.client.http.AbstractInputStreamContent
    @NotNull
    public UploadFileContent setType(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        AbstractInputStreamContent type2 = super.setType(type);
        Intrinsics.checkNotNull(type2, "null cannot be cast to non-null type com.onyx.android.sdk.cloudstorage.provider.googledriver.data.UploadFileContent");
        return (UploadFileContent) type2;
    }
}

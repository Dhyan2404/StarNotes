package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.File;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ\b\u0010\u0010\u001a\u00020\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u0007X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\t\u001a\u00020\u0007X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "parentTitles", "", "", BreakpointSQLiteKey.FILENAME, "filepath", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getFilename", "()Ljava/lang/String;", "getFilepath", "getParentTitles", "()Ljava/util/List;", "execute", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriveSaveExportFileRequest extends TransferCloudFileRequest<File> {

    @NotNull
    private final String filename;

    @NotNull
    private final String filepath;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    @NotNull
    private final List<String> parentTitles;

    public GoogleDriveSaveExportFileRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull List<String> parentTitles, @NotNull String filename, @NotNull String filepath) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(parentTitles, "parentTitles");
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(filepath, "filepath");
        this.googleDriverProvider = googleDriverProvider;
        this.parentTitles = parentTitles;
        this.filename = filename;
        this.filepath = filepath;
        getStatus().setUpload(true);
    }

    @NotNull
    public final String getFilename() {
        return this.filename;
    }

    @NotNull
    public final String getFilepath() {
        return this.filepath;
    }

    @NotNull
    public final List<String> getParentTitles() {
        return this.parentTitles;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public File execute() {
        String accountId = this.googleDriverProvider.getAccountId();
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        File saveFile = companion.getOurInstance().saveFile(accountId, companion.getOurInstance().ensureParentFolderCreated(accountId, this.parentTitles).getId(), this.filename, this.filepath);
        String id = saveFile.getId();
        if (!(id == null || id.length() == 0)) {
            return saveFile;
        }
        throw new Exception("cloud note file upload fail:" + this.filename);
    }
}

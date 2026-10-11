package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileExistsException;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "execute", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverCreateFolderRequest extends RxBaseRequest<File> {

    @NotNull
    private final CloudFileBean cloudFile;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    public GoogleDriverCreateFolderRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.googleDriverProvider = googleDriverProvider;
        this.cloudFile = cloudFile;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public File execute() {
        GoogleDriveManager ourInstance;
        String name;
        String accountId = this.googleDriverProvider.getAccountId();
        String str = null;
        try {
            GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
            str = companion.getOurInstance().normalizeParentId(accountId, this.cloudFile.getParentId());
            ourInstance = companion.getOurInstance();
            name = this.cloudFile.getName();
            Intrinsics.checkNotNull(name);
        } catch (GoogleJsonResponseException e) {
            if (e.getStatusCode() != 404) {
                throw e;
            }
        }
        if (CollectionKt.isNonBlank(ourInstance.findFolders(accountId, str, name).getFiles())) {
            throw new FileExistsException();
        }
        GoogleDriveManager ourInstance2 = GoogleDriveManager.INSTANCE.getOurInstance();
        String name2 = this.cloudFile.getName();
        Intrinsics.checkNotNull(name2);
        return ourInstance2.createFolder(accountId, str, name2);
    }
}

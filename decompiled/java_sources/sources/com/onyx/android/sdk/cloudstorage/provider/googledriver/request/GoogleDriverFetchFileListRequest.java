package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "execute", "fetchList", "", "updateCloudFileQueryArgs", "", "copyArgs", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverFetchFileListRequest extends RxBaseRequest<QueryListResult<File>> {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    @NotNull
    private final CloudFileQueryArgs queryArgs;

    public GoogleDriverFetchFileListRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.googleDriverProvider = googleDriverProvider;
        this.queryArgs = queryArgs;
    }

    private final List<File> fetchList(CloudFileQueryArgs queryArgs) throws Exception {
        String parentId = queryArgs.getParentId();
        try {
            CloudFileQueryArgs copy = queryArgs.copy();
            copy.setLimit(Math.min(copy.getLimit(), 1000));
            List<File> files = GoogleDriveManager.INSTANCE.getOurInstance().fetchList(this.googleDriverProvider.getAccountId(), copy).getFiles();
            updateCloudFileQueryArgs(copy);
            Intrinsics.checkNotNull(files);
            return files;
        } finally {
            queryArgs.setParentId(parentId);
        }
    }

    private final void updateCloudFileQueryArgs(CloudFileQueryArgs copyArgs) {
        this.queryArgs.setCursor(copyArgs.getCursor());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<File> execute() {
        QueryListResult<File> queryListResult = new QueryListResult<>();
        queryListResult.setList(fetchList(this.queryArgs));
        queryListResult.setCount(queryListResult.ensureList().size());
        queryListResult.setFetchSource(1);
        queryListResult.setCursor(this.queryArgs.getCursor());
        return queryListResult;
    }
}

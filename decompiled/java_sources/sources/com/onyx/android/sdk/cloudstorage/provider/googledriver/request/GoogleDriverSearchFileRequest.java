package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "execute", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverSearchFileRequest extends RxBaseRequest<QueryListResult<File>> {

    @NotNull
    private final CloudFileQueryArgs args;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    public GoogleDriverSearchFileRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.googleDriverProvider = googleDriverProvider;
        this.args = args;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<File> execute() {
        QueryListResult<File> queryListResult = new QueryListResult<>();
        GoogleDriveManager ourInstance = GoogleDriveManager.INSTANCE.getOurInstance();
        String accountId = this.googleDriverProvider.getAccountId();
        String query = this.args.getQuery();
        Intrinsics.checkNotNull(query);
        queryListResult.setList(ourInstance.searchFiles(accountId, query));
        queryListResult.setFetchSource(1);
        queryListResult.setCount(queryListResult.ensureList().size());
        Debug.INSTANCE.m32035d(GoogleDriverSearchFileRequest.class, "search count:" + queryListResult.getCount(), new Object[0]);
        return queryListResult;
    }
}

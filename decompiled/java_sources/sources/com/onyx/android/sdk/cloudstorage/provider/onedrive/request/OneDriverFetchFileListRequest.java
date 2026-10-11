package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveService;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfoBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000fR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;", "a", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "c", "", "checkAccount", "Lretrofit2/Response;", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverFetchFileListRequest extends RxBaseRequest<QueryListResult<OneDriverFileInfo>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    public OneDriverFetchFileListRequest(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.oneDriveProvider = oneDriveProvider;
        this.queryArgs = queryArgs;
    }

    /* renamed from: a */
    public final OneDriverFileInfoBody m32780a() throws Exception {
        boolean z = true;
        try {
            Response<OneDriverFileInfoBody> m32781b = m32781b(this.queryArgs, true);
            if (m32781b.isSuccessful()) {
                OneDriverFileInfoBody body = m32781b.body();
                Intrinsics.checkNotNullExpressionValue(body, "body(...)");
                return body;
            }
            if (m32781b.code() == 501) {
                return m32782c(this.queryArgs);
            }
            throw OneDriverErrorBody.INSTANCE.parseError(m32781b);
        } catch (Throwable th) {
            String parentId = this.queryArgs.getParentId();
            if (parentId != null && parentId.length() != 0) {
                z = false;
            }
            if (z) {
                Debug.INSTANCE.m32043e(OneDriverFetchFileListRequest.class, "fetch onedrive root file list", th);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final Response<OneDriverFileInfoBody> m32781b(CloudFileQueryArgs queryArgs, boolean checkAccount) throws Exception {
        Response<OneDriverFileInfoBody> execute;
        Debug.INSTANCE.m32035d(OneDriverFetchFileListRequest.class, "nextPage cursor:" + queryArgs.getCursor() + ",offset:" + queryArgs.getOffset(), new Object[0]);
        OneDriverUtils oneDriverUtils = OneDriverUtils.INSTANCE;
        Map<String, Object> listQueryMap = oneDriverUtils.getListQueryMap(queryArgs, queryArgs.getCursor(), this.oneDriveProvider.getAccountId());
        OneDriveService oneDriveService = this.oneDriveProvider.getOneDriveClient().getOneDriveService();
        String parentId = queryArgs.getParentId();
        if (parentId == null || parentId.length() == 0) {
            execute = oneDriveService.fetchChildrenByPath(oneDriverUtils.parsePath("/", true), listQueryMap).execute();
            Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        } else {
            execute = oneDriveService.fetchFilesById(queryArgs.getParentId(), listQueryMap).execute();
            Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        }
        if (!checkAccount || !OneDriverErrorBody.INSTANCE.isOperationNotSupportError(execute)) {
            return execute;
        }
        String accountId = queryArgs.getAccountId();
        Intrinsics.checkNotNull(accountId);
        oneDriverUtils.addOrganizationAccount(accountId);
        return m32781b(queryArgs, false);
    }

    /* renamed from: c */
    public final OneDriverFileInfoBody m32782c(CloudFileQueryArgs queryArgs) throws Exception {
        OneDriverFetchAllFileListRequest oneDriverFetchAllFileListRequest = new OneDriverFetchAllFileListRequest(this.oneDriveProvider, queryArgs);
        oneDriverFetchAllFileListRequest.setRecursive(false);
        List<OneDriverFileInfo> execute = oneDriverFetchAllFileListRequest.execute();
        OneDriverFileInfoBody oneDriverFileInfoBody = new OneDriverFileInfoBody();
        oneDriverFileInfoBody.setValue(execute);
        oneDriverFileInfoBody.setCount(CollectionKt.getSize(execute));
        return oneDriverFileInfoBody;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<OneDriverFileInfo> execute() {
        QueryListResult<OneDriverFileInfo> queryListResult = new QueryListResult<>();
        OneDriverFileInfoBody m32780a = m32780a();
        queryListResult.setCount(m32780a.getCount());
        queryListResult.setList(m32780a.getValue());
        queryListResult.setFetchSource(1);
        queryListResult.setCursor(m32780a.getNextPageToken());
        OneDriverFileInfo.INSTANCE.sortByFolder(queryListResult.ensureList());
        return queryListResult;
    }
}

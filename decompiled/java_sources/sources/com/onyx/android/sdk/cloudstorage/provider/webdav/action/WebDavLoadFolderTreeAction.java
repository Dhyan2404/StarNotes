package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchAllFileListRequest;
import com.onyx.android.sdk.data.common.data.QueryResult;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavLoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "loadAllFolderResult", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "getProvider", "s", "r", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavLoadFolderTreeAction extends LoadFolderTreeAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavLoadFolderTreeAction(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.webDavProvider = webDavProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction
    @NotNull
    public QueryListResult<CloudFileBean> loadAllFolderResult() {
        QueryListResult<CloudFileBean> m32859s = m32859s();
        return QueryListResult.INSTANCE.isValidQueryResult(m32859s) ? m32859s : m32858r();
    }

    /* renamed from: r */
    public final QueryListResult<CloudFileBean> m32858r() throws Exception {
        WebDavFetchAllFileListRequest webDavFetchAllFileListRequest = new WebDavFetchAllFileListRequest(this.webDavProvider.getWebDavClient(), "");
        webDavFetchAllFileListRequest.execute();
        List<CloudFileBean> cloudFiles = WebDavUtils.INSTANCE.toCloudFiles(this.webDavProvider.getCloudStorageRecordProvider(), webDavFetchAllFileListRequest.getFolderList(), this.webDavProvider.getAccountId());
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        if (queryListResult.isSuccessful()) {
            queryListResult.setList(cloudFiles);
            queryListResult.setCount(queryListResult.ensureList().size());
        }
        return queryListResult;
    }

    /* renamed from: s */
    public final QueryListResult<CloudFileBean> m32859s() {
        QueryResult<CloudFileBean> queryAllFolderResult = this.webDavProvider.getCloudStorageRecordProvider().queryAllFolderResult(getQueryArgs().getProvider(), getQueryArgs().getAccountId());
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(jSONUtils.toJson(queryAllFolderResult), new TypeReference<QueryListResult<CloudFileBean>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavLoadFolderTreeAction$loadFromLocal$1
        });
        Intrinsics.checkNotNull(parseObject);
        return (QueryListResult) parseObject;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public WebDavProvider getOnyxCloudProvider() {
        return this.webDavProvider;
    }
}

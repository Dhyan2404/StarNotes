package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavSearchFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavSearchFileRequest extends RxBaseRequest<QueryListResult<DavResource>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs args;

    public WebDavSearchFileRequest(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.webDavProvider = webDavProvider;
        this.args = args;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<DavResource> execute() {
        QueryListResult<DavResource> queryListResult = new QueryListResult<>();
        queryListResult.setFetchSource(1);
        queryListResult.setList(this.webDavProvider.getWebDavClient().search(this.webDavProvider.createSearchBuilder(this.args.getQuery())));
        queryListResult.setCount(queryListResult.ensureList().size());
        return queryListResult;
    }
}

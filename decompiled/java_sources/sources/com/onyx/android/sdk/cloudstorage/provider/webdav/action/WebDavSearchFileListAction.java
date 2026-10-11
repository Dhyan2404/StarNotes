package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavSearchFileRequest;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "searchCloudFileList", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWebDavSearchFileListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDavSearchFileListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1855#2,2:83\n*S KotlinDebug\n*F\n+ 1 WebDavSearchFileListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction\n*L\n51#1:83,2\n*E\n"})
/* loaded from: classes7.dex */
public final class WebDavSearchFileListAction extends BaseCloudStorageAction<CloudFileListResult> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSearchFileListAction$a */
    /* loaded from: classes7.dex */
    public static final class C7362a<T, R> implements Function {
        public C7362a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebDavSearchFileListAction.this.searchCloudFileList();
        }
    }

    public WebDavSearchFileListAction(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.webDavProvider = webDavProvider;
        this.queryArgs = queryArgs;
    }

    /* renamed from: m */
    public static final void m32871m(WebDavSearchFileListAction this$0, CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(args, "args");
        if (StringKt.isNotBlank(this$0.queryArgs.getQuery())) {
            args.andWith(new CBQueryArgs().andWith(CouchUtils.likeExpression$default(CouchUtils.INSTANCE, "name", '%' + this$0.queryArgs + ".query!!%", false, 4, null)));
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable map = createObservable().map(new C7362a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final CloudFileListResult searchCloudFileList() throws Exception {
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        try {
            QueryListResult<DavResource> execute = new WebDavSearchFileRequest(this.webDavProvider, this.queryArgs).execute();
            cloudFileListResult.setFetchSource(execute.getFetchSource());
            List<CloudFileBean> cloudFiles = WebDavUtils.INSTANCE.toCloudFiles(this.webDavProvider.getCloudStorageRecordProvider(), execute.ensureList(), this.webDavProvider.getAccountId());
            for (CloudFileBean cloudFileBean : cloudFiles) {
                cloudFileBean.setDir(StringUtils.endsWithIgnoreCase(cloudFileBean.getCloudFilePath(), File.separator));
            }
            cloudFileListResult.setList(cloudFiles);
            this.webDavProvider.getCloudStorageRecordProvider().saveFolder(cloudFileListResult.ensureList());
        } catch (SardineException e) {
            if (e.getStatusCode() != 400 && e.getStatusCode() != 403) {
                throw e;
            }
            cloudFileListResult.setFetchSource(0);
            cloudFileListResult.setList(this.webDavProvider.getCloudStorageRecordProvider().queryAllFileResult(this.queryArgs.getProvider(), this.queryArgs.getAccountId(), new Consumer() { // from class: com.sunia.HTREnginev2.y5o
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    WebDavSearchFileListAction.m32871m(WebDavSearchFileListAction.this, (CloudFileQueryArgs) obj);
                }
            }).ensureList());
        }
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public WebDavProvider getGoogleDriverProvider() {
        return this.webDavProvider;
    }
}

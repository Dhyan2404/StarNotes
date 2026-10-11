package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import android.annotation.SuppressLint;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavCreateFolderRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchFileRequest;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Optional;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u001c\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\f0\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0015J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/PasteLocalFileToWebDavAction;", "Lcom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "", BreakpointSQLiteKey.FILENAME, "", "setFilePathUnderRootFolder", "cloudFileBean", "Lio/reactivex/rxjava3/core/Observable;", "", "searchTargetCloudFile", "s", "t", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PasteLocalFileToWebDavAction extends PasteLocalFileToCloudAction {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.PasteLocalFileToWebDavAction$a */
    /* loaded from: classes7.dex */
    public static final class C7342a<T, R> implements Function {
        public C7342a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull Optional<DavResource> resourceOptional) {
            Intrinsics.checkNotNullParameter(resourceOptional, "resourceOptional");
            if (!resourceOptional.isPresent()) {
                return new CloudFileBean(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
            }
            WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
            CloudStorageRecordProvider cloudStorageRecordProvider = PasteLocalFileToWebDavAction.this.webDavProvider.getCloudStorageRecordProvider();
            DavResource davResource = resourceOptional.get();
            Intrinsics.checkNotNullExpressionValue(davResource, "get(...)");
            return webDavUtils.toCloudFile(cloudStorageRecordProvider, davResource, PasteLocalFileToWebDavAction.this.webDavProvider.getAccountId());
        }
    }

    public PasteLocalFileToWebDavAction(@NotNull WebDavProvider webDavProvider) {
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        this.webDavProvider = webDavProvider;
    }

    /* renamed from: s */
    public final CloudFileBean m32830s() throws Exception {
        WebDavCreateFolderRequest webDavCreateFolderRequest = new WebDavCreateFolderRequest(this.webDavProvider.getWebDavClient(), "onyx");
        webDavCreateFolderRequest.setCheckExist(true);
        return WebDavUtils.INSTANCE.toCloudFile(this.webDavProvider.getCloudStorageRecordProvider(), webDavCreateFolderRequest.execute(), this.webDavProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction
    @SuppressLint({"NewApi"})
    @NotNull
    public Observable<List<CloudFileBean>> searchTargetCloudFile(@NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        WebDavClient webDavClient = this.webDavProvider.getWebDavClient();
        String cloudFilePath = cloudFileBean.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        Observable<List<CloudFileBean>> observable = new RxSimpleAction(new WebDavFetchFileRequest(webDavClient, cloudFilePath), getWorkScheduler()).build().observeOn(getWorkScheduler()).map(new C7342a()).toList().toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "toObservable(...)");
        return observable;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction
    public void setFilePathUnderRootFolder(@NotNull CloudFileBean fileBean, @NotNull Provider provider, @NotNull String filename) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(filename, "filename");
        CloudFileBean m32831t = m32831t();
        if (m32831t == null) {
            m32831t = m32830s();
        }
        String cloudFilePath = m32831t.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        String name = m32831t.getName();
        Intrinsics.checkNotNull(name);
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) cloudFilePath, name, 0, false, 6, (Object) null);
        String cloudFilePath2 = m32831t.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath2);
        String substring = cloudFilePath2.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        String concat = FilenameUtils.concat(substring, filename);
        String cloudFileLocalDir = this.webDavProvider.getCloudStorageRecordProvider().getCloudFileLocalDir();
        CloudStorageRecordProvider cloudStorageRecordProvider = this.webDavProvider.getCloudStorageRecordProvider();
        String localFilePath = fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        String cloudFilePath3 = cloudStorageRecordProvider.getCloudFilePath(localFilePath);
        fileBean.setLocalFilePath(FilenameUtils.concat(cloudFileLocalDir, concat));
        fileBean.setCloudFilePath(cloudFilePath3);
    }

    /* renamed from: t */
    public final CloudFileBean m32831t() {
        Object firstOrNull;
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setAccountId(this.webDavProvider.getAccountId());
        cloudFileQueryArgs.setProvider(this.webDavProvider.getProviderType().getTitle());
        cloudFileQueryArgs.setFilterParent(false);
        cloudFileQueryArgs.setParentId(null);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.webDavProvider.getCloudStorageRecordProvider().queryFileInfoResult(cloudFileQueryArgs).ensureList());
        return (CloudFileBean) firstOrNull;
    }
}

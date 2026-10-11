package com.onyx.android.sdk.cloudstorage.interfaces;

import android.content.Context;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.cloudstorage.common.action.PasteLocalFileToCloudAction;
import com.onyx.android.sdk.cloudstorage.model.AsyncResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.CloudFolderTreeEntry;
import com.onyx.android.sdk.cloudstorage.model.PasteLocalFileOperation;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.ClearProviderDatabaseAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.AbortCloudFileTransferRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.request.QueryChildCountRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.request.SaveCloudFileInfoRequest;
import com.onyx.android.sdk.cloudstorage.utils.ThirdPartyAccountUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000201000/2\f\u00102\u001a\b\u0012\u0004\u0012\u00020100H\u0016J\u0016\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u00020)J\"\u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000201000/2\f\u00102\u001a\b\u0012\u0004\u0012\u00020100H\u0016J\u0006\u00108\u001a\u000204J\u0012\u00109\u001a\u0002042\b\u0010:\u001a\u0004\u0018\u00010\u001fH\u0016J\u0016\u0010;\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010=\u001a\u00020>H\u0016J\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010@\u001a\u000201H\u0016J\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00000/J\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00000/J\u0016\u0010C\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010=\u001a\u00020>H\u0016J\u000e\u0010D\u001a\u0002042\u0006\u00105\u001a\u00020\u0004J\"\u0010E\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000201000/2\f\u00102\u001a\b\u0012\u0004\u0012\u00020100H\u0016J\u0016\u0010F\u001a\b\u0012\u0004\u0012\u0002010/2\u0006\u0010@\u001a\u000201H\u0016J\u0016\u0010G\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010H\u001a\u00020IH\u0016J&\u0010J\u001a\b\u0012\u0004\u0012\u00020K0/\"\b\b\u0000\u0010L*\u00020M2\f\u0010N\u001a\b\u0012\u0004\u0012\u0002HL0/H\u0004J\b\u0010O\u001a\u00020\u0019H\u0016J\u000e\u0010P\u001a\b\u0012\u0004\u0012\u00020Q00H\u0016J\u000e\u0010R\u001a\b\u0012\u0004\u0012\u00020S00H\u0016J\u0018\u0010T\u001a\u00020U2\u0006\u0010@\u001a\u0002012\u0006\u0010V\u001a\u000201H\u0016J\u001c\u0010W\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Y0X0/2\u0006\u0010H\u001a\u00020IH\u0016J\u0010\u0010Z\u001a\u0002042\u0006\u0010[\u001a\u00020\\H\u0016J\u0016\u0010]\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010=\u001a\u00020>H\u0016J\b\u0010^\u001a\u000204H\u0016J\u0016\u0010_\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010`\u001a\u00020aH\u0016J\u0016\u0010b\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010H\u001a\u00020IH\u0016J\u0016\u0010c\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010H\u001a\u00020IH\u0016J\u000e\u0010d\u001a\u0002042\u0006\u00105\u001a\u00020\u0004J\u0016\u0010e\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010=\u001a\u00020>H\u0016J\u001c\u0010f\u001a\b\u0012\u0004\u0012\u00020<0/2\f\u00102\u001a\b\u0012\u0004\u0012\u00020100H\u0016J\u0016\u0010g\u001a\b\u0012\u0004\u0012\u00020<0/2\u0006\u0010H\u001a\u00020IH\u0016J\"\u0010h\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000201000/2\f\u00102\u001a\b\u0012\u0004\u0012\u00020100H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\f\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0016\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0010R\u001a\u0010\u0018\u001a\u00020\u0019X\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001b\u0010$\u001a\u00020\u00128DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\f\u001a\u0004\b%\u0010\u0014R&\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020)0(X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006i"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "()V", "accountId", "", "getAccountId", "()Ljava/lang/String;", "cloudStorageRecordProvider", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "getCloudStorageRecordProvider", "()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "cloudStorageRecordProvider$delegate", "Lkotlin/Lazy;", "multiObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getMultiObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "multiScheduler", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getMultiScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "multiScheduler$delegate", "observeOn", "getObserveOn", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "setProvider", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "getProviderAccountModel", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "setProviderAccountModel", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V", "rxScheduler", "getRxScheduler", "rxScheduler$delegate", "transferDisposableMap", "", "Lio/reactivex/rxjava3/disposables/Disposable;", "getTransferDisposableMap", "()Ljava/util/Map;", "setTransferDisposableMap", "(Ljava/util/Map;)V", "abortFileTransfer", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBeans", "addTransferDisposable", "", "key", "disposable", "appendFiles", "closeDBProvider", "configureProviderAccountModel", "accountModel", "copyFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "createFolder", "cloudFile", "createMultiObservable", "createObservable", "deleteFile", "disposeTransfer", "downloadFiles", "fetchFileInfo", "fetchFileInfoList", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "flatMap", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "T", "", "observable", "getProviderType", "getSupportFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportSortByList", "Lcom/onyx/android/sdk/base/data/SortBy;", "isFileConflict", "", "localFile", "loadFolderTree", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "logOut", "context", "Landroid/content/Context;", "moveFile", "onAuthorizationInvalid", "pasteLocalFileToCloud", "operation", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "queryChildCount", "refreshFileInfoList", "removeTransferDisposable", "renameFile", "saveFileInfoList", "searchFileInfoList", "uploadFiles", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseCloudStorageProvider implements CloudStorageProvider {
    protected Provider provider;

    @Nullable
    private ProviderAccountModel providerAccountModel;

    /* renamed from: cloudStorageRecordProvider$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy cloudStorageRecordProvider = LazyKt.lazy(new Function0<CloudStorageRecordProvider>() { // from class: com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider$cloudStorageRecordProvider$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final CloudStorageRecordProvider invoke() {
            return new CloudStorageRecordProvider(BaseCloudStorageProvider.this.getProviderType().getTitle(), BaseCloudStorageProvider.this.getAccountId(), BaseCloudStorageProvider.this);
        }
    });

    /* renamed from: rxScheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy rxScheduler = LazyKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider$rxScheduler$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final RxScheduler invoke() {
            return RxScheduler.INSTANCE.newSingleThreadManager();
        }
    });

    /* renamed from: multiScheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy multiScheduler = LazyKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider$multiScheduler$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final RxScheduler invoke() {
            return RxScheduler.Companion.newMultiThreadManager$default(RxScheduler.INSTANCE, null, 0L, 3, null);
        }
    });

    @NotNull
    private Map<String, Disposable> transferDisposableMap = new ConcurrentHashMap();

    /* renamed from: com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7176a<T, R> implements Function {

        /* renamed from: e */
        public static final C7176a<T, R> f41123e = new C7176a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AsyncResult apply(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AsyncResult.INSTANCE.success();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7177b<T, R> implements Function {

        /* renamed from: e */
        public static final C7177b<T, R> f41124e = new C7177b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AsyncResult apply(@Nullable Throwable th) {
            return AsyncResult.INSTANCE.fail(th);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider$c */
    /* loaded from: classes7.dex */
    public static final class C7178c<T, R> implements Function {

        /* renamed from: e */
        public static final C7178c<T, R> f41125e = new C7178c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull List<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudFileListResult.INSTANCE.create(it2);
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> abortFileTransfer(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        return new RxSimpleAction(new AbortCloudFileTransferRequest(this, fileBeans), getObserveOn()).create();
    }

    public final void addTransferDisposable(@NotNull String key, @NotNull Disposable disposable) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        if (StringUtils.isEmpty(key)) {
            return;
        }
        this.transferDisposableMap.put(key, disposable);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> appendFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        return uploadFiles(fileBeans);
    }

    public final void closeDBProvider() {
        getCloudStorageRecordProvider().getCouchHolder().close();
    }

    public void configureProviderAccountModel(@Nullable ProviderAccountModel accountModel) {
        this.providerAccountModel = accountModel;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final Observable<BaseCloudStorageProvider> createMultiObservable() {
        Observable<BaseCloudStorageProvider> observeOn = Observable.just(this).observeOn(getMultiObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<BaseCloudStorageProvider> createObservable() {
        Observable<BaseCloudStorageProvider> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public final void disposeTransfer(@NotNull String key) {
        Disposable disposable;
        Intrinsics.checkNotNullParameter(key, "key");
        if (StringUtils.isEmpty(key) || (disposable = this.transferDisposableMap.get(key)) == null) {
            return;
        }
        if (!disposable.isDisposed()) {
            disposable.dispose();
        }
        removeTransferDisposable(key);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable<List<CloudFileBean>> just = Observable.just(fileBeans);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        Observable<CloudFileBean> just = Observable.just(cloudFile);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final <T> Observable<AsyncResult> flatMap(@NotNull Observable<T> observable) {
        Intrinsics.checkNotNullParameter(observable, "observable");
        Observable<AsyncResult> onErrorReturn = observable.observeOn(AndroidSchedulers.mainThread()).map(C7176a.f41123e).onErrorReturn(C7177b.f41124e);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    @NotNull
    public final String getAccountId() {
        String accountId;
        ProviderAccountModel providerAccountModel = this.providerAccountModel;
        return (providerAccountModel == null || (accountId = providerAccountModel.getAccountId()) == null) ? "" : accountId;
    }

    @NotNull
    public final CloudStorageRecordProvider getCloudStorageRecordProvider() {
        return (CloudStorageRecordProvider) this.cloudStorageRecordProvider.getValue();
    }

    @NotNull
    public final Scheduler getMultiObserveOn() {
        return getMultiScheduler().getObserveOn();
    }

    @NotNull
    public final RxScheduler getMultiScheduler() {
        return (RxScheduler) this.multiScheduler.getValue();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return getRxScheduler().getObserveOn();
    }

    @NotNull
    public final Provider getProvider() {
        Provider provider = this.provider;
        if (provider != null) {
            return provider;
        }
        Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
        return null;
    }

    @Nullable
    public final ProviderAccountModel getProviderAccountModel() {
        return this.providerAccountModel;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Provider getProviderType() {
        return getProvider();
    }

    @NotNull
    public final RxScheduler getRxScheduler() {
        return (RxScheduler) this.rxScheduler.getValue();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<ProviderFeature> getSupportFeatures() {
        List<ProviderFeature> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ProviderFeature.Note);
        return listOf;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<SortBy> getSupportSortByList() {
        List<SortBy> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SortBy[]{SortBy.Name, SortBy.Size, SortBy.CreationTime});
        return listOf;
    }

    @NotNull
    public final Map<String, Disposable> getTransferDisposableMap() {
        return this.transferDisposableMap;
    }

    public boolean isFileConflict(@NotNull CloudFileBean cloudFile, @NotNull CloudFileBean localFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        Intrinsics.checkNotNullParameter(localFile, "localFile");
        if (cloudFile.getUpdatedAt() > localFile.getUpdatedAt()) {
            long size = cloudFile.getSize();
            String localFilePath = localFile.getLocalFilePath();
            Intrinsics.checkNotNull(localFilePath);
            if (size != FileUtils.sizeOf(new File(localFilePath))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Observable<QueryListResult<CloudFolderTreeEntry>> just = Observable.just(new QueryListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        new ClearProviderDatabaseAction(this).build().subscribe();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public void onAuthorizationInvalid() {
        ThirdPartyAccountUtils.INSTANCE.onProviderAuthFail(this, getProviderType().getTitle());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        PasteLocalFileToCloudAction pasteLocalFileToCloudAction = new PasteLocalFileToCloudAction();
        pasteLocalFileToCloudAction.setCloudStorageProvider(this);
        pasteLocalFileToCloudAction.setOperation(operation);
        pasteLocalFileToCloudAction.setWorkScheduler(getObserveOn());
        return pasteLocalFileToCloudAction.build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> queryChildCount(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new RxSimpleAction(new QueryChildCountRequest(this, queryArgs), getObserveOn()).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public final void removeTransferDisposable(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (StringUtils.isEmpty(key)) {
            return;
        }
        this.transferDisposableMap.remove(key);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> saveFileInfoList(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable<CloudFileListResult> map = new RxSimpleAction(new SaveCloudFileInfoRequest(this, fileBeans), getObserveOn()).create().map(C7178c.f41125e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public final void setProvider(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "<set-?>");
        this.provider = provider;
    }

    public final void setProviderAccountModel(@Nullable ProviderAccountModel providerAccountModel) {
        this.providerAccountModel = providerAccountModel;
    }

    public final void setTransferDisposableMap(@NotNull Map<String, Disposable> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.transferDisposableMap = map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable<List<CloudFileBean>> just = Observable.just(fileBeans);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}

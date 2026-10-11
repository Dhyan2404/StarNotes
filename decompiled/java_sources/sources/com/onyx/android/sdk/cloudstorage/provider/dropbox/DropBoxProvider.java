package com.onyx.android.sdk.cloudstorage.provider.dropbox;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.oauth.DbxCredential;
import com.dropbox.core.p006v2.DbxClientV2;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.common.AuthorizationInvalidInterceptor;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.AsyncResult;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.CloudFolderTreeEntry;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxSaveAnnotationAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxSaveNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxUploadAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.bean.DropBoxCredential;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.event.DropBoxCredentialEvent;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.p021ui.DropBoxAuthActivity;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxFetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxLoadAccountRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bS\u0010TJ\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u001e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\"\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0\u00170\u00062\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u0017H\u0016J\"\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0\u00170\u00062\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u0017H\u0016J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010%\u001a\u00020!H\u0016J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u0016\u0010.\u001a\b\u0012\u0004\u0012\u00020!0\u00062\u0006\u0010%\u001a\u00020!H\u0016J\u001c\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000/0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0016\u00104\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\b\u00106\u001a\u000205H\u0016J\u000e\u00108\u001a\b\u0012\u0004\u0012\u0002070\u0017H\u0016J\b\u0010:\u001a\u000209H\u0016J\u0016\u0010;\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u0016\u0010<\u001a\b\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00180=H\u0016J\u0010\u0010A\u001a\u00020\b2\u0006\u0010@\u001a\u00020?H\u0007R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001e\u0010Q\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010R¨\u0006U"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;", "credential", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "authResult", "Lio/reactivex/rxjava3/core/Observable;", "b", "", "d", "", "accountId", "c", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "authenticate", "logOut", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBeans", "uploadFiles", "downloadFiles", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "deleteFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "searchFileInfoList", "fetchFileInfo", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "loadFolderTree", "renameFile", "copyFile", "moveFile", "", "isAuth", "Lcom/onyx/android/sdk/base/data/SortBy;", "getSupportSortByList", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "refreshFileInfoList", "fetchFileInfoList", "", "getEnableFeatures", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;", NotificationCompat.CATEGORY_EVENT, "onDropBoxCredentialEvent", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "getProviderContext", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "setProviderContext", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V", "Lcom/dropbox/core/v2/DbxClientV2;", "dbxClient", "Lcom/dropbox/core/v2/DbxClientV2;", "getDbxClient", "()Lcom/dropbox/core/v2/DbxClientV2;", "setDbxClient", "(Lcom/dropbox/core/v2/DbxClientV2;)V", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "a", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "authObservable", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxProvider extends BaseCloudStorageProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public BehaviorSubject<AuthResult> authObservable;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public DropBoxCredential credential;
    public DbxClientV2 dbxClient;
    public ProviderContext providerContext;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7290a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DropBoxDownloadAction f41530e;

        public C7290a(DropBoxDownloadAction dropBoxDownloadAction) {
            this.f41530e = dropBoxDownloadAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41530e.getFileBeans();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7291b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AuthResult f41531e;

        public C7291b(AuthResult authResult) {
            this.f41531e = authResult;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthResult apply(@NotNull ProviderAccountModel accountInfo) {
            Intrinsics.checkNotNullParameter(accountInfo, "accountInfo");
            this.f41531e.setAccountId(accountInfo.getAccountId());
            return this.f41531e;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider$c */
    /* loaded from: classes7.dex */
    public static final class C7292c<T> implements Consumer {
        public C7292c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BehaviorSubject behaviorSubject = DropBoxProvider.this.authObservable;
            Intrinsics.checkNotNull(behaviorSubject);
            behaviorSubject.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider$d */
    /* loaded from: classes7.dex */
    public static final class C7293d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ AuthResult f41534f;

        public C7293d(AuthResult authResult) {
            this.f41534f = authResult;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AuthResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BehaviorSubject behaviorSubject = DropBoxProvider.this.authObservable;
            Intrinsics.checkNotNull(behaviorSubject);
            behaviorSubject.onNext(this.f41534f);
            BehaviorSubject behaviorSubject2 = DropBoxProvider.this.authObservable;
            Intrinsics.checkNotNull(behaviorSubject2);
            behaviorSubject2.onComplete();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider$e */
    /* loaded from: classes7.dex */
    public static final class C7294e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41535e;

        public C7294e(List<CloudFileBean> list) {
            this.f41535e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41535e;
        }
    }

    public DropBoxProvider() {
        setProvider(Provider.DROP_BOX);
    }

    /* renamed from: e */
    public static final void m32633e(DropBoxProvider this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.authObservable = null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.authObservable = BehaviorSubject.create();
        Intent intent = new Intent(activityContext, (Class<?>) DropBoxAuthActivity.class);
        intent.putExtra(CloudStorageConstants.KEY_INTENT_CONSUMER_KEY, getProviderContext().getKey());
        activityContext.startActivity(intent);
        BehaviorSubject<AuthResult> behaviorSubject = this.authObservable;
        Intrinsics.checkNotNull(behaviorSubject);
        return behaviorSubject;
    }

    /* renamed from: b */
    public final Observable<AuthResult> m32634b(DropBoxCredential credential, AuthResult authResult) {
        if (authResult.getIsSuccess()) {
            Observable<AuthResult> map = new RxSimpleAction(new DropBoxFetchAccountInfoRequest(this, credential), getObserveOn()).build().map(new C7291b(authResult));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<AuthResult> just = Observable.just(authResult);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: c */
    public final DropBoxCredential m32635c(String accountId) {
        return DropBoxUtils.INSTANCE.getDropBoxCredential(accountId);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new DropBoxCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new DropBoxCreateFolderAction(this, cloudFile).create();
    }

    /* renamed from: d */
    public final void m32636d(DropBoxCredential credential) {
        List<? extends Interceptor> listOf;
        if (DropBoxCredential.INSTANCE.isValid(credential)) {
            AuthorizationInvalidInterceptor authorizationInvalidInterceptor = new AuthorizationInvalidInterceptor(this);
            DropBoxUtils dropBoxUtils = DropBoxUtils.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(authorizationInvalidInterceptor);
            DbxRequestConfig createRequestConfig = dropBoxUtils.createRequestConfig(listOf);
            Intrinsics.checkNotNull(credential);
            setDbxClient(new DbxClientV2(createRequestConfig, credential.toDbxCredential()));
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new DropBoxDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        DropBoxDownloadAction dropBoxDownloadAction = new DropBoxDownloadAction(this, fileBeans);
        Observable map = dropBoxDownloadAction.build().map(new C7290a(dropBoxDownloadAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new DropBoxFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new DropBoxFetchFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        DropBoxLoadAccountRequest dropBoxLoadAccountRequest = new DropBoxLoadAccountRequest(getDbxClient());
        dropBoxLoadAccountRequest.setAccountId(getAccountId());
        return dropBoxLoadAccountRequest.executeSafety();
    }

    @NotNull
    public final DbxClientV2 getDbxClient() {
        DbxClientV2 dbxClientV2 = this.dbxClient;
        if (dbxClientV2 != null) {
            return dbxClientV2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dbxClient");
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Set<ProviderFeature> getEnableFeatures() {
        Set<ProviderFeature> of;
        if (getProviderAccountModel() == null) {
            of = SetsKt__SetsKt.setOf((Object[]) new ProviderFeature[]{ProviderFeature.Note, ProviderFeature.Document});
            return of;
        }
        ProviderAccountModel providerAccountModel = getProviderAccountModel();
        Intrinsics.checkNotNull(providerAccountModel);
        return providerAccountModel.getEnableFeatures();
    }

    @NotNull
    public final ProviderContext getProviderContext() {
        ProviderContext providerContext = this.providerContext;
        if (providerContext != null) {
            return providerContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("providerContext");
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<ProviderFeature> getSupportFeatures() {
        List<ProviderFeature> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ProviderFeature.Document);
        return listOf;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<SortBy> getSupportSortByList() {
        List<SortBy> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        setProviderContext(providerContext);
        EventBusHolderKt.ensureRegister(CloudStorageManager.INSTANCE.getOurInstance().getEventBus(), this);
        DropBoxCredential m32635c = m32635c(getAccountId());
        this.credential = m32635c;
        m32636d(m32635c);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        return DropBoxCredential.INSTANCE.isValid(this.credential);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new DropBoxLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            debug.m32060w(DropBoxProvider.class, new Exception("dropbox logout log stack"));
        }
        this.credential = null;
        DropBoxUtils.INSTANCE.logoutAccount(getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        DropBoxCopyFileAction dropBoxCopyFileAction = new DropBoxCopyFileAction(this, args);
        dropBoxCopyFileAction.setCut(true);
        return dropBoxCopyFileAction.create();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDropBoxCredentialEvent(@NotNull DropBoxCredentialEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.authObservable == null) {
            return;
        }
        if (event.getCredential() == null) {
            BehaviorSubject<AuthResult> behaviorSubject = this.authObservable;
            Intrinsics.checkNotNull(behaviorSubject);
            behaviorSubject.onNext(AuthResult.INSTANCE.authFail());
            BehaviorSubject<AuthResult> behaviorSubject2 = this.authObservable;
            Intrinsics.checkNotNull(behaviorSubject2);
            behaviorSubject2.onComplete();
            return;
        }
        DropBoxCredential.Companion companion = DropBoxCredential.INSTANCE;
        DbxCredential credential = event.getCredential();
        Intrinsics.checkNotNull(credential);
        this.credential = companion.toDropBoxCredential(credential);
        Debug.INSTANCE.m32035d(DropBoxProvider.class, "DropBoxCredential:" + JSONUtils.INSTANCE.toJson(this.credential), new Object[0]);
        m32636d(this.credential);
        AuthResult authSuccess = companion.isValid(this.credential) ? AuthResult.INSTANCE.authSuccess() : AuthResult.INSTANCE.authFail();
        DropBoxCredential dropBoxCredential = this.credential;
        Intrinsics.checkNotNull(dropBoxCredential);
        m32634b(dropBoxCredential, authSuccess).doOnError(new C7292c()).doOnNext(new C7293d(authSuccess)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.hjf
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DropBoxProvider.m32633e(DropBoxProvider.this);
            }
        }).subscribe();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new DropBoxRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new DropBoxRenameFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        return flatMap(new DropBoxSaveAnnotationAction(this, cloudAnnotation).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        return flatMap(new DropBoxSaveNoteAction(this, cloudNote).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new DropBoxSearchFileListAction(this, queryArgs).create();
    }

    public final void setDbxClient(@NotNull DbxClientV2 dbxClientV2) {
        Intrinsics.checkNotNullParameter(dbxClientV2, "<set-?>");
        this.dbxClient = dbxClientV2;
    }

    public final void setProviderContext(@NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(providerContext, "<set-?>");
        this.providerContext = providerContext;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new DropBoxUploadAction(this, fileBeans).build().map(new C7294e(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

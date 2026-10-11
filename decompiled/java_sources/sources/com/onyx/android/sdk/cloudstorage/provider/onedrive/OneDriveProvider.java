package com.onyx.android.sdk.cloudstorage.provider.onedrive;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialog;
import com.onyx.android.sdk.cloudstorage.common.p019ui.OAuthDialogParam;
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
import com.onyx.android.sdk.cloudstorage.model.PasteLocalFileOperation;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriveLoadTokenAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriveSaveAnnotationAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriveUploadAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverSaveNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriverSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.action.PasteLocalFileToOneDriveAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriveFetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriveLoadAccountRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bV\u0010WJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00122\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00122\u0006\u0010!\u001a\u00020 H\u0016J\u0016\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020)0\u00122\u0006\u0010*\u001a\u00020)H\u0016J\u001c\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0,0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\"\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0\u00190\u00122\f\u0010/\u001a\b\u0012\u0004\u0012\u00020)0\u0019H\u0016J\"\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0\u00190\u00122\f\u0010/\u001a\b\u0012\u0004\u0012\u00020)0\u0019H\u0016J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010*\u001a\u00020)H\u0016J\u0016\u00105\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u00107\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u00108\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u0010;\u001a\b\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010:\u001a\u000209H\u0016J\u0018\u0010=\u001a\u00020\u00152\u0006\u0010*\u001a\u00020)2\u0006\u0010<\u001a\u00020)H\u0016J\u000e\u0010?\u001a\b\u0012\u0004\u0012\u00020\u001a0>H\u0016J\u0012\u0010B\u001a\u00020\u00072\b\u0010A\u001a\u0004\u0018\u00010@H\u0016J\u0010\u0010E\u001a\u00020\u00072\b\u0010D\u001a\u0004\u0018\u00010CR\u001b\u0010J\u001a\u00020F8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010G\u001a\u0004\bH\u0010IR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR$\u0010D\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010U¨\u0006X"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", "dialogOneDriveAuth", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "behaviorSubject", "", "a", "updateTokenHeader", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "Lio/reactivex/rxjava3/core/Observable;", "authenticate", "logOut", "", "isAuth", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "refreshFileInfoList", "fetchFileInfoList", "searchFileInfoList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "fetchFileInfo", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "loadFolderTree", "fileBeans", "uploadFiles", "downloadFiles", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "renameFile", "deleteFile", "copyFile", "moveFile", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "operation", "pasteLocalFileToCloud", "localFile", "isFileConflict", "", "getEnableFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "accountModel", "configureProviderAccountModel", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "tokenResponse", "setDriveToken", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "Lkotlin/Lazy;", "getOneDriveClient", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "getProviderContext", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "setProviderContext", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "getTokenResponse", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "setTokenResponse", "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveProvider extends BaseCloudStorageProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy oneDriveClient;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public OneDriveTokenResponse tokenResponse;
    public ProviderContext providerContext;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7319a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ OneDriverDownloadAction f41754e;

        public C7319a(OneDriverDownloadAction oneDriverDownloadAction) {
            this.f41754e = oneDriverDownloadAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull List<OnyxFileTransferStatus<CloudFileBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41754e.getCloudFileBeans();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7320b<T, R> implements Function {
        public C7320b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<OneDriveTokenResponse, AuthResult> apply(@NotNull Pair<OneDriveTokenResponse, AuthResult> pair) {
            Intrinsics.checkNotNullParameter(pair, "pair");
            if (pair.getSecond().getIsSuccess()) {
                pair.getSecond().setAccountId(new OneDriveFetchAccountInfoRequest(OneDriveProvider.this, pair.getFirst()).execute().getAccountId());
            }
            return pair;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider$d */
    /* loaded from: classes7.dex */
    public static final class C7322d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BehaviorSubject<AuthResult> f41757e;

        public C7322d(BehaviorSubject<AuthResult> behaviorSubject) {
            this.f41757e = behaviorSubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<OneDriveTokenResponse, AuthResult> pair) {
            Intrinsics.checkNotNullParameter(pair, "pair");
            this.f41757e.onNext(pair.getSecond());
            this.f41757e.onComplete();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider$e */
    /* loaded from: classes7.dex */
    public static final class C7323e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41758e;

        public C7323e(List<CloudFileBean> list) {
            this.f41758e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41758e;
        }
    }

    public OneDriveProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<OneDriveClient>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider$oneDriveClient$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OneDriveClient invoke() {
                return new OneDriveClient(OneDriveProvider.this);
            }
        });
        this.oneDriveClient = lazy;
        setProvider(Provider.ONE_DRIVE);
    }

    /* renamed from: a */
    public final void m32743a(OAuthDialog dialogOneDriveAuth, final BehaviorSubject<AuthResult> behaviorSubject) {
        String code = dialogOneDriveAuth.getCode();
        if (code.length() == 0) {
            behaviorSubject.onNext(AuthResult.INSTANCE.authFail());
            behaviorSubject.onComplete();
        } else {
            configureProviderAccountModel(null);
            new OneDriveLoadTokenAction(this, code).build().observeOn(getObserveOn()).map(new C7320b()).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider.c
                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Throwable p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    behaviorSubject.onError(p0);
                }
            }).doOnNext(new C7322d(behaviorSubject)).subscribe();
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        final BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), CloudStorageConstants.INSTANCE.getMICROSOFT_ONLINE_AUTH_URL(), Arrays.copyOf(new Object[]{getProviderContext().getClientID()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        final OAuthDialog newInstance = OAuthDialog.INSTANCE.newInstance(new OAuthDialogParam(getProviderType().getTitle(), format, CloudStorageConstants.ONE_DRIVE_AUTH_SUCCESS_CALLBACK_URL, "code=", null, 16, null));
        newInstance.setOnDismissListener(new Function0<Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider$authenticate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                OneDriveProvider.this.m32743a(newInstance, create);
            }
        });
        newInstance.show(((FragmentActivity) activityContext).getSupportFragmentManager(), OneDriveProvider.class.getSimpleName());
        return create;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider
    public void configureProviderAccountModel(@Nullable ProviderAccountModel accountModel) {
        super.configureProviderAccountModel(accountModel);
        if (accountModel != null) {
            setDriveToken(OneDriverUtils.INSTANCE.getOneDriveTokenResponse(accountModel.getAccountId()));
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new OneDriverCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new OneDriverCreateFolderAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new OneDriverDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        OneDriverDownloadAction oneDriverDownloadAction = new OneDriverDownloadAction(this, fileBeans);
        Observable map = oneDriverDownloadAction.create().map(new C7319a(oneDriverDownloadAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new OneDriverFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OneDriverFetchFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        OneDriveLoadAccountRequest oneDriveLoadAccountRequest = new OneDriveLoadAccountRequest(getOneDriveClient());
        oneDriveLoadAccountRequest.setAccountId(getAccountId());
        return oneDriveLoadAccountRequest.executeSafety();
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
    public final OneDriveClient getOneDriveClient() {
        return (OneDriveClient) this.oneDriveClient.getValue();
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

    @Nullable
    public final OneDriveTokenResponse getTokenResponse() {
        return this.tokenResponse;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        setProviderContext(providerContext);
        updateTokenHeader();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        return OneDriveTokenResponse.INSTANCE.isValid(OneDriverUtils.INSTANCE.getOneDriveTokenResponse(getAccountId()));
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider
    public boolean isFileConflict(@NotNull CloudFileBean cloudFile, @NotNull CloudFileBean localFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        Intrinsics.checkNotNullParameter(localFile, "localFile");
        if (cloudFile.getUpdatedAt() > localFile.getUpdatedAt()) {
            long size = cloudFile.getSize();
            String localFilePath = localFile.getLocalFilePath();
            Intrinsics.checkNotNull(localFilePath);
            return size != FileUtils.sizeOf(new File(localFilePath));
        }
        long size2 = cloudFile.getSize();
        String localFilePath2 = localFile.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath2);
        return size2 > FileUtils.sizeOf(new File(localFilePath2));
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OneDriverLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        OneDriverUtils.INSTANCE.logoutAccount(getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        OneDriverCopyFileAction oneDriverCopyFileAction = new OneDriverCopyFileAction(this, args);
        oneDriverCopyFileAction.setCut(true);
        return oneDriverCopyFileAction.create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        PasteLocalFileToOneDriveAction pasteLocalFileToOneDriveAction = new PasteLocalFileToOneDriveAction();
        pasteLocalFileToOneDriveAction.setCloudStorageProvider(this);
        pasteLocalFileToOneDriveAction.setOperation(operation);
        pasteLocalFileToOneDriveAction.setWorkScheduler(getObserveOn());
        return pasteLocalFileToOneDriveAction.build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OneDriverRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new OneDriverRenameFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        return flatMap(new OneDriveSaveAnnotationAction(this, cloudAnnotation).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        return flatMap(new OneDriverSaveNoteAction(this, cloudNote).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OneDriverSearchFileListAction(this, queryArgs).create();
    }

    public final void setDriveToken(@Nullable OneDriveTokenResponse tokenResponse) {
        this.tokenResponse = tokenResponse;
        updateTokenHeader();
    }

    public final void setProviderContext(@NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(providerContext, "<set-?>");
        this.providerContext = providerContext;
    }

    public final void setTokenResponse(@Nullable OneDriveTokenResponse oneDriveTokenResponse) {
        this.tokenResponse = oneDriveTokenResponse;
    }

    public final void updateTokenHeader() {
        getOneDriveClient().updateTokenHeader();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new OneDriveUploadAction(this, fileBeans).build().map(new C7323e(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

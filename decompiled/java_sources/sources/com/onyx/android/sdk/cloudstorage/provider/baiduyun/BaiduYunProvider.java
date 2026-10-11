package com.onyx.android.sdk.cloudstorage.provider.baiduyun;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
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
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunLoadTokenAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunSaveAnnotationAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunSaveNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunUploadAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.PasteLocalFileToBaiduYunAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunLoadUserInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.utils.BaiduYunClient;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.utils.ThirdPartyAccountUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.scribe.model.OAuthConstants;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b^\u0010_J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u001e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u000b2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\b\u0010\"\u001a\u00020!H\u0016J\b\u0010$\u001a\u00020#H\u0016J\"\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\u00170\u000b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\u0017H\u0016J\"\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\u00170\u000b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\u0017H\u0016J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u0010*\u001a\u00020)H\u0016J\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u0010*\u001a\u00020)H\u0016J\u0016\u0010.\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u0010*\u001a\u00020)H\u0016J\u0016\u00100\u001a\b\u0012\u0004\u0012\u00020%0\u000b2\u0006\u0010/\u001a\u00020%H\u0016J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u0010/\u001a\u00020%H\u0016J\u0016\u00104\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u00103\u001a\u000202H\u0016J\u0016\u00105\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u00103\u001a\u000202H\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u00103\u001a\u000202H\u0016J\u0016\u00107\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u00103\u001a\u000202H\u0016J\u001c\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000209080\u000b2\u0006\u0010*\u001a\u00020)H\u0016J\u0016\u0010=\u001a\b\u0012\u0004\u0012\u00020+0\u000b2\u0006\u0010<\u001a\u00020;H\u0016J\u000e\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00180>H\u0016J\u0012\u0010B\u001a\u00020\u00072\b\u0010A\u001a\u0004\u0018\u00010@H\u0016J\u0006\u0010C\u001a\u00020\u0007J\b\u0010D\u001a\u0004\u0018\u00010\tJ\b\u0010F\u001a\u0004\u0018\u00010EJ\b\u0010G\u001a\u0004\u0018\u00010EJ\u0010\u0010I\u001a\u00020\u00072\b\u0010H\u001a\u0004\u0018\u00010\tJ\u0006\u0010J\u001a\u00020\u0007J\u0010\u0010L\u001a\u00020\u00072\b\u0010K\u001a\u0004\u0018\u00010\tJ\u0014\u0010N\u001a\u0010\u0012\u0004\u0012\u00020E\u0012\u0006\u0012\u0004\u0018\u00010E0MR\u001b\u0010S\u001a\u00020O8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010P\u001a\u0004\bQ\u0010RR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR$\u0010H\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]¨\u0006`"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", "dialogBaiduYunAuth", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "behaviorSubject", "", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "baiduYunTokenResponse", "Lio/reactivex/rxjava3/core/Observable;", "a", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "authenticate", "logOut", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "", "isAuth", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBeans", "downloadFiles", "uploadFiles", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "refreshFileInfoList", "fetchFileInfoList", "searchFileInfoList", "cloudFile", "fetchFileInfo", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "deleteFile", "renameFile", "copyFile", "moveFile", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "loadFolderTree", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "operation", "pasteLocalFileToCloud", "", "getEnableFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "accountModel", "configureProviderAccountModel", "onProviderAuthFail", "getDriveToken", "", "getAccessToken", "getRefreshToken", "tokenResponse", "setDriveToken", "updateTokenHeader", AbstractLogger.RESPONSE, "saveCredential", "", "getQueryMap", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;", "Lkotlin/Lazy;", "getBaiduYunClient", "()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;", "baiduYunClient", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "getProviderContext", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "setProviderContext", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "getTokenResponse", "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "setTokenResponse", "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunProvider extends BaseCloudStorageProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy baiduYunClient;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public BaiduYunTokenResponse tokenResponse;
    public ProviderContext providerContext;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7194a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaiduYunDownloadAction f41269e;

        public C7194a(BaiduYunDownloadAction baiduYunDownloadAction) {
            this.f41269e = baiduYunDownloadAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull List<OnyxFileTransferStatus<CloudFileBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41269e.getCloudFileBeanList();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7195b<T, R> implements Function {

        /* renamed from: e */
        public static final C7195b<T, R> f41270e = new C7195b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthResult apply(@NotNull ProviderAccountModel accountInfo) {
            Intrinsics.checkNotNullParameter(accountInfo, "accountInfo");
            AuthResult authSuccess = AuthResult.INSTANCE.authSuccess();
            authSuccess.setAccountId(accountInfo.getAccountId());
            return authSuccess;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider$c */
    /* loaded from: classes7.dex */
    public static final class C7196c<T, R> implements Function {
        public C7196c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AuthResult> apply(@NotNull BaiduYunTokenResponse it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaiduYunProvider.this.m32369a(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider$e */
    /* loaded from: classes7.dex */
    public static final class C7198e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BehaviorSubject<AuthResult> f41273e;

        public C7198e(BehaviorSubject<AuthResult> behaviorSubject) {
            this.f41273e = behaviorSubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AuthResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RxjavaKt.done(this.f41273e, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider$f */
    /* loaded from: classes7.dex */
    public static final class C7199f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41274e;

        public C7199f(List<CloudFileBean> list) {
            this.f41274e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41274e;
        }
    }

    public BaiduYunProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BaiduYunClient>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider$baiduYunClient$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BaiduYunClient invoke() {
                return new BaiduYunClient(BaiduYunProvider.this);
            }
        });
        this.baiduYunClient = lazy;
        setProvider(Provider.BAIDU_YUN);
    }

    /* renamed from: a */
    public final Observable<AuthResult> m32369a(BaiduYunTokenResponse baiduYunTokenResponse) {
        Observable<AuthResult> map = new RxSimpleAction(new BaiduYunFetchAccountInfoRequest(this, baiduYunTokenResponse), getObserveOn()).build().map(C7195b.f41270e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        final BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        int integer = ResManager.INSTANCE.getInteger(C7153R.integer.dialog_baiduyun_default_qr_code_size);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), CloudStorageConstants.BAIDU_YUN_AUTH_CODE_URL, Arrays.copyOf(new Object[]{getProviderContext().getClientID(), Integer.valueOf(integer), Integer.valueOf(integer)}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        final OAuthDialog newInstance = OAuthDialog.INSTANCE.newInstance(new OAuthDialogParam(getProviderType().getTitle(), format, CloudStorageConstants.BAIDU_YUN_AUTH_SUCCESS_CALLBACK_URL, "code=", null, 16, null));
        newInstance.setOnDismissListener(new Function0<Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider$authenticate$1
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
                BaiduYunProvider.this.m32370b(newInstance, create);
            }
        });
        newInstance.show(((FragmentActivity) activityContext).getSupportFragmentManager(), BaiduYunProvider.class.getSimpleName());
        return create;
    }

    /* renamed from: b */
    public final void m32370b(OAuthDialog dialogBaiduYunAuth, final BehaviorSubject<AuthResult> behaviorSubject) {
        String code = dialogBaiduYunAuth.getCode();
        if (code.length() == 0) {
            behaviorSubject.onNext(AuthResult.INSTANCE.authFail());
            behaviorSubject.onComplete();
        } else {
            setProviderAccountModel(null);
            new BaiduYunLoadTokenAction(this, code).build().flatMap(new C7196c()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider.d
                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Throwable p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    behaviorSubject.onError(p0);
                }
            }).doOnNext(new C7198e(behaviorSubject)).subscribe();
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider
    public void configureProviderAccountModel(@Nullable ProviderAccountModel accountModel) {
        super.configureProviderAccountModel(accountModel);
        if (this.tokenResponse == null || accountModel != null) {
            BaiduYunTokenResponse baiduYunTokenResponse = (BaiduYunTokenResponse) JSONUtils.INSTANCE.parseObject(accountModel != null ? accountModel.getAccountCredentialJson() : null, BaiduYunTokenResponse.class);
            if (baiduYunTokenResponse == null) {
                baiduYunTokenResponse = new BaiduYunTokenResponse();
                baiduYunTokenResponse.setAccess_token(accountModel != null ? accountModel.getAccountCredentialJson() : null);
            }
            setDriveToken(baiduYunTokenResponse);
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new BaiduYunCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new BaiduYunCreateFolderAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new BaiduYunDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        BaiduYunDownloadAction baiduYunDownloadAction = new BaiduYunDownloadAction(this, fileBeans);
        Observable map = baiduYunDownloadAction.build().map(new C7194a(baiduYunDownloadAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new BaiduYunFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new BaiduYunFetchFileListAction(this, queryArgs).create();
    }

    @Nullable
    public final String getAccessToken() {
        BaiduYunTokenResponse tokenResponse = getTokenResponse();
        if (tokenResponse == null) {
            return null;
        }
        return tokenResponse.getAccess_token();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        BaiduYunLoadUserInfoRequest baiduYunLoadUserInfoRequest = new BaiduYunLoadUserInfoRequest(this, false, 2, null);
        baiduYunLoadUserInfoRequest.setAccountId(getAccountId());
        return baiduYunLoadUserInfoRequest.executeSafety();
    }

    @NotNull
    public final BaiduYunClient getBaiduYunClient() {
        return (BaiduYunClient) this.baiduYunClient.getValue();
    }

    @Nullable
    /* renamed from: getDriveToken, reason: from getter */
    public final BaiduYunTokenResponse getTokenResponse() {
        return this.tokenResponse;
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

    @NotNull
    public final Map<String, String> getQueryMap() {
        Map<String, String> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OAuthConstants.CLIENT_ID, getProviderContext().getClientID()), TuplesKt.m61535to(OAuthConstants.CLIENT_SECRET, getProviderContext().getSecret()));
        return mutableMapOf;
    }

    @Nullable
    public final String getRefreshToken() {
        BaiduYunTokenResponse tokenResponse = getTokenResponse();
        if (tokenResponse == null) {
            return null;
        }
        return tokenResponse.getRefresh_token();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<ProviderFeature> getSupportFeatures() {
        List<ProviderFeature> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ProviderFeature.Document);
        return listOf;
    }

    @Nullable
    public final BaiduYunTokenResponse getTokenResponse() {
        return this.tokenResponse;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        setProviderContext(providerContext);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        return StringKt.isNotBlank(getAccessToken());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new BaiduYunLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        BaiduYunUtils.INSTANCE.logoutAccount(getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        BaiduYunCopyFileAction baiduYunCopyFileAction = new BaiduYunCopyFileAction(this, args);
        baiduYunCopyFileAction.setCut(true);
        return baiduYunCopyFileAction.create();
    }

    public final void onProviderAuthFail() {
        ThirdPartyAccountUtils.INSTANCE.onProviderAuthFail(this, Provider.BAIDU_YUN.getTitle());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        PasteLocalFileToBaiduYunAction pasteLocalFileToBaiduYunAction = new PasteLocalFileToBaiduYunAction();
        pasteLocalFileToBaiduYunAction.setCloudStorageProvider(this);
        pasteLocalFileToBaiduYunAction.setOperation(operation);
        pasteLocalFileToBaiduYunAction.setWorkScheduler(getObserveOn());
        return pasteLocalFileToBaiduYunAction.build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new BaiduYunRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new BaiduYunRenameFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        return flatMap(new BaiduYunSaveAnnotationAction(this, cloudAnnotation).build());
    }

    public final void saveCredential(@Nullable BaiduYunTokenResponse response) {
        List<ProviderAccountModel> listOf;
        if (BaiduYunTokenResponse.INSTANCE.isValid(response)) {
            ProviderAccountModel providerAccountModel = getProviderAccountModel();
            if (providerAccountModel == null) {
                providerAccountModel = ProviderAccountModelUtils.INSTANCE.queryAccount(getProviderType().getTitle(), getAccountId());
            }
            if (providerAccountModel == null) {
                return;
            }
            providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(response));
            ProviderAccountModelUtils providerAccountModelUtils = ProviderAccountModelUtils.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(providerAccountModel);
            providerAccountModelUtils.saveAccount(listOf, getProviderType().getTitle());
            configureProviderAccountModel(providerAccountModel);
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        return flatMap(new BaiduYunSaveNoteAction(this, cloudNote).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new BaiduYunSearchFileListAction(this, queryArgs).create();
    }

    public final void setDriveToken(@Nullable BaiduYunTokenResponse tokenResponse) {
        this.tokenResponse = tokenResponse;
        updateTokenHeader();
    }

    public final void setProviderContext(@NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(providerContext, "<set-?>");
        this.providerContext = providerContext;
    }

    public final void setTokenResponse(@Nullable BaiduYunTokenResponse baiduYunTokenResponse) {
        this.tokenResponse = baiduYunTokenResponse;
    }

    public final void updateTokenHeader() {
        getBaiduYunClient().updateTokenHeader();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new BaiduYunUploadAction(this, fileBeans).build().map(new C7199f(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

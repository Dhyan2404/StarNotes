package com.onyx.android.sdk.cloudstorage.provider.aliyun;

import android.content.Context;
import androidx.core.net.MailTo;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.utils.Debug;
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
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunFetchAccountAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunLoadTokenAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunSaveAnnotationAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunSaveNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunUploadAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.action.PasteLocalFileToAliYunAction;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunLoadAccountRequest;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunClient;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.utils.ThirdPartyAccountUtils;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bd\u0010eJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0019H\u0016J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u001c\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0#0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\"\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u00190\u00122\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u0019H\u0016J\"\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u00190\u00122\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u0019H\u0016J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010*\u001a\u00020&H\u0016J\u0016\u0010.\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00100\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00020&0\u00122\u0006\u0010*\u001a\u00020&H\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u00105\u001a\u000204H\u0016J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u0002090\u00122\u0006\u00108\u001a\u000207H\u0016J\u0016\u0010=\u001a\b\u0012\u0004\u0012\u0002090\u00122\u0006\u0010<\u001a\u00020;H\u0016J\u000e\u0010?\u001a\b\u0012\u0004\u0012\u00020\u001a0>H\u0016J\u0012\u0010B\u001a\u00020\u00072\b\u0010A\u001a\u0004\u0018\u00010@H\u0016J\u0010\u0010E\u001a\u00020\u00072\b\u0010D\u001a\u0004\u0018\u00010CJ\u000e\u0010G\u001a\u00020\u00072\u0006\u0010F\u001a\u00020CJ\u0006\u0010H\u001a\u00020\u0007J\b\u0010J\u001a\u0004\u0018\u00010IJ\b\u0010K\u001a\u0004\u0018\u00010IJ\u0006\u0010L\u001a\u00020IJ\u000e\u0010O\u001a\u00020&2\u0006\u0010N\u001a\u00020MJ\u001a\u0010R\u001a\b\u0012\u0004\u0012\u00020&0Q2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020M0\u0019J\u0018\u0010O\u001a\u00020&2\u0006\u0010N\u001a\u00020M2\b\u0010S\u001a\u0004\u0018\u00010IJ\b\u0010T\u001a\u0004\u0018\u00010IR\u001b\u0010Y\u001a\u00020U8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010V\u001a\u0004\bW\u0010XR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R$\u0010D\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010c¨\u0006f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", "authDialog", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", MailTo.f5529g, "", "a", "b", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "Lio/reactivex/rxjava3/core/Observable;", "authenticate", "logOut", "", "isAuth", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportFeatures", "Lcom/onyx/android/sdk/base/data/SortBy;", "getSupportSortByList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchFileInfoList", "refreshFileInfoList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "loadFolderTree", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBeans", "downloadFiles", "uploadFiles", "cloudFile", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "renameFile", "deleteFile", "copyFile", "moveFile", "searchFileInfoList", "fetchFileInfo", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "operation", "pasteLocalFileToCloud", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "", "getEnableFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "accountModel", "configureProviderAccountModel", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;", "tokenResponse", "setDriveToken", AbstractLogger.RESPONSE, "saveCredential", "onProviderAuthFail", "", "getAccessToken", "getRefreshToken", "getBearAccessToken", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "file", "toCloudFile", "fileList", "", "toCloudFiles", "parentCloudPath", "getDefaultDriveId", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;", "Lkotlin/Lazy;", "getDriveClient", "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;", "driveClient", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "getProviderContext", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "setProviderContext", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;", "getTokenResponse", "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;", "setTokenResponse", "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,351:1\n1#2:352\n1855#3,2:353\n*S KotlinDebug\n*F\n+ 1 AliYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider\n*L\n287#1:353,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunProvider extends BaseCloudStorageProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy driveClient;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public AliYunTokenResponse tokenResponse;
    public ProviderContext providerContext;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7179a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AliYunDownloadAction f41173e;

        public C7179a(AliYunDownloadAction aliYunDownloadAction) {
            this.f41173e = aliYunDownloadAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull List<OnyxFileTransferStatus<CloudFileBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41173e.getCloudFileBeanList();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7180b<T, R> implements Function {
        public C7180b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProviderAccountModel> apply(@NotNull AliYunTokenResponse it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new AliYunFetchAccountAction(AliYunProvider.this).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider$d */
    /* loaded from: classes7.dex */
    public static final class C7182d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BehaviorSubject<AuthResult> f41176e;

        /* renamed from: f */
        public final /* synthetic */ AliYunProvider f41177f;

        public C7182d(BehaviorSubject<AuthResult> behaviorSubject, AliYunProvider aliYunProvider) {
            this.f41176e = behaviorSubject;
            this.f41177f = aliYunProvider;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProviderAccountModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f41176e.onNext(this.f41177f.m32315b());
            this.f41176e.onComplete();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider$e */
    /* loaded from: classes7.dex */
    public static final class C7183e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41178e;

        public C7183e(List<CloudFileBean> list) {
            this.f41178e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41178e;
        }
    }

    public AliYunProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AliYunClient>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider$driveClient$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AliYunClient invoke() {
                return new AliYunClient(AliYunProvider.this);
            }
        });
        this.driveClient = lazy;
        setProvider(Provider.ALI_YUN);
    }

    /* renamed from: a */
    public final void m32314a(OAuthDialog authDialog, final BehaviorSubject<AuthResult> subject) {
        String code = authDialog.getCode();
        if (StringUtils.isEmpty(code)) {
            subject.onNext(AuthResult.INSTANCE.authFail());
            subject.onComplete();
        } else {
            configureProviderAccountModel(null);
            new AliYunLoadTokenAction(this, code).build().flatMap(new C7180b()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider.c
                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Throwable p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    subject.onError(p0);
                }
            }).doOnNext(new C7182d(subject, this)).subscribe();
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
        String format = String.format(Locale.getDefault(), CloudStorageConstants.ALIYUN_DRIVE_AUTH_URL, Arrays.copyOf(new Object[]{getProviderContext().getClientID()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        final OAuthDialog newInstance = OAuthDialog.INSTANCE.newInstance(new OAuthDialogParam(getProviderType().getTitle(), format, CloudStorageConstants.ALIYUN_DRIVE_REDIRECT_URL, "code=", null, 16, null));
        newInstance.setOnDismissListener(new Function0<Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider$authenticate$1
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
                AliYunProvider.this.m32314a(newInstance, create);
            }
        });
        newInstance.show(((FragmentActivity) activityContext).getSupportFragmentManager(), AliYunProvider.class.getSimpleName());
        return create;
    }

    /* renamed from: b */
    public final AuthResult m32315b() {
        AuthResult authSuccess = AuthResult.INSTANCE.authSuccess();
        authSuccess.setAccountId(getAccountId());
        return authSuccess;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider
    public void configureProviderAccountModel(@Nullable ProviderAccountModel accountModel) {
        super.configureProviderAccountModel(accountModel);
        if (this.tokenResponse != null || accountModel == null) {
            return;
        }
        setDriveToken((AliYunTokenResponse) JSONUtils.INSTANCE.parseObject(accountModel.getAccountCredentialJson(), AliYunTokenResponse.class));
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new AliYunCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        AliYunCreateFolderAction aliYunCreateFolderAction = new AliYunCreateFolderAction(this, cloudFile);
        aliYunCreateFolderAction.setCheckExist(true);
        return aliYunCreateFolderAction.create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new AliYunDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        AliYunDownloadAction aliYunDownloadAction = new AliYunDownloadAction(this, fileBeans);
        Observable map = aliYunDownloadAction.build().map(new C7179a(aliYunDownloadAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new AliYunFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new AliYunFetchFileListAction(this, queryArgs).create();
    }

    @Nullable
    public final String getAccessToken() {
        AliYunTokenResponse aliYunTokenResponse = this.tokenResponse;
        if (aliYunTokenResponse != null) {
            return aliYunTokenResponse.getAccessToken();
        }
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        return new AliYunLoadAccountRequest(this, false, 2, null).executeSafety();
    }

    @NotNull
    public final String getBearAccessToken() {
        return BaseCloudRequest.BEARER_TOKEN_PREFIX + getAccessToken();
    }

    @Nullable
    public final String getDefaultDriveId() {
        ProviderAccountModel providerAccountModel = getProviderAccountModel();
        if (providerAccountModel != null) {
            return providerAccountModel.getDriveId();
        }
        return null;
    }

    @NotNull
    public final AliYunClient getDriveClient() {
        return (AliYunClient) this.driveClient.getValue();
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

    @Nullable
    public final String getRefreshToken() {
        AliYunTokenResponse aliYunTokenResponse = this.tokenResponse;
        if (aliYunTokenResponse != null) {
            return aliYunTokenResponse.getRefreshToken();
        }
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
        List<SortBy> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SortBy[]{SortBy.Name, SortBy.Size, SortBy.CreationTime, SortBy.UpdateAt});
        return listOf;
    }

    @Nullable
    public final AliYunTokenResponse getTokenResponse() {
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
        return AliYunTokenResponse.INSTANCE.isValid(this.tokenResponse);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new AliYunLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        ProviderAccountModelUtils.INSTANCE.deleteAccount(getProviderType().getTitle(), getAccountId());
        setDriveToken(null);
        Debug.INSTANCE.m32035d(AliYunProvider.class, getProviderType() + " logout", new Object[0]);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        AliYunCopyFileAction aliYunCopyFileAction = new AliYunCopyFileAction(this, args);
        aliYunCopyFileAction.setCut(true);
        return aliYunCopyFileAction.create();
    }

    public final void onProviderAuthFail() {
        ThirdPartyAccountUtils.INSTANCE.onProviderAuthFail(this, Provider.ALI_YUN.getTitle());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        PasteLocalFileToAliYunAction pasteLocalFileToAliYunAction = new PasteLocalFileToAliYunAction();
        pasteLocalFileToAliYunAction.setCloudStorageProvider(this);
        pasteLocalFileToAliYunAction.setOperation(operation);
        pasteLocalFileToAliYunAction.setWorkScheduler(getObserveOn());
        return pasteLocalFileToAliYunAction.build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new AliYunRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new AliYunRenameFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        return flatMap(new AliYunSaveAnnotationAction(this, cloudAnnotation).build());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if ((r0.getUniqueId().length() == 0) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void saveCredential(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse r4) {
        /*
            r3 = this;
            java.lang.String r0 = "response"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse$Companion r0 = com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse.INSTANCE
            boolean r0 = r0.isValid(r4)
            if (r0 != 0) goto Le
            return
        Le:
            com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel r0 = r3.getProviderAccountModel()
            if (r0 == 0) goto L23
            java.lang.String r1 = r0.getUniqueId()
            int r1 = r1.length()
            if (r1 != 0) goto L20
            r1 = 1
            goto L21
        L20:
            r1 = 0
        L21:
            if (r1 == 0) goto L35
        L23:
            com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils r0 = com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils.INSTANCE
            com.onyx.android.sdk.data.config.cloudnote.Provider r1 = r3.getProviderType()
            java.lang.String r1 = r1.getTitle()
            java.lang.String r2 = r3.getAccountId()
            com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel r0 = r0.queryAccount(r1, r2)
        L35:
            if (r0 != 0) goto L38
            return
        L38:
            com.onyx.android.sdk.data.utils.JSONUtils r1 = com.onyx.android.sdk.data.utils.JSONUtils.INSTANCE
            java.lang.String r4 = r1.toJson(r4)
            java.lang.String r4 = java.lang.String.valueOf(r4)
            r0.setAccountCredentialJson(r4)
            com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils r4 = com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils.INSTANCE
            java.util.List r1 = kotlin.collections.CollectionsKt.listOf(r0)
            com.onyx.android.sdk.data.config.cloudnote.Provider r2 = r3.getProviderType()
            java.lang.String r2 = r2.getTitle()
            r4.saveAccount(r1, r2)
            r3.configureProviderAccountModel(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider.saveCredential(com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse):void");
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        return flatMap(new AliYunSaveNoteAction(this, cloudNote).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new AliYunSearchFileListAction(this, queryArgs).build();
    }

    public final void setDriveToken(@Nullable AliYunTokenResponse tokenResponse) {
        this.tokenResponse = tokenResponse;
        getDriveClient().updateTokenHeader();
    }

    public final void setProviderContext(@NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(providerContext, "<set-?>");
        this.providerContext = providerContext;
    }

    public final void setTokenResponse(@Nullable AliYunTokenResponse aliYunTokenResponse) {
        this.tokenResponse = aliYunTokenResponse;
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull AliYunFileInfo file) throws Exception {
        Intrinsics.checkNotNullParameter(file, "file");
        return toCloudFile(file, null);
    }

    @NotNull
    public final List<CloudFileBean> toCloudFiles(@NotNull List<AliYunFileInfo> fileList) throws Exception {
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        Map<String, String> parentCloudPathMap = AliYunUtils.INSTANCE.getParentCloudPathMap(fileList, this);
        ArrayList arrayList = new ArrayList();
        for (AliYunFileInfo aliYunFileInfo : fileList) {
            String parentFileId = aliYunFileInfo.getParentFileId();
            arrayList.add(toCloudFile(aliYunFileInfo, parentFileId != null ? parentCloudPathMap.get(parentFileId) : null));
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new AliYunUploadAction(this, fileBeans).build().map(new C7183e(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull AliYunFileInfo file, @Nullable String parentCloudPath) throws Exception {
        Intrinsics.checkNotNullParameter(file, "file");
        String concat = FilenameUtils.concat(parentCloudPath == null ? AliYunUtils.INSTANCE.getParentCloudPath(this, file.getParentFileId()) : parentCloudPath, file.getName());
        Provider provider = Provider.ALI_YUN;
        AliYunUtils aliYunUtils = AliYunUtils.INSTANCE;
        String normalizeToDBParentId = aliYunUtils.normalizeToDBParentId(file.getParentFileId());
        boolean isFolder = file.isFolder();
        String name = file.getName();
        Intrinsics.checkNotNull(concat);
        CloudFileBean cloudFileBean = new CloudFileBean(normalizeToDBParentId, aliYunUtils.getCloudFileLocalPath(this, concat), concat, file.getContentHash(), isFolder, file.getSize(), name, null, provider, AliYunFileInfo.INSTANCE.getMediaCategory(file.getCategory()), null, getAccountId(), 0L, 0L, 13440, null);
        String fileId = file.getFileId();
        if (fileId == null) {
            fileId = "";
        }
        cloudFileBean.setUniqueId(fileId);
        Date updatedAt = file.getUpdatedAt();
        cloudFileBean.setUpdatedAt(updatedAt != null ? updatedAt.getTime() : 0L);
        Date createdAt = file.getCreatedAt();
        cloudFileBean.setCreatedAt(createdAt != null ? createdAt.getTime() : 0L);
        return cloudFileBean;
    }
}

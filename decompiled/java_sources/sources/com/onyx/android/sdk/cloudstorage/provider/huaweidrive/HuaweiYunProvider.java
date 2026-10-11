package com.onyx.android.sdk.cloudstorage.provider.huaweidrive;

import android.content.Context;
import androidx.core.net.MailTo;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
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
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunFetchAccountAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunLoadTokenAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunSaveAnnotationAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunSaveNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunUploadAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.PasteLocalFileToHuaweiYunAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunLoadAccountRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.HuaweiYunClient;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.HuaweiYunUtils;
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
import java.net.URLDecoder;
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
import kotlin.collections.CollectionsKt___CollectionsKt;
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

@Metadata(m61527d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bc\u0010dJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0019H\u0016J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u001c\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0#0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\"\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u00190\u00122\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u0019H\u0016J\"\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u00190\u00122\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u0019H\u0016J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010*\u001a\u00020&H\u0016J\u0016\u0010.\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00100\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00020&0\u00122\u0006\u0010*\u001a\u00020&H\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u00020 0\u00122\u0006\u00105\u001a\u000204H\u0016J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u0002090\u00122\u0006\u00108\u001a\u000207H\u0016J\u0016\u0010=\u001a\b\u0012\u0004\u0012\u0002090\u00122\u0006\u0010<\u001a\u00020;H\u0016J\u000e\u0010?\u001a\b\u0012\u0004\u0012\u00020\u001a0>H\u0016J\u0012\u0010B\u001a\u00020\u00072\b\u0010A\u001a\u0004\u0018\u00010@H\u0016J\u0010\u0010E\u001a\u00020\u00072\b\u0010D\u001a\u0004\u0018\u00010CJ\u0006\u0010G\u001a\u00020FJ\b\u0010H\u001a\u0004\u0018\u00010FJ\b\u0010I\u001a\u0004\u0018\u00010FJ\u000e\u0010K\u001a\u00020\u00072\u0006\u0010J\u001a\u00020CJ\u0006\u0010L\u001a\u00020\u0007J\u000e\u0010O\u001a\u00020&2\u0006\u0010N\u001a\u00020MJ\u001a\u0010R\u001a\b\u0012\u0004\u0012\u00020&0P2\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020M0PJ\u0018\u0010O\u001a\u00020&2\u0006\u0010N\u001a\u00020M2\b\u0010S\u001a\u0004\u0018\u00010FR\u001b\u0010X\u001a\u00020T8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010U\u001a\u0004\bV\u0010WR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R$\u0010D\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010b¨\u0006e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;", "authDialog", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", MailTo.f5529g, "", "a", "b", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "Lio/reactivex/rxjava3/core/Observable;", "authenticate", "logOut", "", "isAuth", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportFeatures", "Lcom/onyx/android/sdk/base/data/SortBy;", "getSupportSortByList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchFileInfoList", "refreshFileInfoList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "loadFolderTree", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBeans", "downloadFiles", "uploadFiles", "cloudFile", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "renameFile", "deleteFile", "copyFile", "moveFile", "searchFileInfoList", "fetchFileInfo", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "operation", "pasteLocalFileToCloud", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "saveAnnotation", "", "getEnableFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "accountModel", "configureProviderAccountModel", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;", "tokenResponse", "setDriveToken", "", "getBearAccessToken", "getRefreshToken", "getAccessToken", AbstractLogger.RESPONSE, "saveCredential", "onProviderAuthFail", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "file", "toCloudFile", "", "fileList", "toCloudFiles", "parentCloudPath", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;", "Lkotlin/Lazy;", "getDriveClient", "()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;", "driveClient", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "getProviderContext", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "setProviderContext", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;", "getTokenResponse", "()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;", "setTokenResponse", "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n1855#2,2:354\n*S KotlinDebug\n*F\n+ 1 HuaweiYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider\n*L\n290#1:354,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunProvider extends BaseCloudStorageProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy driveClient;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public HuaweiYunTokenResponse tokenResponse;
    public ProviderContext providerContext;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7304a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HuaweiYunDownloadAction f41602e;

        public C7304a(HuaweiYunDownloadAction huaweiYunDownloadAction) {
            this.f41602e = huaweiYunDownloadAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull List<OnyxFileTransferStatus<CloudFileBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41602e.getCloudFileBeanList();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7305b<T, R> implements Function {
        public C7305b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProviderAccountModel> apply(@NotNull HuaweiYunTokenResponse it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HuaweiYunFetchAccountAction(HuaweiYunProvider.this).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider$d */
    /* loaded from: classes7.dex */
    public static final class C7307d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BehaviorSubject<AuthResult> f41605e;

        /* renamed from: f */
        public final /* synthetic */ HuaweiYunProvider f41606f;

        public C7307d(BehaviorSubject<AuthResult> behaviorSubject, HuaweiYunProvider huaweiYunProvider) {
            this.f41605e = behaviorSubject;
            this.f41606f = huaweiYunProvider;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProviderAccountModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f41605e.onNext(this.f41606f.m32688b());
            this.f41605e.onComplete();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider$e */
    /* loaded from: classes7.dex */
    public static final class C7308e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41607e;

        public C7308e(List<CloudFileBean> list) {
            this.f41607e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41607e;
        }
    }

    public HuaweiYunProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<HuaweiYunClient>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider$driveClient$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HuaweiYunClient invoke() {
                return new HuaweiYunClient(HuaweiYunProvider.this);
            }
        });
        this.driveClient = lazy;
        setProvider(Provider.HUAWEI_YUN);
    }

    /* renamed from: a */
    public final void m32687a(OAuthDialog authDialog, final BehaviorSubject<AuthResult> subject) {
        String code = authDialog.getCode();
        if (StringUtils.isEmpty(code)) {
            subject.onNext(AuthResult.INSTANCE.authFail());
            subject.onComplete();
        } else {
            configureProviderAccountModel(null);
            String decode = URLDecoder.decode(code, "UTF-8");
            Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
            new HuaweiYunLoadTokenAction(this, decode).build().flatMap(new C7305b()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider.c
                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Throwable p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    subject.onError(p0);
                }
            }).doOnNext(new C7307d(subject, this)).subscribe();
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
        String format = String.format(Locale.getDefault(), CloudStorageConstants.HUAWEIYUN_DRIVE_AUTH_URL, Arrays.copyOf(new Object[]{getProviderContext().getClientID()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        final OAuthDialog newInstance = OAuthDialog.INSTANCE.newInstance(new OAuthDialogParam(getProviderType().getTitle(), format, CloudStorageConstants.HUAWEIYUN_DRIVE_REDIRECT_URL, "code=", null, 16, null));
        newInstance.setOnDismissListener(new Function0<Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider$authenticate$1
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
                HuaweiYunProvider.this.m32687a(newInstance, create);
            }
        });
        newInstance.show(((FragmentActivity) activityContext).getSupportFragmentManager(), HuaweiYunProvider.class.getSimpleName());
        return create;
    }

    /* renamed from: b */
    public final AuthResult m32688b() {
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
        setDriveToken((HuaweiYunTokenResponse) JSONUtils.INSTANCE.parseObject(accountModel.getAccountCredentialJson(), HuaweiYunTokenResponse.class));
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new HuaweiYunCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new HuaweiYunCreateFolderAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new HuaweiYunDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        HuaweiYunDownloadAction huaweiYunDownloadAction = new HuaweiYunDownloadAction(this, fileBeans);
        Observable map = huaweiYunDownloadAction.build().map(new C7304a(huaweiYunDownloadAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new HuaweiYunFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new HuaweiYunFetchFileListAction(this, queryArgs).create();
    }

    @Nullable
    public final String getAccessToken() {
        HuaweiYunTokenResponse huaweiYunTokenResponse = this.tokenResponse;
        if (huaweiYunTokenResponse != null) {
            return huaweiYunTokenResponse.getAccessToken();
        }
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        return new HuaweiYunLoadAccountRequest(this, false, 2, null).executeSafety();
    }

    @NotNull
    public final String getBearAccessToken() {
        return BaseCloudRequest.BEARER_TOKEN_PREFIX + getAccessToken();
    }

    @NotNull
    public final HuaweiYunClient getDriveClient() {
        return (HuaweiYunClient) this.driveClient.getValue();
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
        HuaweiYunTokenResponse huaweiYunTokenResponse = this.tokenResponse;
        if (huaweiYunTokenResponse != null) {
            return huaweiYunTokenResponse.getRefreshToken();
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
    public final HuaweiYunTokenResponse getTokenResponse() {
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
        return HuaweiYunTokenResponse.INSTANCE.isValid(this.tokenResponse);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new HuaweiYunLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        ProviderAccountModelUtils.INSTANCE.deleteAccount(getProviderType().getTitle(), getAccountId());
        setDriveToken(null);
        Debug.INSTANCE.m32035d(HuaweiYunProvider.class, getProviderType() + " logout", new Object[0]);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        HuaweiYunCopyFileAction huaweiYunCopyFileAction = new HuaweiYunCopyFileAction(this, args);
        huaweiYunCopyFileAction.setCut(true);
        return huaweiYunCopyFileAction.create();
    }

    public final void onProviderAuthFail() {
        ThirdPartyAccountUtils.INSTANCE.onProviderAuthFail(this, Provider.HUAWEI_YUN.getTitle());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        PasteLocalFileToHuaweiYunAction pasteLocalFileToHuaweiYunAction = new PasteLocalFileToHuaweiYunAction();
        pasteLocalFileToHuaweiYunAction.setCloudStorageProvider(this);
        pasteLocalFileToHuaweiYunAction.setOperation(operation);
        pasteLocalFileToHuaweiYunAction.setWorkScheduler(getObserveOn());
        return pasteLocalFileToHuaweiYunAction.build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new HuaweiYunRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new HuaweiYunRenameFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        return flatMap(new HuaweiYunSaveAnnotationAction(this, cloudAnnotation).build());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if ((r0.getUniqueId().length() == 0) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void saveCredential(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse r4) {
        /*
            r3 = this;
            java.lang.String r0 = "response"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse$Companion r0 = com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse.INSTANCE
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
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider.saveCredential(com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse):void");
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        return flatMap(new HuaweiYunSaveNoteAction(this, cloudNote).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new HuaweiYunSearchFileListAction(this, queryArgs).create();
    }

    public final void setDriveToken(@Nullable HuaweiYunTokenResponse tokenResponse) {
        this.tokenResponse = tokenResponse;
        getDriveClient().updateTokenHeader();
    }

    public final void setProviderContext(@NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(providerContext, "<set-?>");
        this.providerContext = providerContext;
    }

    public final void setTokenResponse(@Nullable HuaweiYunTokenResponse huaweiYunTokenResponse) {
        this.tokenResponse = huaweiYunTokenResponse;
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull HuaweiYunFileListResult.File file) throws Exception {
        Intrinsics.checkNotNullParameter(file, "file");
        return toCloudFile(file, null);
    }

    @NotNull
    public final List<CloudFileBean> toCloudFiles(@NotNull List<HuaweiYunFileListResult.File> fileList) throws Exception {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        Map<String, String> parentCloudPathMap = HuaweiYunUtils.INSTANCE.getParentCloudPathMap(fileList, this);
        ArrayList arrayList = new ArrayList();
        for (HuaweiYunFileListResult.File file : fileList) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) file.getParentFolder());
            String str = (String) firstOrNull;
            arrayList.add(toCloudFile(file, str != null ? parentCloudPathMap.get(str) : null));
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new HuaweiYunUploadAction(this, fileBeans).build().map(new C7308e(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull HuaweiYunFileListResult.File file, @Nullable String parentCloudPath) throws Exception {
        String str;
        Object firstOrNull;
        Object firstOrNull2;
        Intrinsics.checkNotNullParameter(file, "file");
        if (parentCloudPath == null) {
            HuaweiYunUtils huaweiYunUtils = HuaweiYunUtils.INSTANCE;
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) file.getParentFolder());
            str = huaweiYunUtils.getParentCloudPath(this, (String) firstOrNull2);
        } else {
            str = parentCloudPath;
        }
        String concat = FilenameUtils.concat(str, file.getFileName());
        Provider provider = Provider.HUAWEI_YUN;
        HuaweiYunUtils huaweiYunUtils2 = HuaweiYunUtils.INSTANCE;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) file.getParentFolder());
        String normalizeToDBParentId = huaweiYunUtils2.normalizeToDBParentId((String) firstOrNull);
        boolean areEqual = Intrinsics.areEqual(file.getMimeType(), HuaweiYunFileListResult.File.FOLDER);
        String fileName = file.getFileName();
        Intrinsics.checkNotNull(concat);
        CloudFileBean cloudFileBean = new CloudFileBean(normalizeToDBParentId, huaweiYunUtils2.getCloudFileLocalPath(this, concat), concat, FileUtils.INSTANCE.computeMD5(file.getId()), areEqual, file.getSize(), fileName, null, provider, HuaweiYunFileListResult.File.INSTANCE.getMediaCategory(file), null, getAccountId(), 0L, 0L, 13440, null);
        cloudFileBean.setUniqueId(file.getId());
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        Date parse = dateTimeUtil.getDATE_FORMAT_RFC3339().parse(file.getEditedTime());
        cloudFileBean.setUpdatedAt(parse != null ? parse.getTime() : 0L);
        Date parse2 = dateTimeUtil.getDATE_FORMAT_RFC3339().parse(file.getCreatedTime());
        cloudFileBean.setCreatedAt(parse2 != null ? parse2.getTime() : 0L);
        return cloudFileBean;
    }
}

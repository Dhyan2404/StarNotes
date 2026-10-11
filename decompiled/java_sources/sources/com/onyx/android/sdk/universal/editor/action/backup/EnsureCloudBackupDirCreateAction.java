package com.onyx.android.sdk.universal.editor.action.backup;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.universal.p042ui.data.BackupConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000fH\u0002R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/EnsureCloudBackupDirCreateAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "cloudFileListResult", "", C4921e.f26528e, "", "p", "l", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "baseCloudStorageProvider", "", "getDriveLocalBackupDir", "filePath", "m", "fileBean", "q", "e", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEnsureCloudBackupDirCreateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnsureCloudBackupDirCreateAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/EnsureCloudBackupDirCreateAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n766#2:123\n857#2,2:124\n*S KotlinDebug\n*F\n+ 1 EnsureCloudBackupDirCreateAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/EnsureCloudBackupDirCreateAction\n*L\n63#1:123\n63#1:124,2\n*E\n"})
/* loaded from: classes8.dex */
public final class EnsureCloudBackupDirCreateAction extends RxBaseAction<CloudFileBean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider baseCloudStorageProvider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.EnsureCloudBackupDirCreateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8478a<T, R> implements Function {
        public C8478a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull EnsureCloudBackupDirCreateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureCloudBackupDirCreateAction.this.m37266n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.EnsureCloudBackupDirCreateAction$b */
    /* loaded from: classes8.dex */
    public static final class C8479b<T, R> implements Function {

        /* renamed from: e */
        public static final C8479b<T, R> f48004e = new C8479b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull CloudFileListResult it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2.ensureList());
            return (CloudFileBean) first;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.EnsureCloudBackupDirCreateAction$c */
    /* loaded from: classes8.dex */
    public static final class C8480c<T, R> implements Function {
        public C8480c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureCloudBackupDirCreateAction.this.m37267o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.EnsureCloudBackupDirCreateAction$d */
    /* loaded from: classes8.dex */
    public static final class C8481d<T, R> implements Function {
        public C8481d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull List<CloudFileBean> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            if (it2.isEmpty()) {
                EnsureCloudBackupDirCreateAction.this.m37268p();
                return EnsureCloudBackupDirCreateAction.this.m37264l();
            }
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            Observable just = Observable.just(first);
            Intrinsics.checkNotNull(just);
            return just;
        }
    }

    public EnsureCloudBackupDirCreateAction(@NotNull BaseCloudStorageProvider baseCloudStorageProvider) {
        Intrinsics.checkNotNullParameter(baseCloudStorageProvider, "baseCloudStorageProvider");
        this.baseCloudStorageProvider = baseCloudStorageProvider;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable<CloudFileBean> flatMap = Observable.just(this).observeOn(this.baseCloudStorageProvider.getObserveOn()).flatMap(new C8478a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final String getDriveLocalBackupDir(BaseCloudStorageProvider baseCloudStorageProvider) {
        Provider providerType = baseCloudStorageProvider.getProviderType();
        String accountId = baseCloudStorageProvider.getAccountId();
        providerType.ensureCreateRootPath();
        StringBuilder sb = new StringBuilder();
        sb.append(providerType.getProviderRootPath());
        String str = File.separator;
        sb.append(str);
        sb.append(accountId);
        sb.append(str);
        sb.append(BackupConstant.BACKUP_FOLDER_NAME);
        return sb.toString();
    }

    /* renamed from: l */
    public final Observable<CloudFileBean> m37264l() {
        File file = new File(getDriveLocalBackupDir(this.baseCloudStorageProvider));
        FileUtils.forceMkdir(file);
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        Observable map = this.baseCloudStorageProvider.createFolder(m37265m(absolutePath)).map(C8479b.f48004e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final CloudFileBean m37265m(String filePath) {
        CloudFileBean.Companion companion = CloudFileBean.INSTANCE;
        CloudFileBean create = companion.create(Provider.INSTANCE.getProviderFromPath(filePath));
        create.setLocalFilePath(filePath);
        create.setDir(FileUtils.isDirectory(new File(filePath), new LinkOption[0]));
        create.setCreatedAt(System.currentTimeMillis());
        create.setUpdatedAt(System.currentTimeMillis());
        create.setName(FilenameUtils.getName(filePath));
        create.setSyncStatus(SyncStatus.NEW_FROM_LOCAL);
        create.setCloudFilePath(companion.getCloudFilePath(filePath));
        if (!create.getDir()) {
            m37269q(create, filePath);
        }
        return create;
    }

    /* renamed from: n */
    public final Observable<CloudFileBean> m37266n() {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(this.baseCloudStorageProvider.getProviderType().getTitle());
        cloudFileQueryArgs.setAccountId(this.baseCloudStorageProvider.getAccountId());
        cloudFileQueryArgs.setParentId(null);
        cloudFileQueryArgs.setFetchPolicy(0);
        cloudFileQueryArgs.setSortBy(SortBy.CreationTime);
        cloudFileQueryArgs.setOrder(SortOrder.Desc);
        cloudFileQueryArgs.setQuery(BackupConstant.BACKUP_FOLDER_NAME);
        Observable<CloudFileBean> flatMap = this.baseCloudStorageProvider.searchFileInfoList(cloudFileQueryArgs).map(new C8480c()).observeOn(this.baseCloudStorageProvider.getObserveOn()).flatMap(new C8481d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final List<CloudFileBean> m37267o(CloudFileListResult cloudFileListResult) {
        List<CloudFileBean> ensureList = cloudFileListResult.ensureList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : ensureList) {
            CloudFileBean cloudFileBean = (CloudFileBean) obj;
            boolean z = false;
            if (cloudFileBean.getDir() && Intrinsics.areEqual(cloudFileBean.getName(), BackupConstant.BACKUP_FOLDER_NAME)) {
                String parentId = cloudFileBean.getParentId();
                if (parentId == null || parentId.length() == 0) {
                    z = true;
                }
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: p */
    public final void m37268p() {
        File file = new File(getDriveLocalBackupDir(this.baseCloudStorageProvider));
        CloudStorageRecordProvider cloudStorageRecordProvider = this.baseCloudStorageProvider.getCloudStorageRecordProvider();
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        CloudFileBean queryFileInfoByLocalPath = cloudStorageRecordProvider.queryFileInfoByLocalPath(path);
        if (queryFileInfoByLocalPath != null) {
            cloudStorageRecordProvider.delete(queryFileInfoByLocalPath);
        }
    }

    /* renamed from: q */
    public final void m37269q(CloudFileBean fileBean, String filePath) {
        File file = new File(filePath);
        if (file.isFile()) {
            fileBean.setSize(FileUtils.sizeOf(file));
            fileBean.setMd5(com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.computeFullMD5Safely(filePath));
        }
    }
}

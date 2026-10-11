package com.onyx.android.sdk.universal.editor.action.backup;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.common.action.EnsureCloudStorageRecordProviderAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.NoteCloudRecordModel;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.p020db.NoteCloudRecordProviderKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SelectionHelper;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction;
import com.onyx.android.sdk.universal.p042ui.data.BackupContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.nio.file.LinkOption;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b3\u00104J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0002H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\tH\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010&\u001a\u00020\u000b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u0010.\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00100\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u0010-¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, "q", "r", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "w", "", "s", "filePath", "p", "fileBean", "v", "t", "u", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "baseCloudStorageProvider", "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "backupContext", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "recordProvider", "Ljava/io/File;", "noteFile", "Ljava/io/File;", "getNoteFile", "()Ljava/io/File;", "setNoteFile", "(Ljava/io/File;)V", "noteFileName", Constants.STRING_SIG, "getNoteFileName", "()Ljava/lang/String;", "setNoteFileName", "(Ljava/lang/String;)V", "i", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "backupDirCloudFileBean", "j", "uploadCloudFileBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UploadBackupFileToCloudAction extends RxBaseBackupAction<UploadBackupFileToCloudAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider baseCloudStorageProvider;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final BackupContext backupContext;

    /* renamed from: h, reason: from kotlin metadata */
    public CloudStorageRecordProvider recordProvider;

    /* renamed from: i, reason: from kotlin metadata */
    public CloudFileBean backupDirCloudFileBean;

    /* renamed from: j, reason: from kotlin metadata */
    public CloudFileBean uploadCloudFileBean;
    public File noteFile;
    public String noteFileName;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$a */
    /* loaded from: classes8.dex */
    public static final class C8513a<T> implements Consumer {
        public C8513a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UploadBackupFileToCloudAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UploadBackupFileToCloudAction.this.m37349q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$b */
    /* loaded from: classes8.dex */
    public static final class C8514b<T, R> implements Function {
        public C8514b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudStorageRecordProvider> apply(@NotNull UploadBackupFileToCloudAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureCloudStorageRecordProviderAction(UploadBackupFileToCloudAction.this.baseCloudStorageProvider).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$c */
    /* loaded from: classes8.dex */
    public static final class C8515c<T> implements Consumer {
        public C8515c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudStorageRecordProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UploadBackupFileToCloudAction.this.recordProvider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$d */
    /* loaded from: classes8.dex */
    public static final class C8516d<T, R> implements Function {
        public C8516d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudStorageRecordProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureCloudBackupDirCreateAction(UploadBackupFileToCloudAction.this.baseCloudStorageProvider).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$e */
    /* loaded from: classes8.dex */
    public static final class C8517e<T> implements Consumer {
        public C8517e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UploadBackupFileToCloudAction.this.backupDirCloudFileBean = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$f */
    /* loaded from: classes8.dex */
    public static final class C8518f<T, R> implements Function {
        public C8518f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<CloudFileBean>> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UploadBackupFileToCloudAction.this.m37355w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$g */
    /* loaded from: classes8.dex */
    public static final class C8519g<T, R> implements Function {
        public C8519g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UploadBackupFileToCloudAction> apply(@NotNull List<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UploadBackupFileToCloudAction.this.m37350r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$h */
    /* loaded from: classes8.dex */
    public static final class C8520h<T, R> implements Function {
        public C8520h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UploadBackupFileToCloudAction apply(@NotNull UploadBackupFileToCloudAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UploadBackupFileToCloudAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$i */
    /* loaded from: classes8.dex */
    public static final class C8521i<T, R> implements Function {
        public C8521i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UploadBackupFileToCloudAction apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UploadBackupFileToCloudAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.UploadBackupFileToCloudAction$j */
    /* loaded from: classes8.dex */
    public static final class C8522j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ CloudFileBean f48077f;

        public C8522j(CloudFileBean cloudFileBean) {
            this.f48077f = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CloudFileBean> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            CloudFileBean cloudFileBean = (CloudFileBean) firstOrNull;
            CloudStorageRecordProvider cloudStorageRecordProvider = null;
            String localFilePath = cloudFileBean != null ? cloudFileBean.getLocalFilePath() : null;
            if (localFilePath == null) {
                LogUtils.file(UploadBackupFileToCloudAction.this.getClass().getSimpleName(), "localPath is null,noteCloudFileBean localPath:" + this.f48077f.getLocalFilePath());
                throw new Exception("localPath is null,noteCloudFileBean localPath:" + this.f48077f.getLocalFilePath());
            }
            CloudStorageRecordProvider cloudStorageRecordProvider2 = UploadBackupFileToCloudAction.this.recordProvider;
            if (cloudStorageRecordProvider2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recordProvider");
            } else {
                cloudStorageRecordProvider = cloudStorageRecordProvider2;
            }
            CloudFileBean queryFileInfoByLocalPath = cloudStorageRecordProvider.queryFileInfoByLocalPath(localFilePath);
            if (queryFileInfoByLocalPath != null) {
                UploadBackupFileToCloudAction.this.uploadCloudFileBean = queryFileInfoByLocalPath;
                return;
            }
            LogUtils.file(UploadBackupFileToCloudAction.this.getClass().getSimpleName(), "not found queryUploadCloudFileBean from db,localPath:" + localFilePath);
            throw new Exception("not found queryUploadCloudFileBean from db,localPath:" + localFilePath);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UploadBackupFileToCloudAction(@NotNull BaseCloudStorageProvider baseCloudStorageProvider, @NotNull EditorBundle editorBundle, @NotNull BackupContext backupContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(baseCloudStorageProvider, "baseCloudStorageProvider");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(backupContext, "backupContext");
        this.baseCloudStorageProvider = baseCloudStorageProvider;
        this.backupContext = backupContext;
    }

    /* renamed from: o */
    public static final void m37346o(UploadBackupFileToCloudAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m37347n();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UploadBackupFileToCloudAction> create() {
        Observable<UploadBackupFileToCloudAction> map = Observable.just(this).flatMap(new C8514b()).observeOn(getBackupProviderObserveOn()).doOnNext(new C8515c()).flatMap(new C8516d()).observeOn(getBackupProviderObserveOn()).doOnNext(new C8517e()).flatMap(new C8518f()).flatMap(new C8519g()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.mxn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                UploadBackupFileToCloudAction.m37346o(UploadBackupFileToCloudAction.this);
            }
        }).map(new C8520h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final File getNoteFile() {
        File file = this.noteFile;
        if (file != null) {
            return file;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteFile");
        return null;
    }

    @NotNull
    public final String getNoteFileName() {
        String str = this.noteFileName;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteFileName");
        return null;
    }

    /* renamed from: n */
    public final void m37347n() {
        Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C8513a()).subscribe();
    }

    /* renamed from: p */
    public final CloudFileBean m37348p(String filePath) {
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
            m37354v(create, filePath);
        }
        return create;
    }

    /* renamed from: q */
    public final void m37349q() {
        try {
            CloudFileBean cloudFileBean = this.uploadCloudFileBean;
            if (cloudFileBean == null) {
                Intrinsics.throwUninitializedPropertyAccessException("uploadCloudFileBean");
                cloudFileBean = null;
            }
            String localFilePath = cloudFileBean.getLocalFilePath();
            if (localFilePath != null) {
                FileUtils.deleteQuietly(new File(localFilePath));
            }
            FileUtils.deleteQuietly(new File(m37351s()));
        } catch (Exception unused) {
        }
    }

    /* renamed from: r */
    public final Observable<UploadBackupFileToCloudAction> m37350r() {
        if (!this.backupContext.getIsAutoBackup()) {
            Observable<UploadBackupFileToCloudAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CloudFileBean m37352t = m37352t();
        m37353u();
        if (m37352t == null) {
            Observable<UploadBackupFileToCloudAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        CloudFileOperation.OperationData operationData = new CloudFileOperation.OperationData();
        operationData.setOrigin(m37352t.getUniqueId());
        operationData.setPath(m37352t.getCloudFilePath());
        SelectionHelper selectionHelper = new SelectionHelper();
        String simpleName = UploadBackupFileToCloudAction.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        selectionHelper.getEnsureSelectedModel(simpleName).toggleSelectData(operationData);
        CloudFileOperation cloudFileOperation = new CloudFileOperation();
        cloudFileOperation.setProvider(this.baseCloudStorageProvider.getProviderType());
        cloudFileOperation.setDataJson(JSONUtils.INSTANCE.toJson(selectionHelper));
        cloudFileOperation.setCloudOperate(true);
        cloudFileOperation.setAccountId(this.baseCloudStorageProvider.getAccountId());
        Observable map = this.baseCloudStorageProvider.deleteFile(cloudFileOperation).map(new C8521i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final String m37351s() {
        return getDriveLocalBackupDir(this.baseCloudStorageProvider) + File.separator + getNoteFileName();
    }

    public final void setNoteFile(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<set-?>");
        this.noteFile = file;
    }

    public final void setNoteFileName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.noteFileName = str;
    }

    /* renamed from: t */
    public final CloudFileBean m37352t() {
        CloudStorageRecordProvider cloudStorageRecordProvider = this.recordProvider;
        if (cloudStorageRecordProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordProvider");
            cloudStorageRecordProvider = null;
        }
        NoteCloudRecordModel loadNoteCloudRecord = NoteCloudRecordProviderKt.loadNoteCloudRecord(cloudStorageRecordProvider, this.backupContext.getDocumentId());
        if (loadNoteCloudRecord != null) {
            return loadNoteCloudRecord.getCloudFileBean();
        }
        return null;
    }

    /* renamed from: u */
    public final void m37353u() {
        CloudStorageRecordProvider cloudStorageRecordProvider = this.recordProvider;
        CloudFileBean cloudFileBean = null;
        if (cloudStorageRecordProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordProvider");
            cloudStorageRecordProvider = null;
        }
        String documentId = this.backupContext.getDocumentId();
        CloudFileBean cloudFileBean2 = this.uploadCloudFileBean;
        if (cloudFileBean2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("uploadCloudFileBean");
        } else {
            cloudFileBean = cloudFileBean2;
        }
        NoteCloudRecordProviderKt.saveNoteCloudRecord(cloudStorageRecordProvider, new NoteCloudRecordModel(documentId, cloudFileBean));
    }

    /* renamed from: v */
    public final void m37354v(CloudFileBean fileBean, String filePath) {
        File file = new File(filePath);
        if (file.isFile()) {
            fileBean.setSize(FileUtils.sizeOf(file));
            fileBean.setMd5(com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.computeFullMD5Safely(filePath));
        }
    }

    /* renamed from: w */
    public final Observable<List<CloudFileBean>> m37355w() {
        List<CloudFileBean> listOf;
        String absolutePath = getNoteFile().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        CloudFileBean m37348p = m37348p(absolutePath);
        CloudFileBean cloudFileBean = this.backupDirCloudFileBean;
        if (cloudFileBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backupDirCloudFileBean");
            cloudFileBean = null;
        }
        m37348p.setParentId(cloudFileBean.getUniqueId());
        BaseCloudStorageProvider baseCloudStorageProvider = this.baseCloudStorageProvider;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(m37348p);
        Observable<List<CloudFileBean>> doOnNext = baseCloudStorageProvider.uploadFiles(listOf).observeOn(this.baseCloudStorageProvider.getObserveOn()).doOnNext(new C8522j(m37348p));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}

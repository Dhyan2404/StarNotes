package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import android.content.res.Resources;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudNoteUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.CloudResource;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0014J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0004J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\f\u001a\u00020\u0002H\u0004J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0002H$J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0002H\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudNoteAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V", "getCloudNote", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "createCloudFile", "createLocalFile", "cloudFileBean", "ensureFolderCreated", "fileBean", BaiduYunConstant.UPLOAD, "uploadFile", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class SaveCloudNoteAction extends BaseCloudStorageAction<CloudFileBean> {

    @NotNull
    private final CloudNote cloudNote;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$a */
    /* loaded from: classes7.dex */
    public static final class C7269a<T, R> implements Function {
        public C7269a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudNoteAction.this.createCloudFile();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$b */
    /* loaded from: classes7.dex */
    public static final class C7270b<T, R> implements Function {
        public C7270b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudNoteAction.this.createLocalFile(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$c */
    /* loaded from: classes7.dex */
    public static final class C7271c<T, R> implements Function {
        public C7271c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudNoteAction.this.ensureFolderCreated(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$d */
    /* loaded from: classes7.dex */
    public static final class C7272d<T, R> implements Function {
        public C7272d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudNoteAction.this.uploadFile(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nSaveCloudNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveCloudNoteAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudNoteAction$createLocalFile$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"})
    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$e */
    /* loaded from: classes7.dex */
    public static final class C7273e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f41481e;

        /* renamed from: f */
        public final /* synthetic */ String f41482f;

        public C7273e(String str, String str2) {
            this.f41481e = str;
            this.f41482f = str2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveCloudNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String str = this.f41481e;
            File file = str != null ? new File(str) : null;
            String str2 = this.f41482f;
            FileUtils.copyFile(file, str2 != null ? new File(str2) : null);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$f */
    /* loaded from: classes7.dex */
    public static final class C7274f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f41483e;

        /* renamed from: f */
        public final /* synthetic */ SaveCloudNoteAction f41484f;

        /* renamed from: g */
        public final /* synthetic */ String f41485g;

        public C7274f(String str, SaveCloudNoteAction saveCloudNoteAction, String str2) {
            this.f41483e = str;
            this.f41484f = saveCloudNoteAction;
            this.f41485g = str2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveCloudNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
            if (fileUtils.getFileSize(this.f41483e) <= 0) {
                Debug.INSTANCE.m32053i(this.f41484f.getClass().getSimpleName() + " noteFile path: " + this.f41485g + " \nnoteFile size: " + fileUtils.getFileSize(this.f41485g) + "\nnoteFile exist: " + fileUtils.fileExist(this.f41485g) + "\nlocalPath: " + this.f41483e + "\nlocal size: " + fileUtils.getFileSize(this.f41483e) + "\nlocal exist: " + fileUtils.fileExist(this.f41483e));
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$g */
    /* loaded from: classes7.dex */
    public static final class C7275g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f41486e;

        /* renamed from: f */
        public final /* synthetic */ CloudFileBean f41487f;

        public C7275g(String str, CloudFileBean cloudFileBean) {
            this.f41486e = str;
            this.f41487f = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveCloudNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String str = this.f41486e;
            if (str != null) {
                CloudFileBean.INSTANCE.updateFileInfo(this.f41487f, str);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction$h */
    /* loaded from: classes7.dex */
    public static final class C7276h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileBean f41488e;

        public C7276h(CloudFileBean cloudFileBean) {
            this.f41488e = cloudFileBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull SaveCloudNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41488e;
        }
    }

    public SaveCloudNoteAction(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        this.cloudNote = cloudNote;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable<CloudFileBean> flatMap = createObservable().flatMap(new C7269a()).flatMap(new C7270b()).flatMap(new C7271c()).flatMap(new C7272d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final Observable<CloudFileBean> createCloudFile() {
        if (this.cloudNote.getResource() != null) {
            com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
            CloudResource resource = this.cloudNote.getResource();
            Intrinsics.checkNotNull(resource);
            if (fileUtils.fileExist(resource.getPdfPath())) {
                String combinePath = fileUtils.combinePath(CloudStorageConstants.INSTANCE.getCloudOnyxPath(getDropBoxProvider().getProviderType()), CloudNoteUtils.INSTANCE.getNotePdfPath(this.cloudNote));
                String cloudFileLocalPath = getDropBoxProvider().getCloudStorageRecordProvider().getCloudFileLocalPath(getDropBoxProvider(), combinePath);
                CloudFileBean createFromLocalFile = CloudFileBean.INSTANCE.createFromLocalFile(cloudFileLocalPath);
                createFromLocalFile.setProvider(getDropBoxProvider().getProviderType());
                createFromLocalFile.setCloudFilePath(combinePath);
                createFromLocalFile.setLocalFilePath(cloudFileLocalPath);
                Observable<CloudFileBean> just = Observable.just(createFromLocalFile);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }
        }
        throw new Resources.NotFoundException(this.cloudNote.getTitle());
    }

    @NotNull
    public final Observable<CloudFileBean> createLocalFile(@NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        CloudResource resource = this.cloudNote.getResource();
        Intrinsics.checkNotNull(resource);
        String pdfPath = resource.getPdfPath();
        String localFilePath = cloudFileBean.getLocalFilePath();
        Debug.INSTANCE.m32035d(getClass(), "noteFile:" + pdfPath + ",targetFile:" + localFilePath, new Object[0]);
        Observable<CloudFileBean> map = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C7273e(pdfPath, localFilePath)).doOnNext(new C7274f(localFilePath, this, pdfPath)).doOnNext(new C7275g(localFilePath, cloudFileBean)).map(new C7276h(cloudFileBean));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public Observable<CloudFileBean> ensureFolderCreated(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Observable<CloudFileBean> just = Observable.just(fileBean);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final CloudNote getCloudNote() {
        return this.cloudNote;
    }

    @NotNull
    public abstract Observable<CloudFileBean> upload(@NotNull CloudFileBean fileBean);

    @NotNull
    public final Observable<CloudFileBean> uploadFile(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Debug.INSTANCE.m32035d(getClass(), "upload cloud note: " + fileBean.getCloudFilePath() + ' ' + fileBean.getLocalFilePath(), new Object[0]);
        return upload(fileBean);
    }
}

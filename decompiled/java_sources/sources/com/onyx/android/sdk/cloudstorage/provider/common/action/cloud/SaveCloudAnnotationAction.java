package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.common.utils.AnnotationUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudNoteBook;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H$J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u000e\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u001a\u0010\u0011\u001a\u00020\u00108\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "fileBean", "ensureFolderCreated", BaiduYunConstant.UPLOAD, "cloudFileBean", "createLocalFile", "createCloudFile", "", "", "list", "l", "uploadFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "getCloudAnnotation", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveCloudAnnotationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveCloudAnnotationAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n1855#2,2:103\n*S KotlinDebug\n*F\n+ 1 SaveCloudAnnotationAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudAnnotationAction\n*L\n85#1:103,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class SaveCloudAnnotationAction extends BaseCloudStorageAction<CloudFileBean> {

    @NotNull
    private final CloudAnnotation cloudAnnotation;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudAnnotationAction$a */
    /* loaded from: classes7.dex */
    public static final class C7265a<T, R> implements Function {
        public C7265a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudAnnotationAction.this.createCloudFile();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudAnnotationAction$b */
    /* loaded from: classes7.dex */
    public static final class C7266b<T, R> implements Function {
        public C7266b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudAnnotationAction.this.createLocalFile(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudAnnotationAction$c */
    /* loaded from: classes7.dex */
    public static final class C7267c<T, R> implements Function {
        public C7267c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudAnnotationAction.this.ensureFolderCreated(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudAnnotationAction$d */
    /* loaded from: classes7.dex */
    public static final class C7268d<T, R> implements Function {
        public C7268d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileBean> apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveCloudAnnotationAction.this.uploadFile(it2);
        }
    }

    public SaveCloudAnnotationAction(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        this.cloudAnnotation = cloudAnnotation;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable<CloudFileBean> flatMap = createObservable().flatMap(new C7265a()).flatMap(new C7266b()).flatMap(new C7267c()).flatMap(new C7268d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public Observable<CloudFileBean> createCloudFile() {
        StringBuilder sb = new StringBuilder();
        CloudNoteBook noteBook = this.cloudAnnotation.getNoteBook();
        sb.append(noteBook != null ? m32572l(noteBook.getParentTitles()) : null);
        sb.append(File.separator);
        FileUtils fileUtils = FileUtils.INSTANCE;
        sb.append(fileUtils.buildValidFatFilename(this.cloudAnnotation.getTitle()));
        String combinePath = fileUtils.combinePath(CloudStorageConstants.INSTANCE.getCloudOnyxPath(getGoogleDriverProvider().getProviderType()), fileUtils.combine(sb.toString(), "html"));
        String cloudFileLocalPath = getGoogleDriverProvider().getCloudStorageRecordProvider().getCloudFileLocalPath(getGoogleDriverProvider(), combinePath);
        CloudFileBean createFromLocalFile = CloudFileBean.INSTANCE.createFromLocalFile(cloudFileLocalPath);
        createFromLocalFile.setProvider(getGoogleDriverProvider().getProviderType());
        createFromLocalFile.setCloudFilePath(combinePath);
        createFromLocalFile.setLocalFilePath(cloudFileLocalPath);
        Observable<CloudFileBean> just = Observable.just(createFromLocalFile);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public Observable<CloudFileBean> createLocalFile(@NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        String localFilePath = cloudFileBean.getLocalFilePath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(fileUtils.getParent(localFilePath));
        if (localFilePath != null) {
            onyx.org.apache.commons.io.FileUtils.write(new File(localFilePath), AnnotationUtils.INSTANCE.makeHtmlContent(this.cloudAnnotation), Charset.forName("utf-8"));
        }
        if (!cloudFileBean.getDir() && localFilePath != null) {
            CloudFileBean.INSTANCE.updateFileInfo(cloudFileBean, localFilePath);
        }
        Observable<CloudFileBean> just = Observable.just(cloudFileBean);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public Observable<CloudFileBean> ensureFolderCreated(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Observable<CloudFileBean> just = Observable.just(fileBean);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final CloudAnnotation getCloudAnnotation() {
        return this.cloudAnnotation;
    }

    /* renamed from: l */
    public final String m32572l(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            if (!(str.length() == 0)) {
                sb.append(File.separator);
                sb.append(FileUtils.INSTANCE.filterFileName(str));
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public abstract Observable<CloudFileBean> upload(@NotNull CloudFileBean fileBean);

    public final Observable<CloudFileBean> uploadFile(CloudFileBean fileBean) {
        Debug.INSTANCE.m32035d(getClass(), "upload cloud annotation:" + fileBean.getCloudFilePath() + ' ' + fileBean.getLocalFilePath(), new Object[0]);
        return upload(fileBean);
    }
}

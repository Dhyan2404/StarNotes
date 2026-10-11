package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunCreateFolderRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\"\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J$\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0007\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateParentFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "fileBean", "", "m", "parent", "", "", "folderNameList", "l", C4921e.f26528e, Constant.FOLDER, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunCreateParentFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunCreateParentFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateParentFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1855#2,2:144\n1855#2,2:147\n1#3:146\n*S KotlinDebug\n*F\n+ 1 AliYunCreateParentFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateParentFolderAction\n*L\n81#1:144,2\n131#1:147,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunCreateParentFolderAction extends BaseCloudStorageAction<CloudFileBean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunCreateParentFolderAction$a */
    /* loaded from: classes7.dex */
    public static final class C7184a<T> implements Consumer {
        public C7184a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AliYunCreateParentFolderAction aliYunCreateParentFolderAction = AliYunCreateParentFolderAction.this;
            aliYunCreateParentFolderAction.m32322m(aliYunCreateParentFolderAction.fileBean);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunCreateParentFolderAction$b */
    /* loaded from: classes7.dex */
    public static final class C7185b<T, R> implements Function {
        public C7185b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AliYunCreateParentFolderAction.this.fileBean;
        }
    }

    public AliYunCreateParentFolderAction(@NotNull AliYunProvider aliYunProvider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.aliYunProvider = aliYunProvider;
        this.fileBean = fileBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable map = createObservable().doOnNext(new C7184a()).map(new C7185b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getAliYunProvider() {
        return this.aliYunProvider;
    }

    /* renamed from: l */
    public final CloudFileBean m32321l(CloudFileBean parent, List<String> folderNameList) throws Exception {
        String str;
        List listOf;
        CloudFileBean cloudFileBean = parent;
        for (String str2 : folderNameList) {
            if (cloudFileBean != null) {
                str = cloudFileBean.getUniqueId();
                Intrinsics.checkNotNull(str);
            } else {
                str = "root";
            }
            CloudFileBean cloudFileBean2 = new CloudFileBean(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
            cloudFileBean2.setParentId(str);
            cloudFileBean2.setName(str2);
            AliYunFileInfo execute = new AliYunCreateFolderRequest(this.aliYunProvider, cloudFileBean2).execute();
            String name = execute.getName();
            if (name == null || name.length() == 0) {
                execute.setName(str2);
            }
            cloudFileBean = this.aliYunProvider.toCloudFile(execute);
            if (parent != null) {
                CloudStorageRecordProvider cloudStorageRecordProvider = this.aliYunProvider.getCloudStorageRecordProvider();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(parent);
                cloudStorageRecordProvider.saveCloudFiles(listOf);
            }
        }
        return cloudFileBean;
    }

    /* renamed from: m */
    public final void m32322m(CloudFileBean fileBean) throws Exception {
        Object last;
        CloudFileBean m32321l;
        List<String> m32324o = m32324o(fileBean);
        List<String> m32323n = m32323n(fileBean, m32324o);
        if (m32323n.isEmpty()) {
            return;
        }
        String localFilePath = fileBean.getLocalFilePath();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) m32323n);
        String substringBefore = StringUtils.substringBefore(localFilePath, (String) last);
        Iterator<String> it2 = m32323n.iterator();
        CloudFileBean cloudFileBean = null;
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            int i2 = i + 1;
            String concat = FilenameUtils.concat(substringBefore, it2.next());
            CloudStorageRecordProvider cloudStorageRecordProvider = this.aliYunProvider.getCloudStorageRecordProvider();
            Intrinsics.checkNotNull(concat);
            CloudFileBean queryFileInfoByLocalPath = cloudStorageRecordProvider.queryFileInfoByLocalPath(concat);
            if (queryFileInfoByLocalPath == null) {
                break;
            }
            i = i2;
            cloudFileBean = queryFileInfoByLocalPath;
        }
        if (cloudFileBean != null) {
            fileBean.setParentId(cloudFileBean.getUniqueId());
        }
        if (i < 0 || i >= m32324o.size() || (m32321l = m32321l(cloudFileBean, m32324o.subList(i, m32324o.size()))) == null) {
            return;
        }
        fileBean.setParentId(m32321l.getUniqueId());
    }

    /* renamed from: n */
    public final List<String> m32323n(CloudFileBean fileBean, List<String> folder) {
        Debug.INSTANCE.m32035d(AliYunCreateParentFolderAction.class, "currentFilePath : cloud : " + fileBean.getCloudFilePath() + " local : " + fileBean.getLocalFilePath(), new Object[0]);
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        Iterator<T> it2 = folder.iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            arrayList.add(sb2);
            Debug.INSTANCE.m32035d(AliYunCreateParentFolderAction.class, "currentCreateFoldPath : " + ((Object) sb) + " needCreateFold : " + ((Object) sb), new Object[0]);
            sb.append(File.separator);
        }
        return arrayList;
    }

    /* renamed from: o */
    public final List<String> m32324o(CloudFileBean fileBean) {
        String providerRootPath = fileBean.getProvider().getProviderRootPath();
        Debug.INSTANCE.m32035d(AliYunCreateParentFolderAction.class, fileBean.getCloudFilePath(), new Object[0]);
        ArrayList arrayList = new ArrayList();
        String localFilePath = fileBean.getLocalFilePath();
        for (File file = localFilePath != null ? new File(localFilePath) : null; file != null && !StringUtils.equals(providerRootPath, file.getParent()); file = file.getParentFile()) {
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                String name = parentFile.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                arrayList.add(0, name);
            }
            Debug.INSTANCE.m32035d(AliYunCreateParentFolderAction.class, "folderName:" + file.getName(), new Object[0]);
        }
        arrayList.remove(0);
        return arrayList;
    }
}

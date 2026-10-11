package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunCreateFolderRequest;
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

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\"\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J$\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0007\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\u0014\u0010\u0014\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateParentFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "fileBean", "", "m", "parent", "", "", "folderNameList", "l", C4921e.f26528e, Constant.FOLDER, GoogleApiAvailabilityLight.f29016b, "e", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunCreateParentFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunCreateParentFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateParentFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1855#2,2:142\n1855#2,2:145\n1#3:144\n*S KotlinDebug\n*F\n+ 1 HuaweiYunCreateParentFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateParentFolderAction\n*L\n80#1:142,2\n129#1:145,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunCreateParentFolderAction extends BaseCloudStorageAction<CloudFileBean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunCreateParentFolderAction$a */
    /* loaded from: classes7.dex */
    public static final class C7309a<T> implements Consumer {
        public C7309a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HuaweiYunCreateParentFolderAction huaweiYunCreateParentFolderAction = HuaweiYunCreateParentFolderAction.this;
            huaweiYunCreateParentFolderAction.m32695m(huaweiYunCreateParentFolderAction.fileBean);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunCreateParentFolderAction$b */
    /* loaded from: classes7.dex */
    public static final class C7310b<T, R> implements Function {
        public C7310b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HuaweiYunCreateParentFolderAction.this.fileBean;
        }
    }

    public HuaweiYunCreateParentFolderAction(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.huaweiYunProvider = huaweiYunProvider;
        this.fileBean = fileBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable map = createObservable().doOnNext(new C7309a()).map(new C7310b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final CloudFileBean m32694l(CloudFileBean parent, List<String> folderNameList) throws Exception {
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
            cloudFileBean2.setCreatedAt(System.currentTimeMillis());
            cloudFileBean2.setUpdatedAt(System.currentTimeMillis());
            cloudFileBean = this.huaweiYunProvider.toCloudFile(new HuaweiYunCreateFolderRequest(this.huaweiYunProvider, cloudFileBean2).execute());
            if (parent != null) {
                CloudStorageRecordProvider cloudStorageRecordProvider = this.huaweiYunProvider.getCloudStorageRecordProvider();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(parent);
                cloudStorageRecordProvider.saveCloudFiles(listOf);
            }
        }
        return cloudFileBean;
    }

    /* renamed from: m */
    public final void m32695m(CloudFileBean fileBean) throws Exception {
        Object last;
        CloudFileBean m32694l;
        List<String> m32697o = m32697o(fileBean);
        List<String> m32696n = m32696n(fileBean, m32697o);
        if (m32696n.isEmpty()) {
            return;
        }
        String localFilePath = fileBean.getLocalFilePath();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) m32696n);
        String substringBefore = StringUtils.substringBefore(localFilePath, (String) last);
        Iterator<String> it2 = m32696n.iterator();
        CloudFileBean cloudFileBean = null;
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            int i2 = i + 1;
            String concat = FilenameUtils.concat(substringBefore, it2.next());
            CloudStorageRecordProvider cloudStorageRecordProvider = this.huaweiYunProvider.getCloudStorageRecordProvider();
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
        if (i < 0 || i >= m32697o.size() || (m32694l = m32694l(cloudFileBean, m32697o.subList(i, m32697o.size()))) == null) {
            return;
        }
        fileBean.setParentId(m32694l.getUniqueId());
    }

    /* renamed from: n */
    public final List<String> m32696n(CloudFileBean fileBean, List<String> folder) {
        Debug.INSTANCE.m32035d(HuaweiYunCreateParentFolderAction.class, "currentFilePath : cloud : " + fileBean.getCloudFilePath() + " local : " + fileBean.getLocalFilePath(), new Object[0]);
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        Iterator<T> it2 = folder.iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            arrayList.add(sb2);
            Debug.INSTANCE.m32035d(HuaweiYunCreateParentFolderAction.class, "currentCreateFoldPath : " + ((Object) sb) + " needCreateFold : " + ((Object) sb), new Object[0]);
            sb.append(File.separator);
        }
        return arrayList;
    }

    /* renamed from: o */
    public final List<String> m32697o(CloudFileBean fileBean) {
        String providerRootPath = fileBean.getProvider().getProviderRootPath();
        Debug.INSTANCE.m32035d(HuaweiYunCreateParentFolderAction.class, fileBean.getCloudFilePath(), new Object[0]);
        ArrayList arrayList = new ArrayList();
        String localFilePath = fileBean.getLocalFilePath();
        for (File file = localFilePath != null ? new File(localFilePath) : null; file != null && !StringUtils.equals(providerRootPath, file.getParent()); file = file.getParentFile()) {
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                String name = parentFile.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                arrayList.add(0, name);
            }
            Debug.INSTANCE.m32035d(HuaweiYunCreateParentFolderAction.class, "folderName:" + file.getName(), new Object[0]);
        }
        arrayList.remove(0);
        return arrayList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public HuaweiYunProvider getHuaweiYunProvider() {
        return this.huaweiYunProvider;
    }
}

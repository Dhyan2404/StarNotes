package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0003H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\fR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/SaveCloudFileInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "execute", "fileBean", "", "b", "", "path", "a", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "Ljava/util/List;", "cloudFileList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SaveCloudFileInfoRequest extends RxBaseRequest<List<? extends CloudFileBean>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<CloudFileBean> cloudFileList;

    public SaveCloudFileInfoRequest(@NotNull BaseCloudStorageProvider provider, @NotNull List<CloudFileBean> cloudFileList) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudFileList, "cloudFileList");
        this.provider = provider;
        this.cloudFileList = cloudFileList;
    }

    /* renamed from: a */
    public final CloudFileBean m32626a(String path) {
        Object firstOrNull;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.provider.getCloudStorageRecordProvider().loadCloudFileList(cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_LOCAL_FILE_PATH, path)).setVarargOrdering(couchUtils.getOrdering("updatedAt", false))));
        return (CloudFileBean) firstOrNull;
    }

    /* renamed from: b */
    public final void m32627b(CloudFileBean fileBean) {
        List listOf;
        CloudStorageRecordProvider cloudStorageRecordProvider = this.provider.getCloudStorageRecordProvider();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(fileBean);
        cloudStorageRecordProvider.saveCloudFiles(listOf);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<? extends CloudFileBean> execute() {
        String parent;
        CloudFileBean m32626a;
        for (CloudFileBean cloudFileBean : this.cloudFileList) {
            if (StringUtils.isEmpty(cloudFileBean.getUniqueId())) {
                cloudFileBean.setSyncStatus(SyncStatus.NEW_FROM_LOCAL);
                String localFilePath = cloudFileBean.getLocalFilePath();
                CloudFileBean m32626a2 = localFilePath != null ? m32626a(localFilePath) : null;
                if (m32626a2 == null) {
                    String computeMD5 = FileUtils.INSTANCE.computeMD5(cloudFileBean.getLocalFilePath());
                    if (computeMD5 == null) {
                        computeMD5 = "";
                    }
                    cloudFileBean.setUniqueId(computeMD5);
                } else {
                    cloudFileBean.setUniqueId(m32626a2.getUniqueId());
                }
                String localFilePath2 = cloudFileBean.getLocalFilePath();
                if (localFilePath2 != null && (parent = new File(localFilePath2).getParent()) != null && (m32626a = m32626a(parent)) != null) {
                    cloudFileBean.setParentId(m32626a.getUniqueId());
                }
            }
            m32627b(cloudFileBean);
            Debug.INSTANCE.m32038d(SaveCloudFileInfoRequest.class.getName(), cloudFileBean.getUniqueId() + " save cloud file:" + cloudFileBean.getLocalFilePath() + ' ' + cloudFileBean.getCloudFilePath(), new Object[0]);
        }
        return this.cloudFileList;
    }
}

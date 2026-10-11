package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.data.common.data.SelectionModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SelectionHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\u001d\u001a\u00020\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u0004¢\u0006\u0004\b'\u0010(J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\t2\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u001e\u0010\u000f\u001a\u00020\u000e2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J$\u0010\u0017\u001a\u00020\u000e2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\t2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\tH\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001eR\"\u0010&\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "execute", "", "key", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "d", "cloudFile", "", "e", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "operationDataMutableList", "deletedFileDetailResult", "", "b", "", "cloudFileBeans", "c", "fileBean", "a", "list", "excludeList", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.STRING_SIG, "rootParentId", "", Constants.HASIDCALL_INDEX_SIG, "getDeleteLocalFile", Constants.BOOLEAN_VALUE_SIG, "setDeleteLocalFile", "(Z)V", "deleteLocalFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteLocalCloudFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteLocalCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,166:1\n1855#2,2:167\n1855#2,2:169\n766#2:171\n857#2,2:172\n1855#2,2:174\n*S KotlinDebug\n*F\n+ 1 DeleteLocalCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest\n*L\n75#1:167,2\n109#1:169,2\n129#1:171\n129#1:172,2\n130#1:174,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DeleteLocalCloudFileRequest extends RxBaseRequest<CloudFileListResult> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileOperation fileOperation;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String rootParentId;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean deleteLocalFile;

    public DeleteLocalCloudFileRequest(@NotNull BaseCloudStorageProvider provider, @NotNull CloudFileOperation fileOperation, @NotNull String rootParentId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        Intrinsics.checkNotNullParameter(rootParentId, "rootParentId");
        this.provider = provider;
        this.fileOperation = fileOperation;
        this.rootParentId = rootParentId;
        this.deleteLocalFile = true;
    }

    /* renamed from: a */
    public final void m32612a(CloudFileBean fileBean) {
        if (StringUtils.isEmpty(fileBean.getLocalFilePath())) {
            Debug.INSTANCE.m32035d(DeleteLocalCloudFileRequest.class, "can't delete non-exist net disk local file", new Object[0]);
            return;
        }
        String localFilePath = fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        FileUtils.deleteQuietly(new File(localFilePath));
    }

    /* renamed from: b */
    public final void m32613b(List<CloudFileOperation.OperationData> operationDataMutableList, CloudFileListResult deletedFileDetailResult) {
        List<CloudFileBean> listOf;
        for (CloudFileOperation.OperationData operationData : operationDataMutableList) {
            CloudFileBean queryFileInfo = this.provider.getCloudStorageRecordProvider().queryFileInfo(operationData.getOrigin());
            if (queryFileInfo != null) {
                List<CloudFileBean> ensureList = deletedFileDetailResult.ensureList();
                ensureList.add(queryFileInfo);
                listOf = CollectionsKt__CollectionsJVMKt.listOf(queryFileInfo);
                ensureList.addAll(m32614c(listOf));
                String origin = operationData.getOrigin();
                if (origin != null) {
                    this.provider.getCloudStorageRecordProvider().delete(origin);
                }
                if (this.deleteLocalFile) {
                    m32612a(queryFileInfo);
                }
            }
        }
    }

    /* renamed from: c */
    public final List<CloudFileBean> m32614c(List<CloudFileBean> cloudFileBeans) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : cloudFileBeans) {
            if (((CloudFileBean) obj).getDir()) {
                arrayList2.add(obj);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            this.provider.getCloudStorageRecordProvider().queryAllChildList((CloudFileBean) it2.next(), arrayList, true);
        }
        return arrayList;
    }

    /* renamed from: d */
    public final CloudFileBean m32615d(String key) {
        CloudFileBean queryFileInfo = this.provider.getCloudStorageRecordProvider().queryFileInfo(key);
        if (queryFileInfo != null || !StringUtils.isEmpty(key)) {
            return queryFileInfo;
        }
        CloudFileBean cloudFileBean = new CloudFileBean(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
        cloudFileBean.setUniqueId(this.rootParentId);
        cloudFileBean.setCloudFilePath(this.rootParentId);
        return cloudFileBean;
    }

    /* renamed from: e */
    public final List<CloudFileBean> m32616e(CloudFileBean cloudFile) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(this.fileOperation.getProvider().getTitle());
        cloudFileQueryArgs.setParentId(cloudFile.getUniqueId());
        cloudFileQueryArgs.setLimit(Integer.MAX_VALUE);
        return this.provider.getCloudStorageRecordProvider().queryFileInfoResult(cloudFileQueryArgs).ensureList();
    }

    /* renamed from: f */
    public final void m32617f(List<CloudFileBean> list, final List<CloudFileOperation.OperationData> excludeList) {
        CollectionKt.safelyRemove(list, new Comparable<CloudFileBean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteLocalCloudFileRequest$removeExcludeList$1
            @Override // java.lang.Comparable
            public int compareTo(@NotNull CloudFileBean other) {
                List listOf;
                Intrinsics.checkNotNullParameter(other, "other");
                List<CloudFileOperation.OperationData> list2 = excludeList;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(new CloudFileOperation.OperationData(other.getUniqueId()));
                return (other.getDir() || list2.containsAll(listOf)) ? 0 : 1;
            }
        }, false);
    }

    public final boolean getDeleteLocalFile() {
        return this.deleteLocalFile;
    }

    public final void setDeleteLocalFile(boolean z) {
        this.deleteLocalFile = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public CloudFileListResult execute() {
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        Object parseObject = JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<SelectionHelper<JSONObject>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteLocalCloudFileRequest$execute$selectionHelper$1
        });
        Intrinsics.checkNotNull(parseObject);
        for (Map.Entry entry : ((SelectionHelper) parseObject).getSelectedItemMap(new Function1<JSONObject, CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteLocalCloudFileRequest$execute$selectedItemMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileOperation.OperationData invoke(@NotNull JSONObject raw) {
                Intrinsics.checkNotNullParameter(raw, "raw");
                Object parseObject2 = JSONUtils.INSTANCE.parseObject(raw.toJSONString(new JSONWriter.Feature[0]), new TypeReference<CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteLocalCloudFileRequest$execute$selectedItemMap$1.1
                });
                Intrinsics.checkNotNull(parseObject2);
                return (CloudFileOperation.OperationData) parseObject2;
            }
        }).entrySet()) {
            String str = (String) entry.getKey();
            SelectionModel selectionModel = (SelectionModel) entry.getValue();
            if (!selectionModel.getIsSelectedAllMode()) {
                m32613b(selectionModel.getSelectedList(), cloudFileListResult);
            } else {
                Debug debug = Debug.INSTANCE;
                debug.m32052i(DeleteLocalCloudFileRequest.class, "parentId:" + str, new Object[0]);
                CloudFileBean m32615d = m32615d(str);
                if (m32615d == null) {
                    debug.m32052i(DeleteLocalCloudFileRequest.class, "query null parent cloud file", new Object[0]);
                } else {
                    List<CloudFileBean> m32616e = m32616e(m32615d);
                    List<CloudFileBean> list = m32616e;
                    if (!CollectionKt.isNullOrEmpty(list)) {
                        m32617f(m32616e, selectionModel.getSelectedList());
                        cloudFileListResult.ensureList().addAll(list);
                        this.provider.getCloudStorageRecordProvider().delete(list);
                        if (this.deleteLocalFile) {
                            Iterator<T> it2 = m32616e.iterator();
                            while (it2.hasNext()) {
                                m32612a((CloudFileBean) it2.next());
                            }
                        }
                    }
                }
            }
        }
        return cloudFileListResult;
    }
}

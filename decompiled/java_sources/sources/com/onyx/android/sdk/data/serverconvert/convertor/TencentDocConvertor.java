package com.onyx.android.sdk.data.serverconvert.convertor;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cos.CosConfigInfo;
import com.onyx.android.sdk.data.common.cos.CosManager;
import com.onyx.android.sdk.data.common.oss.OssConfigInfo;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertBean;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertComponentBean;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryBean;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryTaskBean;
import com.onyx.android.sdk.data.serverconvert.service.DocConvertExecutor;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u000eH\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;", "Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "cosManager", "Lcom/onyx/android/sdk/data/common/cos/CosManager;", "docConvert", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;", "convertEntry", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "downloadFile", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;", "init", "queryDocConvert", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;", "release", "uploadFile", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TencentDocConvertor implements IDocConvertor {

    @NotNull
    private final ClusterInfo clusterInfo;
    private CosManager cosManager;

    public TencentDocConvertor(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        this.clusterInfo = clusterInfo;
        init();
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    @Nullable
    public DocConvertResponse docConvert(@NotNull ConvertEntry convertEntry) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        CosManager cosManager = null;
        DocConvertComponentBean docConvertComponentBean = new DocConvertComponentBean(null, null, null, null, null, null, 63, null);
        CosManager cosManager2 = this.cosManager;
        if (cosManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosManager");
            cosManager2 = null;
        }
        docConvertComponentBean.setBucket(cosManager2.getCosConfigInfo().getBucket());
        CosManager cosManager3 = this.cosManager;
        if (cosManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosManager");
        } else {
            cosManager = cosManager3;
        }
        docConvertComponentBean.setRegion(cosManager.getCosConfigInfo().getRegion());
        String name = convertEntry.getFile().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        docConvertComponentBean.setFilename(name);
        docConvertComponentBean.setPlatform(convertEntry.getConvertType().getPlatform());
        docConvertComponentBean.setFormat("");
        docConvertComponentBean.setObjectKey(convertEntry.getOssUploadKey());
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(docConvertComponentBean);
        return new DocConvertExecutor().docConvertV2(new DocConvertBean(arrayListOf, "pdf"));
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    public void downloadFile(@NotNull ConvertEntry convertEntry, @NotNull OnFileTransferListener listener) {
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        Intrinsics.checkNotNullParameter(listener, "listener");
        ResManager resManager = ResManager.INSTANCE;
        File externalCacheDir = resManager.getAppContext().getExternalCacheDir();
        Intrinsics.checkNotNull(externalCacheDir);
        String absolutePath = externalCacheDir.getAbsolutePath();
        String generateConvertDocName = convertEntry.generateConvertDocName();
        CosManager cosManager = this.cosManager;
        if (cosManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosManager");
            cosManager = null;
        }
        CosManager cosManager2 = cosManager;
        Context appContext = resManager.getAppContext();
        String ossDownloadKey = convertEntry.getOssDownloadKey();
        if (ossDownloadKey == null) {
            ossDownloadKey = "";
        }
        Intrinsics.checkNotNull(absolutePath);
        cosManager2.downLoadFile(appContext, ossDownloadKey, absolutePath, generateConvertDocName, listener);
    }

    @NotNull
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    public void init() {
        CosConfigInfo cosConfigInfo = new CosConfigInfo();
        OssConfigInfo ossConfig = this.clusterInfo.getOssConfig();
        String cosImmBucket = ossConfig.getCosImmBucket();
        if (cosImmBucket != null) {
            cosConfigInfo.setBucket(cosImmBucket);
        }
        String cosImmEndpoint = ossConfig.getCosImmEndpoint();
        if (cosImmEndpoint != null) {
            cosConfigInfo.setRegion(cosImmEndpoint);
        }
        this.cosManager = new CosManager(cosConfigInfo);
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    @Nullable
    public QueryResponse queryDocConvert(@NotNull ConvertEntry convertEntry) {
        List listOf;
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        CosManager cosManager = null;
        QueryTaskBean queryTaskBean = new QueryTaskBean(null, null, null, null, 15, null);
        queryTaskBean.setTicket(convertEntry.getTicket());
        CosManager cosManager2 = this.cosManager;
        if (cosManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosManager");
            cosManager2 = null;
        }
        queryTaskBean.setBucket(cosManager2.getCosConfigInfo().getBucket());
        CosManager cosManager3 = this.cosManager;
        if (cosManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosManager");
        } else {
            cosManager = cosManager3;
        }
        queryTaskBean.setRegion(cosManager.getCosConfigInfo().getRegion());
        queryTaskBean.setPlatform(convertEntry.getConvertType().getPlatform());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(queryTaskBean);
        return new DocConvertExecutor().queryConvertResultV2(new QueryBean(listOf));
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    public void release() {
        CosManager cosManager = this.cosManager;
        if (cosManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosManager");
            cosManager = null;
        }
        cosManager.release();
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    public void uploadFile(@NotNull ConvertEntry convertEntry, @NotNull OnFileTransferListener listener) {
        String extension;
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        Intrinsics.checkNotNullParameter(listener, "listener");
        File file = convertEntry.getFile();
        if (!file.exists()) {
            convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            OnFileTransferListener.DefaultImpls.onResult$default(listener, false, null, null, 6, null);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(UUIDUtils.INSTANCE.rawUUID());
        sb.append('.');
        extension = FilesKt__UtilsKt.getExtension(file);
        sb.append(extension);
        String sb2 = sb.toString();
        String absolutePath = file.getAbsolutePath();
        CosManager cosManager = this.cosManager;
        if (cosManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cosManager");
            cosManager = null;
        }
        Intrinsics.checkNotNull(absolutePath);
        cosManager.upload(sb2, absolutePath, listener);
    }
}

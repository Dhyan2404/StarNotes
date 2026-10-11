package com.onyx.android.sdk.data.serverconvert.convertor;

import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.onyx.android.sdk.data.common.oss.OssConfig;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0010H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u0016\u001a\u00020\u0010H\u0016J,\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00100\u001dH\u0002J\u0018\u0010\u001e\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;", "Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "isAbort", "Ljava/util/concurrent/atomic/AtomicBoolean;", "rxOSSManager", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "docConvert", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;", "convertEntry", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "downloadFile", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;", "init", "queryDocConvert", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;", "release", "saveStream", "", "input", "Ljava/io/InputStream;", Constants.ELEMNAME_OUTPUT_STRING, "Ljava/io/FileOutputStream;", "Lkotlin/Function1;", "uploadFile", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAliDocConvertor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliDocConvertor.kt\ncom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"})
/* loaded from: classes7.dex */
public final class AliDocConvertor implements IDocConvertor {

    @NotNull
    public static final String FILE_TEMP_NAME_SUFFIX = ".1";

    @NotNull
    private final ClusterInfo clusterInfo;

    @NotNull
    private AtomicBoolean isAbort;
    private RxOSSManager rxOSSManager;

    public AliDocConvertor(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        this.clusterInfo = clusterInfo;
        this.isAbort = new AtomicBoolean(false);
        init();
    }

    private final long saveStream(InputStream input, FileOutputStream output, Function1<? super Long, Unit> listener) {
        byte[] bArr = new byte[65536];
        long j = 0;
        while (true) {
            int read = input.read(bArr);
            if (read == -1) {
                return j;
            }
            output.write(bArr, 0, read);
            j += read;
            listener.invoke(Long.valueOf(j));
        }
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    @Nullable
    public DocConvertResponse docConvert(@NotNull ConvertEntry convertEntry) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        RxOSSManager rxOSSManager = null;
        DocConvertComponentBean docConvertComponentBean = new DocConvertComponentBean(null, null, null, null, null, null, 63, null);
        RxOSSManager rxOSSManager2 = this.rxOSSManager;
        if (rxOSSManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rxOSSManager");
            rxOSSManager2 = null;
        }
        rxOSSManager2.getOssConfig().getBucketName();
        RxOSSManager rxOSSManager3 = this.rxOSSManager;
        if (rxOSSManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rxOSSManager");
            rxOSSManager3 = null;
        }
        String bucketName = rxOSSManager3.getOssConfig().getBucketName();
        if (bucketName == null) {
            bucketName = "";
        }
        docConvertComponentBean.setBucket(bucketName);
        RxOSSManager rxOSSManager4 = this.rxOSSManager;
        if (rxOSSManager4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rxOSSManager");
        } else {
            rxOSSManager = rxOSSManager4;
        }
        String endPoint = rxOSSManager.getOssConfig().getEndPoint();
        if (endPoint == null) {
            endPoint = "";
        }
        docConvertComponentBean.setRegion(endPoint);
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
    public void downloadFile(@NotNull ConvertEntry convertEntry, @NotNull final OnFileTransferListener listener) {
        FileUtils fileUtils;
        InputStream objectContent;
        GetObjectResult syncGetObject;
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        Intrinsics.checkNotNullParameter(listener, "listener");
        File externalCacheDir = ResManager.INSTANCE.getAppContext().getExternalCacheDir();
        Intrinsics.checkNotNull(externalCacheDir);
        Paths paths = Paths.INSTANCE;
        String absolutePath = externalCacheDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        File file = paths.append(paths.toPath(absolutePath), convertEntry.generateConvertDocName()).toFile();
        Intrinsics.checkNotNullExpressionValue(file, "toFile(...)");
        GetObjectResult getObjectResult = null;
        GetObjectBean getObjectBean = new GetObjectBean(convertEntry.getOssDownloadKey(), null, 2, null);
        try {
            try {
                RxOSSManager rxOSSManager = this.rxOSSManager;
                if (rxOSSManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("rxOSSManager");
                    rxOSSManager = null;
                }
                syncGetObject = rxOSSManager.syncGetObject(getObjectBean);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            final long contentLength = syncGetObject.getContentLength();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                InputStream objectContent2 = syncGetObject.getObjectContent();
                Intrinsics.checkNotNullExpressionValue(objectContent2, "getObjectContent(...)");
                saveStream(objectContent2, fileOutputStream, new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.data.serverconvert.convertor.AliDocConvertor$downloadFile$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long j) {
                        AtomicBoolean atomicBoolean;
                        atomicBoolean = AliDocConvertor.this.isAbort;
                        if (!atomicBoolean.get()) {
                            listener.onProgress(j, contentLength);
                            return;
                        }
                        throw new InterruptedIOException();
                    }
                });
                if (file.length() == contentLength) {
                    String absolutePath2 = file.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                    convertEntry.setDownloadLocalPath(absolutePath2);
                    listener.onResult(true, convertEntry.getOssUploadKey(), convertEntry.getDownloadLocalPath());
                } else {
                    convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
                    OnFileTransferListener.DefaultImpls.onResult$default(listener, false, null, null, 6, null);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                fileUtils = FileUtils.INSTANCE;
                objectContent = syncGetObject.getObjectContent();
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(fileOutputStream, th2);
                    throw th3;
                }
            }
        } catch (Exception e2) {
            e = e2;
            getObjectResult = syncGetObject;
            e.printStackTrace();
            convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            OnFileTransferListener.DefaultImpls.onResult$default(listener, false, null, null, 6, null);
            if (getObjectResult != null) {
                fileUtils = FileUtils.INSTANCE;
                objectContent = getObjectResult.getObjectContent();
                fileUtils.closeQuietly(objectContent);
            }
            return;
        } catch (Throwable th4) {
            th = th4;
            getObjectResult = syncGetObject;
            if (getObjectResult != null) {
                FileUtils.INSTANCE.closeQuietly(getObjectResult.getObjectContent());
            }
            throw th;
        }
        fileUtils.closeQuietly(objectContent);
    }

    @NotNull
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    public void init() {
        OssConfig docConvertOssConfig = OssConfig.INSTANCE.docConvertOssConfig(this.clusterInfo);
        docConvertOssConfig.setToken(AccountDataBundle.INSTANCE.getAccountToken());
        this.rxOSSManager = new RxOSSManager(docConvertOssConfig);
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    @Nullable
    public QueryResponse queryDocConvert(@NotNull ConvertEntry convertEntry) {
        List listOf;
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        RxOSSManager rxOSSManager = null;
        QueryTaskBean queryTaskBean = new QueryTaskBean(null, null, null, null, 15, null);
        queryTaskBean.setTicket(convertEntry.getTicket());
        RxOSSManager rxOSSManager2 = this.rxOSSManager;
        if (rxOSSManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rxOSSManager");
            rxOSSManager2 = null;
        }
        String bucketName = rxOSSManager2.getOssConfig().getBucketName();
        if (bucketName == null) {
            bucketName = "";
        }
        queryTaskBean.setBucket(bucketName);
        RxOSSManager rxOSSManager3 = this.rxOSSManager;
        if (rxOSSManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rxOSSManager");
        } else {
            rxOSSManager = rxOSSManager3;
        }
        String endPoint = rxOSSManager.getOssConfig().getEndPoint();
        queryTaskBean.setRegion(endPoint != null ? endPoint : "");
        queryTaskBean.setPlatform(convertEntry.getConvertType().getPlatform());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(queryTaskBean);
        return new DocConvertExecutor().queryConvertResultV2(new QueryBean(listOf));
    }

    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    public void release() {
        this.isAbort.set(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:3:0x000a, B:6:0x0011, B:7:0x0015, B:9:0x002e, B:14:0x003a, B:17:0x0044, B:19:0x004b, B:20:0x0050), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044 A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:3:0x000a, B:6:0x0011, B:7:0x0015, B:9:0x002e, B:14:0x003a, B:17:0x0044, B:19:0x004b, B:20:0x0050), top: B:2:0x000a }] */
    @Override // com.onyx.android.sdk.data.serverconvert.convertor.IDocConvertor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void uploadFile(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r9, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener r10) {
        /*
            r8 = this;
            java.lang.String r1 = "convertEntry"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r1)
            java.lang.String r1 = "listener"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r1)
            com.onyx.android.sdk.data.common.oss.RxOSSManager r1 = r8.rxOSSManager     // Catch: java.lang.Exception -> L60
            r2 = 0
            java.lang.String r3 = "rxOSSManager"
            if (r1 != 0) goto L15
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)     // Catch: java.lang.Exception -> L60
            r1 = r2
        L15:
            com.onyx.android.sdk.base.utils.ResManager r4 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE     // Catch: java.lang.Exception -> L60
            android.content.Context r4 = r4.getAppContext()     // Catch: java.lang.Exception -> L60
            java.io.File r5 = r9.getFile()     // Catch: java.lang.Exception -> L60
            java.lang.String r5 = r5.getAbsolutePath()     // Catch: java.lang.Exception -> L60
            java.lang.String r6 = "getAbsolutePath(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)     // Catch: java.lang.Exception -> L60
            java.lang.String r4 = r1.syncUploadFile(r4, r5)     // Catch: java.lang.Exception -> L60
            if (r4 == 0) goto L37
            boolean r1 = kotlin.text.StringsKt.isBlank(r4)     // Catch: java.lang.Exception -> L60
            if (r1 == 0) goto L35
            goto L37
        L35:
            r1 = 0
            goto L38
        L37:
            r1 = 1
        L38:
            if (r1 == 0) goto L44
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 0
            r2 = r10
            com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener.DefaultImpls.onResult$default(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L60
            return
        L44:
            r9.setOssUploadKey(r4)     // Catch: java.lang.Exception -> L60
            com.onyx.android.sdk.data.common.oss.RxOSSManager r0 = r8.rxOSSManager     // Catch: java.lang.Exception -> L60
            if (r0 != 0) goto L4f
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)     // Catch: java.lang.Exception -> L60
            goto L50
        L4f:
            r2 = r0
        L50:
            java.lang.String r0 = r2.getOssUrl(r4)     // Catch: java.lang.Exception -> L60
            r9.setOssUploadUrl(r0)     // Catch: java.lang.Exception -> L60
            r3 = 1
            r5 = 0
            r6 = 4
            r7 = 0
            r2 = r10
            com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener.DefaultImpls.onResult$default(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L60
            return
        L60:
            com.onyx.android.sdk.base.utils.Debug r0 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "upload failed! path:"
            r1.append(r2)
            java.io.File r2 = r9.getFile()
            java.lang.String r2 = r2.getAbsolutePath()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.m32037d(r1)
            com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType r0 = com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType.RESULT_FAILED
            r9.setStatus(r0)
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 0
            r2 = r10
            com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener.DefaultImpls.onResult$default(r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.serverconvert.convertor.AliDocConvertor.uploadFile(com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry, com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener):void");
    }
}

package com.onyx.android.sdk.data.common.oss;

import android.content.Context;
import android.util.Log;
import androidx.core.net.MailTo;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.OSS;
import com.alibaba.sdk.android.oss.OSSClient;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.internal.OSSAsyncTask;
import com.alibaba.sdk.android.oss.model.AppendObjectRequest;
import com.alibaba.sdk.android.oss.model.AppendObjectResult;
import com.alibaba.sdk.android.oss.model.CopyObjectRequest;
import com.alibaba.sdk.android.oss.model.CopyObjectResult;
import com.alibaba.sdk.android.oss.model.DeleteMultipleObjectRequest;
import com.alibaba.sdk.android.oss.model.DeleteMultipleObjectResult;
import com.alibaba.sdk.android.oss.model.DeleteObjectRequest;
import com.alibaba.sdk.android.oss.model.DeleteObjectResult;
import com.alibaba.sdk.android.oss.model.GetObjectRequest;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.alibaba.sdk.android.oss.model.HeadObjectRequest;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.ListObjectsRequest;
import com.alibaba.sdk.android.oss.model.ListObjectsResult;
import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.alibaba.sdk.android.oss.model.PutObjectRequest;
import com.alibaba.sdk.android.oss.model.PutObjectResult;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020 H\u0002J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006J\u000e\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&H\u0002J6\u0010(\u001a\u000e\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H+0)\"\b\b\u0000\u0010**\u00020,\"\b\b\u0001\u0010+*\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H+0/H\u0002J,\u00100\u001a\b\u0012\u0004\u0012\u0002010&2\u0006\u0010\n\u001a\u00020'2\f\u00102\u001a\b\u0012\u0004\u0012\u00020\u0006032\u0006\u00104\u001a\u000205H\u0002J\u000e\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u0006J,\u00109\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020;0:0&2\u0006\u0010\n\u001a\u00020'2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010<\u001a\u00020\u0015H\u0002J\u001e\u0010=\u001a\b\u0012\u0004\u0012\u00020>0&2\u0006\u0010\n\u001a\u00020'2\u0006\u0010<\u001a\u00020\u0015H\u0002J\u001e\u0010?\u001a\b\u0012\u0004\u0012\u00020@0&2\u0006\u0010\n\u001a\u00020'2\u0006\u0010A\u001a\u00020\u0019H\u0002J\u001e\u0010B\u001a\b\u0012\u0004\u0012\u00020C0&2\u0006\u0010\n\u001a\u00020'2\u0006\u0010D\u001a\u00020\u001cH\u0002J\u001e\u0010E\u001a\b\u0012\u0004\u0012\u00020F0&2\u0006\u0010\n\u001a\u00020'2\u0006\u0010G\u001a\u00020\u001fH\u0002J\u000e\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u0006J\"\u0010K\u001a\b\u0012\u0004\u0012\u0002010&2\f\u00102\u001a\b\u0012\u0004\u0012\u00020\u0006032\u0006\u00104\u001a\u000205J\u000e\u0010L\u001a\u0002052\u0006\u0010M\u001a\u00020\u0006J\b\u0010N\u001a\u00020'H\u0002J\u0014\u0010O\u001a\b\u0012\u0004\u0012\u00020@0&2\u0006\u0010\u0012\u001a\u00020\u001aJ\u001a\u0010P\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020;0:0&2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u00020\u0006J\u000e\u0010S\u001a\u00020\u00062\u0006\u0010M\u001a\u00020\u0006J\u0018\u0010T\u001a\u00020\u001f2\u0006\u0010U\u001a\u00020\u00062\u0006\u0010V\u001a\u00020\u0006H\u0002J\u0014\u0010W\u001a\b\u0012\u0004\u0012\u00020C0&2\u0006\u0010\u0012\u001a\u00020\u001aJ\u000e\u0010X\u001a\u0002052\u0006\u0010Y\u001a\u00020\u0003JM\u0010Z\u001a\u00020[\"\b\b\u0000\u0010**\u00020,\"\b\b\u0001\u0010+*\u00020\u00012\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H+0/2\b\u0010\\\u001a\u0004\u0018\u0001H*2\b\u0010]\u001a\u0004\u0018\u00010^2\b\u0010_\u001a\u0004\u0018\u00010`H\u0002¢\u0006\u0002\u0010aJ\u0010\u0010b\u001a\u0002012\u0006\u0010c\u001a\u000201H\u0002J\u001c\u0010d\u001a\u00020[2\b\u0010]\u001a\u0004\u0018\u00010^2\b\u0010_\u001a\u0004\u0018\u00010`H\u0002J\u0014\u0010e\u001a\b\u0012\u0004\u0012\u00020F0&2\u0006\u0010\u0012\u001a\u00020 J\u000e\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\u0013J\u0014\u0010i\u001a\u0002012\f\u0010j\u001a\b\u0012\u0004\u0012\u00020\u000603J\u000e\u0010k\u001a\u00020@2\u0006\u0010\u0012\u001a\u00020\u001aJ\u0014\u0010l\u001a\b\u0012\u0004\u0012\u00020;0:2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010m\u001a\u00020C2\u0006\u0010\u0012\u001a\u00020\u001aJJ\u0010n\u001a\u0002072\u0006\u0010\u0012\u001a\u00020 2:\b\u0002\u0010o\u001a4\u0012\u0013\u0012\u00110q¢\u0006\f\br\u0012\b\bs\u0012\u0004\b\b(t\u0012\u0013\u0012\u00110q¢\u0006\f\br\u0012\b\bs\u0012\u0004\b\b(u\u0012\u0004\u0012\u00020[\u0018\u00010pJ\u0018\u0010v\u001a\u0004\u0018\u00010\u00062\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\u001fJ\u0018\u0010v\u001a\u0004\u0018\u00010\u00062\u0006\u0010w\u001a\u00020x2\u0006\u0010V\u001a\u00020\u0006J*\u0010v\u001a\u0004\u0018\u00010\u00062\u0006\u0010w\u001a\u00020x2\u0006\u0010U\u001a\u00020\u00062\u0006\u0010V\u001a\u00020\u00062\b\u0010z\u001a\u0004\u0018\u00010{R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\t¨\u0006|"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "", "ossConfig", "Lcom/onyx/android/sdk/data/common/oss/OssConfig;", "(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V", "clientEndPoint", "", "ossBucketName", "getOssBucketName", "()Ljava/lang/String;", "ossClient", "Lcom/alibaba/sdk/android/oss/OSSClient;", "getOssConfig", "()Lcom/onyx/android/sdk/data/common/oss/OssConfig;", "ossEndPoint", "getOssEndPoint", "buildAppendObjectResult", "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;", "objectBean", "Lcom/onyx/android/sdk/data/common/oss/AppendObjectBean;", "buildGetObjectListRequest", "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;", "listObjectBean", "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;", "buildGetObjectRequest", "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;", "Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;", "buildHeadObjectRequest", "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;", "buildOssClient", "buildPutObjectRequest", "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;", "Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;", "copySmallFile", "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;", "sourceKey", "destKey", "createClientObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/alibaba/sdk/android/oss/OSS;", "createCompletedCallback", "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;", "R", "T", "Lcom/alibaba/sdk/android/oss/model/OSSRequest;", "Lcom/alibaba/sdk/android/oss/model/OSSResult;", MailTo.f5529g, "Lio/reactivex/rxjava3/subjects/Subject;", "createDeleteMultipleObjectObservable", "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;", "objectKeys", "", "isQuiet", "", "createFolder", "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;", "ossObjectKey", "createGetListObjectObservable", "", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "listObjectsRequest", "createGetListObjectObservableImpl", "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;", "createGetObjectObservable", "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;", "getObjectRequest", "createHeadObjectObservable", "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;", "headObjectRequest", "createPutObjectObservable", "Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;", "putObjectRequest", "deleteFile", "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;", "ossFileObjectKey", "deleteMultipleObject", "doesObjectExist", "objectKey", "ensureOssClient", "getObject", "getObjectList", "getOssFileObjectKey", HuaweiYunQueryArgs.FILE_NAME, "getOssUrl", "getPutObjectRequest", "bucketName", "uploadFilePath", "headObject", "isOssConfigChanged", AbstractLogger.CONFIG, "onFailure", "", AbstractLogger.REQUEST, "clientException", "Lcom/alibaba/sdk/android/oss/ClientException;", "serviceException", "Lcom/alibaba/sdk/android/oss/ServiceException;", "(Lio/reactivex/rxjava3/subjects/Subject;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V", "printDeleteResult", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "printException", "putObject", "syncAppendObject", "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;", "appendObjectBean", "syncDeleteMultipleObjects", "ossObjectKeyList", "syncGetObject", "syncGetObjectList", "syncHeadObject", "syncPutObject", "func", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "currentSize", "totalSize", "syncUploadFile", "context", "Landroid/content/Context;", "putRequest", "metadata", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nRxOSSManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxOSSManager.kt\ncom/onyx/android/sdk/data/common/oss/RxOSSManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,468:1\n1#2:469\n*E\n"})
/* loaded from: classes7.dex */
public final class RxOSSManager {

    @Nullable
    private String clientEndPoint;

    @Nullable
    private final String ossBucketName;

    @NotNull
    private OSSClient ossClient;

    @NotNull
    private final OssConfig ossConfig;

    @Nullable
    private final String ossEndPoint;

    public RxOSSManager(@NotNull OssConfig ossConfig) {
        Intrinsics.checkNotNullParameter(ossConfig, "ossConfig");
        this.ossConfig = ossConfig;
        this.ossEndPoint = ossConfig.getEndPoint();
        this.ossBucketName = ossConfig.getBucketName();
        this.clientEndPoint = ossConfig.getEndPoint();
        this.ossClient = buildOssClient(ossConfig);
    }

    private final AppendObjectRequest buildAppendObjectResult(AppendObjectBean objectBean) {
        AppendObjectRequest appendObjectRequest = new AppendObjectRequest(this.ossBucketName, objectBean.getOssFileObjectKey(), objectBean.getUploadData());
        appendObjectRequest.setMetadata(objectBean.getMetadata());
        appendObjectRequest.setPosition(objectBean.getPosition());
        appendObjectRequest.setProgressCallback(objectBean.getProgressCallback());
        return appendObjectRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListObjectsRequest buildGetObjectListRequest(GetListObjectBean listObjectBean) {
        ListObjectsRequest listObjectsRequest = new ListObjectsRequest(this.ossBucketName);
        listObjectBean.updateListObjectsRequest(listObjectsRequest);
        return listObjectsRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetObjectRequest buildGetObjectRequest(GetObjectBean objectBean) {
        GetObjectRequest getObjectRequest = new GetObjectRequest(this.ossBucketName, objectBean.getOssFileObjectKey());
        if (objectBean.getRange() != null) {
            getObjectRequest.setRange(objectBean.getRange());
        }
        return getObjectRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HeadObjectRequest buildHeadObjectRequest(GetObjectBean objectBean) {
        return new HeadObjectRequest(this.ossBucketName, objectBean.getOssFileObjectKey());
    }

    private final OSSClient buildOssClient(OssConfig ossConfig) {
        OnyxOSSFederationCredentialProvider onyxOSSFederationCredentialProvider = new OnyxOSSFederationCredentialProvider(ossConfig);
        ClientConfiguration defaultConf = ClientConfiguration.getDefaultConf();
        ClusterInfo clusterInfo = ossConfig.getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        defaultConf.setHttpDnsEnable(clusterInfo.isChineseCluster());
        this.clientEndPoint = ossConfig.getEndPoint();
        return new OSSClient(ResManager.INSTANCE.getAppContext(), this.clientEndPoint, onyxOSSFederationCredentialProvider, defaultConf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PutObjectRequest buildPutObjectRequest(PutObjectBean objectBean) {
        PutObjectRequest putObjectRequest = new PutObjectRequest(this.ossBucketName, objectBean.getOssFileObjectKey(), objectBean.getUploadFilePath());
        if (objectBean.getMetadata() != null) {
            putObjectRequest.setMetadata(objectBean.getMetadata());
        }
        return putObjectRequest;
    }

    private final Observable<OSS> createClientObservable() {
        Observable<OSS> map = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).map(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$createClientObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final OSS apply(@NotNull RxOSSManager it2) {
                OSS ensureOssClient;
                Intrinsics.checkNotNullParameter(it2, "it");
                ensureOssClient = RxOSSManager.this.ensureOssClient();
                return ensureOssClient;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    private final <R extends OSSRequest, T extends OSSResult> OSSCompletedCallback<R, T> createCompletedCallback(final Subject<T> subject) {
        return (OSSCompletedCallback<R, T>) new OSSCompletedCallback<R, T>() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$createCompletedCallback$1
            /* JADX WARN: Incorrect types in method signature: (TR;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V */
            @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
            public void onFailure(@NotNull OSSRequest request, @Nullable ClientException clientException, @Nullable ServiceException serviceException) {
                Intrinsics.checkNotNullParameter(request, "request");
                this.onFailure(subject, request, clientException, serviceException);
            }

            /* JADX WARN: Incorrect types in method signature: (TR;TT;)V */
            @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
            public void onSuccess(@NotNull OSSRequest request, @NotNull OSSResult result) {
                Intrinsics.checkNotNullParameter(request, "request");
                Intrinsics.checkNotNullParameter(result, "result");
                RxjavaKt.done(subject, result);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<DeleteMultipleObjectResult> createDeleteMultipleObjectObservable(OSS ossClient, List<String> objectKeys, boolean isQuiet) {
        BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final OSSAsyncTask<DeleteMultipleObjectResult> asyncDeleteMultipleObject = ossClient.asyncDeleteMultipleObject(new DeleteMultipleObjectRequest(this.ossBucketName, objectKeys, Boolean.valueOf(isQuiet)), createCompletedCallback(create));
        Observable doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.jwl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OSSAsyncTask.this.cancel();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<List<OSSObjectSummary>> createGetListObjectObservable(final OSS ossClient, GetListObjectBean listObjectBean, final ListObjectsRequest listObjectsRequest) {
        final ArrayList arrayList = new ArrayList();
        final ListObjectsResult[] listObjectsResultArr = {null};
        Observable<List<OSSObjectSummary>> map = Observable.just(this).flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$createGetListObjectObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ListObjectsResult> apply(@NotNull RxOSSManager it2) {
                Observable createGetListObjectObservableImpl;
                Intrinsics.checkNotNullParameter(it2, "it");
                createGetListObjectObservableImpl = RxOSSManager.this.createGetListObjectObservableImpl(ossClient, listObjectsRequest);
                return createGetListObjectObservableImpl;
            }
        }).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$createGetListObjectObservable$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull ListObjectsResult listObjectsResult) {
                Intrinsics.checkNotNullParameter(listObjectsResult, "listObjectsResult");
                listObjectsResultArr[0] = listObjectsResult;
                CollectionKt.safeAddAll(arrayList, listObjectsResult.getObjectSummaries());
                listObjectsRequest.setMarker(listObjectsResult.getNextMarker());
            }
        }).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.gwl
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean createGetListObjectObservable$lambda$6;
                createGetListObjectObservable$lambda$6 = RxOSSManager.createGetListObjectObservable$lambda$6(listObjectsResultArr);
                return createGetListObjectObservable$lambda$6;
            }
        }).retry(listObjectBean.getRetryTimes()).takeLast(1).map(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$createGetListObjectObservable$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final List<OSSObjectSummary> apply(@NotNull ListObjectsResult it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return arrayList;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean createGetListObjectObservable$lambda$6(ListObjectsResult[] result) {
        Intrinsics.checkNotNullParameter(result, "$result");
        ListObjectsResult listObjectsResult = result[0];
        if (listObjectsResult != null) {
            Intrinsics.checkNotNull(listObjectsResult);
            if (listObjectsResult.isTruncated()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<ListObjectsResult> createGetListObjectObservableImpl(OSS ossClient, ListObjectsRequest listObjectsRequest) {
        BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final OSSAsyncTask<ListObjectsResult> asyncListObjects = ossClient.asyncListObjects(listObjectsRequest, createCompletedCallback(create));
        Observable doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.lwl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OSSAsyncTask.this.cancel();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<GetObjectResult> createGetObjectObservable(OSS ossClient, GetObjectRequest getObjectRequest) {
        BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final OSSAsyncTask<GetObjectResult> asyncGetObject = ossClient.asyncGetObject(getObjectRequest, createCompletedCallback(create));
        Observable doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.iwl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OSSAsyncTask.this.cancel();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<HeadObjectResult> createHeadObjectObservable(OSS ossClient, HeadObjectRequest headObjectRequest) {
        BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final OSSAsyncTask<HeadObjectResult> asyncHeadObject = ossClient.asyncHeadObject(headObjectRequest, createCompletedCallback(create));
        Observable doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.hwl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OSSAsyncTask.this.cancel();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<PutObjectProgress> createPutObjectObservable(OSS ossClient, PutObjectRequest putObjectRequest) {
        final BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final PutObjectProgress putObjectProgress = new PutObjectProgress();
        putObjectRequest.setProgressCallback(new OSSProgressCallback() { // from class: com.sunia.HTREnginev2.ewl
            @Override // com.alibaba.sdk.android.oss.callback.OSSProgressCallback
            public final void onProgress(Object obj, long j, long j2) {
                RxOSSManager.createPutObjectObservable$lambda$4(BehaviorSubject.this, putObjectProgress, (PutObjectRequest) obj, j, j2);
            }
        });
        final OSSAsyncTask<PutObjectResult> asyncPutObject = ossClient.asyncPutObject(putObjectRequest, new OSSCompletedCallback<PutObjectRequest, PutObjectResult>() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$createPutObjectObservable$ossAsyncTask$1
            @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
            public void onFailure(@Nullable PutObjectRequest request, @Nullable ClientException clientException, @Nullable ServiceException serviceException) {
                this.onFailure(create, request, clientException, serviceException);
            }

            @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
            public void onSuccess(@Nullable PutObjectRequest request, @Nullable PutObjectResult result) {
                create.onComplete();
            }
        });
        Observable doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.fwl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OSSAsyncTask.this.cancel();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createPutObjectObservable$lambda$4(BehaviorSubject subject, PutObjectProgress progress, PutObjectRequest putObjectRequest, long j, long j2) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(progress, "$progress");
        progress.setCurrentSize(j);
        progress.setTotalSize(j2);
        subject.onNext(progress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OSS ensureOssClient() {
        boolean equals$default;
        equals$default = StringsKt__StringsJVMKt.equals$default(this.clientEndPoint, this.ossEndPoint, false, 2, null);
        if (!equals$default) {
            this.ossClient = buildOssClient(this.ossConfig);
        }
        return this.ossClient;
    }

    private final PutObjectRequest getPutObjectRequest(String bucketName, String uploadFilePath) {
        return new PutObjectRequest(bucketName, getOssFileObjectKey(uploadFilePath), uploadFilePath);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R extends OSSRequest, T> void onFailure(Subject<T> subject, R request, ClientException clientException, ServiceException serviceException) {
        printException(clientException, serviceException);
        Exception exc = clientException;
        if (clientException == null) {
            if (serviceException != null) {
                exc = serviceException;
            } else {
                exc = new Exception("onFailure:" + request);
            }
        }
        subject.onError(exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DeleteMultipleObjectResult printDeleteResult(DeleteMultipleObjectResult result) {
        if (CollectionKt.isNonBlank(result.getDeletedObjects())) {
            for (String str : result.getDeletedObjects()) {
                Debug.INSTANCE.m32035d(RxOSSManager.class, "deleted: " + str, new Object[0]);
            }
        }
        if (CollectionKt.isNonBlank(result.getFailedObjects())) {
            for (String str2 : result.getFailedObjects()) {
                Debug.INSTANCE.m32035d(RxOSSManager.class, "failed: " + str2, new Object[0]);
            }
        }
        return result;
    }

    private final void printException(ClientException clientException, ServiceException serviceException) {
        Debug debug = Debug.INSTANCE;
        debug.m32044e(RxOSSManager.class, "clientException: " + clientException, new Object[0]);
        debug.m32044e(RxOSSManager.class, "serviceException: " + serviceException, new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PutObjectResult syncPutObject$default(RxOSSManager rxOSSManager, PutObjectBean putObjectBean, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            function2 = null;
        }
        return rxOSSManager.syncPutObject(putObjectBean, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void syncPutObject$lambda$0(Function2 function2, PutObjectRequest putObjectRequest, long j, long j2) {
        function2.invoke(Long.valueOf(j), Long.valueOf(j2));
    }

    @NotNull
    public final CopyObjectResult copySmallFile(@NotNull String sourceKey, @NotNull String destKey) throws Exception {
        Intrinsics.checkNotNullParameter(sourceKey, "sourceKey");
        Intrinsics.checkNotNullParameter(destKey, "destKey");
        String str = this.ossBucketName;
        CopyObjectResult copyObject = ensureOssClient().copyObject(new CopyObjectRequest(str, sourceKey, str, destKey));
        Intrinsics.checkNotNullExpressionValue(copyObject, "copyObject(...)");
        return copyObject;
    }

    @NotNull
    public final PutObjectResult createFolder(@NotNull String ossObjectKey) throws Exception {
        Intrinsics.checkNotNullParameter(ossObjectKey, "ossObjectKey");
        return syncPutObject$default(this, new PutObjectBean(null, null, ossObjectKey, 3, null), null, 2, null);
    }

    @NotNull
    public final DeleteObjectResult deleteFile(@NotNull String ossFileObjectKey) throws ClientException, ServiceException {
        Intrinsics.checkNotNullParameter(ossFileObjectKey, "ossFileObjectKey");
        DeleteObjectResult deleteObject = ensureOssClient().deleteObject(new DeleteObjectRequest(this.ossBucketName, ossFileObjectKey));
        Intrinsics.checkNotNullExpressionValue(deleteObject, "deleteObject(...)");
        return deleteObject;
    }

    @NotNull
    public final Observable<DeleteMultipleObjectResult> deleteMultipleObject(@NotNull final List<String> objectKeys, final boolean isQuiet) {
        Intrinsics.checkNotNullParameter(objectKeys, "objectKeys");
        Observable<DeleteMultipleObjectResult> map = createClientObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$deleteMultipleObject$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends DeleteMultipleObjectResult> apply(@NotNull OSS oss) {
                Observable createDeleteMultipleObjectObservable;
                Intrinsics.checkNotNullParameter(oss, "oss");
                createDeleteMultipleObjectObservable = RxOSSManager.this.createDeleteMultipleObjectObservable(oss, objectKeys, isQuiet);
                return createDeleteMultipleObjectObservable;
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$deleteMultipleObject$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final DeleteMultipleObjectResult apply(@NotNull DeleteMultipleObjectResult result) {
                DeleteMultipleObjectResult printDeleteResult;
                Intrinsics.checkNotNullParameter(result, "result");
                printDeleteResult = RxOSSManager.this.printDeleteResult(result);
                return printDeleteResult;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean doesObjectExist(@NotNull String objectKey) throws ClientException, ServiceException {
        Intrinsics.checkNotNullParameter(objectKey, "objectKey");
        return ensureOssClient().doesObjectExist(this.ossBucketName, objectKey);
    }

    @NotNull
    public final Observable<GetObjectResult> getObject(@NotNull final GetObjectBean objectBean) {
        Intrinsics.checkNotNullParameter(objectBean, "objectBean");
        Observable flatMap = createClientObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$getObject$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends GetObjectResult> apply(@NotNull OSS oss) {
                GetObjectRequest buildGetObjectRequest;
                Observable createGetObjectObservable;
                Intrinsics.checkNotNullParameter(oss, "oss");
                RxOSSManager rxOSSManager = RxOSSManager.this;
                buildGetObjectRequest = rxOSSManager.buildGetObjectRequest(objectBean);
                createGetObjectObservable = rxOSSManager.createGetObjectObservable(oss, buildGetObjectRequest);
                return createGetObjectObservable;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final Observable<List<OSSObjectSummary>> getObjectList(@NotNull final GetListObjectBean listObjectBean) {
        Intrinsics.checkNotNullParameter(listObjectBean, "listObjectBean");
        Observable flatMap = createClientObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$getObjectList$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends List<OSSObjectSummary>> apply(@NotNull OSS oss) {
                ListObjectsRequest buildGetObjectListRequest;
                Observable createGetListObjectObservable;
                Intrinsics.checkNotNullParameter(oss, "oss");
                RxOSSManager rxOSSManager = RxOSSManager.this;
                GetListObjectBean getListObjectBean = listObjectBean;
                buildGetObjectListRequest = rxOSSManager.buildGetObjectListRequest(getListObjectBean);
                createGetListObjectObservable = rxOSSManager.createGetListObjectObservable(oss, getListObjectBean, buildGetObjectListRequest);
                return createGetListObjectObservable;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final String getOssBucketName() {
        return this.ossBucketName;
    }

    @NotNull
    public final OssConfig getOssConfig() {
        return this.ossConfig;
    }

    @Nullable
    public final String getOssEndPoint() {
        return this.ossEndPoint;
    }

    @NotNull
    public final String getOssFileObjectKey(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        String str = UUIDUtils.INSTANCE.shortUUID() + '.' + FileUtils.INSTANCE.getFileExtension(fileName);
        Log.d("oss-objectKey", str);
        return str;
    }

    @NotNull
    public final String getOssUrl(@NotNull String objectKey) {
        String replaceFirst$default;
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(objectKey, "objectKey");
        String str = this.ossEndPoint;
        Intrinsics.checkNotNull(str);
        String str2 = (String) AnyKt.getOrElse(StringKt.getUrlScheme(str), new Function0<String>() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$getOssUrl$scheme$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return CommonConstant.SCHEME_HTTPS;
            }
        });
        replaceFirst$default = StringsKt__StringsJVMKt.replaceFirst$default(this.ossEndPoint, str2, "", false, 4, (Object) null);
        String str3 = this.ossBucketName;
        Intrinsics.checkNotNull(str3);
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(replaceFirst$default, str3, false, 2, null);
        if (!startsWith$default) {
            replaceFirst$default = FileUtils.INSTANCE.combine(this.ossBucketName, replaceFirst$default);
            Intrinsics.checkNotNull(replaceFirst$default);
        }
        return str2 + replaceFirst$default + File.separator + objectKey;
    }

    @NotNull
    public final Observable<HeadObjectResult> headObject(@NotNull final GetObjectBean objectBean) {
        Intrinsics.checkNotNullParameter(objectBean, "objectBean");
        Observable flatMap = createClientObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$headObject$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends HeadObjectResult> apply(@NotNull OSS oss) {
                HeadObjectRequest buildHeadObjectRequest;
                Observable createHeadObjectObservable;
                Intrinsics.checkNotNullParameter(oss, "oss");
                RxOSSManager rxOSSManager = RxOSSManager.this;
                buildHeadObjectRequest = rxOSSManager.buildHeadObjectRequest(objectBean);
                createHeadObjectObservable = rxOSSManager.createHeadObjectObservable(oss, buildHeadObjectRequest);
                return createHeadObjectObservable;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final boolean isOssConfigChanged(@NotNull OssConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return this.ossConfig.isChanged(config);
    }

    @NotNull
    public final Observable<PutObjectProgress> putObject(@NotNull final PutObjectBean objectBean) {
        Intrinsics.checkNotNullParameter(objectBean, "objectBean");
        Observable flatMap = createClientObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.oss.RxOSSManager$putObject$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends PutObjectProgress> apply(@NotNull OSS oss) {
                PutObjectRequest buildPutObjectRequest;
                Observable createPutObjectObservable;
                Intrinsics.checkNotNullParameter(oss, "oss");
                RxOSSManager rxOSSManager = RxOSSManager.this;
                buildPutObjectRequest = rxOSSManager.buildPutObjectRequest(objectBean);
                createPutObjectObservable = rxOSSManager.createPutObjectObservable(oss, buildPutObjectRequest);
                return createPutObjectObservable;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final AppendObjectResult syncAppendObject(@NotNull AppendObjectBean appendObjectBean) {
        Intrinsics.checkNotNullParameter(appendObjectBean, "appendObjectBean");
        AppendObjectResult appendObject = ensureOssClient().appendObject(buildAppendObjectResult(appendObjectBean));
        Intrinsics.checkNotNullExpressionValue(appendObject, "appendObject(...)");
        return appendObject;
    }

    @NotNull
    public final DeleteMultipleObjectResult syncDeleteMultipleObjects(@NotNull List<String> ossObjectKeyList) throws ClientException, ServiceException {
        Intrinsics.checkNotNullParameter(ossObjectKeyList, "ossObjectKeyList");
        DeleteMultipleObjectResult deleteMultipleObject = ensureOssClient().deleteMultipleObject(new DeleteMultipleObjectRequest(this.ossBucketName, ossObjectKeyList, Boolean.TRUE));
        Intrinsics.checkNotNullExpressionValue(deleteMultipleObject, "deleteMultipleObject(...)");
        return deleteMultipleObject;
    }

    @NotNull
    public final GetObjectResult syncGetObject(@NotNull GetObjectBean objectBean) {
        Intrinsics.checkNotNullParameter(objectBean, "objectBean");
        GetObjectResult object = ensureOssClient().getObject(buildGetObjectRequest(objectBean));
        Intrinsics.checkNotNullExpressionValue(object, "getObject(...)");
        return object;
    }

    @NotNull
    public final List<OSSObjectSummary> syncGetObjectList(@NotNull GetListObjectBean listObjectBean) {
        Intrinsics.checkNotNullParameter(listObjectBean, "listObjectBean");
        ListObjectsRequest buildGetObjectListRequest = buildGetObjectListRequest(listObjectBean);
        ArrayList arrayList = new ArrayList();
        String marker = listObjectBean.getMarker();
        while (true) {
            buildGetObjectListRequest.setMarker(marker);
            ListObjectsResult listObjects = ensureOssClient().listObjects(buildGetObjectListRequest);
            if (listObjects == null) {
                break;
            }
            String nextMarker = listObjects.getNextMarker();
            CollectionKt.safeAddAll(arrayList, listObjects.getObjectSummaries());
            if (!listObjects.isTruncated()) {
                break;
            }
            marker = nextMarker;
        }
        return arrayList;
    }

    @NotNull
    public final HeadObjectResult syncHeadObject(@NotNull GetObjectBean objectBean) {
        Intrinsics.checkNotNullParameter(objectBean, "objectBean");
        HeadObjectResult headObject = ensureOssClient().headObject(buildHeadObjectRequest(objectBean));
        Intrinsics.checkNotNullExpressionValue(headObject, "headObject(...)");
        return headObject;
    }

    @NotNull
    public final PutObjectResult syncPutObject(@NotNull PutObjectBean objectBean, @Nullable final Function2<? super Long, ? super Long, Unit> func) {
        Intrinsics.checkNotNullParameter(objectBean, "objectBean");
        PutObjectRequest buildPutObjectRequest = buildPutObjectRequest(objectBean);
        if (func != null) {
            buildPutObjectRequest.setProgressCallback(new OSSProgressCallback() { // from class: com.sunia.HTREnginev2.kwl
                @Override // com.alibaba.sdk.android.oss.callback.OSSProgressCallback
                public final void onProgress(Object obj, long j, long j2) {
                    RxOSSManager.syncPutObject$lambda$0(Function2.this, (PutObjectRequest) obj, j, j2);
                }
            });
        }
        PutObjectResult putObject = ensureOssClient().putObject(buildPutObjectRequest);
        Intrinsics.checkNotNullExpressionValue(putObject, "putObject(...)");
        return putObject;
    }

    @Nullable
    public final String syncUploadFile(@NotNull Context context, @NotNull String uploadFilePath) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uploadFilePath, "uploadFilePath");
        String str = this.ossBucketName;
        Intrinsics.checkNotNull(str);
        return syncUploadFile(context, str, uploadFilePath, null);
    }

    @Nullable
    public final String syncUploadFile(@NotNull Context context, @NotNull String bucketName, @NotNull String uploadFilePath, @Nullable ObjectMetadata metadata) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bucketName, "bucketName");
        Intrinsics.checkNotNullParameter(uploadFilePath, "uploadFilePath");
        PutObjectRequest putObjectRequest = getPutObjectRequest(bucketName, uploadFilePath);
        if (metadata != null) {
            putObjectRequest.setMetadata(metadata);
        }
        return syncUploadFile(context, putObjectRequest);
    }

    @Nullable
    public final String syncUploadFile(@NotNull Context context, @NotNull PutObjectRequest putRequest) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(putRequest, "putRequest");
        if (this.ossClient.putObject(putRequest).getStatusCode() == 200) {
            return putRequest.getObjectKey();
        }
        return null;
    }
}

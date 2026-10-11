package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.alibaba.fastjson2.JSON;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ThreadUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUploadHostBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUserBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.exception.ExceedingSizeOfUploadException;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 52\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00015B'\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010/\u001a\u00020\u0007\u0012\u0006\u00102\u001a\u000200¢\u0006\u0004\b3\u00104J\b\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0002J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0016\u001a\u00020\u0007H\u0002JA\u0010\u001f\u001a\u00020\u001e\"\u0004\b\u0000\u0010\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\b\b\u0002\u0010\u001a\u001a\u00020\u00072\u0018\b\u0004\u0010\u001d\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001bH\u0082\bJ\u001c\u0010$\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 2\n\u0010\u0017\u001a\u00060\"j\u0002`#H\u0002R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010/\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u00101¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunUploadFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;", "responseBody", "", "", "uploadMd5List", C6997f.f39671c, "preCreateBody", "uploadHost", "l", "", "blockIndex", "m", "Lretrofit2/Response;", GoogleApiAvailabilityLight.f29016b, "Lokhttp3/MultipartBody$Part;", C6998g.f39679a, C4921e.f26537n, C6999h.f39688c, "path", "e", "T", AbstractLogger.RESPONSE, "method", "Lkotlin/Function1;", "", "errnoExtractor", "", "i", "", "retry", "Ljava/lang/Exception;", "Lkotlin/Exception;", "d", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "c", Constants.STRING_SIG, "accountId", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "userBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaiduYunUploadFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunUploadFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunUploadFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n235#1,16:263\n235#1,16:282\n235#1,16:299\n230#1,21:315\n1864#2,3:279\n1#3:298\n*S KotlinDebug\n*F\n+ 1 BaiduYunUploadFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunUploadFileRequest\n*L\n84#1:263,16\n122#1:282,16\n191#1:299,16\n213#1:315,21\n97#1:279,3\n*E\n"})
/* loaded from: classes7.dex */
public final class BaiduYunUploadFileRequest extends TransferCloudFileRequest<BaiduYunFileInfo> {

    /* renamed from: e */
    @NotNull
    public static final String f41385e = "BaiduYunUploadFileRequest";

    /* renamed from: f */
    public static final int f41386f = 3;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String accountId;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunUserBean userBean;

    public BaiduYunUploadFileRequest(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileBean fileBean, @NotNull String accountId, @NotNull BaiduYunUserBean userBean) {
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(userBean, "userBean");
        this.baiduYunProvider = baiduYunProvider;
        this.fileBean = fileBean;
        this.accountId = accountId;
        this.userBean = userBean;
    }

    /* renamed from: j */
    public static /* synthetic */ void m32403j(BaiduYunUploadFileRequest baiduYunUploadFileRequest, Response response, String str, Function1 function1, int i, Object obj) {
        int i2 = i & 2;
        String str2 = "";
        if (i2 != 0) {
            str = "";
        }
        try {
            int code = response.code();
            String message = response.message();
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            String json = jSONUtils.toJson(response.headers().toMultimap());
            Request request = response.raw().request();
            HttpUrl url = request.url();
            String json2 = jSONUtils.toJson(request.headers().toMultimap());
            Object invoke = function1.invoke(response.body());
            StringBuilder sb = new StringBuilder();
            if (str.length() > 0) {
                str2 = str + ' ';
            }
            sb.append(str2);
            sb.append("failed errno:");
            sb.append(invoke);
            sb.append(';');
            LogUtils.file(f41385e, sb.toString() + ("responseCode:" + code + ";responseMessage:" + message + ";responseHeaders:" + json + ';') + ("requestUrl:" + url + ";requestHeaders:" + json2 + ';'));
        } catch (Exception unused) {
        }
    }

    /* renamed from: d */
    public final void m32404d(int retry, Exception e) {
        String stackTraceToString;
        if (!Intrinsics.areEqual(e.getMessage(), f41385e)) {
            StringBuilder sb = new StringBuilder();
            sb.append("uploadImpl:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            LogUtils.file(f41385e, sb.toString());
        }
        if (retry > 3) {
            throw new Exception(e);
        }
        ThreadUtils.INSTANCE.mySleep(retry * 1000);
    }

    /* renamed from: e */
    public final List<String> m32405e(String path) throws Exception {
        List<String> listOf;
        int limitUploadSizeOnce = this.userBean.getLimitUploadSizeOnce();
        FileUtils fileUtils = FileUtils.INSTANCE;
        long j = limitUploadSizeOnce;
        if (fileUtils.getFileSize(path) > j) {
            return fileUtils.computeSliceMD5(path, j);
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(fileUtils.computeFullMD5Safely(path));
        return listOf;
    }

    /* renamed from: f */
    public final BaiduYunFileResponseBody m32406f(BaiduYunFileResponseBody responseBody, List<String> uploadMd5List) throws Exception {
        String str;
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        String cloudFilePath = this.fileBean.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        linkedHashMap.put("path", cloudFilePath);
        linkedHashMap.put("size", String.valueOf(FileUtils.INSTANCE.getFileSize(this.fileBean.getLocalFilePath())));
        linkedHashMap.put(BaiduYunConstant.IS_DIR, "0");
        linkedHashMap.put(BaiduYunConstant.RTYPE, "3");
        String uploadid = responseBody.getUploadid();
        Intrinsics.checkNotNull(uploadid);
        linkedHashMap.put(BaiduYunConstant.UPLOAD_ID, uploadid);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        String json = jSONUtils.toJson(uploadMd5List);
        Intrinsics.checkNotNull(json);
        linkedHashMap.put("block_list", json);
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunUploadFileRequest$create$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.panFileRequest(BaiduYunConstant.CREATE, linkedHashMap);
            }
        });
        if (executeCall.isSuccessful() && ((BaiduYunFileResponseBody) executeCall.body()).isSuccessful()) {
            Object body = executeCall.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return (BaiduYunFileResponseBody) body;
        }
        try {
            int code = executeCall.code();
            String message = executeCall.message();
            String json2 = jSONUtils.toJson(executeCall.headers().toMultimap());
            Request request = executeCall.raw().request();
            HttpUrl url = request.url();
            String json3 = jSONUtils.toJson(request.headers().toMultimap());
            BaiduYunFileResponseBody baiduYunFileResponseBody = (BaiduYunFileResponseBody) executeCall.body();
            Integer valueOf = baiduYunFileResponseBody != null ? Integer.valueOf(baiduYunFileResponseBody.getErrno()) : null;
            StringBuilder sb = new StringBuilder();
            if (BaiduYunConstant.CREATE.length() > 0) {
                str = BaiduYunConstant.CREATE + ' ';
            } else {
                str = "";
            }
            sb.append(str);
            sb.append("failed errno:");
            sb.append(valueOf);
            sb.append(';');
            LogUtils.file(f41385e, sb.toString() + ("responseCode:" + code + ";responseMessage:" + message + ";responseHeaders:" + json2 + ';') + ("requestUrl:" + url + ";requestHeaders:" + json3 + ';'));
        } catch (Exception unused) {
        }
        throw new Exception(executeCall.raw().message());
    }

    /* renamed from: g */
    public final MultipartBody.Part m32407g(long blockIndex) throws IOException, NoSuchAlgorithmException {
        int limitUploadSizeOnce = this.userBean.getLimitUploadSizeOnce();
        RequestBody.Companion companion = RequestBody.INSTANCE;
        FileUtils fileUtils = FileUtils.INSTANCE;
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        long j = limitUploadSizeOnce;
        return MultipartBody.Part.INSTANCE.createFormData("file", this.fileBean.getLocalFilePath(), RequestBody.Companion.create$default(companion, fileUtils.getBlock(localFilePath, blockIndex * j, j), MultipartBody.FORM, 0, 0, 6, (Object) null));
    }

    /* renamed from: h */
    public final String m32408h(BaiduYunFileResponseBody responseBody) {
        Object first;
        String str = "";
        Response<BaiduYunUploadHostBean> execute = this.baiduYunProvider.getBaiduYunClient().getBaiduYunUploadService().uploadHost(this.baiduYunProvider.getAccessToken(), responseBody.getUploadid(), this.fileBean.getCloudFilePath()).execute();
        if (execute.isSuccessful() && !execute.body().getServers().isEmpty()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) execute.body().getServers());
            return ((BaiduYunUploadHostBean.Server) first).getServer();
        }
        Intrinsics.checkNotNull(execute);
        try {
            int code = execute.code();
            String message = execute.message();
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            String json = jSONUtils.toJson(execute.headers().toMultimap());
            Request request = execute.raw().request();
            HttpUrl url = request.url();
            String json2 = jSONUtils.toJson(request.headers().toMultimap());
            BaiduYunUploadHostBean body = execute.body();
            Integer valueOf = body != null ? Integer.valueOf(body.getError_code()) : null;
            StringBuilder sb = new StringBuilder();
            if ("".length() > 0) {
                str = " ";
            }
            sb.append(str);
            sb.append("failed errno:");
            sb.append(valueOf);
            sb.append(';');
            LogUtils.file(f41385e, sb.toString() + ("responseCode:" + code + ";responseMessage:" + message + ";responseHeaders:" + json + ';') + ("requestUrl:" + url + ";requestHeaders:" + json2 + ';'));
        } catch (Exception unused) {
        }
        throw new Exception(execute.raw().message());
    }

    /* renamed from: i */
    public final <T> void m32409i(Response<T> response, String method, Function1<? super T, ? extends Object> errnoExtractor) {
        String str;
        try {
            int code = response.code();
            String message = response.message();
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            String json = jSONUtils.toJson(response.headers().toMultimap());
            Request request = response.raw().request();
            HttpUrl url = request.url();
            String json2 = jSONUtils.toJson(request.headers().toMultimap());
            Object invoke = errnoExtractor.invoke(response.body());
            StringBuilder sb = new StringBuilder();
            if (method.length() > 0) {
                str = method + ' ';
            } else {
                str = "";
            }
            sb.append(str);
            sb.append("failed errno:");
            sb.append(invoke);
            sb.append(';');
            LogUtils.file(f41385e, sb.toString() + ("responseCode:" + code + ";responseMessage:" + message + ";responseHeaders:" + json + ';') + ("requestUrl:" + url + ";requestHeaders:" + json2 + ';'));
        } catch (Exception unused) {
        }
    }

    /* renamed from: k */
    public final BaiduYunFileResponseBody m32410k() throws Exception {
        String str;
        List<Integer> listOf;
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        String cloudFilePath = this.fileBean.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        linkedHashMap.put("path", cloudFilePath);
        linkedHashMap.put("size", String.valueOf(FileUtils.INSTANCE.getFileSize(this.fileBean.getLocalFilePath())));
        linkedHashMap.put(BaiduYunConstant.IS_DIR, "0");
        linkedHashMap.put(BaiduYunConstant.RTYPE, "3");
        linkedHashMap.put(BaiduYunConstant.AUTO_INIT, "1");
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        String jSONString = JSON.toJSONString(m32405e(localFilePath));
        Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
        linkedHashMap.put("block_list", jSONString);
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunUploadFileRequest$preCreate$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.panFileRequest(BaiduYunConstant.PRE_CREATE, linkedHashMap);
            }
        });
        boolean z = true;
        if (executeCall.isSuccessful() && ((BaiduYunFileResponseBody) executeCall.body()).isSuccessful()) {
            BaiduYunFileResponseBody baiduYunFileResponseBody = (BaiduYunFileResponseBody) executeCall.body();
            if (baiduYunFileResponseBody.isSuccessful()) {
                List<Integer> blockList = baiduYunFileResponseBody.getBlockList();
                if (blockList != null && !blockList.isEmpty()) {
                    z = false;
                }
                if (z) {
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(0);
                    baiduYunFileResponseBody.setBlockList(listOf);
                }
            }
            Intrinsics.checkNotNull(baiduYunFileResponseBody);
            return baiduYunFileResponseBody;
        }
        try {
            int code = executeCall.code();
            String message = executeCall.message();
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            String json = jSONUtils.toJson(executeCall.headers().toMultimap());
            Request request = executeCall.raw().request();
            HttpUrl url = request.url();
            String json2 = jSONUtils.toJson(request.headers().toMultimap());
            BaiduYunFileResponseBody baiduYunFileResponseBody2 = (BaiduYunFileResponseBody) executeCall.body();
            Integer valueOf = baiduYunFileResponseBody2 != null ? Integer.valueOf(baiduYunFileResponseBody2.getErrno()) : null;
            StringBuilder sb = new StringBuilder();
            if (BaiduYunConstant.PRE_CREATE.length() <= 0) {
                z = false;
            }
            if (z) {
                str = BaiduYunConstant.PRE_CREATE + ' ';
            } else {
                str = "";
            }
            sb.append(str);
            sb.append("failed errno:");
            sb.append(valueOf);
            sb.append(';');
            LogUtils.file(f41385e, sb.toString() + ("responseCode:" + code + ";responseMessage:" + message + ";responseHeaders:" + json + ';') + ("requestUrl:" + url + ";requestHeaders:" + json2 + ';'));
        } catch (Exception unused) {
        }
        throw new Exception(executeCall.raw().message());
    }

    /* renamed from: l */
    public final List<String> m32411l(BaiduYunFileResponseBody preCreateBody, String uploadHost) throws Exception {
        int lastIndex;
        ArrayList arrayList = new ArrayList();
        List<Integer> blockList = preCreateBody.getBlockList();
        if (blockList != null) {
            ProgressInfo progressInfo = getProgressInfo();
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(blockList);
            progressInfo.setTotalBytes(lastIndex);
            int i = 0;
            for (Object obj : blockList) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                String md5 = m32412m(preCreateBody, ((Number) obj).intValue(), uploadHost).getMd5();
                Intrinsics.checkNotNull(md5);
                arrayList.add(md5);
                onProgress(getProgressInfo(), i);
                i = i2;
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final BaiduYunFileResponseBody m32412m(BaiduYunFileResponseBody responseBody, long blockIndex, String uploadHost) throws Exception {
        String str;
        BaiduYunFileResponseBody baiduYunFileResponseBody = new BaiduYunFileResponseBody();
        int i = 0;
        boolean z = false;
        Response<BaiduYunFileResponseBody> response = null;
        do {
            try {
                response = m32413n(responseBody, blockIndex, uploadHost);
                boolean z2 = true;
                if (!response.isSuccessful() || !response.body().isSuccessful()) {
                    try {
                        int code = response.code();
                        String message = response.message();
                        JSONUtils jSONUtils = JSONUtils.INSTANCE;
                        String json = jSONUtils.toJson(response.headers().toMultimap());
                        Request request = response.raw().request();
                        HttpUrl url = request.url();
                        String json2 = jSONUtils.toJson(request.headers().toMultimap());
                        BaiduYunFileResponseBody body = response.body();
                        Integer valueOf = body != null ? Integer.valueOf(body.getErrno()) : null;
                        StringBuilder sb = new StringBuilder();
                        if (BaiduYunConstant.UPLOAD.length() <= 0) {
                            z2 = false;
                        }
                        if (z2) {
                            str = BaiduYunConstant.UPLOAD + ' ';
                        } else {
                            str = "";
                        }
                        sb.append(str);
                        sb.append("failed errno:");
                        sb.append(valueOf);
                        sb.append(';');
                        LogUtils.file(f41385e, sb.toString() + ("responseCode:" + code + ";responseMessage:" + message + ";responseHeaders:" + json + ';') + ("requestUrl:" + url + ";requestHeaders:" + json2 + ';'));
                    } catch (Exception unused) {
                    }
                    throw new Exception(f41385e);
                    break;
                }
                z = true;
            } catch (Exception e) {
                i++;
                m32404d(i, e);
            }
        } while (!z);
        if (response != null) {
            baiduYunFileResponseBody = response.body();
            Intrinsics.checkNotNullExpressionValue(baiduYunFileResponseBody, "body(...)");
        }
        return baiduYunFileResponseBody;
    }

    /* renamed from: n */
    public final Response<BaiduYunFileResponseBody> m32413n(BaiduYunFileResponseBody responseBody, long blockIndex, String uploadHost) {
        Response<BaiduYunFileResponseBody> execute = this.baiduYunProvider.getBaiduYunClient().getBaiduYunUploadService().panSuperFileRequest(uploadHost + CloudStorageConstants.BAIDU_YUN_PCS_URL_SLICE_UPLOAD_SUFFIX, this.baiduYunProvider.getAccessToken(), BaiduYunConstant.UPLOAD, BaiduYunConstant.TMP_FILE, URLEncoder.encode(this.fileBean.getCloudFilePath(), "UTF-8"), responseBody.getUploadid(), blockIndex, m32407g(blockIndex)).execute();
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        return execute;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public BaiduYunFileInfo execute() {
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (fileUtils.getFileSize(this.fileBean.getLocalFilePath()) <= this.userBean.getLimitUploadFileSize()) {
            Benchmark benchmark = new Benchmark();
            BaiduYunFileResponseBody m32410k = m32410k();
            BaiduYunFileResponseBody m32406f = m32406f(m32410k, m32411l(m32410k, m32408h(m32410k)));
            benchmark.report("CloudStorage baidu upload " + this.fileBean.localFileString());
            Debug.INSTANCE.m32035d(BaiduYunUploadFileRequest.class, "fileBean.oldId:" + this.fileBean.getUniqueId() + ",newId:" + m32406f.getFsId(), new Object[0]);
            return m32406f;
        }
        LogUtils.file(BaiduYunUploadFileRequest.class.getSimpleName(), this.fileBean.getLocalFilePath() + " file size is bigger than " + fileUtils.getFileSize(this.userBean.getLimitUploadFileSize()));
        throw new ExceedingSizeOfUploadException();
    }
}

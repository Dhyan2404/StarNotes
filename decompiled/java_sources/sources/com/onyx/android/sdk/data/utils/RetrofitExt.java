package com.onyx.android.sdk.data.utils;

import android.os.NetworkOnMainThreadException;
import android.util.Log;
import com.alibaba.fastjson2.JSONException;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.common.error.ErrorCode;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n\"\u000e\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u0002H\n0\f*\b\u0012\u0004\u0012\u0002H\u000b0\r¢\u0006\u0002\u0010\u000eJ5\u0010\u000f\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\n\"\u000e\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u0002H\n0\f*\b\u0012\u0004\u0012\u0002H\u000b0\r2\b\b\u0002\u0010\u0010\u001a\u00020\u0004¢\u0006\u0002\u0010\u0011J\u000e\u0010\u0012\u001a\u00020\u0013*\u0006\u0012\u0002\b\u00030\u0014J\u000e\u0010\u0015\u001a\u00020\u0013*\u0006\u0012\u0002\b\u00030\u0014J\u0016\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180\u0017*\u00020\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/RetrofitExt;", "", "()V", "enableHttpDebug", "", "getEnableHttpDebug", Constants.BOOLEAN_VALUE_SIG, "setEnableHttpDebug", "(Z)V", "executeAndGetData", "T", "S", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lretrofit2/Call;", "(Lretrofit2/Call;)Ljava/lang/Object;", "executeAndGetResponse", "throwError", "(Lretrofit2/Call;Z)Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "getRequestHeaders", "Lokhttp3/Headers;", "Lretrofit2/Response;", "getResponseHeaders", "headersToMap", "", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nRetrofitExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetrofitExt.kt\ncom/onyx/android/sdk/data/utils/RetrofitExt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,83:1\n37#2,2:84\n*S KotlinDebug\n*F\n+ 1 RetrofitExt.kt\ncom/onyx/android/sdk/data/utils/RetrofitExt\n*L\n81#1:84,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RetrofitExt {

    @NotNull
    public static final RetrofitExt INSTANCE = new RetrofitExt();
    private static boolean enableHttpDebug;

    private RetrofitExt() {
    }

    public static /* synthetic */ DataResponse executeAndGetResponse$default(RetrofitExt retrofitExt, Call call, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return retrofitExt.executeAndGetResponse(call, z);
    }

    public final <T, S extends DataResponse<T>> T executeAndGetData(@NotNull Call<S> call) {
        Intrinsics.checkNotNullParameter(call, "<this>");
        T t = (T) executeAndGetResponse$default(this, call, false, 1, null).getData();
        if (t != null) {
            return t;
        }
        throw OnyxException.INSTANCE.m31891of(ErrorType.DATA_FORMAT_ERROR);
    }

    @NotNull
    public final <T, S extends DataResponse<T>> S executeAndGetResponse(@NotNull Call<S> call, boolean z) {
        Intrinsics.checkNotNullParameter(call, "<this>");
        HttpUrl url = call.request().url();
        call.request().headers();
        call.request().body();
        try {
            Response<?> execute = call.execute();
            Intrinsics.checkNotNull(execute);
            Map<String, String> headersToMap = headersToMap(getRequestHeaders(execute));
            Map<String, String> headersToMap2 = headersToMap(getResponseHeaders(execute));
            if (enableHttpDebug) {
                Log.d(Reflection.getOrCreateKotlinClass(RetrofitExt.class).getSimpleName(), "URL: " + url);
                String simpleName = Reflection.getOrCreateKotlinClass(RetrofitExt.class).getSimpleName();
                StringBuilder sb = new StringBuilder();
                sb.append("RequestHeaders: ");
                JSONUtils jSONUtils = JSONUtils.INSTANCE;
                sb.append(jSONUtils.asPrettyJson(headersToMap));
                Log.d(simpleName, sb.toString());
                Log.d(Reflection.getOrCreateKotlinClass(RetrofitExt.class).getSimpleName(), "ResponseHeaders: " + jSONUtils.asPrettyJson(headersToMap2));
            }
            if (execute.code() == 401) {
                throw OnyxException.INSTANCE.m31891of("Unauthorized");
            }
            if (execute.code() == 404) {
                throw OnyxException.INSTANCE.m31891of(ErrorType.RESOURCE_NOT_FOUND);
            }
            ResponseBody errorBody = execute.errorBody();
            if ((errorBody != null ? errorBody.string() : null) == null) {
            }
            Object body = execute.body();
            Intrinsics.checkNotNull(body);
            S s = (S) body;
            s.setHeaders(headersToMap2);
            if (!DataResponseKt.isSuccess(s) && z) {
                throw ErrorCode.INSTANCE.httpErrorFromCode(s.getResultCode());
            }
            return s;
        } catch (Throwable th) {
            if (th instanceof OnyxException) {
                throw th;
            }
            if (th instanceof NetworkOnMainThreadException) {
                throw OnyxException.INSTANCE.m31891of(BaseError.WORK_ON_MAIN_THREAD);
            }
            if (th instanceof UnknownHostException ? true : th instanceof ConnectException ? true : th instanceof SocketTimeoutException) {
                throw OnyxException.INSTANCE.m31893of("Timeout", "Timeout", 101);
            }
            if (th instanceof JSONException ? true : th instanceof NullPointerException) {
                throw OnyxException.INSTANCE.m31892of(ErrorType.DATA_FORMAT_ERROR, "");
            }
            throw OnyxException.INSTANCE.m31896of(th, ErrorType.REQUEST_FAIL, ErrorType.REQUEST_FAIL, -1);
        }
    }

    public final boolean getEnableHttpDebug() {
        return enableHttpDebug;
    }

    @NotNull
    public final Headers getRequestHeaders(@NotNull Response<?> response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        return response.raw().request().headers();
    }

    @NotNull
    public final Headers getResponseHeaders(@NotNull Response<?> response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        return response.raw().headers();
    }

    @NotNull
    public final Map<String, String> headersToMap(@NotNull Headers headers) {
        List list;
        Map<String, String> mapOf;
        Intrinsics.checkNotNullParameter(headers, "<this>");
        list = CollectionsKt___CollectionsKt.toList(headers);
        Pair[] pairArr = (Pair[]) list.toArray(new Pair[0]);
        mapOf = MapsKt__MapsKt.mapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        return mapOf;
    }

    public final void setEnableHttpDebug(boolean z) {
        enableHttpDebug = z;
    }
}

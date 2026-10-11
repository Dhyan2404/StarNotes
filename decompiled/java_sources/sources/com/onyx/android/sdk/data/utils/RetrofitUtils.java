package com.onyx.android.sdk.data.utils;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import java.net.SocketTimeoutException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006J \u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0012\"\u0004\b\u0000\u0010\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0015J\"\u0010\u0016\u001a\n\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u0012\"\u0004\b\u0000\u0010\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0015J\u0014\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0012¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/RetrofitUtils;", "", "()V", "createFileBody", "Lokhttp3/MultipartBody$Part;", "key", "", "file", "createTextBody", "Lokhttp3/RequestBody;", "text", "downloadFile", "Ljava/io/File;", "responseBody", "Lokhttp3/ResponseBody;", "filePath", CouchFieldKey.KEY_MD5, "executeCall", "Lretrofit2/Response;", "T", "call", "Lretrofit2/Call;", "executeCallWithoutException", "isSuccessful", "", AbstractLogger.RESPONSE, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RetrofitUtils {

    @NotNull
    public static final RetrofitUtils INSTANCE = new RetrofitUtils();

    private RetrofitUtils() {
    }

    @NotNull
    public final MultipartBody.Part createFileBody(@Nullable String key, @NotNull String file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (key == null) {
            key = "file";
        }
        return MultipartBody.Part.INSTANCE.createFormData(key, new File(file).getName(), RequestBody.INSTANCE.create(new File(file), MediaType.INSTANCE.parse("image/*")));
    }

    @NotNull
    public final RequestBody createTextBody(@NotNull Object text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return RequestBody.INSTANCE.create(text.toString(), MediaType.INSTANCE.parse("multipart/form-data"));
    }

    @NotNull
    public final File downloadFile(@NotNull ResponseBody responseBody, @NotNull String filePath, @Nullable String md5) throws Exception {
        Intrinsics.checkNotNullParameter(responseBody, "responseBody");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        File file = new File(filePath);
        try {
            try {
                if (file.exists()) {
                    return file;
                }
                try {
                    FileUtils fileUtils = FileUtils.INSTANCE;
                    fileUtils.copyInputStreamToFile(responseBody.byteStream(), file);
                    responseBody.byteStream().close();
                    if (StringUtils.isNotBlank(md5)) {
                        String absolutePath = file.getAbsolutePath();
                        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                        if (!StringUtils.equalsIgnoreCase(md5, fileUtils.computeFullMD5Safely(absolutePath))) {
                            throw new RuntimeException("file md5 check failed");
                        }
                    }
                    Debug.INSTANCE.m32035d(RetrofitUtils.class, "downloaded:" + filePath, new Object[0]);
                    return file;
                } catch (Exception unused) {
                    throw new RuntimeException("file download failed");
                }
            } catch (Throwable th) {
                responseBody.byteStream().close();
                throw th;
            }
        } catch (Exception e) {
            onyx.org.apache.commons.io.FileUtils.deleteQuietly(file);
            throw e;
        }
    }

    @NotNull
    public final <T> Response<T> executeCall(@NotNull Call<T> call) throws Exception {
        Intrinsics.checkNotNullParameter(call, "call");
        try {
            Response<T> execute = call.execute();
            Intrinsics.checkNotNull(execute);
            if (execute.isSuccessful()) {
                return execute;
            }
            ResultCode parseResponse = ResultCode.INSTANCE.parseResponse(execute);
            OnyxException.Companion companion = OnyxException.INSTANCE;
            String message = parseResponse.getMessage();
            if (message == null) {
                message = "";
            }
            throw companion.m31893of(ErrorType.REQUEST_FAIL, message, parseResponse.getCode());
        } catch (Exception e) {
            if (e instanceof SocketTimeoutException) {
                throw ContentException.INSTANCE.timeoutException();
            }
            throw new ContentException.NetworkException(e);
        }
    }

    @Nullable
    public final <T> Response<T> executeCallWithoutException(@NotNull Call<T> call) {
        Intrinsics.checkNotNullParameter(call, "call");
        try {
            return executeCall(call);
        } catch (Exception e) {
            Debug.INSTANCE.m32063w(e);
            return null;
        }
    }

    public final boolean isSuccessful(@Nullable Response<?> response) {
        return response != null && response.isSuccessful();
    }
}

package com.onyx.android.sdk.cloudstorage.provider.webdav;

import androidx.transition.Transition;
import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.bean.SearchBuilder;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.utils.ProgressRequestBody;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.impl.OkHttpSardine;
import com.thegrizzlylabs.sardineandroid.impl.handler.ResourcesResponseHandler;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001:\u0001-B\u000f\u0012\u0006\u0010%\u001a\u00020\u001f¢\u0006\u0004\b,\u0010$J$\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0014J\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000bJ\"\u0010\u0015\u001a\u00020\u00142\b\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J*\u0010\u001b\u001a\u0004\u0018\u00010\u00182\f\u0010\u0017\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u0002H\u0002J6\u0010\u001e\u001a\u00020\u00052\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u001c2\f\u0010\u0017\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u0002H\u0002R\"\u0010%\u001a\u00020\u001f8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010+\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;", "", C4Replicator.REPLICATOR_AUTH_USER_NAME, "password", "", "isPreemptive", "", "setCredentials", "url", "encodeUrl", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;", "searchRequest", "", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "search", "Ljava/io/File;", "localFile", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;", "progressHandler", "Lokhttp3/Response;", BaiduYunConstant.UPLOAD, "Ljava/lang/Class;", "cls", "", Transition.f10626J0, "name", "a", "Ljava/util/concurrent/atomic/AtomicReference;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "b", "Lokhttp3/OkHttpClient;", "Lokhttp3/OkHttpClient;", "getHttpClient", "()Lokhttp3/OkHttpClient;", "setHttpClient", "(Lokhttp3/OkHttpClient;)V", "httpClient", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getWebDavURL", "()Ljava/lang/String;", "setWebDavURL", "(Ljava/lang/String;)V", "webDavURL", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "ProgressHandler", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavClient extends OkHttpSardine {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public OkHttpClient httpClient;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String webDavURL;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;", "", "onProgressUpdate", "", "progress", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public interface ProgressHandler {
        void onProgressUpdate(long progress);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavClient(@NotNull OkHttpClient httpClient) {
        super(httpClient);
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.httpClient = httpClient;
    }

    /* renamed from: a */
    public final Object m32811a(Class<?> cls, Object instance, String name) {
        AtomicReference<Object> atomicReference = new AtomicReference<>();
        if (m32812b(atomicReference, cls, instance, name)) {
            return atomicReference.get();
        }
        return null;
    }

    /* renamed from: b */
    public final boolean m32812b(AtomicReference<Object> result, Class<?> cls, Object instance, String name) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(name);
            declaredField.setAccessible(true);
            result.set(declaredField.get(instance));
            return true;
        } catch (IllegalAccessException e) {
            Debug.INSTANCE.m32060w(WebDavClient.class, e);
            return false;
        } catch (IllegalArgumentException e2) {
            Debug.INSTANCE.m32060w(WebDavClient.class, e2);
            return false;
        } catch (NoSuchFieldException e3) {
            Debug.INSTANCE.m32060w(WebDavClient.class, e3);
            return false;
        } catch (SecurityException e4) {
            Debug.INSTANCE.m32060w(WebDavClient.class, e4);
            return false;
        }
    }

    @Override // com.thegrizzlylabs.sardineandroid.impl.OkHttpSardine
    @NotNull
    public String encodeUrl(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return WebDavUtils.INSTANCE.encodeUrl(url);
    }

    @NotNull
    public final OkHttpClient getHttpClient() {
        return this.httpClient;
    }

    @Nullable
    public final String getWebDavURL() {
        return this.webDavURL;
    }

    @Nullable
    public final List<DavResource> search(@NotNull SearchBuilder searchRequest) throws IOException {
        Intrinsics.checkNotNullParameter(searchRequest, "searchRequest");
        String xml = SardineUtil.toXml(searchRequest.getBody());
        Debug.INSTANCE.m32035d(WebDavClient.class, "webdav search xml:" + xml, new Object[0]);
        MediaType parse = MediaType.INSTANCE.parse("text/xml");
        RequestBody.Companion companion = RequestBody.INSTANCE;
        Intrinsics.checkNotNull(xml);
        return new ResourcesResponseHandler().handleResponse(this.httpClient.newCall(newRequestBuilder(searchRequest.getUrl()).method(searchRequest.getMethod(), companion.create(xml, parse)).build()).execute());
    }

    @Override // com.thegrizzlylabs.sardineandroid.impl.OkHttpSardine, com.thegrizzlylabs.sardineandroid.Sardine
    public void setCredentials(@Nullable String username, @Nullable String password, boolean isPreemptive) {
        super.setCredentials(username, password, isPreemptive);
        Object m32811a = m32811a(OkHttpSardine.class, this, Constant.CLIENT);
        Intrinsics.checkNotNull(m32811a, "null cannot be cast to non-null type okhttp3.OkHttpClient");
        this.httpClient = (OkHttpClient) m32811a;
    }

    public final void setHttpClient(@NotNull OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(okHttpClient, "<set-?>");
        this.httpClient = okHttpClient;
    }

    public final void setWebDavURL(@Nullable String str) {
        this.webDavURL = str;
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient$upload$callbacks$1] */
    @NotNull
    public final Response upload(@Nullable String url, @NotNull final File localFile, @Nullable final ProgressHandler progressHandler) throws IOException {
        Intrinsics.checkNotNullParameter(localFile, "localFile");
        Debug.INSTANCE.m32052i(WebDavClient.class, "upload local file: " + localFile.getAbsolutePath(), new Object[0]);
        String extension = FilenameUtils.getExtension(localFile.getAbsolutePath());
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        Intrinsics.checkNotNull(extension);
        final String mimeType = fileExtensionUtils.mimeType(extension);
        final long length = localFile.length();
        final ?? r3 = new ProgressRequestBody.UploadCallbacks() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient$upload$callbacks$1
            @Override // com.onyx.android.sdk.data.utils.ProgressRequestBody.UploadCallbacks
            public void onError() {
            }

            @Override // com.onyx.android.sdk.data.utils.ProgressRequestBody.UploadCallbacks
            public void onFinish() {
            }

            @Override // com.onyx.android.sdk.data.utils.ProgressRequestBody.UploadCallbacks
            public void onProgressUpdate(int percentage) {
                WebDavClient.ProgressHandler progressHandler2 = WebDavClient.ProgressHandler.this;
                if (progressHandler2 != null) {
                    progressHandler2.onProgressUpdate((((float) length) / 100.0f) * percentage);
                }
            }
        };
        return this.httpClient.newCall(newRequestBuilder(url).put(new ProgressRequestBody(localFile, mimeType, r3) { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient$upload$requestBody$1
            @Override // com.onyx.android.sdk.data.utils.ProgressRequestBody
            public void onProgressUpdate(@Nullable Runnable runnable) {
                if (runnable != null) {
                    runnable.run();
                }
            }
        }).build()).execute();
    }
}

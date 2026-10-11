package com.onyx.android.sdk.data.common.cloud;

import android.util.Log;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.sod;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000 42\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u00014B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u00192\b\u0010&\u001a\u0004\u0018\u00010\u0019J$\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u00192\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*J\"\u0010+\u001a\b\u0012\u0004\u0012\u0002H-0,\"\u0004\b\u0000\u0010-2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H-0/H\u0004J!\u00100\u001a\u0002H1\"\u0004\b\u0000\u001012\f\u00102\u001a\b\u0012\u0004\u0012\u0002H10,H\u0004¢\u0006\u0002\u00103J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0018\u00010\u0012j\u0004\u0018\u0001`\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010 \"\u0004\b!\u0010\"¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "()V", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "setClusterInfo", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "kotlin.jvm.PlatformType", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "exception", "Ljava/lang/Exception;", "Lkotlin/Exception;", "getException", "()Ljava/lang/Exception;", "setException", "(Ljava/lang/Exception;)V", sod.f84348A, "", "getFingerprint", "()Ljava/lang/String;", "setFingerprint", "(Ljava/lang/String;)V", "isSaveToLocal", "", Constants.BOOLEAN_VALUE_SIG, "setSaveToLocal", "(Z)V", "dumpMessage", "", "tag", "message", "throwable", "", "errorResponse", "Lorg/json/JSONObject;", "executeCall", "Lretrofit2/Response;", "T", "call", "Lretrofit2/Call;", "getCheckedBody", "R", AbstractLogger.RESPONSE, "(Lretrofit2/Response;)Ljava/lang/Object;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseCloudRequest extends RxBaseRequest<Object> {

    @NotNull
    public static final String BEARER_TOKEN_PREFIX = "Bearer ";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private ClusterInfo clusterInfo;

    @Nullable
    private Exception exception;

    @Nullable
    private String fingerprint;
    private volatile boolean isSaveToLocal = true;
    private EventBus eventBus = EventBus.getDefault();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;", "", "()V", "BEARER_TOKEN_PREFIX", "", "getBearerToken", "token", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getBearerToken(@Nullable String token) {
            return BaseCloudRequest.BEARER_TOKEN_PREFIX + token;
        }

        private Companion() {
        }
    }

    public final void dumpMessage(@Nullable String tag, @Nullable String message) {
        if (Debug.INSTANCE.getDebug()) {
            Intrinsics.checkNotNull(message);
            Log.d(tag, message);
        }
    }

    @NotNull
    public final <T> Response<T> executeCall(@NotNull Call<T> call) throws Exception {
        Intrinsics.checkNotNullParameter(call, "call");
        return RetrofitUtils.INSTANCE.executeCall(call);
    }

    public final <R> R getCheckedBody(@NotNull Response<R> response) throws Exception {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccessful()) {
            return response.body();
        }
        throw new Exception("code:" + response.code() + ", message " + response.message() + ", error body: " + response.errorBody());
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @Nullable
    public final Exception getException() {
        return this.exception;
    }

    @Nullable
    public final String getFingerprint() {
        return this.fingerprint;
    }

    /* renamed from: isSaveToLocal, reason: from getter */
    public final boolean getIsSaveToLocal() {
        return this.isSaveToLocal;
    }

    /* renamed from: setClusterInfo, reason: collision with other method in class */
    public final void m72240setClusterInfo(@Nullable ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
    }

    public final void setEventBus(EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final void setException(@Nullable Exception exc) {
        this.exception = exc;
    }

    /* renamed from: setFingerprint, reason: collision with other method in class */
    public final void m72241setFingerprint(@Nullable String str) {
        this.fingerprint = str;
    }

    public final void setSaveToLocal(boolean z) {
        this.isSaveToLocal = z;
    }

    @NotNull
    public final BaseCloudRequest setClusterInfo(@Nullable ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
        return this;
    }

    @NotNull
    public final BaseCloudRequest setFingerprint(@Nullable String fingerprint) {
        this.fingerprint = fingerprint;
        return this;
    }

    public final void dumpMessage(@Nullable String tag, @Nullable Throwable throwable, @Nullable JSONObject errorResponse) {
        if ((throwable != null ? throwable.getMessage() : null) != null) {
            dumpMessage(tag, throwable.getMessage());
        }
        if (errorResponse != null) {
            dumpMessage(tag, errorResponse.toString());
        }
    }
}

package com.onyx.android.sdk.data.account.bean;

import androidx.core.app.NotificationCompat;
import androidx.core.provider.FontsContractCompat;
import com.alibaba.fastjson2.annotation.JSONField;
import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR&\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001c\u001a\u00020\u001d8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\"\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010%R\u0011\u0010&\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "T", "", "()V", "data", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", Constants.OBJECT_SIG, C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "", "", "getHeaders", "()Ljava/util/Map;", "setHeaders", "(Ljava/util/Map;)V", "message", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "resultCode", "", "getResultCode", "()I", "setResultCode", "(I)V", "serverTime", "", "getServerTime", "()J", "serverTime$delegate", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "tokenExpiredAt", "getTokenExpiredAt", "setTokenExpiredAt", "(J)V", "tokenExpiredAtDate", "Ljava/util/Date;", "getTokenExpiredAtDate", "()Ljava/util/Date;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class DataResponse<T> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DataResponse.class, "serverTime", "getServerTime()J", 0))};

    @Nullable
    private T data;

    @NotNull
    private Map<String, String> headers;

    @JSONField(alternateNames = {NotificationCompat.CATEGORY_MESSAGE})
    @NotNull
    private String message = "";

    @JSONField(alternateNames = {FontsContractCompat.Columns.RESULT_CODE, "ret"})
    private int resultCode;

    /* renamed from: serverTime$delegate, reason: from kotlin metadata */
    @NotNull
    private final DelegatedValueProvider serverTime;
    private long tokenExpiredAt;

    public DataResponse() {
        Map<String, String> emptyMap;
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.headers = emptyMap;
        this.serverTime = new DelegatedValueProvider() { // from class: com.onyx.android.sdk.data.account.bean.DataResponse$serverTime$2
            @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
            public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
                return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
            }

            /* JADX WARN: Code restructure failed: missing block: B:3:0x0013, code lost:
            
                r0 = kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(r0);
             */
            @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Long provideValue(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.account.bean.DataResponse<T> r1) {
                /*
                    r0 = this;
                    java.lang.String r0 = "$this$DelegatedValueProvider"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                    java.util.Map r0 = r1.getHeaders()
                    java.lang.String r1 = "X-Server-Time"
                    java.lang.Object r0 = r0.get(r1)
                    java.lang.String r0 = (java.lang.String) r0
                    if (r0 == 0) goto L1e
                    java.lang.Long r0 = kotlin.text.StringsKt.toLongOrNull(r0)
                    if (r0 == 0) goto L1e
                    long r0 = r0.longValue()
                    goto L24
                L1e:
                    com.onyx.android.sdk.base.utils.DateTimeUtil r0 = com.onyx.android.sdk.base.utils.DateTimeUtil.INSTANCE
                    long r0 = r0.millisOfNow()
                L24:
                    java.lang.Long r0 = java.lang.Long.valueOf(r0)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.account.bean.DataResponse$serverTime$2.provideValue(com.onyx.android.sdk.data.account.bean.DataResponse):java.lang.Long");
            }
        };
    }

    @Nullable
    public final T getData() {
        return this.data;
    }

    @NotNull
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final long getServerTime() {
        return ((Number) this.serverTime.getValue(this, $$delegatedProperties[0])).longValue();
    }

    public final long getTokenExpiredAt() {
        return this.tokenExpiredAt;
    }

    @NotNull
    public final Date getTokenExpiredAtDate() {
        return new Date(this.tokenExpiredAt * 1000);
    }

    public final void setData(@Nullable T t) {
        this.data = t;
    }

    public final void setHeaders(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.headers = map;
    }

    public final void setMessage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.message = str;
    }

    public final void setResultCode(int i) {
        this.resultCode = i;
    }

    public final void setTokenExpiredAt(long j) {
        this.tokenExpiredAt = j;
    }
}

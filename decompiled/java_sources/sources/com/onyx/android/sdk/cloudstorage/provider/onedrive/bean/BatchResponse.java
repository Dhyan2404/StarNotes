package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fR*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchResponse;", "", "", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/HttpResponse;", "a", "Ljava/util/List;", "getResponses", "()Ljava/util/List;", "setResponses", "(Ljava/util/List;)V", "responses", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BatchResponse {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public List<HttpResponse> responses;

    @Nullable
    public final List<HttpResponse> getResponses() {
        return this.responses;
    }

    public final void setResponses(@Nullable List<HttpResponse> list) {
        this.responses = list;
    }
}

package com.onyx.android.sdk.hwr.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\fJ%\u0010\u0006\u001a\u00028\u0001\"\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\u0006\u0010\f¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "S", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", "setBundle", "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "a", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "getBundle", "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V", Constants.CONSTRUCTOR_NAME, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class HWRBaseRequest<T> extends RxBaseRequest<T> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public HWRBundle bundle;

    public HWRBaseRequest(@NotNull HWRBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        this.bundle = bundle;
    }

    @NotNull
    public final HWRBundle getBundle() {
        return this.bundle;
    }

    /* renamed from: setBundle, reason: collision with other method in class */
    public final void m72273setBundle(@NotNull HWRBundle hWRBundle) {
        Intrinsics.checkNotNullParameter(hWRBundle, "<set-?>");
        this.bundle = hWRBundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final <S extends HWRBaseRequest<T>> S setBundle(@NotNull HWRBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        this.bundle = bundle;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type S of com.onyx.android.sdk.hwr.request.HWRBaseRequest.setBundle");
        return this;
    }
}

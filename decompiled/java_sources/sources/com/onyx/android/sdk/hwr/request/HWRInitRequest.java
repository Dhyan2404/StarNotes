package com.onyx.android.sdk.hwr.request;

import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0002\u001a\u00020\u0000H\u0016R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRInitRequest;", "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "execute", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "b", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "input", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRInitRequest extends HWRBaseRequest<HWRInitRequest> {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRInitRequest(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    @NotNull
    public final HWRInput getInput() {
        return this.input;
    }

    public final void setInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.input = hWRInput;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public HWRInitRequest execute() {
        this.input.setClusterInfo(getBundle().getClusterInfo());
        getBundle().getRecognizerManager().initRecognizer(this.input.getRecognizerType(), this.input);
        return this;
    }
}

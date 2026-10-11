package com.onyx.android.sdk.hwr.request;

import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRResourceCheckRequest;", "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "", "execute", "()Ljava/lang/Boolean;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "b", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "input", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResourceCheckRequest extends HWRBaseRequest<Boolean> {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceCheckRequest(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
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
    public Boolean execute() {
        return Boolean.valueOf(HWRFactory.INSTANCE.getResourceCheckerFactory().invoke(HWRRecognizerTypeKt.getEngineType(this.input.getRecognizerType())).checkResource(this.input));
    }
}

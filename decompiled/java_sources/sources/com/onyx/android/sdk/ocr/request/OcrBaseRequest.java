package com.onyx.android.sdk.ocr.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\tR\"\u0010\n\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "a", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "getInput", "()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "setInput", "(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V", "input", Constants.CONSTRUCTOR_NAME, "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class OcrBaseRequest<T> extends RxBaseRequest<T> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public OcrInput input;

    public OcrBaseRequest(@NotNull OcrInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        OcrInput.INSTANCE.getEmpty();
        this.input = input;
    }

    @NotNull
    public final OcrInput getInput() {
        return this.input;
    }

    public final void setInput(@NotNull OcrInput ocrInput) {
        Intrinsics.checkNotNullParameter(ocrInput, "<set-?>");
        this.input = ocrInput;
    }
}

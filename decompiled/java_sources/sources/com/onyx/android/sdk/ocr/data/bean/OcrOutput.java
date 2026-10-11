package com.onyx.android.sdk.ocr.data.bean;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.ocr.data.constant.OcrException;
import com.onyx.android.sdk.ocr.data.model.OcrText;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getSuccess", Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", FirebaseAnalytics.Param.SUCCESS, "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "b", "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "getError", "()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "setError", "(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V", "error", "Lcom/onyx/android/sdk/ocr/data/model/OcrText;", "c", "Lcom/onyx/android/sdk/ocr/data/model/OcrText;", "getResult", "()Lcom/onyx/android/sdk/ocr/data/model/OcrText;", "setResult", "(Lcom/onyx/android/sdk/ocr/data/model/OcrText;)V", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OcrOutput {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean success = true;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public transient OcrException error = OcrException.INSTANCE.getNONE();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public OcrText result = new OcrText();

    @NotNull
    public final OcrException getError() {
        return this.error;
    }

    @NotNull
    public final OcrText getResult() {
        return this.result;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final void setError(@NotNull OcrException ocrException) {
        Intrinsics.checkNotNullParameter(ocrException, "<set-?>");
        this.error = ocrException;
    }

    public final void setResult(@NotNull OcrText ocrText) {
        Intrinsics.checkNotNullParameter(ocrText, "<set-?>");
        this.result = ocrText;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }
}

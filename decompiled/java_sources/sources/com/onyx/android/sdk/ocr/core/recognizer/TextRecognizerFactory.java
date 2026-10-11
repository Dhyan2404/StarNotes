package com.onyx.android.sdk.ocr.core.recognizer;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.constant.OcrException;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;", "input", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TextRecognizerFactory {

    @NotNull
    public static final TextRecognizerFactory INSTANCE = new TextRecognizerFactory();

    @NotNull
    public final TextRecognizer create(@NotNull OcrInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (Intrinsics.areEqual(input.getEngine(), OcrValues.ENGINE_GOOGLE)) {
            return GoogleTextRecognizer.INSTANCE;
        }
        throw OcrException.INSTANCE.m34228of(OcrValues.ERROR_UNKNOWN_ENGINE);
    }
}

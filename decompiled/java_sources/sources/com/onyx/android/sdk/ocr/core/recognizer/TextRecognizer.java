package com.onyx.android.sdk.ocr.core.recognizer;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.bean.OcrOutput;
import com.onyx.android.sdk.ocr.data.constant.OcrException;
import com.onyx.android.sdk.ocr.data.constant.OcrLifecycle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00112\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;", "", "close", "", "ensureOpened", "input", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", RequestParameters.SUBRESOURCE_LIFECYCLE, "Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;", "onError", "e", "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "onSuccess", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", "open", "process", "Lio/reactivex/rxjava3/core/Observable;", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface TextRecognizer {
    void close();

    void ensureOpened(@NotNull OcrInput input);

    @NotNull
    OcrLifecycle lifecycle();

    void onError(@NotNull OcrException e);

    void onSuccess(@NotNull OcrOutput output);

    void open(@NotNull OcrInput input);

    @NotNull
    Observable<OcrOutput> process(@NotNull OcrInput input);
}

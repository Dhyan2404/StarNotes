package com.onyx.android.sdk.ocr.request;

import com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer;
import com.onyx.android.sdk.ocr.core.recognizer.TextRecognizerFactory;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.bean.OcrOutput;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/request/OcrProcessRequest;", "Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", "input", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V", "execute", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OcrProcessRequest extends OcrBaseRequest<Observable<OcrOutput>> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OcrProcessRequest(@NotNull OcrInput input) {
        super(input);
        Intrinsics.checkNotNullParameter(input, "input");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Observable<OcrOutput> execute() {
        TextRecognizer create = TextRecognizerFactory.INSTANCE.create(getInput());
        create.ensureOpened(getInput());
        return create.process(getInput());
    }
}

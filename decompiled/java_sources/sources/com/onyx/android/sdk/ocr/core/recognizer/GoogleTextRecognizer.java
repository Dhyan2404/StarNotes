package com.onyx.android.sdk.ocr.core.recognizer;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognition;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.ocr.core.option.RecognizerOptionFactory;
import com.onyx.android.sdk.ocr.core.recognizer.GoogleTextRecognizer;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.bean.OcrOutput;
import com.onyx.android.sdk.ocr.data.constant.OcrException;
import com.onyx.android.sdk.ocr.data.constant.OcrLifecycle;
import com.onyx.android.sdk.ocr.utils.GoogleOcrUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\u0016\u001a\u00060\u0012j\u0002`\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R)\u0010\u001e\u001a\u0015\u0012\f\u0012\n \u001a*\u0004\u0018\u00010\u00070\u00070\u0019¢\u0006\u0002\b\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;", "Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "input", "", "open", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", "process", "close", Constants.ELEMNAME_OUTPUT_STRING, "onSuccess", "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "e", "onError", "Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, "ensureOpened", "Lcom/google/mlkit/vision/text/TextRecognizer;", "Lcom/onyx/android/sdk/ocr/core/recognizer/MlRecognizer;", "a", "Lcom/google/mlkit/vision/text/TextRecognizer;", "recognizer", "b", "Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "c", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "publisher", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GoogleTextRecognizer implements TextRecognizer {

    /* renamed from: a, reason: from kotlin metadata */
    public static com.google.mlkit.vision.text.TextRecognizer recognizer;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static PublishSubject<OcrOutput> publisher;

    @NotNull
    public static final GoogleTextRecognizer INSTANCE = new GoogleTextRecognizer();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static OcrLifecycle lifecycle = OcrLifecycle.CREATED;

    static {
        PublishSubject<OcrOutput> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        publisher = create;
    }

    /* renamed from: c */
    public static final void m34226c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* renamed from: d */
    public static final void m34227d(Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        INSTANCE.onError(OcrException.INSTANCE.m34231of(e));
    }

    @Override // com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer
    public void close() {
        lifecycle = OcrLifecycle.CLOSED;
    }

    @Override // com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer
    public void ensureOpened(@NotNull OcrInput input) {
        List listOf;
        Intrinsics.checkNotNullParameter(input, "input");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new OcrLifecycle[]{OcrLifecycle.CREATED, OcrLifecycle.CLOSED});
        if (listOf.contains(lifecycle)) {
            open(input);
        }
    }

    @Override // com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer
    @NotNull
    public OcrLifecycle lifecycle() {
        return lifecycle;
    }

    @Override // com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer
    public void onError(@NotNull OcrException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        lifecycle = OcrLifecycle.IDLE;
        publisher.onError(e);
    }

    @Override // com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer
    public void onSuccess(@NotNull OcrOutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        lifecycle = OcrLifecycle.IDLE;
        publisher.onNext(output);
        publisher.onComplete();
    }

    @Override // com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer
    public void open(@NotNull OcrInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        com.google.mlkit.vision.text.TextRecognizer client = TextRecognition.getClient(RecognizerOptionFactory.INSTANCE.create(input));
        Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
        recognizer = client;
        lifecycle = OcrLifecycle.OPENED;
    }

    @Override // com.onyx.android.sdk.ocr.core.recognizer.TextRecognizer
    @NotNull
    public Observable<OcrOutput> process(@NotNull OcrInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        ensureOpened(input);
        lifecycle = OcrLifecycle.PROCESSING;
        PublishSubject<OcrOutput> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        publisher = create;
        try {
            InputImage fromFilePath = InputImage.fromFilePath(ResManager.INSTANCE.getAppContext(), input.getUri());
            Intrinsics.checkNotNullExpressionValue(fromFilePath, "fromFilePath(...)");
            com.google.mlkit.vision.text.TextRecognizer textRecognizer = recognizer;
            if (textRecognizer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recognizer");
                textRecognizer = null;
            }
            Task<Text> process = textRecognizer.process(fromFilePath);
            final GoogleTextRecognizer$process$1 googleTextRecognizer$process$1 = new Function1<Text, Unit>() { // from class: com.onyx.android.sdk.ocr.core.recognizer.GoogleTextRecognizer$process$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Text text) {
                    invoke2(text);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Text text) {
                    OcrOutput ocrOutput = new OcrOutput();
                    GoogleOcrUtils googleOcrUtils = GoogleOcrUtils.INSTANCE;
                    Intrinsics.checkNotNull(text);
                    ocrOutput.setResult(googleOcrUtils.convert(text));
                    GoogleTextRecognizer.INSTANCE.onSuccess(ocrOutput);
                }
            };
            process.addOnSuccessListener(new OnSuccessListener() { // from class: com.sunia.HTREnginev2.p4h
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    GoogleTextRecognizer.m34226c(Function1.this, obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.sunia.HTREnginev2.q4h
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    GoogleTextRecognizer.m34227d(exc);
                }
            });
            return publisher;
        } catch (Throwable th) {
            lifecycle = OcrLifecycle.IDLE;
            throw OcrException.INSTANCE.m34231of(th);
        }
    }
}

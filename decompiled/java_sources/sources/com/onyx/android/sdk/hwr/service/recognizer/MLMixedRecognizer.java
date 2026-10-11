package com.onyx.android.sdk.hwr.service.recognizer;

import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.digitalink.DigitalInkRecognition;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizer;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;
import com.google.mlkit.vision.digitalink.Ink;
import com.google.mlkit.vision.digitalink.RecognitionCandidate;
import com.google.mlkit.vision.digitalink.RecognitionContext;
import com.google.mlkit.vision.digitalink.RecognitionResult;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.constant.HWRLifecycle;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.service.comparator.CandidateSort;
import com.onyx.android.sdk.hwr.service.manager.MLModelManager;
import com.onyx.android.sdk.hwr.service.predictor.MLShapePredictor;
import com.onyx.android.sdk.hwr.service.predictor.VerificationResult;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.onyx.android.sdk.hwr.utils.MLUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b+\u0010,J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\"\u0010\u001c\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\"\u0010\u001f\u001a\u00020\t8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010%\u001a\u00020\t8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010 \u001a\u0004\b&\u0010\"\"\u0004\b'\u0010$R\"\u0010(\u001a\u00020\t8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b(\u0010 \u001a\u0004\b)\u0010\"\"\u0004\b*\u0010$¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;", "Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "open", "close", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", SyncConstant.EXPORT_DIR_NAME, "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;", "recognizer", "Lcom/google/mlkit/vision/digitalink/Ink;", "ink", "Lcom/google/mlkit/vision/digitalink/RecognitionContext;", "context", "", "Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;", "a", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;", "textModel", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;", "getTextModel", "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;", "setTextModel", "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V", "gestureModel", "getGestureModel", "setGestureModel", "drawModel", "getDrawModel", "setDrawModel", "textRecognizer", "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;", "getTextRecognizer", "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;", "setTextRecognizer", "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V", "gestureRecognizer", "getGestureRecognizer", "setGestureRecognizer", "drawRecognizer", "getDrawRecognizer", "setDrawRecognizer", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMLMixedRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLMixedRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1855#2,2:158\n1855#2,2:160\n1549#2:162\n1620#2,3:163\n1855#2,2:166\n1549#2:168\n1620#2,3:169\n*S KotlinDebug\n*F\n+ 1 MLMixedRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer\n*L\n113#1:158,2\n120#1:160,2\n128#1:162\n128#1:163,3\n132#1:166,2\n137#1:168\n137#1:169,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MLMixedRecognizer extends MLBaseRecognizer {
    public DigitalInkRecognitionModel drawModel;
    public DigitalInkRecognizer drawRecognizer;
    public DigitalInkRecognitionModel gestureModel;
    public DigitalInkRecognizer gestureRecognizer;
    public DigitalInkRecognitionModel textModel;
    public DigitalInkRecognizer textRecognizer;

    @Inject
    public MLMixedRecognizer() {
    }

    /* renamed from: a */
    public final List<RecognitionCandidate> m33385a(DigitalInkRecognizer recognizer, Ink ink, RecognitionContext context) {
        Task<RecognitionResult> recognize = recognizer.recognize(ink);
        Intrinsics.checkNotNullExpressionValue(recognize, "recognize(...)");
        List<RecognitionCandidate> candidates = ((RecognitionResult) MLModelManager.INSTANCE.execute(recognize)).getCandidates();
        Intrinsics.checkNotNullExpressionValue(candidates, "getCandidates(...)");
        return candidates;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.MLBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void close() {
        HWRLifecycle hWRLifecycle = getCom.alibaba.sdk.android.oss.common.RequestParameters.SUBRESOURCE_LIFECYCLE java.lang.String();
        HWRLifecycle hWRLifecycle2 = HWRLifecycle.CLOSED;
        if (hWRLifecycle.compareTo(hWRLifecycle2) >= 0) {
            return;
        }
        if (getCom.alibaba.sdk.android.oss.common.RequestParameters.SUBRESOURCE_LIFECYCLE java.lang.String() != HWRLifecycle.CLEARED) {
            clear();
        }
        if (getOpenInput().getIsTextEnable()) {
            getTextRecognizer().close();
        }
        if (getOpenInput().getIsGestureEnable()) {
            getGestureRecognizer().close();
        }
        if (getOpenInput().getIsShapeEnable()) {
            getDrawRecognizer().close();
        }
        setLifecycle(hWRLifecycle2);
    }

    /* JADX WARN: Type inference failed for: r3v19, types: [java.util.List, T] */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, java.util.ArrayList] */
    @Override // com.onyx.android.sdk.hwr.service.recognizer.MLBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    @NotNull
    public HWRConvertBean export(@NotNull HWRInput input) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(input, "input");
        HWRDataUtils hWRDataUtils = HWRDataUtils.INSTANCE;
        if (hWRDataUtils.getReadDebugPoints()) {
            CollectionKt.reset(input.getPointerEvents(), hWRDataUtils.readFromDebugFile(hWRDataUtils.getDebugFile()));
        }
        setLifecycle(HWRLifecycle.PROCESSING);
        if (input.getPointerEvents().isEmpty()) {
            HWRConvertBean hWRConvertBean = new HWRConvertBean();
            hWRConvertBean.setType(input.getContentType());
            hWRConvertBean.setLabel("");
            return hWRConvertBean;
        }
        setIdle(false);
        try {
            MLUtils mLUtils = MLUtils.INSTANCE;
            Ink ink = mLUtils.getInk(input);
            RecognitionContext preContext = mLUtils.getPreContext(input);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new ArrayList();
            if (input.getIsTextEnable()) {
                Iterator<T> it2 = m33385a(getTextRecognizer(), ink, preContext).iterator();
                while (it2.hasNext()) {
                    String text = ((RecognitionCandidate) it2.next()).getText();
                    Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                    ((List) objectRef.element).add(candidateToCandidate("Text", text, input.getPointerEvents()));
                }
            }
            if (input.getIsGestureEnable()) {
                Iterator<T> it3 = m33385a(getGestureRecognizer(), ink, preContext).iterator();
                while (it3.hasNext()) {
                    String text2 = ((RecognitionCandidate) it3.next()).getText();
                    Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                    ((List) objectRef.element).add(candidateToCandidate(HWRValues.PART_TYPE_GESTURE, text2, input.getPointerEvents()));
                }
            }
            if (input.getIsShapeEnable()) {
                List<RecognitionCandidate> m33385a = m33385a(getDrawRecognizer(), MLUtils.INSTANCE.getTimelessInk(input.getPointerEvents()), null);
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(m33385a, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it4 = m33385a.iterator();
                while (it4.hasNext()) {
                    arrayList.add(((RecognitionCandidate) it4.next()).getText());
                }
                HWRDataUtils.INSTANCE.saveToDebugFile(input);
                for (VerificationResult verificationResult : MLShapePredictor.INSTANCE.predict(arrayList, MLUtils.INSTANCE.preHandleInputPoints(input.getPointerEvents()))) {
                    ((List) objectRef.element).add(candidateToCandidate(HWRValues.PART_TYPE_SHAPE, verificationResult.getShape(), verificationResult.getPoints()));
                }
                objectRef.element = CandidateSort.INSTANCE.compareAndSort((List) objectRef.element, HWRDataUtils.INSTANCE.toTouchPointList(input.getPointerEvents()));
                Debug debug = Debug.INSTANCE;
                String name = MLMixedRecognizer.class.getName();
                StringBuilder sb = new StringBuilder();
                sb.append("shape candidates: ");
                Iterable iterable = (Iterable) objectRef.element;
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                Iterator it5 = iterable.iterator();
                while (it5.hasNext()) {
                    arrayList2.add(((HWRCandidate) it5.next()).getShapeType());
                }
                sb.append(arrayList2);
                debug.m32038d(name, sb.toString(), new Object[0]);
            }
            HWRConvertBean hWRConvertBean2 = new HWRConvertBean();
            hWRConvertBean2.setType(HWRValues.PART_TYPE_MIXED);
            hWRConvertBean2.setCandidates((List) objectRef.element);
            optimize(hWRConvertBean2, input);
            return hWRConvertBean2;
        } finally {
        }
    }

    @NotNull
    public final DigitalInkRecognitionModel getDrawModel() {
        DigitalInkRecognitionModel digitalInkRecognitionModel = this.drawModel;
        if (digitalInkRecognitionModel != null) {
            return digitalInkRecognitionModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("drawModel");
        return null;
    }

    @NotNull
    public final DigitalInkRecognizer getDrawRecognizer() {
        DigitalInkRecognizer digitalInkRecognizer = this.drawRecognizer;
        if (digitalInkRecognizer != null) {
            return digitalInkRecognizer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("drawRecognizer");
        return null;
    }

    @NotNull
    public final DigitalInkRecognitionModel getGestureModel() {
        DigitalInkRecognitionModel digitalInkRecognitionModel = this.gestureModel;
        if (digitalInkRecognitionModel != null) {
            return digitalInkRecognitionModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gestureModel");
        return null;
    }

    @NotNull
    public final DigitalInkRecognizer getGestureRecognizer() {
        DigitalInkRecognizer digitalInkRecognizer = this.gestureRecognizer;
        if (digitalInkRecognizer != null) {
            return digitalInkRecognizer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gestureRecognizer");
        return null;
    }

    @NotNull
    public final DigitalInkRecognitionModel getTextModel() {
        DigitalInkRecognitionModel digitalInkRecognitionModel = this.textModel;
        if (digitalInkRecognitionModel != null) {
            return digitalInkRecognitionModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("textModel");
        return null;
    }

    @NotNull
    public final DigitalInkRecognizer getTextRecognizer() {
        DigitalInkRecognizer digitalInkRecognizer = this.textRecognizer;
        if (digitalInkRecognizer != null) {
            return digitalInkRecognizer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("textRecognizer");
        return null;
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.MLBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void open(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        setOpenInput(input);
        if (input.getIsTextEnable()) {
            HWRResource hWRResource = new HWRResource();
            hWRResource.setContentType("Text");
            hWRResource.setLang(input.getLang());
            setTextModel(MLModelManager.INSTANCE.selectModel(hWRResource));
            DigitalInkRecognizer client = DigitalInkRecognition.getClient(DigitalInkRecognizerOptions.builder(getTextModel()).build());
            Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
            setTextRecognizer(client);
        }
        if (input.getIsGestureEnable()) {
            HWRResource hWRResource2 = new HWRResource();
            hWRResource2.setContentType(HWRValues.PART_TYPE_GESTURE);
            hWRResource2.setLang(input.getLang());
            setGestureModel(MLModelManager.INSTANCE.selectModel(hWRResource2));
            DigitalInkRecognizer client2 = DigitalInkRecognition.getClient(DigitalInkRecognizerOptions.builder(getGestureModel()).build());
            Intrinsics.checkNotNullExpressionValue(client2, "getClient(...)");
            setGestureRecognizer(client2);
        }
        if (input.getIsShapeEnable()) {
            HWRResource hWRResource3 = new HWRResource();
            hWRResource3.setContentType(HWRValues.PART_TYPE_DRAW);
            hWRResource3.setLang(input.getLang());
            setDrawModel(MLModelManager.INSTANCE.selectModel(hWRResource3));
            DigitalInkRecognizer client3 = DigitalInkRecognition.getClient(DigitalInkRecognizerOptions.builder(getDrawModel()).build());
            Intrinsics.checkNotNullExpressionValue(client3, "getClient(...)");
            setDrawRecognizer(client3);
        }
        setLifecycle(HWRLifecycle.OPENED);
    }

    public final void setDrawModel(@NotNull DigitalInkRecognitionModel digitalInkRecognitionModel) {
        Intrinsics.checkNotNullParameter(digitalInkRecognitionModel, "<set-?>");
        this.drawModel = digitalInkRecognitionModel;
    }

    public final void setDrawRecognizer(@NotNull DigitalInkRecognizer digitalInkRecognizer) {
        Intrinsics.checkNotNullParameter(digitalInkRecognizer, "<set-?>");
        this.drawRecognizer = digitalInkRecognizer;
    }

    public final void setGestureModel(@NotNull DigitalInkRecognitionModel digitalInkRecognitionModel) {
        Intrinsics.checkNotNullParameter(digitalInkRecognitionModel, "<set-?>");
        this.gestureModel = digitalInkRecognitionModel;
    }

    public final void setGestureRecognizer(@NotNull DigitalInkRecognizer digitalInkRecognizer) {
        Intrinsics.checkNotNullParameter(digitalInkRecognizer, "<set-?>");
        this.gestureRecognizer = digitalInkRecognizer;
    }

    public final void setTextModel(@NotNull DigitalInkRecognitionModel digitalInkRecognitionModel) {
        Intrinsics.checkNotNullParameter(digitalInkRecognitionModel, "<set-?>");
        this.textModel = digitalInkRecognitionModel;
    }

    public final void setTextRecognizer(@NotNull DigitalInkRecognizer digitalInkRecognizer) {
        Intrinsics.checkNotNullParameter(digitalInkRecognizer, "<set-?>");
        this.textRecognizer = digitalInkRecognizer;
    }
}

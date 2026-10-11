package com.onyx.android.sdk.hwr.service.recognizer;

import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.digitalink.DigitalInkRecognition;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizer;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;
import com.google.mlkit.vision.digitalink.Ink;
import com.google.mlkit.vision.digitalink.RecognitionCandidate;
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

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer;", "Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;", "()V", "close", "", SyncConstant.EXPORT_DIR_NAME, "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "input", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "open", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMLCommonRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLCommonRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1855#2,2:108\n1549#2:110\n1620#2,3:111\n1855#2,2:114\n1549#2:116\n1620#2,3:117\n*S KotlinDebug\n*F\n+ 1 MLCommonRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer\n*L\n79#1:108,2\n84#1:110\n84#1:111,3\n88#1:114,2\n93#1:116\n93#1:117,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MLCommonRecognizer extends MLBaseRecognizer {
    @Inject
    public MLCommonRecognizer() {
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
        getRecognizer().close();
        setLifecycle(hWRLifecycle2);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List, T] */
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
            Ink timelessInk = input.getIsShapeEnable() ? MLUtils.INSTANCE.getTimelessInk(input.getPointerEvents()) : MLUtils.INSTANCE.getInk(input);
            MLUtils.INSTANCE.getPreContext(input);
            Task<RecognitionResult> recognize = getRecognizer().recognize(timelessInk);
            Intrinsics.checkNotNullExpressionValue(recognize, "recognize(...)");
            List<RecognitionCandidate> candidates = ((RecognitionResult) MLModelManager.INSTANCE.execute(recognize)).getCandidates();
            Intrinsics.checkNotNullExpressionValue(candidates, "getCandidates(...)");
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new ArrayList();
            if (Intrinsics.areEqual(getOpenInput().getContentType(), HWRValues.PART_TYPE_SHAPE)) {
                List<RecognitionCandidate> list = candidates;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((RecognitionCandidate) it2.next()).getText());
                }
                HWRDataUtils.INSTANCE.saveToDebugFile(input);
                for (VerificationResult verificationResult : MLShapePredictor.INSTANCE.predict(arrayList, MLUtils.INSTANCE.preHandleInputPoints(input.getPointerEvents()))) {
                    ((List) objectRef.element).add(candidateToCandidate(HWRValues.PART_TYPE_SHAPE, verificationResult.getShape(), verificationResult.getPoints()));
                }
                objectRef.element = CandidateSort.INSTANCE.compareAndSort((List) objectRef.element, HWRDataUtils.INSTANCE.toTouchPointList(input.getPointerEvents()));
                Debug debug = Debug.INSTANCE;
                String name = MLCommonRecognizer.class.getName();
                StringBuilder sb = new StringBuilder();
                sb.append("shape candidates: ");
                Iterable iterable = (Iterable) objectRef.element;
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                Iterator it3 = iterable.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(((HWRCandidate) it3.next()).getShapeType());
                }
                sb.append(arrayList2);
                debug.m32038d(name, sb.toString(), new Object[0]);
            } else {
                for (RecognitionCandidate recognitionCandidate : candidates) {
                    String contentType = getOpenInput().getContentType();
                    String text = recognitionCandidate.getText();
                    Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                    ((List) objectRef.element).add(candidateToCandidate(contentType, text, input.getPointerEvents()));
                }
            }
            HWRConvertBean hWRConvertBean2 = new HWRConvertBean();
            hWRConvertBean2.setType(input.getContentType());
            hWRConvertBean2.setCandidates((List) objectRef.element);
            optimize(hWRConvertBean2, input);
            return hWRConvertBean2;
        } finally {
        }
    }

    @Override // com.onyx.android.sdk.hwr.service.recognizer.MLBaseRecognizer, com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer
    public void open(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        setOpenInput(input);
        HWRResource hWRResource = new HWRResource();
        hWRResource.setEngineType(HWRValues.ENGINE_ML);
        hWRResource.setContentType(input.getContentType());
        hWRResource.setLang(input.getLang());
        setModel(MLModelManager.INSTANCE.selectModel(hWRResource));
        DigitalInkRecognizer client = DigitalInkRecognition.getClient(DigitalInkRecognizerOptions.builder(getModel()).build());
        Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
        setRecognizer(client);
        setLifecycle(HWRLifecycle.OPENED);
    }
}

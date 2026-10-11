package com.onyx.android.sdk.hwr.service.predictor;

import android.util.Log;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ElementCounter;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002J(\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;", "", "", "", "objectTypes", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "pointerEvents", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", "predict", "predictWithMatchTest", "Lcom/onyx/android/sdk/base/utils/ElementCounter;", "a", "Lcom/onyx/android/sdk/base/utils/ElementCounter;", Constants.ELEMNAME_COUNTER_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMLShapePredictor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLShapePredictor.kt\ncom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n766#2:53\n857#2,2:54\n1855#2:56\n1549#2:57\n1620#2,3:58\n1549#2:61\n1620#2,3:62\n1856#2:65\n1549#2:66\n1620#2,3:67\n1855#2,2:70\n1549#2:72\n1620#2,3:73\n*S KotlinDebug\n*F\n+ 1 MLShapePredictor.kt\ncom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor\n*L\n15#1:53\n15#1:54,2\n31#1:56\n32#1:57\n32#1:58,3\n33#1:61\n33#1:62,3\n31#1:65\n37#1:66\n37#1:67,3\n44#1:70,2\n48#1:72\n48#1:73,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MLShapePredictor {

    @NotNull
    public static final MLShapePredictor INSTANCE = new MLShapePredictor();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final ElementCounter<String> counter = new ElementCounter<>();

    @NotNull
    public final List<VerificationResult> predict(@NotNull List<String> objectTypes, @NotNull List<HWRPointerEvent> pointerEvents) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        Set intersect;
        Intrinsics.checkNotNullParameter(objectTypes, "objectTypes");
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        ElementCounter elementCounter = new ElementCounter();
        HashMap hashMap = new HashMap();
        List<IShapeVerification> allVerifications = ShapeVerificationFactory.INSTANCE.allVerifications();
        ArrayList<IShapeVerification> arrayList = new ArrayList();
        for (Object obj : allVerifications) {
            IShapeVerification iShapeVerification = (IShapeVerification) obj;
            boolean z = false;
            if (CollectionKt.containAnyIgnoreCase(iShapeVerification.similarObjectTypes(), objectTypes)) {
                iShapeVerification.input(pointerEvents);
                try {
                    z = iShapeVerification.verify();
                } catch (Throwable unused) {
                }
                if (z) {
                    hashMap.put(iShapeVerification.shapeName(), iShapeVerification.output());
                }
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        for (IShapeVerification iShapeVerification2 : arrayList) {
            List<String> similarObjectTypes = iShapeVerification2.similarObjectTypes();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(similarObjectTypes, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator<T> it2 = similarObjectTypes.iterator();
            while (it2.hasNext()) {
                String lowerCase = ((String) it2.next()).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                arrayList2.add(lowerCase);
            }
            List<String> list = objectTypes;
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                String lowerCase2 = ((String) it3.next()).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                arrayList3.add(lowerCase2);
            }
            intersect = CollectionsKt___CollectionsKt.intersect(arrayList2, arrayList3);
            elementCounter.put((ElementCounter) iShapeVerification2.shapeName(), intersect.size());
        }
        List descList = elementCounter.toDescList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(descList, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
        Iterator it4 = descList.iterator();
        while (it4.hasNext()) {
            Object obj2 = hashMap.get((String) it4.next());
            Intrinsics.checkNotNull(obj2);
            arrayList4.add((VerificationResult) obj2);
        }
        return arrayList4;
    }

    @NotNull
    public final List<VerificationResult> predictWithMatchTest(@NotNull List<String> objectTypes, @NotNull List<HWRPointerEvent> pointerEvents) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(objectTypes, "objectTypes");
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        Iterator<T> it2 = objectTypes.iterator();
        while (it2.hasNext()) {
            counter.put((String) it2.next());
        }
        ElementCounter<String> elementCounter = counter;
        Log.d("HWRObjectType", elementCounter.printDescList());
        List<String> descList = elementCounter.toDescList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(descList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it3 = descList.iterator();
        while (it3.hasNext()) {
            arrayList.add(new VerificationResult((String) it3.next(), pointerEvents));
        }
        return arrayList;
    }
}

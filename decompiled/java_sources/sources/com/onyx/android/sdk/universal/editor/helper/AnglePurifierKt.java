package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\u001a\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "", "", "anglesInDeg", "", "purifyAngles", "b", "a", "c", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAnglePurifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnglePurifier.kt\ncom/onyx/android/sdk/universal/editor/helper/AnglePurifierKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1549#2:86\n1620#2,3:87\n1549#2:90\n1620#2,3:91\n1549#2:94\n1620#2,3:95\n1549#2:98\n1620#2,3:99\n1045#2:102\n1549#2:103\n1620#2,3:104\n1549#2:107\n1620#2,3:108\n1549#2:111\n1620#2,3:112\n1045#2:115\n1549#2:116\n1620#2,3:117\n*S KotlinDebug\n*F\n+ 1 AnglePurifier.kt\ncom/onyx/android/sdk/universal/editor/helper/AnglePurifierKt\n*L\n30#1:82\n30#1:83,3\n31#1:86\n31#1:87,3\n44#1:90\n44#1:91,3\n48#1:94\n48#1:95,3\n49#1:98\n49#1:99,3\n50#1:102\n62#1:103\n62#1:104,3\n66#1:107\n66#1:108,3\n67#1:111\n67#1:112,3\n68#1:115\n80#1:116\n80#1:117,3\n*E\n"})
/* loaded from: classes8.dex */
public final class AnglePurifierKt {
    /* renamed from: a */
    public static final List<Integer> m41204a(List<Float> list) {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        List mutableList2;
        List sortedWith;
        float sumOfFloat;
        int roundToInt;
        int roundToInt2;
        int collectionSizeOrDefault3;
        int roundToInt3;
        List<Float> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(FloatKt.floor(((Number) it2.next()).floatValue())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            float floatValue = ((Number) it3.next()).floatValue();
            arrayList2.add(Float.valueOf(floatValue - FloatKt.floor(floatValue)));
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list2, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.helper.AnglePurifierKt$purifyIsoscelesTriangle$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                float floatValue2 = ((Number) t).floatValue();
                float f = 60;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(Math.abs(floatValue2 - f)), Float.valueOf(Math.abs(((Number) t2).floatValue() - f)));
                return compareValues;
            }
        });
        sumOfFloat = CollectionsKt___CollectionsKt.sumOfFloat(mutableList2);
        roundToInt = MathKt__MathJVMKt.roundToInt(sumOfFloat);
        if (roundToInt == 1) {
            int indexOf = list.indexOf(sortedWith.get(2));
            mutableList.set(indexOf, Float.valueOf(FloatKt.floor(((Number) mutableList.get(indexOf)).floatValue()) + 0.5f));
        }
        roundToInt2 = MathKt__MathJVMKt.roundToInt(sumOfFloat);
        if (roundToInt2 == 2) {
            int indexOf2 = list.indexOf(sortedWith.get(0));
            mutableList.set(indexOf2, Float.valueOf(FloatKt.floor(((Number) mutableList.get(indexOf2)).floatValue()) + 0.5f));
            int lastIndexOf = list.lastIndexOf(sortedWith.get(1));
            mutableList.set(lastIndexOf, Float.valueOf(FloatKt.floor(((Number) mutableList.get(lastIndexOf)).floatValue()) + 0.5f));
        }
        List list3 = mutableList;
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
        Iterator it4 = list3.iterator();
        while (it4.hasNext()) {
            roundToInt3 = MathKt__MathJVMKt.roundToInt(((Number) it4.next()).floatValue());
            arrayList3.add(Integer.valueOf(roundToInt3));
        }
        return arrayList3;
    }

    /* renamed from: b */
    public static final List<Integer> m41205b(List<Float> list) {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        List mutableList2;
        List sorted;
        float sumOfFloat;
        int roundToInt;
        int roundToInt2;
        int collectionSizeOrDefault3;
        int roundToInt3;
        List<Float> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(FloatKt.floor(((Number) it2.next()).floatValue())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            float floatValue = ((Number) it3.next()).floatValue();
            arrayList2.add(Float.valueOf(floatValue - FloatKt.floor(floatValue)));
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        List list3 = mutableList2;
        sorted = CollectionsKt___CollectionsKt.sorted(list3);
        sumOfFloat = CollectionsKt___CollectionsKt.sumOfFloat(list3);
        roundToInt = MathKt__MathJVMKt.roundToInt(sumOfFloat);
        if (roundToInt == 1) {
            int indexOf = mutableList2.indexOf(sorted.get(2));
            mutableList.set(indexOf, Float.valueOf(FloatKt.floor(((Number) mutableList.get(indexOf)).floatValue()) + 0.5f));
        }
        roundToInt2 = MathKt__MathJVMKt.roundToInt(sumOfFloat);
        if (roundToInt2 == 2) {
            int indexOf2 = mutableList2.indexOf(sorted.get(1));
            mutableList.set(indexOf2, Float.valueOf(FloatKt.floor(((Number) mutableList.get(indexOf2)).floatValue()) + 0.5f));
            int lastIndexOf = mutableList2.lastIndexOf(sorted.get(2));
            mutableList.set(lastIndexOf, Float.valueOf(FloatKt.floor(((Number) mutableList.get(lastIndexOf)).floatValue()) + 0.5f));
        }
        List list4 = mutableList;
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
        Iterator it4 = list4.iterator();
        while (it4.hasNext()) {
            roundToInt3 = MathKt__MathJVMKt.roundToInt(((Number) it4.next()).floatValue());
            arrayList3.add(Integer.valueOf(roundToInt3));
        }
        return arrayList3;
    }

    /* renamed from: c */
    public static final List<Integer> m41206c(List<Float> list) {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        List mutableList2;
        List sortedWith;
        float sumOfFloat;
        int roundToInt;
        int roundToInt2;
        int collectionSizeOrDefault3;
        int roundToInt3;
        List<Float> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(FloatKt.floor(((Number) it2.next()).floatValue())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            float floatValue = ((Number) it3.next()).floatValue();
            arrayList2.add(Float.valueOf(floatValue - FloatKt.floor(floatValue)));
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list2, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.helper.AnglePurifierKt$purifyRightTriangle$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                float floatValue2 = ((Number) t).floatValue();
                float f = 90;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(Math.abs(floatValue2 - f)), Float.valueOf(Math.abs(((Number) t2).floatValue() - f)));
                return compareValues;
            }
        });
        sumOfFloat = CollectionsKt___CollectionsKt.sumOfFloat(mutableList2);
        roundToInt = MathKt__MathJVMKt.roundToInt(sumOfFloat);
        if (roundToInt == 1) {
            int indexOf = list.indexOf(sortedWith.get(1));
            mutableList.set(indexOf, Float.valueOf(FloatKt.floor(((Number) mutableList.get(indexOf)).floatValue()) + 0.5f));
        }
        roundToInt2 = MathKt__MathJVMKt.roundToInt(sumOfFloat);
        if (roundToInt2 == 2) {
            int indexOf2 = list.indexOf(sortedWith.get(0));
            mutableList.set(indexOf2, Float.valueOf(FloatKt.floor(((Number) mutableList.get(indexOf2)).floatValue()) + 0.5f));
            int lastIndexOf = list.lastIndexOf(sortedWith.get(1));
            mutableList.set(lastIndexOf, Float.valueOf(FloatKt.floor(((Number) mutableList.get(lastIndexOf)).floatValue()) + 0.5f));
        }
        List list3 = mutableList;
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
        Iterator it4 = list3.iterator();
        while (it4.hasNext()) {
            roundToInt3 = MathKt__MathJVMKt.roundToInt(((Number) it4.next()).floatValue());
            arrayList3.add(Integer.valueOf(roundToInt3));
        }
        return arrayList3;
    }

    @NotNull
    public static final List<Integer> purifyAngles(@NotNull UniversalShape universalShape, @NotNull List<Float> anglesInDeg) {
        List<Integer> emptyList;
        List<Integer> emptyList2;
        List<Integer> emptyList3;
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        Intrinsics.checkNotNullParameter(anglesInDeg, "anglesInDeg");
        if (!UniversalShapeAbilityFilterKt.shouldPurifyAngles(universalShape)) {
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList3;
        }
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        try {
            int hashCode = universalShapeType.hashCode();
            if (hashCode != -1824503811) {
                if (hashCode != 232134859) {
                    if (hashCode == 1497762312 && universalShapeType.equals("triangle")) {
                        return m41205b(anglesInDeg);
                    }
                } else if (universalShapeType.equals(UniversalShapeTypeConst.RIGHT_TRIANGLE)) {
                    return m41206c(anglesInDeg);
                }
            } else if (universalShapeType.equals(UniversalShapeTypeConst.ISOSCELES_TRIANGLE)) {
                return m41204a(anglesInDeg);
            }
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        } catch (Throwable unused) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }
}

package com.onyx.android.sdk.note.common.text.layout;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.onyx.android.sdk.base.data.FontPathRect;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.text.layout.TextShapeSegmenter;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
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
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J0\u0010\b\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00022\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\u0006\u0010\u0007\u001a\u00020\u0006J2\u0010\r\u001a\u00020\f2 \u0010\u000b\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\t0\u0002j\u0002`\n0\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J,\u0010\u000f\u001a\u00020\f2\u001a\u0010\u000e\u001a\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\t0\u0002j\u0002`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002JU\u0010\u0016\u001a\u00020\u00102\u001a\u0010\u000e\u001a\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\t0\u0002j\u0002`\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;", "", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeList;", "shapes", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "args", Constants.ATTRNAME_FORMAT, "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegment;", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeLine;", "lines", "", "c", "line", "a", "", "blockAngle", "Landroid/graphics/Matrix;", "normalMatrix", "rotateMatrix", "lastBaseLine", "b", "(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;FLandroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Float;)F", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextShapeFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapeFormatter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,220:1\n1045#2:221\n1549#2:222\n1620#2,2:223\n1549#2:225\n1620#2,2:226\n1549#2:228\n1620#2,3:229\n1622#2:232\n1622#2:233\n1549#2:234\n1620#2,3:235\n819#2:238\n847#2,2:239\n1855#2,2:241\n1855#2,2:243\n1864#2,2:245\n1549#2:247\n1620#2,3:248\n3464#2,10:251\n1864#2,3:266\n1866#2:269\n1864#2,2:270\n1864#2,3:272\n1866#2:275\n703#3,5:261\n*S KotlinDebug\n*F\n+ 1 TextShapeFormatter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter\n*L\n16#1:221\n18#1:222\n18#1:223,2\n19#1:225\n19#1:226,2\n20#1:228\n20#1:229,3\n19#1:232\n18#1:233\n30#1:234\n30#1:235,3\n34#1:238\n34#1:239,2\n36#1:241,2\n55#1:243,2\n92#1:245,2\n97#1:247\n97#1:248,3\n108#1:251,10\n126#1:266,3\n92#1:269\n185#1:270,2\n186#1:272,3\n185#1:275\n122#1:261,5\n*E\n"})
/* loaded from: classes8.dex */
public final class TextShapeFormatter {
    /* JADX WARN: Removed duplicated region for block: B:29:0x01d4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33991a(java.util.List<? extends java.util.List<com.onyx.android.sdk.note.common.shape.object.HWRTextShape>> r26, com.onyx.android.sdk.data.common.data.ShapeTypesetArgs r27) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.text.layout.TextShapeFormatter.m33991a(java.util.List, com.onyx.android.sdk.data.common.data.ShapeTypesetArgs):void");
    }

    /* renamed from: b */
    public final float m33992b(List<? extends List<HWRTextShape>> line, ShapeTypesetArgs args, float blockAngle, Matrix normalMatrix, Matrix rotateMatrix, Float lastBaseLine) {
        Object first;
        Object first2;
        Object first3;
        Float lineSpacing = args.getLineSpacing();
        Intrinsics.checkNotNull(lineSpacing);
        float floatValue = lineSpacing.floatValue();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) line);
        first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) first);
        ShapeTextStyle textStyle = ((HWRTextShape) first2).getTextStyle();
        Intrinsics.checkNotNull(textStyle);
        float textSize = floatValue * textStyle.getTextSize();
        float f = 0.0f;
        int i = 0;
        for (Object obj : line) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            int i3 = 0;
            for (Object obj2 : (List) obj) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                HWRTextShape hWRTextShape = (HWRTextShape) obj2;
                first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) hWRTextShape.loadRenderPath());
                FontPathRect fontPathRect = (FontPathRect) first3;
                float width = hWRTextShape.getOriginRect().width() / 2.0f;
                float height = hWRTextShape.getOriginRect().height() / 2.0f;
                PointF mapPoint = MatrixKt.mapPoint(normalMatrix, new PointF(hWRTextShape.getOriginRect().centerX(), hWRTextShape.getOriginRect().centerY()));
                if (i == 0 && i3 == 0) {
                    f = lastBaseLine == null ? mapPoint.y + height + fontPathRect.getGlyphRect().bottom : lastBaseLine.floatValue() + textSize;
                }
                PointF mapPoint2 = MatrixKt.mapPoint(rotateMatrix, new PointF(mapPoint.x, (f - fontPathRect.getGlyphRect().bottom) - height));
                hWRTextShape.updateShapeRect(new TouchPoint(mapPoint2.x - width, mapPoint2.y - height), new TouchPoint(mapPoint2.x + width, mapPoint2.y + height));
                Matrix matrix = new Matrix();
                matrix.setRotate(-blockAngle, mapPoint2.x, mapPoint2.y);
                hWRTextShape.setShapeMatrix(matrix);
                hWRTextShape.updateShapeRect();
                i3 = i4;
            }
            i = i2;
        }
        return f;
    }

    /* renamed from: c */
    public final void m33993c(List<? extends List<? extends List<HWRTextShape>>> lines, ShapeTypesetArgs args) {
        Object first;
        ArrayList arrayList = new ArrayList();
        for (Object obj : lines) {
            if (!((List) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            m33991a((List) it2.next(), args);
        }
        if (args.getLineSpacing() != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
            TextShapeSegmenter.Companion companion = TextShapeSegmenter.INSTANCE;
            float calculateAvgLineAngle = companion.calculateAvgLineAngle((List) first);
            PointF calculateLinesCenter = companion.calculateLinesCenter(arrayList);
            Matrix matrix = new Matrix();
            matrix.setRotate(calculateAvgLineAngle, calculateLinesCenter.x, calculateLinesCenter.y);
            Matrix matrix2 = new Matrix();
            matrix2.setRotate(-calculateAvgLineAngle, calculateLinesCenter.x, calculateLinesCenter.y);
            Iterator it3 = arrayList.iterator();
            Float f = null;
            while (it3.hasNext()) {
                f = Float.valueOf(m33992b((List) it3.next(), args, calculateAvgLineAngle, matrix, matrix2, f));
            }
        }
    }

    @NotNull
    public final List<List<HWRTextShape>> format(@NotNull List<HWRTextShape> shapes, @NotNull ShapeTypesetArgs args) {
        List sortedWith;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List flatten;
        int collectionSizeOrDefault3;
        int collectionSizeOrDefault4;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(args, "args");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(new TextShapeSegmenter().segmentLines(shapes), new Comparator() { // from class: com.onyx.android.sdk.note.common.text.layout.TextShapeFormatter$format$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Object first;
                Object first2;
                Object first3;
                Object first4;
                int compareValues;
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) t);
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) first);
                Float valueOf = Float.valueOf(((HWRTextShape) first2).getOriginRect().top);
                first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) t2);
                first4 = CollectionsKt___CollectionsKt.first((List<? extends Object>) first3);
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Float.valueOf(((HWRTextShape) first4).getOriginRect().top));
                return compareValues;
            }
        });
        List<List> list = sortedWith;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (List<List> list2 : list) {
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault3);
            for (List<HWRTextShape> list3 : list2) {
                collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault4);
                for (HWRTextShape hWRTextShape : list3) {
                    HWRTextShape clone = hWRTextShape.clone(args);
                    clone.setShapeUniqueId(hWRTextShape.getShapeUniqueId());
                    arrayList3.add(clone);
                }
                arrayList2.add(arrayList3);
            }
            arrayList.add(arrayList2);
        }
        m33993c(arrayList, args);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            flatten = CollectionsKt__IterablesKt.flatten((List) it2.next());
            arrayList4.add(flatten);
        }
        return arrayList4;
    }
}

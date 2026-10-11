package com.onyx.android.sdk.note.common.text.layout;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.neohwr.fontmgr.FontNative;
import com.onyx.android.sdk.neohwr.layout.TextCharBox;
import com.onyx.android.sdk.neohwr.layout.TextLayoutEngine;
import com.onyx.android.sdk.neohwr.segmenter.InputShape;
import com.onyx.android.sdk.neohwr.segmenter.InputTextShape;
import com.onyx.android.sdk.neohwr.segmenter.TextBlock;
import com.onyx.android.sdk.neohwr.segmenter.TextElement;
import com.onyx.android.sdk.neohwr.segmenter.TextLine;
import com.onyx.android.sdk.neohwr.segmenter.TextSegmentResult;
import com.onyx.android.sdk.neohwr.segmenter.TextSegmenter;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J2\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00060\u0004j\u0002`\u00070\u00042\u0010\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\t¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;", "", "()V", "segmentLines", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegment;", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeLine;", "shapes", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeList;", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTextShapeSegmenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,232:1\n1549#2:233\n1620#2,3:234\n1360#2:239\n1446#2,2:240\n1549#2:242\n1620#2,2:243\n1360#2:245\n1446#2,2:246\n1549#2:248\n1620#2,3:249\n1448#2,3:252\n1622#2:255\n1448#2,3:256\n37#3,2:237\n*S KotlinDebug\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter\n*L\n211#1:233\n211#1:234,3\n222#1:239\n222#1:240,2\n223#1:242\n223#1:243,2\n224#1:245\n224#1:246,2\n225#1:248\n225#1:249,3\n224#1:252,3\n223#1:255\n222#1:256,3\n215#1:237,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TextShapeSegmenter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\"\u0010\b\u001a\u00020\u00072\u001a\u0010\u0006\u001a\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u0005J\"\u0010\t\u001a\u00020\u00072\u001a\u0010\u0006\u001a\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u0005J\"\u0010\u000b\u001a\u00020\n2\u001a\u0010\u0006\u001a\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u0005J(\u0010\r\u001a\u00020\n2 \u0010\f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u00050\u0002J(\u0010\u000f\u001a\u00020\u000e2 \u0010\f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u00050\u0002J$\u0010\u0010\u001a\u00020\u00072\u001a\u0010\u0006\u001a\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u0005H\u0002J3\u0010\u0011\u001a\u0004\u0018\u00010\u00072 \u0010\f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u00050\u0002H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0002H\u0002J.\u0010\u0017\u001a\u0016\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0002j\u0002`\u00052\u0010\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0016H\u0002¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;", "", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegment;", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeLine;", "line", "", "calculateAvgTextSize", "calculateAvgLineAngle", "Landroid/graphics/PointF;", "calculateLineCenter", "lines", "calculateLinesCenter", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "calculateEstimatedCharAndLineSpacing", "a", "b", "(Ljava/util/List;)Ljava/lang/Float;", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "segments", "c", "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeList;", "d", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nTextShapeSegmenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n703#2,5:233\n703#2,5:238\n703#2,3:270\n703#2,5:273\n707#2:278\n703#2,5:319\n1789#3,3:243\n1789#3,3:247\n1549#3:250\n1620#3,2:251\n1549#3:253\n1620#3,2:254\n1549#3:256\n1620#3,3:257\n1622#3:260\n1622#3:261\n1549#3:262\n1620#3,2:263\n1549#3:265\n1620#3,3:266\n1622#3:269\n1045#3:279\n1549#3:280\n1620#3,3:281\n1549#3:284\n1620#3,3:285\n1559#3:288\n1590#3,3:289\n1549#3:292\n1620#3,3:293\n1593#3:296\n3464#3,10:297\n1360#3:307\n1446#3,2:308\n1747#3,3:310\n1864#3,3:313\n1448#3,3:316\n1789#3,3:324\n1549#3:327\n1620#3,3:328\n1855#3,2:331\n1#4:246\n*S KotlinDebug\n*F\n+ 1 TextShapeSegmenter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion\n*L\n28#1:233,5\n33#1:238,5\n87#1:270,3\n89#1:273,5\n87#1:278\n174#1:319,5\n37#1:243,3\n44#1:247,3\n51#1:250\n51#1:251,2\n52#1:253\n52#1:254,2\n53#1:256\n53#1:257,3\n52#1:260\n51#1:261\n79#1:262\n79#1:263,2\n80#1:265\n80#1:266,3\n79#1:269\n100#1:279\n102#1:280\n102#1:281,3\n106#1:284\n106#1:285,3\n114#1:288\n114#1:289,3\n122#1:292\n122#1:293,3\n114#1:296\n129#1:297,10\n135#1:307\n135#1:308,2\n136#1:310,3\n142#1:313,3\n135#1:316,3\n175#1:324,3\n184#1:327\n184#1:328,3\n195#1:331,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final float m33994a(List<? extends List<HWRTextShape>> line) {
            List flatten;
            int collectionSizeOrDefault;
            List<Pair> zipWithNext;
            int collectionSizeOrDefault2;
            List<? extends List<HWRTextShape>> list = line;
            flatten = CollectionsKt__IterablesKt.flatten(list);
            if (flatten.size() <= 1) {
                return 0.0f;
            }
            float calculateAvgTextSize = calculateAvgTextSize(line);
            float calculateAvgLineAngle = calculateAvgLineAngle(line);
            PointF calculateLineCenter = calculateLineCenter(line);
            Matrix matrix = new Matrix();
            matrix.setRotate(calculateAvgLineAngle, calculateLineCenter.x, calculateLineCenter.y);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                List list2 = (List) it2.next();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                Iterator it3 = list2.iterator();
                while (it3.hasNext()) {
                    RectF rectF = new RectF(((HWRTextShape) it3.next()).getOriginRect());
                    matrix.mapRect(rectF);
                    arrayList2.add(rectF);
                }
                arrayList.add(arrayList2);
            }
            Iterator it4 = arrayList.iterator();
            float f = 0.0f;
            while (it4.hasNext()) {
                zipWithNext = CollectionsKt___CollectionsKt.zipWithNext((List) it4.next());
                float f2 = 0.0f;
                for (Pair pair : zipWithNext) {
                    f2 += ((RectF) pair.component2()).left - ((RectF) pair.component1()).right;
                }
                f += f2;
            }
            return (f / (flatten.size() - 1)) / calculateAvgTextSize;
        }

        /* renamed from: b */
        public final Float m33995b(List<? extends List<? extends List<HWRTextShape>>> lines) {
            List sortedWith;
            int collectionSizeOrDefault;
            int collectionSizeOrDefault2;
            List sorted;
            Object first;
            Object last;
            int collectionSizeOrDefault3;
            Iterable withIndex;
            List list;
            Object first2;
            Object first3;
            float m73059maxOrThrow;
            List flatten;
            int collectionSizeOrDefault4;
            if (lines.size() <= 1) {
                return Float.valueOf(0.0f);
            }
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(lines, new Comparator() { // from class: com.onyx.android.sdk.note.common.text.layout.TextShapeSegmenter$Companion$calculateEstimatedLineSpacing$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    Object first4;
                    Object first5;
                    Object first6;
                    Object first7;
                    int compareValues;
                    first4 = CollectionsKt___CollectionsKt.first((List<? extends Object>) t);
                    first5 = CollectionsKt___CollectionsKt.first((List<? extends Object>) first4);
                    Float valueOf = Float.valueOf(((HWRTextShape) first5).getOriginRect().top);
                    first6 = CollectionsKt___CollectionsKt.first((List<? extends Object>) t2);
                    first7 = CollectionsKt___CollectionsKt.first((List<? extends Object>) first6);
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Float.valueOf(((HWRTextShape) first7).getOriginRect().top));
                    return compareValues;
                }
            });
            List list2 = sortedWith;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(Float.valueOf(TextShapeSegmenter.INSTANCE.calculateAvgTextSize((List) it2.next())));
            }
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                arrayList2.add(Float.valueOf(TextShapeSegmenter.INSTANCE.calculateAvgLineAngle((List) it3.next())));
            }
            sorted = CollectionsKt___CollectionsKt.sorted(arrayList2);
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) sorted);
            float floatValue = ((Number) first).floatValue();
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) sorted);
            if (Math.abs(floatValue - ((Number) last).floatValue()) >= 10.0f) {
                return null;
            }
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
            int i = 0;
            for (Object obj : list2) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                List<? extends List<HWRTextShape>> list3 = (List) obj;
                float floatValue2 = ((Number) arrayList2.get(i)).floatValue();
                PointF calculateLineCenter = TextShapeSegmenter.INSTANCE.calculateLineCenter(list3);
                Matrix matrix = new Matrix();
                matrix.setRotate(floatValue2, calculateLineCenter.x, calculateLineCenter.y);
                flatten = CollectionsKt__IterablesKt.flatten(list3);
                List list4 = flatten;
                collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
                ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault4);
                Iterator it4 = list4.iterator();
                while (it4.hasNext()) {
                    RectF rectF = new RectF(((HWRTextShape) it4.next()).getOriginRect());
                    matrix.mapRect(rectF);
                    arrayList4.add(rectF);
                }
                arrayList3.add(arrayList4);
                i = i2;
            }
            withIndex = CollectionsKt___CollectionsKt.withIndex(arrayList3);
            Iterator it5 = withIndex.iterator();
            if (it5.hasNext()) {
                ArrayList arrayList5 = new ArrayList();
                Object next = it5.next();
                while (it5.hasNext()) {
                    Object next2 = it5.next();
                    IndexedValue indexedValue = (IndexedValue) next2;
                    first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) ((IndexedValue) next).getValue());
                    float f = ((RectF) first2).bottom;
                    first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) indexedValue.getValue());
                    arrayList5.add(Float.valueOf(Math.abs(f - ((RectF) first3).bottom) / ((Number) arrayList.get(indexedValue.getIndex())).floatValue()));
                    next = next2;
                }
                list = arrayList5;
            } else {
                list = CollectionsKt__CollectionsKt.emptyList();
            }
            m73059maxOrThrow = CollectionsKt___CollectionsKt.m73059maxOrThrow((Iterable<Float>) list);
            return Float.valueOf(m73059maxOrThrow);
        }

        /* renamed from: c */
        public final List<TextLayoutEngine.Companion.TextSegment> m33996c(List<TextLayoutEngine.Companion.TextSegment> segments) {
            boolean z;
            List list;
            ShapeTextStyle textStyle;
            ArrayList arrayList = new ArrayList();
            for (TextLayoutEngine.Companion.TextSegment textSegment : segments) {
                List<TextCharBox> chars = textSegment.getChars();
                int i = 0;
                if (!(chars instanceof Collection) || !chars.isEmpty()) {
                    Iterator<T> it2 = chars.iterator();
                    while (it2.hasNext()) {
                        if (TextLayoutEngine.INSTANCE.isCJKCharacter(((TextCharBox) it2.next()).getText().codePointAt(0))) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    list = CollectionsKt__CollectionsJVMKt.listOf(textSegment);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    int i2 = 0;
                    for (Object obj : textSegment.getChars()) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        TextCharBox textCharBox = (TextCharBox) obj;
                        if (i2 != 0) {
                            TextCharBox textCharBox2 = textSegment.getChars().get(i2 - 1);
                            Object tag = textCharBox2.getTag();
                            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape");
                            HWRTextShape hWRTextShape = (HWRTextShape) tag;
                            Object tag2 = textCharBox.getTag();
                            Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape");
                            HWRTextShape hWRTextShape2 = (HWRTextShape) tag2;
                            ShapeTextStyle textStyle2 = hWRTextShape.getTextStyle();
                            Intrinsics.checkNotNull(textStyle2);
                            float textSize = textStyle2.getTextSize();
                            ShapeTextStyle textStyle3 = hWRTextShape2.getTextStyle();
                            Intrinsics.checkNotNull(textStyle3);
                            if (textSize < textStyle3.getTextSize()) {
                                textStyle = hWRTextShape.getTextStyle();
                                Intrinsics.checkNotNull(textStyle);
                            } else {
                                textStyle = hWRTextShape2.getTextStyle();
                                Intrinsics.checkNotNull(textStyle);
                            }
                            FontNative.Companion companion = FontNative.INSTANCE;
                            String fontFace = textStyle.getFontFace();
                            Intrinsics.checkNotNull(fontFace);
                            if (textCharBox.getRegion().left - textCharBox2.getRegion().right > companion.loadGlyphPathOnce(fontFace, 69, textStyle.getTextSize()).getAdvance().x * 0.8f) {
                                List<TextCharBox> subList = textSegment.getChars().subList(i, i2);
                                Locale US = Locale.US;
                                Intrinsics.checkNotNullExpressionValue(US, "US");
                                arrayList2.add(new TextLayoutEngine.Companion.TextSegment(subList, US, "", new RectF()));
                                i = i2;
                            }
                        }
                        i2 = i3;
                    }
                    if (i < textSegment.getChars().size()) {
                        List<TextCharBox> subList2 = textSegment.getChars().subList(i, textSegment.getChars().size());
                        Locale US2 = Locale.US;
                        Intrinsics.checkNotNullExpressionValue(US2, "US");
                        arrayList2.add(new TextLayoutEngine.Companion.TextSegment(subList2, US2, "", new RectF()));
                    }
                    list = arrayList2;
                }
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, list);
            }
            return arrayList;
        }

        public final float calculateAvgLineAngle(@NotNull List<? extends List<HWRTextShape>> line) {
            List flatten;
            Intrinsics.checkNotNullParameter(line, "line");
            flatten = CollectionsKt__IterablesKt.flatten(line);
            Iterator it2 = flatten.iterator();
            float f = 0.0f;
            while (it2.hasNext()) {
                f += MatrixKt.getMatrixRotateAngel(((HWRTextShape) it2.next()).getShapeMatrix());
            }
            return f / flatten.size();
        }

        public final float calculateAvgTextSize(@NotNull List<? extends List<HWRTextShape>> line) {
            List flatten;
            Intrinsics.checkNotNullParameter(line, "line");
            flatten = CollectionsKt__IterablesKt.flatten(line);
            Iterator it2 = flatten.iterator();
            float f = 0.0f;
            while (it2.hasNext()) {
                ShapeTextStyle textStyle = ((HWRTextShape) it2.next()).getTextStyle();
                Intrinsics.checkNotNull(textStyle);
                f += textStyle.getTextSize();
            }
            return f / flatten.size();
        }

        @NotNull
        public final ShapeTypesetArgs calculateEstimatedCharAndLineSpacing(@NotNull List<? extends List<? extends List<HWRTextShape>>> lines) {
            int collectionSizeOrDefault;
            Float valueOf;
            int collectionSizeOrDefault2;
            int collectionSizeOrDefault3;
            Intrinsics.checkNotNullParameter(lines, "lines");
            List<? extends List<? extends List<HWRTextShape>>> list = lines;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                List<List> list2 = (List) it2.next();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (List<HWRTextShape> list3 : list2) {
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
                    ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
                    for (HWRTextShape hWRTextShape : list3) {
                        ShapeTextStyle textStyle = hWRTextShape.getTextStyle();
                        Intrinsics.checkNotNull(textStyle);
                        String fontFace = textStyle.getFontFace();
                        if (fontFace == null) {
                            fontFace = "";
                        }
                        arrayList3.add(hWRTextShape.clone(fontFace));
                    }
                    arrayList2.add(arrayList3);
                }
                arrayList.add(arrayList2);
            }
            Float m33995b = m33995b(arrayList);
            Iterator it3 = arrayList.iterator();
            if (it3.hasNext()) {
                float m33994a = TextShapeSegmenter.INSTANCE.m33994a((List) it3.next());
                while (it3.hasNext()) {
                    m33994a = Math.max(m33994a, TextShapeSegmenter.INSTANCE.m33994a((List) it3.next()));
                }
                valueOf = Float.valueOf(m33994a);
            } else {
                valueOf = null;
            }
            ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
            shapeTypesetArgs.setCharSpacing(valueOf);
            shapeTypesetArgs.setLineSpacing(m33995b);
            return shapeTypesetArgs;
        }

        @NotNull
        public final PointF calculateLineCenter(@NotNull List<? extends List<HWRTextShape>> line) {
            List flatten;
            Intrinsics.checkNotNullParameter(line, "line");
            flatten = CollectionsKt__IterablesKt.flatten(line);
            RectF rectF = new RectF();
            Iterator it2 = flatten.iterator();
            while (it2.hasNext()) {
                rectF.union(((HWRTextShape) it2.next()).getOriginRect());
            }
            return new PointF(rectF.centerX(), rectF.centerY());
        }

        @NotNull
        public final PointF calculateLinesCenter(@NotNull List<? extends List<? extends List<HWRTextShape>>> lines) {
            List flatten;
            List flatten2;
            Intrinsics.checkNotNullParameter(lines, "lines");
            flatten = CollectionsKt__IterablesKt.flatten(lines);
            flatten2 = CollectionsKt__IterablesKt.flatten(flatten);
            RectF rectF = new RectF();
            Iterator it2 = flatten2.iterator();
            while (it2.hasNext()) {
                rectF.union(((HWRTextShape) it2.next()).getOriginRect());
            }
            return new PointF(rectF.centerX(), rectF.centerY());
        }

        /* renamed from: d */
        public final List<List<HWRTextShape>> m33997d(List<HWRTextShape> line) {
            int collectionSizeOrDefault;
            Iterator<T> it2 = line.iterator();
            float f = 0.0f;
            while (it2.hasNext()) {
                f += MatrixKt.getMatrixRotateAngel(((HWRTextShape) it2.next()).getShapeMatrix());
            }
            float size = f / line.size();
            List<HWRTextShape> list = line;
            RectF rectF = new RectF();
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                rectF.union(((HWRTextShape) it3.next()).getOriginRect());
            }
            PointF pointF = new PointF(rectF.centerX(), rectF.centerY());
            Matrix matrix = new Matrix();
            matrix.setRotate(size, pointF.x, pointF.y);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (HWRTextShape hWRTextShape : list) {
                RectF rectF2 = new RectF(hWRTextShape.getOriginRect());
                matrix.mapRect(rectF2);
                String text = hWRTextShape.getText();
                Intrinsics.checkNotNull(text);
                arrayList.add(new TextCharBox(text, rectF2, null, null, 0, hWRTextShape, 28, null));
            }
            List<TextLayoutEngine.Companion.TextSegment> m33996c = m33996c(TextLayoutEngine.INSTANCE.segmentCharactersByDistance(arrayList));
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it4 = m33996c.iterator();
            int i = 0;
            while (it4.hasNext()) {
                int size2 = ((TextLayoutEngine.Companion.TextSegment) it4.next()).getChars().size() + i;
                ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(line.subList(i, size2));
                arrayList2.add(arrayList3);
                i = size2;
            }
            return arrayList2;
        }

        public Companion() {
        }
    }

    @NotNull
    public final List<List<List<HWRTextShape>>> segmentLines(@NotNull List<HWRTextShape> shapes) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        List<List<List<HWRTextShape>>> emptyList;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        List<HWRTextShape> list = shapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (HWRTextShape hWRTextShape : list) {
            ShapeTextStyle textStyle = hWRTextShape.getTextStyle();
            Intrinsics.checkNotNull(textStyle);
            String fontFace = textStyle.getFontFace();
            if (fontFace == null) {
                fontFace = "";
            }
            HWRTextShape clone = hWRTextShape.clone(fontFace);
            arrayList.add(new InputTextShape(clone.getOriginRect(), -MatrixKt.getMatrixRotateAngel(clone.getShapeMatrix()), hWRTextShape));
        }
        InputTextShape[] inputTextShapeArr = (InputTextShape[]) arrayList.toArray(new InputTextShape[0]);
        TextSegmentResult textSegmentResult = new TextSegmentResult();
        if (!TextSegmenter.INSTANCE.segmentTextShapes(inputTextShapeArr, textSegmentResult)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<TextBlock> blocks = textSegmentResult.getBlocks();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = blocks.iterator();
        while (it2.hasNext()) {
            List<TextLine> lines = ((TextBlock) it2.next()).getLines();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(lines, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
            for (TextLine textLine : lines) {
                Companion companion = INSTANCE;
                List<TextElement> elements = textLine.getElements();
                ArrayList arrayList4 = new ArrayList();
                Iterator<T> it3 = elements.iterator();
                while (it3.hasNext()) {
                    List<InputShape> shapes2 = ((TextElement) it3.next()).getShapes();
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(shapes2, 10);
                    ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault3);
                    for (InputShape inputShape : shapes2) {
                        Intrinsics.checkNotNull(inputShape, "null cannot be cast to non-null type com.onyx.android.sdk.neohwr.segmenter.InputTextShape");
                        Object tag = ((InputTextShape) inputShape).getTag();
                        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape");
                        arrayList5.add((HWRTextShape) tag);
                    }
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList4, arrayList5);
                }
                arrayList3.add(companion.m33997d(arrayList4));
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, arrayList3);
        }
        return arrayList2;
    }
}

package com.onyx.android.sdk.geometry.data;

import android.graphics.Matrix;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0016\u0010\u0002\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003\"\u0004\u0018\u00010\u0004H\u0086\b¢\u0006\u0002\u0010\u0005\u001a6\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006*\b\u0012\u0004\u0012\u00020\u00010\u00062\u0016\u0010\u0002\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003\"\u0004\u0018\u00010\u0004H\u0086\b¢\u0006\u0002\u0010\u0007\u001a\u0017\u0010\b\u001a\u00020\u0001*\u00020\u00012\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0086\b\u001a#\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006*\b\u0012\u0004\u0012\u00020\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0086\b¨\u0006\n"}, m61528d2 = {"concatTransform", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "matrixs", "", "Landroid/graphics/Matrix;", "(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;[Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "", "(Ljava/util/List;[Landroid/graphics/Matrix;)Ljava/util/List;", Constants.ELEMNAME_TRANSFORM_STRING, "matrix", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTouchPointPair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPairKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n252#1:270\n252#1:274\n256#1,2:279\n258#1:283\n252#1:284\n13309#2,2:268\n13309#2,2:281\n1549#3:271\n1620#3,2:272\n1622#3:275\n1549#3:276\n1620#3,2:277\n1622#3:285\n*S KotlinDebug\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPairKt\n*L\n258#1:270\n262#1:274\n266#1:279,2\n266#1:283\n266#1:284\n257#1:268,2\n266#1:281,2\n262#1:271\n262#1:272,2\n262#1:275\n266#1:276\n266#1:277,2\n266#1:285\n*E\n"})
/* loaded from: classes7.dex */
public final class TouchPointPairKt {
    @NotNull
    public static final TouchPointPair concatTransform(@NotNull TouchPointPair touchPointPair, @NotNull Matrix... matrixs) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        Intrinsics.checkNotNullParameter(matrixs, "matrixs");
        Matrix matrix = new Matrix();
        for (Matrix matrix2 : matrixs) {
            if (matrix2 == null) {
                matrix2 = new Matrix();
            }
            matrix.postConcat(matrix2);
        }
        return new TouchPointPair(touchPointPair.getP1().transform(matrix), touchPointPair.getP2().transform(matrix));
    }

    @NotNull
    public static final TouchPointPair transform(@NotNull TouchPointPair touchPointPair, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(touchPointPair, "<this>");
        return new TouchPointPair(touchPointPair.getP1().transform(matrix), touchPointPair.getP2().transform(matrix));
    }

    @NotNull
    public static final List<TouchPointPair> transform(@NotNull List<? extends TouchPointPair> list, @Nullable Matrix matrix) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends TouchPointPair> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : list2) {
            arrayList.add(new TouchPointPair(touchPointPair.getP1().transform(matrix), touchPointPair.getP2().transform(matrix)));
        }
        return arrayList;
    }

    @NotNull
    public static final List<TouchPointPair> concatTransform(@NotNull List<? extends TouchPointPair> list, @NotNull Matrix... matrixs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(matrixs, "matrixs");
        List<? extends TouchPointPair> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : list2) {
            Matrix[] matrixArr = (Matrix[]) Arrays.copyOf(matrixs, matrixs.length);
            Matrix matrix = new Matrix();
            for (Matrix matrix2 : matrixArr) {
                if (matrix2 == null) {
                    matrix2 = new Matrix();
                }
                matrix.postConcat(matrix2);
            }
            arrayList.add(new TouchPointPair(touchPointPair.getP1().transform(matrix), touchPointPair.getP2().transform(matrix)));
        }
        return arrayList;
    }
}

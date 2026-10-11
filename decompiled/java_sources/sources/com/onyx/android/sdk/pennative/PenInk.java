package com.onyx.android.sdk.pennative;

import android.graphics.Bitmap;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.collections4.IteratorUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B%\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/pennative/PenInk;", "", "", "toString", "", "a", "[F", "getPoints", "()[F", PointConstant.POINT_FILE_END, "", "b", Constants.TYPES_INDEX_SIG, "getPointSizeArray", "()[I", "pointSizeArray", "", "Landroid/graphics/Bitmap;", "c", "[Landroid/graphics/Bitmap;", "getBitmaps", "()[Landroid/graphics/Bitmap;", "bitmaps", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "([F[I[Landroid/graphics/Bitmap;)V", "Companion", "sdk-pennative_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenInk {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final float[] points;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final int[] pointSizeArray;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Bitmap[] bitmaps;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0007¢\u0006\u0002\u0010\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/pennative/PenInk$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pennative/PenInk;", PointConstant.POINT_FILE_END, "", "pointSizeArray", "", "bitmap", "", "Landroid/graphics/Bitmap;", "([F[I[Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/pennative/PenInk;", "sdk-pennative_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final PenInk create(@NotNull float[] points, @NotNull int[] pointSizeArray, @NotNull Bitmap[] bitmap) {
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(pointSizeArray, "pointSizeArray");
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            return new PenInk(points, pointSizeArray, bitmap);
        }

        public Companion() {
        }
    }

    public PenInk(@NotNull float[] points, @NotNull int[] pointSizeArray, @NotNull Bitmap[] bitmaps) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(pointSizeArray, "pointSizeArray");
        Intrinsics.checkNotNullParameter(bitmaps, "bitmaps");
        this.points = points;
        this.pointSizeArray = pointSizeArray;
        this.bitmaps = bitmaps;
    }

    @JvmStatic
    @NotNull
    public static final PenInk create(@NotNull float[] fArr, @NotNull int[] iArr, @NotNull Bitmap[] bitmapArr) {
        return INSTANCE.create(fArr, iArr, bitmapArr);
    }

    @NotNull
    public final Bitmap[] getBitmaps() {
        return this.bitmaps;
    }

    @NotNull
    public final int[] getPointSizeArray() {
        return this.pointSizeArray;
    }

    @NotNull
    public final float[] getPoints() {
        return this.points;
    }

    @NotNull
    public String toString() {
        float first;
        StringBuilder sb = new StringBuilder();
        sb.append("PenInk: ");
        sb.append(this.points.length);
        sb.append(" -> [");
        float[] fArr = this.points;
        if (!(fArr.length == 0)) {
            first = ArraysKt___ArraysKt.first(fArr);
            sb.append(first);
        }
        int length = this.points.length;
        for (int i = 1; i < length; i++) {
            sb.append(", ");
            sb.append(this.points[i]);
        }
        sb.append(IteratorUtils.f104924b);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }
}

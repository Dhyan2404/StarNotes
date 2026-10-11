package com.onyx.android.sdk.genericshape.erase;

import android.graphics.Matrix;
import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0012J\u0006\u0010\u0013\u001a\u00020\u0007J\b\u0010\u0014\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\u0015\u001a\u00020\u00002\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\n\"\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "", "()V", "erasePoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "eraseRadius", "", "isAreaErase", "", Constants.BOOLEAN_VALUE_SIG, "setAreaErase", "(Z)V", "targetShapeMatrix", "Landroid/graphics/Matrix;", "getErasePath", "Landroid/graphics/Path;", "getErasePoints", "", "getEraseRadius", "getTargetShapeMatrix", "setErasePoints", "setEraseRadius", "setTargetShapeMatrix", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEraseBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/genericshape/erase/EraseBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n37#3,2:70\n*S KotlinDebug\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/genericshape/erase/EraseBean\n*L\n60#1:66\n60#1:67,3\n61#1:70,2\n*E\n"})
/* loaded from: classes7.dex */
public final class EraseBean {

    @Nullable
    private List<TouchPoint> erasePoints;
    private float eraseRadius;
    private boolean isAreaErase;

    @Nullable
    private Matrix targetShapeMatrix;

    public EraseBean() {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.eraseRadius = FLOAT_ONE.floatValue();
    }

    @NotNull
    public final Path getErasePath() {
        int collectionSizeOrDefault;
        List<TouchPoint> list = this.erasePoints;
        if (list == null) {
            return new Path();
        }
        if (this.isAreaErase) {
            return PathKt.getFillStrokePath(PathKt.asPath(list, true), Float.valueOf(0.0f), true);
        }
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(PathKt.createHitTestPath((TouchPoint) it2.next(), Float.valueOf(getEraseRadius())));
        }
        Path[] pathArr = (Path[]) arrayList.toArray(new Path[0]);
        return PathKt.concat((Path[]) Arrays.copyOf(pathArr, pathArr.length));
    }

    @Nullable
    public final List<TouchPoint> getErasePoints() {
        return this.erasePoints;
    }

    public final float getEraseRadius() {
        return this.eraseRadius;
    }

    @Nullable
    public final Matrix getTargetShapeMatrix() {
        return this.targetShapeMatrix;
    }

    /* renamed from: isAreaErase, reason: from getter */
    public final boolean getIsAreaErase() {
        return this.isAreaErase;
    }

    public final void setAreaErase(boolean z) {
        this.isAreaErase = z;
    }

    @NotNull
    public final EraseBean setErasePoints(@Nullable List<TouchPoint> erasePoints) {
        this.erasePoints = erasePoints;
        return this;
    }

    @NotNull
    public final EraseBean setEraseRadius(float eraseRadius) {
        this.eraseRadius = eraseRadius;
        return this;
    }

    @NotNull
    public final EraseBean setTargetShapeMatrix(@Nullable Matrix targetShapeMatrix) {
        this.targetShapeMatrix = targetShapeMatrix;
        return this;
    }
}

package com.onyx.android.sdk.geometry.utils;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JF\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006JH\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;", "", "()V", "intersect", "", "x1", "", "y1", "x2", "y2", "x3", "y3", "x4", "y4", "intersectPoint", "Landroid/graphics/PointF;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LineSegmentUtils {

    @NotNull
    public static final LineSegmentUtils INSTANCE = new LineSegmentUtils();

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0024, code lost:
    
        if ((r10 == r12) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
    
        if ((r6 == r8) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean intersect(float r5, float r6, float r7, float r8, float r9, float r10, float r11, float r12) {
        /*
            r4 = this;
            int r4 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            r0 = 1
            r1 = 0
            if (r4 != 0) goto L8
            r4 = r0
            goto L9
        L8:
            r4 = r1
        L9:
            if (r4 == 0) goto L14
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 != 0) goto L11
            r4 = r0
            goto L12
        L11:
            r4 = r1
        L12:
            if (r4 != 0) goto L26
        L14:
            int r4 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r4 != 0) goto L1a
            r4 = r0
            goto L1b
        L1a:
            r4 = r1
        L1b:
            if (r4 == 0) goto L27
            int r4 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r4 != 0) goto L23
            r4 = r0
            goto L24
        L23:
            r4 = r1
        L24:
            if (r4 == 0) goto L27
        L26:
            return r1
        L27:
            float r12 = r12 - r10
            float r7 = r7 - r5
            float r4 = r12 * r7
            float r11 = r11 - r9
            float r8 = r8 - r6
            float r2 = r11 * r8
            float r4 = r4 - r2
            r2 = 0
            int r3 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r3 != 0) goto L37
            r3 = r0
            goto L38
        L37:
            r3 = r1
        L38:
            if (r3 == 0) goto L3b
            return r1
        L3b:
            float r6 = r6 - r10
            float r11 = r11 * r6
            float r5 = r5 - r9
            float r12 = r12 * r5
            float r11 = r11 - r12
            float r11 = r11 / r4
            float r7 = r7 * r6
            float r8 = r8 * r5
            float r7 = r7 - r8
            float r7 = r7 / r4
            int r4 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r4 < 0) goto L59
            r4 = 1065353216(0x3f800000, float:1.0)
            int r5 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r5 > 0) goto L59
            int r5 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r5 < 0) goto L59
            int r4 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r4 <= 0) goto L58
            goto L59
        L58:
            return r0
        L59:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.utils.LineSegmentUtils.intersect(float, float, float, float, float, float, float, float):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0025, code lost:
    
        if ((r11 == r13) != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
    
        if ((r7 == r9) == false) goto L13;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.PointF intersectPoint(float r6, float r7, float r8, float r9, float r10, float r11, float r12, float r13) {
        /*
            r5 = this;
            int r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            r0 = 1
            r1 = 0
            if (r5 != 0) goto L8
            r5 = r0
            goto L9
        L8:
            r5 = r1
        L9:
            r2 = 0
            if (r5 == 0) goto L15
            int r5 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r5 != 0) goto L12
            r5 = r0
            goto L13
        L12:
            r5 = r1
        L13:
            if (r5 != 0) goto L27
        L15:
            int r5 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r5 != 0) goto L1b
            r5 = r0
            goto L1c
        L1b:
            r5 = r1
        L1c:
            if (r5 == 0) goto L28
            int r5 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r5 != 0) goto L24
            r5 = r0
            goto L25
        L24:
            r5 = r1
        L25:
            if (r5 == 0) goto L28
        L27:
            return r2
        L28:
            float r13 = r13 - r11
            float r8 = r8 - r6
            float r5 = r13 * r8
            float r12 = r12 - r10
            float r9 = r9 - r7
            float r3 = r12 * r9
            float r5 = r5 - r3
            r3 = 0
            int r4 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r4 != 0) goto L37
            goto L38
        L37:
            r0 = r1
        L38:
            if (r0 == 0) goto L3b
            return r2
        L3b:
            float r11 = r7 - r11
            float r12 = r12 * r11
            float r10 = r6 - r10
            float r13 = r13 * r10
            float r12 = r12 - r13
            float r12 = r12 / r5
            float r11 = r11 * r8
            float r10 = r10 * r9
            float r11 = r11 - r10
            float r11 = r11 / r5
            int r5 = (r12 > r3 ? 1 : (r12 == r3 ? 0 : -1))
            if (r5 < 0) goto L64
            r5 = 1065353216(0x3f800000, float:1.0)
            int r10 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r10 > 0) goto L64
            int r10 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r10 < 0) goto L64
            int r5 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
            if (r5 <= 0) goto L5a
            goto L64
        L5a:
            float r8 = r8 * r12
            float r6 = r6 + r8
            float r12 = r12 * r9
            float r7 = r7 + r12
            android.graphics.PointF r5 = new android.graphics.PointF
            r5.<init>(r6, r7)
            return r5
        L64:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.utils.LineSegmentUtils.intersectPoint(float, float, float, float, float, float, float, float):android.graphics.PointF");
    }
}

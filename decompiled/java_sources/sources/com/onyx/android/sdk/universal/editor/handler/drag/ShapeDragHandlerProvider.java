package com.onyx.android.sdk.universal.editor.handler.drag;

import com.onyx.android.sdk.genericshape.GeoConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;", "", "()V", "provide", "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;", GeoConstant.KEY_Universal_Shape_Type, "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeDragHandlerProvider {

    @NotNull
    public static final ShapeDragHandlerProvider INSTANCE = new ShapeDragHandlerProvider();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.HEXAGON) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0073, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.PENTAGON) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009b, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.STAR) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b3, code lost:
    
        if (r1.equals("circle") == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bc, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.OCTAGON) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c5, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.REGULAR_TRIANGLE) == false) goto L60;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandler provide(@org.jetbrains.annotations.NotNull java.lang.String r1) {
        /*
            r0 = this;
            java.lang.String r0 = "universalShapeType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            int r0 = r1.hashCode()
            switch(r0) {
                case -1824503811: goto Lce;
                case -1717769397: goto Lbf;
                case -1621899867: goto Lb6;
                case -1360216880: goto Lad;
                case 3423314: goto L9e;
                case 3540562: goto L95;
                case 137407656: goto L86;
                case 232134859: goto L77;
                case 329147776: goto L6d;
                case 513358239: goto L5c;
                case 517845893: goto L4b;
                case 816461344: goto L41;
                case 1097591272: goto L30;
                case 1179492204: goto L1f;
                case 1186556563: goto Le;
                default: goto Lc;
            }
        Lc:
            goto Ldd
        Le:
            java.lang.String r0 = "isosceles_trapezoid"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L18
            goto Ldd
        L18:
            com.onyx.android.sdk.universal.editor.handler.drag.IsoscelesTrapezoidDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.IsoscelesTrapezoidDragHandler
            r0.<init>()
            goto Le2
        L1f:
            java.lang.String r0 = "rhombus"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L29
            goto Ldd
        L29:
            com.onyx.android.sdk.universal.editor.handler.drag.RhombusDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.RhombusDragHandler
            r0.<init>()
            goto Le2
        L30:
            java.lang.String r0 = "trapezoid"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3a
            goto Ldd
        L3a:
            com.onyx.android.sdk.universal.editor.handler.drag.IrregularTrapezoidDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.IrregularTrapezoidDragHandler
            r0.<init>()
            goto Le2
        L41:
            java.lang.String r0 = "hexagon"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lc8
            goto Ldd
        L4b:
            java.lang.String r0 = "right_trapezoid"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L55
            goto Ldd
        L55:
            com.onyx.android.sdk.universal.editor.handler.drag.RightTrapezoidDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.RightTrapezoidDragHandler
            r0.<init>()
            goto Le2
        L5c:
            java.lang.String r0 = "parallelogram"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L66
            goto Ldd
        L66:
            com.onyx.android.sdk.universal.editor.handler.drag.ParallelogramDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.ParallelogramDragHandler
            r0.<init>()
            goto Le2
        L6d:
            java.lang.String r0 = "pentagon"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lc8
            goto Ldd
        L77:
            java.lang.String r0 = "right_triangle"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L80
            goto Ldd
        L80:
            com.onyx.android.sdk.universal.editor.handler.drag.RightTriangleDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.RightTriangleDragHandler
            r0.<init>()
            goto Le2
        L86:
            java.lang.String r0 = "bracket"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L8f
            goto Ldd
        L8f:
            com.onyx.android.sdk.universal.editor.handler.drag.CurlyBracketDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.CurlyBracketDragHandler
            r0.<init>()
            goto Le2
        L95:
            java.lang.String r0 = "star"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lc8
            goto Ldd
        L9e:
            java.lang.String r0 = "oval"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto La7
            goto Ldd
        La7:
            com.onyx.android.sdk.universal.editor.handler.drag.OvalDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.OvalDragHandler
            r0.<init>()
            goto Le2
        Lad:
            java.lang.String r0 = "circle"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lc8
            goto Ldd
        Lb6:
            java.lang.String r0 = "octagon"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lc8
            goto Ldd
        Lbf:
            java.lang.String r0 = "regular_triangle"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Lc8
            goto Ldd
        Lc8:
            com.onyx.android.sdk.universal.editor.handler.drag.CenterSymmetricalDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.CenterSymmetricalDragHandler
            r0.<init>()
            goto Le2
        Lce:
            java.lang.String r0 = "isosceles_triangle"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto Ld7
            goto Ldd
        Ld7:
            com.onyx.android.sdk.universal.editor.handler.drag.IsoscelesTriangleDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.IsoscelesTriangleDragHandler
            r0.<init>()
            goto Le2
        Ldd:
            com.onyx.android.sdk.universal.editor.handler.drag.DefaultDragHandler r0 = new com.onyx.android.sdk.universal.editor.handler.drag.DefaultDragHandler
            r0.<init>()
        Le2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandlerProvider.provide(java.lang.String):com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandler");
    }
}

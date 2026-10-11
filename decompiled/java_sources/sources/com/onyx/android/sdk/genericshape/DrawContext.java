package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.nio.file.Path;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b$\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010*\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010+\u001a\u00020\nHÆ\u0003J\t\u0010,\u001a\u00020\nHÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\u000eHÆ\u0003JY\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u00100\u001a\u00020\n2\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u000203HÖ\u0001J\t\u00104\u001a\u000205HÖ\u0001R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010\u0013R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/DrawContext;", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "resDirs", "", "Ljava/nio/file/Path;", "allowUseShader", "", "needToFill", "ignoreCanvasSize", "rotation", "", "(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZF)V", "getAllowUseShader", Constants.BOOLEAN_VALUE_SIG, "setAllowUseShader", "(Z)V", "getCanvas", "()Landroid/graphics/Canvas;", "setCanvas", "(Landroid/graphics/Canvas;)V", "getIgnoreCanvasSize", "setIgnoreCanvasSize", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", "getNeedToFill", "setNeedToFill", "getResDirs", "()Ljava/util/List;", "setResDirs", "(Ljava/util/List;)V", "getRotation", "()F", "setRotation", "(F)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class DrawContext {
    private boolean allowUseShader;

    @Nullable
    private Canvas canvas;
    private boolean ignoreCanvasSize;

    @Nullable
    private Matrix matrix;
    private boolean needToFill;

    @NotNull
    private List<Path> resDirs;
    private float rotation;

    public DrawContext(@Nullable Canvas canvas, @Nullable Matrix matrix, @NotNull List<Path> resDirs, boolean z, boolean z2, boolean z3, float f) {
        Intrinsics.checkNotNullParameter(resDirs, "resDirs");
        this.canvas = canvas;
        this.matrix = matrix;
        this.resDirs = resDirs;
        this.allowUseShader = z;
        this.needToFill = z2;
        this.ignoreCanvasSize = z3;
        this.rotation = f;
    }

    public static /* synthetic */ DrawContext copy$default(DrawContext drawContext, Canvas canvas, Matrix matrix, List list, boolean z, boolean z2, boolean z3, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            canvas = drawContext.canvas;
        }
        if ((i & 2) != 0) {
            matrix = drawContext.matrix;
        }
        Matrix matrix2 = matrix;
        if ((i & 4) != 0) {
            list = drawContext.resDirs;
        }
        List list2 = list;
        if ((i & 8) != 0) {
            z = drawContext.allowUseShader;
        }
        boolean z4 = z;
        if ((i & 16) != 0) {
            z2 = drawContext.needToFill;
        }
        boolean z5 = z2;
        if ((i & 32) != 0) {
            z3 = drawContext.ignoreCanvasSize;
        }
        boolean z6 = z3;
        if ((i & 64) != 0) {
            f = drawContext.rotation;
        }
        return drawContext.copy(canvas, matrix2, list2, z4, z5, z6, f);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final Canvas getCanvas() {
        return this.canvas;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Matrix getMatrix() {
        return this.matrix;
    }

    @NotNull
    public final List<Path> component3() {
        return this.resDirs;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getAllowUseShader() {
        return this.allowUseShader;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getNeedToFill() {
        return this.needToFill;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getIgnoreCanvasSize() {
        return this.ignoreCanvasSize;
    }

    /* renamed from: component7, reason: from getter */
    public final float getRotation() {
        return this.rotation;
    }

    @NotNull
    public final DrawContext copy(@Nullable Canvas canvas, @Nullable Matrix matrix, @NotNull List<Path> resDirs, boolean allowUseShader, boolean needToFill, boolean ignoreCanvasSize, float rotation) {
        Intrinsics.checkNotNullParameter(resDirs, "resDirs");
        return new DrawContext(canvas, matrix, resDirs, allowUseShader, needToFill, ignoreCanvasSize, rotation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DrawContext)) {
            return false;
        }
        DrawContext drawContext = (DrawContext) other;
        return Intrinsics.areEqual(this.canvas, drawContext.canvas) && Intrinsics.areEqual(this.matrix, drawContext.matrix) && Intrinsics.areEqual(this.resDirs, drawContext.resDirs) && this.allowUseShader == drawContext.allowUseShader && this.needToFill == drawContext.needToFill && this.ignoreCanvasSize == drawContext.ignoreCanvasSize && Float.compare(this.rotation, drawContext.rotation) == 0;
    }

    public final boolean getAllowUseShader() {
        return this.allowUseShader;
    }

    @Nullable
    public final Canvas getCanvas() {
        return this.canvas;
    }

    public final boolean getIgnoreCanvasSize() {
        return this.ignoreCanvasSize;
    }

    @Nullable
    public final Matrix getMatrix() {
        return this.matrix;
    }

    public final boolean getNeedToFill() {
        return this.needToFill;
    }

    @NotNull
    public final List<Path> getResDirs() {
        return this.resDirs;
    }

    public final float getRotation() {
        return this.rotation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        Canvas canvas = this.canvas;
        int hashCode = (canvas == null ? 0 : canvas.hashCode()) * 31;
        Matrix matrix = this.matrix;
        int hashCode2 = (((hashCode + (matrix != null ? matrix.hashCode() : 0)) * 31) + this.resDirs.hashCode()) * 31;
        boolean z = this.allowUseShader;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode2 + i) * 31;
        boolean z2 = this.needToFill;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.ignoreCanvasSize;
        return ((i4 + (z3 ? 1 : z3 ? 1 : 0)) * 31) + Float.hashCode(this.rotation);
    }

    public final void setAllowUseShader(boolean z) {
        this.allowUseShader = z;
    }

    public final void setCanvas(@Nullable Canvas canvas) {
        this.canvas = canvas;
    }

    public final void setIgnoreCanvasSize(boolean z) {
        this.ignoreCanvasSize = z;
    }

    public final void setMatrix(@Nullable Matrix matrix) {
        this.matrix = matrix;
    }

    public final void setNeedToFill(boolean z) {
        this.needToFill = z;
    }

    public final void setResDirs(@NotNull List<Path> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resDirs = list;
    }

    public final void setRotation(float f) {
        this.rotation = f;
    }

    @NotNull
    public String toString() {
        return "DrawContext(canvas=" + this.canvas + ", matrix=" + this.matrix + ", resDirs=" + this.resDirs + ", allowUseShader=" + this.allowUseShader + ", needToFill=" + this.needToFill + ", ignoreCanvasSize=" + this.ignoreCanvasSize + ", rotation=" + this.rotation + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ DrawContext(android.graphics.Canvas r12, android.graphics.Matrix r13, java.util.List r14, boolean r15, boolean r16, boolean r17, float r18, int r19, kotlin.jvm.internal.DefaultConstructorMarker r20) {
        /*
            r11 = this;
            r0 = r19 & 4
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1d
            java.nio.file.Path[] r0 = new java.nio.file.Path[r1]
            java.lang.String r3 = ""
            java.lang.String[] r4 = new java.lang.String[r2]
            java.nio.file.Path r3 = java.nio.file.Paths.get(r3, r4)
            java.lang.String r4 = "get(path)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r0[r2] = r3
            java.util.List r0 = kotlin.collections.CollectionsKt.mutableListOf(r0)
            r6 = r0
            goto L1e
        L1d:
            r6 = r14
        L1e:
            r0 = r19 & 8
            if (r0 == 0) goto L24
            r7 = r2
            goto L25
        L24:
            r7 = r15
        L25:
            r0 = r19 & 16
            if (r0 == 0) goto L2b
            r8 = r1
            goto L2d
        L2b:
            r8 = r16
        L2d:
            r0 = r19 & 32
            if (r0 == 0) goto L33
            r9 = r2
            goto L35
        L33:
            r9 = r17
        L35:
            r0 = r19 & 64
            if (r0 == 0) goto L3c
            r0 = 0
            r10 = r0
            goto L3e
        L3c:
            r10 = r18
        L3e:
            r3 = r11
            r4 = r12
            r5 = r13
            r3.<init>(r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.DrawContext.<init>(android.graphics.Canvas, android.graphics.Matrix, java.util.List, boolean, boolean, boolean, float, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}

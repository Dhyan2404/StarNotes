package com.onyx.android.sdk.reader.api;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\bJ\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0018\u001a\u00020\b\u0012\b\b\u0002\u0010\u0019\u001a\u00020\b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\b\u0012\u0006\u0010\u001b\u001a\u00020\f\u0012\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0013¢\u0006\u0004\b[\u0010\\J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\n\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\bHÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eHÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eHÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eHÆ\u0003J\t\u0010\u0014\u001a\u00020\u0013HÆ\u0003J\u0089\u0001\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\b2\b\b\u0002\u0010\u0019\u001a\u00020\b2\b\b\u0002\u0010\u001a\u001a\u00020\b2\b\b\u0002\u0010\u001b\u001a\u00020\f2\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0002\u0010\u001f\u001a\u00020\u0013HÆ\u0001J\t\u0010!\u001a\u00020\u000fHÖ\u0001J\t\u0010\"\u001a\u00020\u0006HÖ\u0001J\u0013\u0010$\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010\u0016\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010\u0018\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010\u0019\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u00108\u001a\u0004\b>\u0010:\"\u0004\b?\u0010<R\"\u0010\u001a\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u00108\u001a\u0004\bA\u0010:\"\u0004\bB\u0010<R\"\u0010\u001b\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010J\u001a\u0004\bP\u0010L\"\u0004\bQ\u0010NR(\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010J\u001a\u0004\bS\u0010L\"\u0004\bT\u0010NR\"\u0010\u001f\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010Z¨\u0006]"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/DrawArgs;", "", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "component1", "", "component2", "", "component3", "Landroid/graphics/RectF;", "component4", "component5", "component6", "Landroid/graphics/Bitmap;", "component7", "", "", "component8", "component9", "component10", "", "component11", "pagePosition", "scale", "rotation", "displayRect", "pageRect", "visibleRect", "bitmap", "shapeIdArray", "highlightIdArray", "objIdArray", "antialias", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPagePosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setPagePosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "b", "F", "getScale", "()F", "setScale", "(F)V", "c", "I", "getRotation", "()I", "setRotation", "(I)V", "d", "Landroid/graphics/RectF;", "getDisplayRect", "()Landroid/graphics/RectF;", "setDisplayRect", "(Landroid/graphics/RectF;)V", "e", "getPageRect", "setPageRect", C6997f.f39671c, "getVisibleRect", "setVisibleRect", C6998g.f39679a, "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", C6999h.f39688c, "Ljava/util/List;", "getShapeIdArray", "()Ljava/util/List;", "setShapeIdArray", "(Ljava/util/List;)V", "i", "getHighlightIdArray", "setHighlightIdArray", "j", "getObjIdArray", "setObjIdArray", C4921e.f26537n, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getAntialias", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setAntialias", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class DrawArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderPosition pagePosition;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public float scale;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public int rotation;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF displayRect;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF pageRect;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF visibleRect;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @NotNull
    public Bitmap bitmap;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    @NotNull
    public List<String> shapeIdArray;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    @NotNull
    public List<String> highlightIdArray;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    @NotNull
    public List<String> objIdArray;

    /* renamed from: k, reason: from kotlin metadata and from toString */
    public boolean antialias;

    public DrawArgs(@NotNull ReaderPosition pagePosition, float f, int i, @NotNull RectF displayRect, @NotNull RectF pageRect, @NotNull RectF visibleRect, @NotNull Bitmap bitmap, @NotNull List<String> shapeIdArray, @NotNull List<String> highlightIdArray, @NotNull List<String> objIdArray, boolean z) {
        Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
        Intrinsics.checkNotNullParameter(displayRect, "displayRect");
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(shapeIdArray, "shapeIdArray");
        Intrinsics.checkNotNullParameter(highlightIdArray, "highlightIdArray");
        Intrinsics.checkNotNullParameter(objIdArray, "objIdArray");
        this.pagePosition = pagePosition;
        this.scale = f;
        this.rotation = i;
        this.displayRect = displayRect;
        this.pageRect = pageRect;
        this.visibleRect = visibleRect;
        this.bitmap = bitmap;
        this.shapeIdArray = shapeIdArray;
        this.highlightIdArray = highlightIdArray;
        this.objIdArray = objIdArray;
        this.antialias = z;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ReaderPosition getPagePosition() {
        return this.pagePosition;
    }

    @NotNull
    public final List<String> component10() {
        return this.objIdArray;
    }

    /* renamed from: component11, reason: from getter */
    public final boolean getAntialias() {
        return this.antialias;
    }

    /* renamed from: component2, reason: from getter */
    public final float getScale() {
        return this.scale;
    }

    /* renamed from: component3, reason: from getter */
    public final int getRotation() {
        return this.rotation;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final RectF getDisplayRect() {
        return this.displayRect;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final RectF getPageRect() {
        return this.pageRect;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final RectF getVisibleRect() {
        return this.visibleRect;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final List<String> component8() {
        return this.shapeIdArray;
    }

    @NotNull
    public final List<String> component9() {
        return this.highlightIdArray;
    }

    @NotNull
    public final DrawArgs copy(@NotNull ReaderPosition pagePosition, float scale, int rotation, @NotNull RectF displayRect, @NotNull RectF pageRect, @NotNull RectF visibleRect, @NotNull Bitmap bitmap, @NotNull List<String> shapeIdArray, @NotNull List<String> highlightIdArray, @NotNull List<String> objIdArray, boolean antialias) {
        Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
        Intrinsics.checkNotNullParameter(displayRect, "displayRect");
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(shapeIdArray, "shapeIdArray");
        Intrinsics.checkNotNullParameter(highlightIdArray, "highlightIdArray");
        Intrinsics.checkNotNullParameter(objIdArray, "objIdArray");
        return new DrawArgs(pagePosition, scale, rotation, displayRect, pageRect, visibleRect, bitmap, shapeIdArray, highlightIdArray, objIdArray, antialias);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DrawArgs)) {
            return false;
        }
        DrawArgs drawArgs = (DrawArgs) other;
        return Intrinsics.areEqual(this.pagePosition, drawArgs.pagePosition) && Float.compare(this.scale, drawArgs.scale) == 0 && this.rotation == drawArgs.rotation && Intrinsics.areEqual(this.displayRect, drawArgs.displayRect) && Intrinsics.areEqual(this.pageRect, drawArgs.pageRect) && Intrinsics.areEqual(this.visibleRect, drawArgs.visibleRect) && Intrinsics.areEqual(this.bitmap, drawArgs.bitmap) && Intrinsics.areEqual(this.shapeIdArray, drawArgs.shapeIdArray) && Intrinsics.areEqual(this.highlightIdArray, drawArgs.highlightIdArray) && Intrinsics.areEqual(this.objIdArray, drawArgs.objIdArray) && this.antialias == drawArgs.antialias;
    }

    public final boolean getAntialias() {
        return this.antialias;
    }

    @NotNull
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final RectF getDisplayRect() {
        return this.displayRect;
    }

    @NotNull
    public final List<String> getHighlightIdArray() {
        return this.highlightIdArray;
    }

    @NotNull
    public final List<String> getObjIdArray() {
        return this.objIdArray;
    }

    @NotNull
    public final ReaderPosition getPagePosition() {
        return this.pagePosition;
    }

    @NotNull
    public final RectF getPageRect() {
        return this.pageRect;
    }

    public final int getRotation() {
        return this.rotation;
    }

    public final float getScale() {
        return this.scale;
    }

    @NotNull
    public final List<String> getShapeIdArray() {
        return this.shapeIdArray;
    }

    @NotNull
    public final RectF getVisibleRect() {
        return this.visibleRect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((((((this.pagePosition.hashCode() * 31) + Float.hashCode(this.scale)) * 31) + Integer.hashCode(this.rotation)) * 31) + this.displayRect.hashCode()) * 31) + this.pageRect.hashCode()) * 31) + this.visibleRect.hashCode()) * 31) + this.bitmap.hashCode()) * 31) + this.shapeIdArray.hashCode()) * 31) + this.highlightIdArray.hashCode()) * 31) + this.objIdArray.hashCode()) * 31;
        boolean z = this.antialias;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final void setAntialias(boolean z) {
        this.antialias = z;
    }

    public final void setBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<set-?>");
        this.bitmap = bitmap;
    }

    public final void setDisplayRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.displayRect = rectF;
    }

    public final void setHighlightIdArray(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.highlightIdArray = list;
    }

    public final void setObjIdArray(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.objIdArray = list;
    }

    public final void setPagePosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.pagePosition = readerPosition;
    }

    public final void setPageRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageRect = rectF;
    }

    public final void setRotation(int i) {
        this.rotation = i;
    }

    public final void setScale(float f) {
        this.scale = f;
    }

    public final void setShapeIdArray(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeIdArray = list;
    }

    public final void setVisibleRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.visibleRect = rectF;
    }

    @NotNull
    public String toString() {
        return "DrawArgs(pagePosition=" + this.pagePosition + ", scale=" + this.scale + ", rotation=" + this.rotation + ", displayRect=" + this.displayRect + ", pageRect=" + this.pageRect + ", visibleRect=" + this.visibleRect + ", bitmap=" + this.bitmap + ", shapeIdArray=" + this.shapeIdArray + ", highlightIdArray=" + this.highlightIdArray + ", objIdArray=" + this.objIdArray + ", antialias=" + this.antialias + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ DrawArgs(com.onyx.android.sdk.reader.api.ReaderPosition r15, float r16, int r17, android.graphics.RectF r18, android.graphics.RectF r19, android.graphics.RectF r20, android.graphics.Bitmap r21, java.util.List r22, java.util.List r23, java.util.List r24, boolean r25, int r26, kotlin.jvm.internal.DefaultConstructorMarker r27) {
        /*
            r14 = this;
            r0 = r26
            r1 = r0 & 1
            if (r1 == 0) goto Le
            com.onyx.android.sdk.reader.impl.ReaderPositionImpl$Companion r1 = com.onyx.android.sdk.reader.impl.ReaderPositionImpl.INSTANCE
            com.onyx.android.sdk.reader.api.ReaderPosition r1 = r1.getDummy()
            r3 = r1
            goto Lf
        Le:
            r3 = r15
        Lf:
            r1 = r0 & 2
            if (r1 == 0) goto L17
            r1 = 1065353216(0x3f800000, float:1.0)
            r4 = r1
            goto L19
        L17:
            r4 = r16
        L19:
            r1 = r0 & 4
            if (r1 == 0) goto L20
            r1 = 0
            r5 = r1
            goto L22
        L20:
            r5 = r17
        L22:
            r1 = r0 & 8
            if (r1 == 0) goto L2d
            android.graphics.RectF r1 = new android.graphics.RectF
            r1.<init>()
            r6 = r1
            goto L2f
        L2d:
            r6 = r18
        L2f:
            r1 = r0 & 16
            if (r1 == 0) goto L3a
            android.graphics.RectF r1 = new android.graphics.RectF
            r1.<init>()
            r7 = r1
            goto L3c
        L3a:
            r7 = r19
        L3c:
            r1 = r0 & 32
            if (r1 == 0) goto L47
            android.graphics.RectF r1 = new android.graphics.RectF
            r1.<init>()
            r8 = r1
            goto L49
        L47:
            r8 = r20
        L49:
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L53
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
            r10 = r1
            goto L55
        L53:
            r10 = r22
        L55:
            r1 = r0 & 256(0x100, float:3.59E-43)
            if (r1 == 0) goto L5f
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
            r11 = r1
            goto L61
        L5f:
            r11 = r23
        L61:
            r1 = r0 & 512(0x200, float:7.175E-43)
            if (r1 == 0) goto L6b
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
            r12 = r1
            goto L6d
        L6b:
            r12 = r24
        L6d:
            r0 = r0 & 1024(0x400, float:1.435E-42)
            if (r0 == 0) goto L74
            r0 = 1
            r13 = r0
            goto L76
        L74:
            r13 = r25
        L76:
            r2 = r14
            r9 = r21
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.api.DrawArgs.<init>(com.onyx.android.sdk.reader.api.ReaderPosition, float, int, android.graphics.RectF, android.graphics.RectF, android.graphics.RectF, android.graphics.Bitmap, java.util.List, java.util.List, java.util.List, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}

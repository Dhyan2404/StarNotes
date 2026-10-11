package com.onyx.android.sdk.reader.api;

import android.graphics.PointF;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0019\u001a\u00020\b\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u001a¢\u0006\u0004\b \u0010!R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\n\u001a\u0004\b\u0018\u0010\fR\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", "", "", "a", "I", "getPageIndex", "()I", "pageIndex", "", "b", "F", "getPageScale", "()F", "pageScale", "c", "getPageDisplayOrientation", "pageDisplayOrientation", "Landroid/graphics/PointF;", "d", "Landroid/graphics/PointF;", "getPointInDocument", "()Landroid/graphics/PointF;", "pointInDocument", "e", "getHitTestPadding", "hitTestPadding", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", Constants.CONSTRUCTOR_NAME, "(IFILandroid/graphics/PointF;FLcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderHitTestArgs {

    /* renamed from: a, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: b, reason: from kotlin metadata */
    public final float pageScale;

    /* renamed from: c, reason: from kotlin metadata */
    public final int pageDisplayOrientation;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final PointF pointInDocument;

    /* renamed from: e, reason: from kotlin metadata */
    public final float hitTestPadding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ReaderPosition position;

    public ReaderHitTestArgs(int i, float f, int i2, @NotNull PointF pointInDocument, float f2, @NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(pointInDocument, "pointInDocument");
        Intrinsics.checkNotNullParameter(position, "position");
        this.pageIndex = i;
        this.pageScale = f;
        this.pageDisplayOrientation = i2;
        this.pointInDocument = pointInDocument;
        this.hitTestPadding = f2;
        this.position = position;
    }

    public final float getHitTestPadding() {
        return this.hitTestPadding;
    }

    public final int getPageDisplayOrientation() {
        return this.pageDisplayOrientation;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    public final float getPageScale() {
        return this.pageScale;
    }

    @NotNull
    public final PointF getPointInDocument() {
        return this.pointInDocument;
    }

    @NotNull
    public final ReaderPosition getPosition() {
        return this.position;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ReaderHitTestArgs(int r10, float r11, int r12, android.graphics.PointF r13, float r14, com.onyx.android.sdk.reader.api.ReaderPosition r15, int r16, kotlin.jvm.internal.DefaultConstructorMarker r17) {
        /*
            r9 = this;
            r0 = r16 & 1
            r1 = 0
            if (r0 == 0) goto L7
            r3 = r1
            goto L8
        L7:
            r3 = r10
        L8:
            r0 = r16 & 2
            if (r0 == 0) goto L19
            java.lang.Float r0 = org.apache.commons.lang3.math.NumberUtils.FLOAT_ONE
            java.lang.String r2 = "FLOAT_ONE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            float r0 = r0.floatValue()
            r4 = r0
            goto L1a
        L19:
            r4 = r11
        L1a:
            r0 = r16 & 4
            if (r0 == 0) goto L20
            r5 = r1
            goto L21
        L20:
            r5 = r12
        L21:
            r0 = r16 & 16
            if (r0 == 0) goto L28
            r0 = 0
            r7 = r0
            goto L29
        L28:
            r7 = r14
        L29:
            r0 = r16 & 32
            if (r0 == 0) goto L35
            com.onyx.android.sdk.reader.impl.ReaderPositionImpl$Companion r0 = com.onyx.android.sdk.reader.impl.ReaderPositionImpl.INSTANCE
            com.onyx.android.sdk.reader.api.ReaderPosition r0 = r0.getDummy()
            r8 = r0
            goto L36
        L35:
            r8 = r15
        L36:
            r2 = r9
            r6 = r13
            r2.<init>(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.api.ReaderHitTestArgs.<init>(int, float, int, android.graphics.PointF, float, com.onyx.android.sdk.reader.api.ReaderPosition, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}

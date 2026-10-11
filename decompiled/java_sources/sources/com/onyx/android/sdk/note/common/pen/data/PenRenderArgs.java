package com.onyx.android.sdk.note.common.pen.data;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bB\u0010CJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0014\u0010\f\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0015J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0019J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001eR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010!\u001a\u0004\u0018\u00010\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R$\u0010\u000e\u001a\u00020\r2\u0006\u0010!\u001a\u00020\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R$\u0010\u0010\u001a\u00020\r2\u0006\u0010!\u001a\u00020\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b0\u0010-\u001a\u0004\b1\u0010/R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R$\u0010\u001c\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00198\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00198\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b<\u00109\u001a\u0004\b=\u0010;R$\u0010@\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001e8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;", "", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "setCanvas", "Landroid/graphics/Paint;", "paint", "setPaint", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getPoints", PointConstant.POINT_FILE_END, "setPoints", "", "penType", "setPenType", "color", "setColor", "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "setStrokeWidth", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "getCreateArgs", "createArgs", "setCreateArgs", "Landroid/graphics/Matrix;", "screenMatrix", "setScreenMatrix", "renderMatrix", "setRenderMatrix", "", EventHandlerManager.ERASE, "setErase", "<set-?>", "a", "Landroid/graphics/Canvas;", "getCanvas", "()Landroid/graphics/Canvas;", "b", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "c", "Ljava/util/List;", "d", "I", "getPenType", "()I", "e", "getColor", C6997f.f39671c, "F", "getStrokeWidth", "()F", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", C6999h.f39688c, "Landroid/graphics/Matrix;", "getRenderMatrix", "()Landroid/graphics/Matrix;", "i", "getScreenMatrix", "j", Constants.HASIDCALL_INDEX_SIG, "isErase", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenRenderArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Canvas canvas;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Paint paint;

    /* renamed from: d, reason: from kotlin metadata */
    public int penType;

    /* renamed from: e, reason: from kotlin metadata */
    public int color;

    /* renamed from: f, reason: from kotlin metadata */
    public float strokeWidth;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isErase;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<TouchPoint> points = new ArrayList();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public ShapeCreateArgs createArgs = new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Matrix renderMatrix = new Matrix();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Matrix screenMatrix = new Matrix();

    @Nullable
    public final Canvas getCanvas() {
        return this.canvas;
    }

    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final ShapeCreateArgs getCreateArgs() {
        return this.createArgs;
    }

    @Nullable
    public final Paint getPaint() {
        return this.paint;
    }

    public final int getPenType() {
        return this.penType;
    }

    @NotNull
    public final List<TouchPoint> getPoints() {
        return this.points;
    }

    @NotNull
    public final Matrix getRenderMatrix() {
        return this.renderMatrix;
    }

    @NotNull
    public final Matrix getScreenMatrix() {
        return this.screenMatrix;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    /* renamed from: isErase, reason: from getter */
    public final boolean getIsErase() {
        return this.isErase;
    }

    @NotNull
    public final PenRenderArgs setCanvas(@Nullable Canvas canvas) {
        this.canvas = canvas;
        return this;
    }

    @NotNull
    public final PenRenderArgs setColor(int color) {
        this.color = color;
        return this;
    }

    @NotNull
    public final PenRenderArgs setCreateArgs(@NotNull ShapeCreateArgs createArgs) {
        Intrinsics.checkNotNullParameter(createArgs, "createArgs");
        this.createArgs = createArgs;
        return this;
    }

    @NotNull
    public final PenRenderArgs setErase(boolean erase) {
        this.isErase = erase;
        return this;
    }

    @NotNull
    public final PenRenderArgs setPaint(@Nullable Paint paint) {
        this.paint = paint;
        return this;
    }

    @NotNull
    public final PenRenderArgs setPenType(int penType) {
        this.penType = penType;
        return this;
    }

    @NotNull
    public final PenRenderArgs setPoints(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.points = points;
        return this;
    }

    @NotNull
    public final PenRenderArgs setRenderMatrix(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        this.renderMatrix = renderMatrix;
        return this;
    }

    @NotNull
    public final PenRenderArgs setScreenMatrix(@NotNull Matrix screenMatrix) {
        Intrinsics.checkNotNullParameter(screenMatrix, "screenMatrix");
        this.screenMatrix = screenMatrix;
        return this;
    }

    @NotNull
    public final PenRenderArgs setStrokeWidth(float strokeWidth) {
        this.strokeWidth = strokeWidth;
        return this;
    }
}

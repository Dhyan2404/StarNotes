package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager;
import com.onyx.android.sdk.note.common.shape.TapeFillStyle;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u0000 :2\u00020\u0001:\u0001:B\u0011\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b5\u00106B\u001b\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b5\u00107B#\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u00108\u001a\u00020\u0002¢\u0006\u0004\b5\u00109J(\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J\u001a\u0010\u0010\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0007H\u0002J\b\u0010\u0012\u001a\u00020\u0007H\u0002J\b\u0010\u0013\u001a\u00020\u0007H\u0002J\b\u0010\u0014\u001a\u00020\u0007H\u0002R\u0017\u0010\u0019\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R*\u0010(\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R*\u00100\u001a\u00020)2\u0006\u0010\"\u001a\u00020)8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010#\u001a\u0004\b2\u0010%\"\u0004\b3\u0010'¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/TapeView;", "Landroid/view/View;", "", "w", C6999h.f39688c, "oldw", "oldh", "", "onSizeChanged", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "a", "d", "e", "b", "c", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "paint", "Landroid/graphics/Path;", C6997f.f39671c, "Landroid/graphics/Path;", "path", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "shapeShaderManager", "value", "I", "getTapeShapeColor", "()I", "setTapeShapeColor", "(I)V", "tapeShapeColor", "", "i", Constants.STRING_SIG, "getTapeFillStyle", "()Ljava/lang/String;", "setTapeFillStyle", "(Ljava/lang/String;)V", "tapeFillStyle", "j", "getTapeShapeType", "setTapeShapeType", "tapeShapeType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TapeView extends View {
    public static final int TAPE_SHAPE_TYPE_LINE = 0;
    public static final int TAPE_SHAPE_TYPE_RECTANGLE = 1;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Path path;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ShapeShaderManager shapeShaderManager;

    /* renamed from: h, reason: from kotlin metadata */
    public int tapeShapeColor;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String tapeFillStyle;

    /* renamed from: j, reason: from kotlin metadata */
    public int tapeShapeType;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapeView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_4));
        this.paint = paint;
        this.path = new Path();
        this.shapeShaderManager = new ShapeShaderManager();
        this.tapeShapeColor = -65536;
        this.tapeFillStyle = TapeFillStyle.TAPE_FILL_STYLE_BIAS.name();
    }

    /* renamed from: a */
    public final void m47821a(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C10651R.styleable.TapeView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.tapeShapeType = obtainStyledAttributes.getInt(C10651R.styleable.TapeView_tapeShapeType, 0);
        setTapeShapeColor(obtainStyledAttributes.getInt(C10651R.styleable.TapeView_tapeShapeColor, -65536));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public final void m47822b() {
        Paint paint = this.paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeWidth(getHeight());
        this.path.reset();
        float f = 2;
        float height = getHeight() / f;
        float strokeWidth = this.paint.getStrokeWidth() / f;
        this.path.moveTo(0.0f + strokeWidth, height);
        this.path.lineTo(getWidth() - strokeWidth, height);
    }

    /* renamed from: c */
    public final void m47823c() {
        this.paint.setStyle(Paint.Style.FILL);
        this.path.reset();
        RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        float dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_4);
        this.path.addRoundRect(rectF, dimens, dimens, Path.Direction.CW);
    }

    /* renamed from: d */
    public final void m47824d() {
        this.paint.setShader(ShapeShaderManager.getTapeFillShader$default(this.shapeShaderManager, this.tapeShapeColor, getMeasuredHeight(), this.tapeFillStyle, 0.0f, 8, null).getShader());
    }

    /* renamed from: e */
    public final void m47825e() {
        int i = this.tapeShapeType;
        if (i == 0) {
            m47822b();
        } else {
            if (i != 1) {
                return;
            }
            m47823c();
        }
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    @NotNull
    public final String getTapeFillStyle() {
        return this.tapeFillStyle;
    }

    public final int getTapeShapeColor() {
        return this.tapeShapeColor;
    }

    public final int getTapeShapeType() {
        return this.tapeShapeType;
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        m47825e();
        canvas.drawPath(this.path, this.paint);
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        m47824d();
    }

    public final void setTapeFillStyle(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tapeFillStyle = value;
        m47824d();
        invalidate();
    }

    public final void setTapeShapeColor(int i) {
        this.tapeShapeColor = i;
        m47824d();
        invalidate();
    }

    public final void setTapeShapeType(int i) {
        this.tapeShapeType = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_4));
        this.paint = paint;
        this.path = new Path();
        this.shapeShaderManager = new ShapeShaderManager();
        this.tapeShapeColor = -65536;
        this.tapeFillStyle = TapeFillStyle.TAPE_FILL_STYLE_BIAS.name();
        m47821a(context, attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_4));
        this.paint = paint;
        this.path = new Path();
        this.shapeShaderManager = new ShapeShaderManager();
        this.tapeShapeColor = -65536;
        this.tapeFillStyle = TapeFillStyle.TAPE_FILL_STYLE_BIAS.name();
    }
}

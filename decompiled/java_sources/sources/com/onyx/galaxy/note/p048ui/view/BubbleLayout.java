package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 >2\u00020\u0001:\u0002>?B\u0011\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b9\u0010:B\u001b\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b9\u0010;B#\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010<\u001a\u00020\u0006¢\u0006\u0004\b9\u0010=J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J(\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0014J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u0006J\u001a\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002R\u001c\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\b\b\u0010\u001b\u0012\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u001bR\u0016\u0010\f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001bR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00106\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00103R\u0014\u00108\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u0010+¨\u0006@"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/BubbleLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDraw", "", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", TypedValues.CycleType.S_WAVE_OFFSET, "setTriangleOffset", CouchFieldKey.KEY_DIR, "setTriangleDirection", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "d", C6998g.f39679a, C6997f.f39671c, "i", "e", "c", "b", "I", "getDirection$annotations", "()V", "direction", "radius", "j", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "showBorder", "Landroid/graphics/Point;", "l", "Landroid/graphics/Point;", "datumPoint", "Landroid/graphics/Path;", "m", "Landroid/graphics/Path;", "backgroundPath", "Landroid/graphics/RectF;", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/RectF;", "rect", "Landroid/graphics/Paint;", C4921e.f26528e, "Landroid/graphics/Paint;", "strokePaint", "p", "backgroundPaint", "q", "excludeLinePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class BubbleLayout extends TintFrameLayout {
    public static final int BOTTOM = 4;
    public static final int LEFT = 1;
    public static final int RIGHT = 3;
    public static final int TOP = 2;

    /* renamed from: h, reason: from kotlin metadata */
    public int direction;

    /* renamed from: i, reason: from kotlin metadata */
    public int radius;

    /* renamed from: j, reason: from kotlin metadata */
    public int offset;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean showBorder;

    /* renamed from: l, reason: from kotlin metadata */
    public Point datumPoint;

    /* renamed from: m, reason: from kotlin metadata */
    public Path backgroundPath;

    /* renamed from: n, reason: from kotlin metadata */
    public RectF rect;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Paint strokePaint;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Paint backgroundPaint;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Path excludeLinePath;

    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.onyx.galaxy.note.ui.view.BubbleLayout$a */
    /* loaded from: classes9.dex */
    public @interface InterfaceC12826a {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BubbleLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @InterfaceC12826a
    private static /* synthetic */ void getDirection$annotations() {
    }

    /* renamed from: b */
    public final void m51419b() {
        int i = this.direction;
        Point point = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return;
                    }
                }
            }
            Point point2 = this.datumPoint;
            if (point2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            } else {
                point = point2;
            }
            point.x += this.offset;
            return;
        }
        Point point3 = this.datumPoint;
        if (point3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
        } else {
            point = point3;
        }
        point.y += this.offset;
    }

    /* renamed from: c */
    public final void m51420c(Canvas canvas) {
        if (this.showBorder) {
            Path path = this.backgroundPath;
            if (path == null) {
                Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
                path = null;
            }
            canvas.drawPath(path, this.strokePaint);
        }
    }

    /* renamed from: d */
    public final void m51421d(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C10651R.styleable.BubbleLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        int resourceId = obtainStyledAttributes.getResourceId(C10651R.styleable.BubbleLayout_bubble_background_color, C7996R.color.theme_background_popup_color_01);
        int color = obtainStyledAttributes.getColor(C10651R.styleable.BubbleLayout_bubble_shadow_color, context.getColor(C10651R.color.black_10));
        int i = C10651R.styleable.BubbleLayout_bubble_shadow_size;
        ResManager resManager = ResManager.INSTANCE;
        float dimension = obtainStyledAttributes.getDimension(i, resManager.getDimension(C7384R.dimen.dp_2));
        int resourceId2 = obtainStyledAttributes.getResourceId(C10651R.styleable.BubbleLayout_bubble_stroke_color, C7996R.color.theme_divider_color_01);
        float dimension2 = obtainStyledAttributes.getDimension(C10651R.styleable.BubbleLayout_bubble_stroke_width, resManager.getDimension(C7384R.dimen.dp_0_5));
        this.showBorder = obtainStyledAttributes.getBoolean(C10651R.styleable.BubbleLayout_bubble_show_border, false);
        this.radius = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.BubbleLayout_bubble_radius, 0);
        this.direction = obtainStyledAttributes.getInt(C10651R.styleable.BubbleLayout_bubble_direction, 4);
        this.offset = obtainStyledAttributes.getDimensionPixelOffset(C10651R.styleable.BubbleLayout_bubble_offset, 0);
        obtainStyledAttributes.recycle();
        this.strokePaint.setStyle(Paint.Style.STROKE);
        this.strokePaint.setAntiAlias(true);
        this.strokePaint.setColor(ThemeUtils.getColorById(resourceId2));
        this.strokePaint.setStrokeWidth(dimension2);
        this.backgroundPaint.setAntiAlias(true);
        this.backgroundPaint.setColor(ThemeUtils.getColorById(resourceId));
        this.backgroundPaint.setShadowLayer(dimension, 0.0f, 0.0f, color);
        this.backgroundPath = new Path();
        this.rect = new RectF();
        this.datumPoint = new Point();
        setWillNotDraw(false);
        setLayerType(1, null);
    }

    /* renamed from: e */
    public final void m51422e() {
        int paddingBottom = getPaddingBottom();
        if (paddingBottom == 0) {
            return;
        }
        Path path = this.backgroundPath;
        Path path2 = null;
        if (path == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path = null;
        }
        RectF rectF = this.rect;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF = null;
        }
        int i = this.radius;
        path.addRoundRect(rectF, i, i, Path.Direction.CCW);
        Path path3 = this.backgroundPath;
        if (path3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path3 = null;
        }
        Point point = this.datumPoint;
        if (point == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point = null;
        }
        int i2 = paddingBottom / 2;
        float f = point.x + i2;
        Point point2 = this.datumPoint;
        if (point2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point2 = null;
        }
        path3.moveTo(f, point2.y);
        Path path4 = this.backgroundPath;
        if (path4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path4 = null;
        }
        Point point3 = this.datumPoint;
        if (point3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point3 = null;
        }
        float f2 = point3.x;
        Point point4 = this.datumPoint;
        if (point4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point4 = null;
        }
        path4.lineTo(f2, point4.y + i2);
        Path path5 = this.backgroundPath;
        if (path5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path5 = null;
        }
        Point point5 = this.datumPoint;
        if (point5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point5 = null;
        }
        float f3 = point5.x - i2;
        Point point6 = this.datumPoint;
        if (point6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point6 = null;
        }
        path5.lineTo(f3, point6.y);
        this.excludeLinePath.reset();
        Path path6 = this.excludeLinePath;
        Point point7 = this.datumPoint;
        if (point7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point7 = null;
        }
        float f4 = point7.x + i2;
        Point point8 = this.datumPoint;
        if (point8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point8 = null;
        }
        path6.moveTo(f4, point8.y);
        Path path7 = this.excludeLinePath;
        Point point9 = this.datumPoint;
        if (point9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point9 = null;
        }
        float f5 = point9.x - i2;
        Point point10 = this.datumPoint;
        if (point10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point10 = null;
        }
        path7.lineTo(f5, point10.y);
        this.excludeLinePath.close();
        Path path8 = this.backgroundPath;
        if (path8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path8 = null;
        }
        path8.close();
        Path path9 = this.backgroundPath;
        if (path9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
        } else {
            path2 = path9;
        }
        path2.op(this.excludeLinePath, Path.Op.XOR);
    }

    /* renamed from: f */
    public final void m51423f() {
        int paddingLeft = getPaddingLeft();
        if (paddingLeft == 0) {
            return;
        }
        Path path = this.backgroundPath;
        Path path2 = null;
        if (path == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path = null;
        }
        RectF rectF = this.rect;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF = null;
        }
        int i = this.radius;
        path.addRoundRect(rectF, i, i, Path.Direction.CCW);
        Path path3 = this.backgroundPath;
        if (path3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path3 = null;
        }
        Point point = this.datumPoint;
        if (point == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point = null;
        }
        float f = point.x;
        Point point2 = this.datumPoint;
        if (point2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point2 = null;
        }
        int i2 = paddingLeft / 2;
        path3.moveTo(f, point2.y - i2);
        Path path4 = this.backgroundPath;
        if (path4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path4 = null;
        }
        Point point3 = this.datumPoint;
        if (point3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point3 = null;
        }
        float f2 = point3.x - i2;
        Point point4 = this.datumPoint;
        if (point4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point4 = null;
        }
        path4.lineTo(f2, point4.y);
        Path path5 = this.backgroundPath;
        if (path5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path5 = null;
        }
        Point point5 = this.datumPoint;
        if (point5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point5 = null;
        }
        float f3 = point5.x;
        Point point6 = this.datumPoint;
        if (point6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point6 = null;
        }
        path5.lineTo(f3, point6.y + i2);
        this.excludeLinePath.reset();
        Path path6 = this.excludeLinePath;
        Point point7 = this.datumPoint;
        if (point7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point7 = null;
        }
        float f4 = point7.x;
        Point point8 = this.datumPoint;
        if (point8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point8 = null;
        }
        path6.moveTo(f4, point8.y - i2);
        Path path7 = this.excludeLinePath;
        Point point9 = this.datumPoint;
        if (point9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point9 = null;
        }
        float f5 = point9.x;
        Point point10 = this.datumPoint;
        if (point10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point10 = null;
        }
        path7.lineTo(f5, point10.y + i2);
        this.excludeLinePath.close();
        Path path8 = this.backgroundPath;
        if (path8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path8 = null;
        }
        path8.close();
        Path path9 = this.backgroundPath;
        if (path9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
        } else {
            path2 = path9;
        }
        path2.op(this.excludeLinePath, Path.Op.XOR);
    }

    /* renamed from: g */
    public final void m51424g() {
        Point point = this.datumPoint;
        Point point2 = null;
        if (point == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point = null;
        }
        if (point.x > 0) {
            Point point3 = this.datumPoint;
            if (point3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            } else {
                point2 = point3;
            }
            if (point2.y > 0) {
                int i = this.direction;
                if (i == 1) {
                    m51423f();
                    return;
                }
                if (i == 2) {
                    m51426i();
                } else if (i == 3) {
                    m51425h();
                } else {
                    if (i != 4) {
                        return;
                    }
                    m51422e();
                }
            }
        }
    }

    /* renamed from: h */
    public final void m51425h() {
        int paddingRight = getPaddingRight();
        if (paddingRight == 0) {
            return;
        }
        Path path = this.backgroundPath;
        Path path2 = null;
        if (path == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path = null;
        }
        RectF rectF = this.rect;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF = null;
        }
        int i = this.radius;
        path.addRoundRect(rectF, i, i, Path.Direction.CCW);
        Path path3 = this.backgroundPath;
        if (path3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path3 = null;
        }
        Point point = this.datumPoint;
        if (point == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point = null;
        }
        float f = point.x;
        Point point2 = this.datumPoint;
        if (point2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point2 = null;
        }
        int i2 = paddingRight / 2;
        path3.moveTo(f, point2.y - i2);
        Path path4 = this.backgroundPath;
        if (path4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path4 = null;
        }
        Point point3 = this.datumPoint;
        if (point3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point3 = null;
        }
        float f2 = point3.x + i2;
        Point point4 = this.datumPoint;
        if (point4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point4 = null;
        }
        path4.lineTo(f2, point4.y);
        Path path5 = this.backgroundPath;
        if (path5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path5 = null;
        }
        Point point5 = this.datumPoint;
        if (point5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point5 = null;
        }
        float f3 = point5.x;
        Point point6 = this.datumPoint;
        if (point6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point6 = null;
        }
        path5.lineTo(f3, point6.y + i2);
        this.excludeLinePath.reset();
        Path path6 = this.excludeLinePath;
        Point point7 = this.datumPoint;
        if (point7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point7 = null;
        }
        float f4 = point7.x;
        Point point8 = this.datumPoint;
        if (point8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point8 = null;
        }
        path6.moveTo(f4, point8.y - i2);
        Path path7 = this.excludeLinePath;
        Point point9 = this.datumPoint;
        if (point9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point9 = null;
        }
        float f5 = point9.x;
        Point point10 = this.datumPoint;
        if (point10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point10 = null;
        }
        path7.lineTo(f5, point10.y + i2);
        this.excludeLinePath.close();
        Path path8 = this.backgroundPath;
        if (path8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path8 = null;
        }
        path8.close();
        Path path9 = this.backgroundPath;
        if (path9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
        } else {
            path2 = path9;
        }
        path2.op(this.excludeLinePath, Path.Op.XOR);
    }

    /* renamed from: i */
    public final void m51426i() {
        int paddingTop = getPaddingTop();
        if (paddingTop == 0) {
            return;
        }
        Path path = this.backgroundPath;
        Path path2 = null;
        if (path == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path = null;
        }
        RectF rectF = this.rect;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF = null;
        }
        int i = this.radius;
        path.addRoundRect(rectF, i, i, Path.Direction.CCW);
        Path path3 = this.backgroundPath;
        if (path3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path3 = null;
        }
        Point point = this.datumPoint;
        if (point == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point = null;
        }
        int i2 = paddingTop / 2;
        float f = point.x + i2;
        Point point2 = this.datumPoint;
        if (point2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point2 = null;
        }
        path3.moveTo(f, point2.y);
        Path path4 = this.backgroundPath;
        if (path4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path4 = null;
        }
        Point point3 = this.datumPoint;
        if (point3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point3 = null;
        }
        float f2 = point3.x;
        Point point4 = this.datumPoint;
        if (point4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point4 = null;
        }
        path4.lineTo(f2, point4.y - i2);
        Path path5 = this.backgroundPath;
        if (path5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path5 = null;
        }
        Point point5 = this.datumPoint;
        if (point5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point5 = null;
        }
        float f3 = point5.x - i2;
        Point point6 = this.datumPoint;
        if (point6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point6 = null;
        }
        path5.lineTo(f3, point6.y);
        this.excludeLinePath.reset();
        Path path6 = this.excludeLinePath;
        Point point7 = this.datumPoint;
        if (point7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point7 = null;
        }
        float f4 = point7.x + i2;
        Point point8 = this.datumPoint;
        if (point8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point8 = null;
        }
        path6.moveTo(f4, point8.y);
        Path path7 = this.excludeLinePath;
        Point point9 = this.datumPoint;
        if (point9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point9 = null;
        }
        float f5 = point9.x - i2;
        Point point10 = this.datumPoint;
        if (point10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            point10 = null;
        }
        path7.lineTo(f5, point10.y);
        this.excludeLinePath.close();
        Path path8 = this.backgroundPath;
        if (path8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path8 = null;
        }
        path8.close();
        Path path9 = this.backgroundPath;
        if (path9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
        } else {
            path2 = path9;
        }
        path2.op(this.excludeLinePath, Path.Op.XOR);
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        Path path = this.backgroundPath;
        if (path == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPath");
            path = null;
        }
        canvas.drawPath(path, this.backgroundPaint);
        m51420c(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        RectF rectF = this.rect;
        Point point = null;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF = null;
        }
        rectF.left = getPaddingLeft();
        RectF rectF2 = this.rect;
        if (rectF2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF2 = null;
        }
        rectF2.top = getPaddingTop();
        RectF rectF3 = this.rect;
        if (rectF3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF3 = null;
        }
        rectF3.right = w - getPaddingRight();
        RectF rectF4 = this.rect;
        if (rectF4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rect");
            rectF4 = null;
        }
        rectF4.bottom = h - getPaddingBottom();
        int i = this.direction;
        if (i == 1) {
            Point point2 = this.datumPoint;
            if (point2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
                point2 = null;
            }
            point2.x = getPaddingLeft();
            Point point3 = this.datumPoint;
            if (point3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            } else {
                point = point3;
            }
            point.y = h / 2;
        } else if (i == 2) {
            Point point4 = this.datumPoint;
            if (point4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
                point4 = null;
            }
            point4.x = w / 2;
            Point point5 = this.datumPoint;
            if (point5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            } else {
                point = point5;
            }
            point.y = getPaddingTop();
        } else if (i == 3) {
            Point point6 = this.datumPoint;
            if (point6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
                point6 = null;
            }
            point6.x = w - getPaddingRight();
            Point point7 = this.datumPoint;
            if (point7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            } else {
                point = point7;
            }
            point.y = h / 2;
        } else if (i == 4) {
            Point point8 = this.datumPoint;
            if (point8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
                point8 = null;
            }
            point8.x = w / 2;
            Point point9 = this.datumPoint;
            if (point9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("datumPoint");
            } else {
                point = point9;
            }
            point.y = h - getPaddingBottom();
        }
        if (this.offset != 0) {
            m51419b();
        }
        m51424g();
    }

    public final void setTriangleDirection(@InterfaceC12826a int dir) {
        this.direction = dir;
        invalidate();
    }

    public final void setTriangleOffset(int offset) {
        this.offset = offset;
        m51419b();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BubbleLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BubbleLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.strokePaint = new Paint();
        this.backgroundPaint = new Paint();
        this.excludeLinePath = new Path();
        m51421d(context, attributeSet);
    }
}

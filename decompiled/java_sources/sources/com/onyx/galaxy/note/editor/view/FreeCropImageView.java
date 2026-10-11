package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import com.canhub.cropper.CropImageOptions;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.utils.ShapeRegionUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010C\u001a\u00020B¢\u0006\u0004\bD\u0010EB\u001d\b\u0016\u0012\u0006\u0010C\u001a\u00020B\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010F¢\u0006\u0004\bD\u0010HB%\b\u0016\u0012\u0006\u0010C\u001a\u00020B\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010F\u0012\u0006\u0010I\u001a\u00020\u000b¢\u0006\u0004\bD\u0010JJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0014J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0019\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u0016J\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010\u001d\u001a\u00020\u0003J\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007J\b\u0010\u001f\u001a\u0004\u0018\u00010\u0007J\u0006\u0010 \u001a\u00020\u0003J\b\u0010\"\u001a\u0004\u0018\u00010!J\b\u0010#\u001a\u00020\tH\u0002J \u0010'\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000bH\u0002J\u001e\u0010*\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u00032\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001b0+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00103\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00100R\u0016\u00105\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00100R\u0016\u0010(\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006K"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/FreeCropImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/view/View$OnTouchListener;", "Landroid/graphics/Path;", "getPointPath", "Landroid/graphics/Matrix;", "getNormalizeMatrix", "Landroid/graphics/Bitmap;", "bitmap", "", "setImageBitmap", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouch", "drawBackground", Constants.RESET, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getPoints", "getPath", "getOriginImage", "getCroppedImage", "getCropPath", "Landroid/graphics/Rect;", "getCropRect", "c", "measureSpecMode", "measureSpecSize", "desiredSize", "b", "path", PointConstant.POINT_FILE_END, "a", "", C6999h.f39688c, "Ljava/util/List;", "Landroid/graphics/Paint;", "i", "Landroid/graphics/Paint;", "pathPaint", "j", "fillPathPaint", C4921e.f26537n, "overlayPaint", "l", "Landroid/graphics/Path;", "m", "Landroid/graphics/Bitmap;", GoogleApiAvailabilityLight.f29016b, Constants.HASIDCALL_INDEX_SIG, "touchDone", C4921e.f26528e, "Landroid/graphics/PorterDuffXfermode;", "p", "Landroid/graphics/PorterDuffXfermode;", "overlayPorterDuffMode", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FreeCropImageView extends AppCompatImageView implements View.OnTouchListener {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<TouchPoint> points;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Paint pathPaint;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Paint fillPathPaint;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Paint overlayPaint;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Path path;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean touchDone;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean drawBackground;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public PorterDuffXfermode overlayPorterDuffMode;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FreeCropImageView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final Matrix getNormalizeMatrix() {
        Matrix matrix = new Matrix();
        Bitmap bitmap = getBitmap();
        if (bitmap == null) {
            return matrix;
        }
        if (BitmapKt.isValid(bitmap)) {
            float min = Math.min(getWidth() / bitmap.getWidth(), getHeight() / bitmap.getHeight());
            matrix.postScale(min, min);
            matrix.postTranslate((getWidth() - (bitmap.getWidth() * min)) / 2.0f, (getHeight() - (bitmap.getHeight() * min)) / 2.0f);
        }
        return MatrixKt.invertMatrix(matrix);
    }

    private final Path getPointPath() {
        Path m47181a = m47181a(new Path(), this.points);
        m47181a.close();
        return m47181a;
    }

    public static /* synthetic */ void reset$default(FreeCropImageView freeCropImageView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        freeCropImageView.reset(z);
    }

    /* renamed from: a */
    public final Path m47181a(Path path, List<TouchPoint> points) {
        Object first;
        Object first2;
        path.reset();
        if (CollectionKt.isNonBlank(points)) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
            float x = ((TouchPoint) first).getX();
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
            path.moveTo(x, ((TouchPoint) first2).getY());
            PathKt.averageQuadTo(path, points);
        }
        return path;
    }

    /* renamed from: b */
    public final int m47182b(int measureSpecMode, int measureSpecSize, int desiredSize) {
        return measureSpecMode != Integer.MIN_VALUE ? measureSpecMode != 1073741824 ? desiredSize : measureSpecSize : Math.min(desiredSize, measureSpecSize);
    }

    /* renamed from: c */
    public final void m47183c() {
        setFocusable(true);
        setFocusableInTouchMode(true);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_2));
        paint.setColor(getContext().getColor(C10651R.color.primary_200));
        float f = 2;
        paint.setPathEffect(new DashPathEffect(new float[]{paint.getStrokeWidth() * f, paint.getStrokeWidth() * f}, 0.0f));
        this.pathPaint = paint;
        Paint paint2 = new Paint(this.pathPaint);
        paint2.setColor(-1);
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        this.fillPathPaint = paint2;
        Paint paint3 = new Paint(1);
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(new CropImageOptions(false, false, null, null, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -1, -1, 31, null).backgroundColor);
        this.overlayPaint = paint3;
        setOnTouchListener(this);
    }

    @NotNull
    public final Path getCropPath() {
        Path pointPath = getPointPath();
        pointPath.transform(getNormalizeMatrix());
        return pointPath;
    }

    @Nullable
    public final Rect getCropRect() {
        Path pointPath = getPointPath();
        if (pointPath.isEmpty()) {
            return null;
        }
        Rect bounds = ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, pointPath, RectFKt.ifEmpty(com.onyx.android.sdk.base.extension.PathKt.computeBounds$default(pointPath, false, 1, null), new Function0<RectF>() { // from class: com.onyx.galaxy.note.editor.view.FreeCropImageView$getCropRect$rectF$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RectF invoke() {
                return new RectF(0.0f, 0.0f, FreeCropImageView.this.getWidth(), FreeCropImageView.this.getHeight());
            }
        }), false, 4, null).getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        Rect mapRect = MatrixKt.mapRect(getNormalizeMatrix(), bounds);
        Intrinsics.checkNotNull(mapRect);
        return mapRect;
    }

    @Nullable
    public final Bitmap getCroppedImage() {
        List<TouchPoint> list;
        list = CollectionsKt___CollectionsKt.toList(getPoints());
        if (CollectionKt.isNullOrEmpty(list)) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        createBitmap.eraseColor(0);
        Canvas canvas = new Canvas(createBitmap);
        Path m47181a = m47181a(new Path(), list);
        m47181a.close();
        reset(false);
        Bitmap loadBitmapFromDrawingCache = ViewKt.loadBitmapFromDrawingCache(this);
        Intrinsics.checkNotNull(loadBitmapFromDrawingCache);
        Paint paint = new Paint();
        canvas.drawPath(m47181a, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(loadBitmapFromDrawingCache, 0.0f, 0.0f, paint);
        Region region = new Region();
        region.setPath(m47181a, new Region(0, 0, createBitmap.getWidth(), createBitmap.getHeight()));
        Rect bounds = region.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        return Bitmap.createBitmap(createBitmap, bounds.left, bounds.top, Math.max(bounds.width(), 1), Math.max(bounds.height(), 1));
    }

    @Nullable
    /* renamed from: getOriginImage, reason: from getter */
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final Path getPath() {
        return this.path;
    }

    @NotNull
    public final List<TouchPoint> getPoints() {
        return this.points;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), this.overlayPaint);
        if (this.touchDone) {
            canvas.drawPath(this.path, this.fillPathPaint);
        }
        if (this.drawBackground) {
            this.overlayPaint.setXfermode(this.overlayPorterDuffMode);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.overlayPaint);
            this.overlayPaint.setXfermode(null);
        }
        canvas.restoreToCount(saveLayer);
        canvas.drawPath(this.path, this.pathPaint);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width;
        int i;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            setMeasuredDimension(size, size2);
            return;
        }
        if (size2 == 0) {
            size2 = bitmap.getHeight();
        }
        double width2 = size < bitmap.getWidth() ? size / bitmap.getWidth() : Double.POSITIVE_INFINITY;
        double height = size2 < bitmap.getHeight() ? size2 / bitmap.getHeight() : Double.POSITIVE_INFINITY;
        if (width2 == Double.POSITIVE_INFINITY) {
            if (height == Double.POSITIVE_INFINITY) {
                width = bitmap.getWidth();
                i = bitmap.getHeight();
                setMeasuredDimension(m47182b(mode, size, width), m47182b(mode2, size2, i));
            }
        }
        if (width2 <= height) {
            i = (int) (bitmap.getHeight() * width2);
            width = size;
        } else {
            width = (int) (bitmap.getWidth() * height);
            i = size2;
        }
        setMeasuredDimension(m47182b(mode, size, width), m47182b(mode2, size2, i));
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@Nullable View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TouchPoint touchPoint = new TouchPoint(event);
        if (MotionEventKt.isDownAction(event)) {
            reset$default(this, false, 1, null);
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        touchPoint.setX(((Number) mathUtils.clamp(Float.valueOf(touchPoint.getX()), Float.valueOf(0.0f), Float.valueOf(getMeasuredWidth()))).floatValue());
        touchPoint.setY(((Number) mathUtils.clamp(Float.valueOf(touchPoint.getY()), Float.valueOf(0.0f), Float.valueOf(getMeasuredHeight()))).floatValue());
        this.points.add(touchPoint);
        m47181a(this.path, this.points);
        if (MotionEventKt.isUpAction(event)) {
            this.touchDone = true;
            this.path.close();
        }
        invalidate();
        return true;
    }

    public final void reset(boolean drawBackground) {
        this.points = new ArrayList();
        this.path.reset();
        this.touchDone = false;
        this.drawBackground = drawBackground;
        invalidate();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(@Nullable Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.bitmap = bitmap;
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FreeCropImageView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ FreeCropImageView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FreeCropImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.points = new ArrayList();
        this.pathPaint = new Paint();
        this.fillPathPaint = new Paint();
        this.overlayPaint = new Paint();
        this.path = new Path();
        this.drawBackground = true;
        this.overlayPorterDuffMode = new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT);
        m47183c();
    }

    public /* synthetic */ FreeCropImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

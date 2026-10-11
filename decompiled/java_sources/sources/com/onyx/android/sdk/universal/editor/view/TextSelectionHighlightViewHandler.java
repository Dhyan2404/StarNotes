package com.onyx.android.sdk.universal.editor.view;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.Log;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PointFKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderWritingModeKt;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.C8045R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 52\u00020\u0001:\u00015B\u0007¢\u0006\u0004\b3\u00104J\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ$\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eJ$\u0010\u0014\u001a\u00020\u00132\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0015\u001a\u00020\u0002J&\u0010\u0016\u001a\u00020\u00132\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J0\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019H\u0002J\b\u0010\u001e\u001a\u00020\u0019H\u0002J\b\u0010\u001f\u001a\u00020\u0019H\u0002J\b\u0010 \u001a\u00020\u0013H\u0002J\b\u0010!\u001a\u00020\u0013H\u0002J&\u0010\"\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J&\u0010#\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001e\u0010$\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001e\u0010%\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010(\u001a\u00020\f2\u0006\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010*\u001a\u00020)2\u0006\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010,\u001a\u00020\f2\u0006\u0010+\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010-\u001a\u00020)2\u0006\u0010+\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010/R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010/R\u0016\u00102\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010/¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;", "", "", "initPaint", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", "drawHighlight", "", "Landroid/graphics/RectF;", "rectangles", "", "isVertical", "currentSelectionRectList", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "", "hitTestCursor", "onThemeUpdated", GoogleApiAvailabilityLight.f29016b, "startHitTestRect", "endHitTestRect", "", "x", "y", "hitTestPadding", "m", "i", "j", C4921e.f26537n, "l", C6999h.f39688c, C6998g.f39679a, "e", "b", "first", "lineWidth", C6997f.f39671c, "Landroid/graphics/PointF;", "d", Keywords.FUNC_LAST_STRING, "c", "a", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "cursorCirclePaint", "cursorLinePaint", "fillPaint", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextSelectionHighlightViewHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextSelectionHighlightViewHandler.kt\ncom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 5 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,238:1\n2634#2:239\n1855#2,2:249\n2634#2:255\n1#3:240\n1#3:256\n121#4,8:241\n92#5,4:251\n*S KotlinDebug\n*F\n+ 1 TextSelectionHighlightViewHandler.kt\ncom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler\n*L\n63#1:239\n75#1:249,2\n109#1:255\n63#1:240\n109#1:256\n66#1:241,8\n87#1:251,4\n*E\n"})
/* loaded from: classes8.dex */
public final class TextSelectionHighlightViewHandler {
    public static final int BEGIN_CURSOR_INDEX = 0;
    public static final int END_CURSOR_INDEX = 1;
    public static final int INVALID_INDEX = -1;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Paint cursorCirclePaint = new Paint();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Paint cursorLinePaint = new Paint();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Paint fillPaint = new Paint();

    /* renamed from: a */
    public final PointF m41548a(RectF last, float lineWidth, boolean isVertical) {
        return isVertical ? new PointF(last.left + (lineWidth / 2), last.bottom + lineWidth) : new PointF(last.right + (lineWidth / 2), last.bottom + lineWidth);
    }

    /* renamed from: b */
    public final RectF m41549b(List<RectF> rectangles, boolean isVertical) {
        Object last;
        float m41557j = m41557j();
        float m41556i = m41556i();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) rectangles);
        RectF rectF = (RectF) last;
        return RectFKt.unionOrCopy(m41550c(rectF, m41556i, isVertical), PointFKt.toRect(m41548a(rectF, m41556i, isVertical), m41557j));
    }

    /* renamed from: c */
    public final RectF m41550c(RectF last, float lineWidth, boolean isVertical) {
        if (!isVertical) {
            float f = last.right;
            return new RectF(f, last.top, lineWidth + f, last.bottom);
        }
        float f2 = last.left;
        float f3 = last.bottom;
        return new RectF(f2, f3, last.right, lineWidth + f3);
    }

    /* renamed from: d */
    public final PointF m41551d(RectF first, float lineWidth, boolean isVertical) {
        return isVertical ? new PointF(first.right - (lineWidth / 2), first.top - lineWidth) : new PointF(first.left - (lineWidth / 2), first.top - lineWidth);
    }

    public final void drawHighlight(@NotNull Canvas canvas, @NotNull BoxInfo virtualBoxInfo, @NotNull ReaderSelection selection) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(selection, "selection");
        Matrix unRotatedMatrix = BoxInfo.INSTANCE.getUnRotatedMatrix(virtualBoxInfo);
        List<RectF> copyRectFList = RectFKt.copyRectFList(selection.rectangles());
        Iterator<T> it2 = copyRectFList.iterator();
        while (it2.hasNext()) {
            unRotatedMatrix.mapRect((RectF) it2.next());
        }
        List<RectF> list = copyRectFList;
        Matrix invertMatrix = MatrixKt.invertMatrix(unRotatedMatrix);
        int save = canvas.save();
        canvas.concat(invertMatrix);
        try {
            drawHighlight(canvas, list, ReaderWritingModeKt.isVertical(selection.writingMode()));
        } finally {
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: e */
    public final RectF m41552e(List<RectF> rectangles, boolean isVertical) {
        Object first;
        float m41557j = m41557j();
        float m41556i = m41556i();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) rectangles);
        RectF rectF = (RectF) first;
        return RectFKt.unionOrCopy(m41553f(rectF, m41556i, isVertical), PointFKt.toRect(m41551d(rectF, m41556i, isVertical), m41557j));
    }

    /* renamed from: f */
    public final RectF m41553f(RectF first, float lineWidth, boolean isVertical) {
        if (!isVertical) {
            float f = first.left;
            return new RectF(f - lineWidth, first.top, f, first.bottom);
        }
        float f2 = first.left;
        float f3 = first.top;
        return new RectF(f2, f3 - lineWidth, first.right, f3);
    }

    /* renamed from: g */
    public final void m41554g(Canvas canvas, List<RectF> rectangles, boolean isVertical) {
        Object last;
        float m41557j = m41557j();
        float m41556i = m41556i();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) rectangles);
        RectF rectF = (RectF) last;
        RectF m41550c = m41550c(rectF, m41556i, isVertical);
        PointF m41548a = m41548a(rectF, m41556i, isVertical);
        canvas.drawCircle(m41548a.x, m41548a.y, m41557j, this.cursorCirclePaint);
        canvas.drawRect(m41550c, this.cursorLinePaint);
    }

    /* renamed from: h */
    public final void m41555h(Canvas canvas, List<RectF> rectangles, boolean isVertical) {
        Object first;
        float m41557j = m41557j();
        float m41556i = m41556i();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) rectangles);
        RectF rectF = (RectF) first;
        RectF m41553f = m41553f(rectF, m41556i, isVertical);
        PointF m41551d = m41551d(rectF, m41556i, isVertical);
        canvas.drawCircle(m41551d.x, m41551d.y, m41557j, this.cursorCirclePaint);
        canvas.drawRect(m41553f, this.cursorLinePaint);
    }

    public final int hitTestCursor(@NotNull List<RectF> currentSelectionRectList, boolean isVertical, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(currentSelectionRectList, "currentSelectionRectList");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        int m41561n = m41561n(currentSelectionRectList, isVertical, touchData);
        Debug debug = Debug.INSTANCE;
        String simpleNameString = AnyKt.toSimpleNameString(this);
        if (debug.getDebug()) {
            Log.d(simpleNameString, "isVertical = " + isVertical + " hitTestCursor = " + m41561n);
        }
        return m41561n;
    }

    /* renamed from: i */
    public final float m41556i() {
        return ResManager.INSTANCE.getDimension(C8045R.dimen.text_selection_cursor_line_width);
    }

    public final void initPaint() {
        Paint paint = this.fillPaint;
        paint.setColor(m41558k());
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DARKEN));
        Paint paint2 = this.cursorCirclePaint;
        paint2.setColor(m41559l());
        paint2.setStyle(Paint.Style.FILL);
        paint2.setStrokeWidth(m41557j());
        Paint paint3 = this.cursorLinePaint;
        paint3.setColor(m41559l());
        paint3.setStyle(Paint.Style.FILL);
        paint3.setStrokeWidth(m41556i());
    }

    /* renamed from: j */
    public final float m41557j() {
        return ResManager.INSTANCE.getDimension(C8045R.dimen.text_selection_cursor_radius);
    }

    /* renamed from: k */
    public final int m41558k() {
        return ColorUtils.INSTANCE.getColorWithAlpha(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01), ResManager.INSTANCE.getFloat(C8045R.fraction.text_selection_color_alpha), false);
    }

    /* renamed from: l */
    public final int m41559l() {
        return ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
    }

    /* renamed from: m */
    public final int m41560m(RectF startHitTestRect, RectF endHitTestRect, float x, float y, float hitTestPadding) {
        if (RectKt.hitTest(startHitTestRect, x, y, hitTestPadding)) {
            return 0;
        }
        return RectKt.hitTest(endHitTestRect, x, y, hitTestPadding) ? 1 : -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [T, java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r13v13, types: [T, com.onyx.android.sdk.base.data.TouchPoint] */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, com.onyx.android.sdk.base.data.TouchPoint] */
    /* renamed from: n */
    public final int m41561n(List<RectF> currentSelectionRectList, boolean isVertical, TouchData touchData) {
        if (currentSelectionRectList.isEmpty()) {
            return -1;
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = currentSelectionRectList;
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = touchData.getTouchPoint();
        BoxInfo boxInfo = touchData.getBoxInfo();
        if (boxInfo != null) {
            BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
            Matrix contentNormalizeMatrix = boxInfoUtils.contentNormalizeMatrix(boxInfo);
            contentNormalizeMatrix.postConcat(boxInfoUtils.renderMatrix(boxInfo.getContentInfo()));
            List<RectF> copyRectFList = RectFKt.copyRectFList((List) objectRef.element);
            Iterator it2 = copyRectFList.iterator();
            while (it2.hasNext()) {
                contentNormalizeMatrix.mapRect((RectF) it2.next());
            }
            objectRef.element = copyRectFList;
            ?? copy = ((TouchPoint) objectRef2.element).copy();
            copy.mapMatrix(contentNormalizeMatrix);
            objectRef2.element = copy;
        }
        float x = ((TouchPoint) objectRef2.element).getX();
        float y = ((TouchPoint) objectRef2.element).getY();
        float dimension = ResManager.INSTANCE.getDimension(C8045R.dimen.text_selection_cursor_hit_test_padding);
        RectF m41552e = m41552e((List) objectRef.element, isVertical);
        RectF m41549b = m41549b((List) objectRef.element, isVertical);
        int m41560m = m41560m(m41552e, m41549b, x, y, 0.0f);
        return m41560m != -1 ? m41560m : m41560m(m41552e, m41549b, x, y, dimension);
    }

    public final void onThemeUpdated() {
        initPaint();
    }

    public final void drawHighlight(@NotNull Canvas canvas, @NotNull List<RectF> rectangles, boolean isVertical) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(rectangles, "rectangles");
        if (rectangles.isEmpty()) {
            return;
        }
        Iterator<T> it2 = rectangles.iterator();
        while (it2.hasNext()) {
            canvas.drawRect((RectF) it2.next(), this.fillPaint);
        }
        m41555h(canvas, rectangles, isVertical);
        m41554g(canvas, rectangles, isVertical);
    }
}

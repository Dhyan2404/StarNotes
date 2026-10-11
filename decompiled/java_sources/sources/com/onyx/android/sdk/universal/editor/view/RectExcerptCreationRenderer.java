package com.onyx.android.sdk.universal.editor.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u001e\u0010\f\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0006\u0010\r\u001a\u00020\u0004J \u0010\u0010\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tJ\b\u0010\u0011\u001a\u00020\u0004H\u0002J&\u0010\u0014\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0014\u0010!\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", "init", "updateLimitRectF", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "dataList", "lowLatencyRender", Constants.CLEAR_ATTRIBUTES, "touchDataList", "Landroid/graphics/RectF;", "getBoundingRect", "b", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Landroid/graphics/Paint;", "c", "Landroid/graphics/Paint;", "strokePaint", "d", "fillPaint", "e", "Landroid/graphics/RectF;", "limitRectF", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RectExcerptCreationRenderer {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Paint strokePaint;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Paint fillPaint;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final RectF limitRectF;

    public RectExcerptCreationRenderer(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.strokePaint = new Paint();
        this.fillPaint = new Paint();
        this.limitRectF = new RectF();
    }

    /* renamed from: a */
    public final void m41543a(TouchPoint downPoint, Canvas canvas, List<TouchData> dataList) {
        if (dataList.isEmpty()) {
            return;
        }
        RectF boundingRect = getBoundingRect(downPoint, dataList);
        if (boundingRect.isEmpty()) {
            return;
        }
        canvas.drawRect(boundingRect, this.fillPaint);
        canvas.drawRect(boundingRect, this.strokePaint);
    }

    /* renamed from: b */
    public final void m41544b() {
        ExcerptAttr forceGet = MMKVNote.INSTANCE.getExcerptShapeAttrOption().forceGet();
        this.strokePaint = forceGet.createStrokePaint();
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            return;
        }
        this.fillPaint = forceGet.createFillPaint(EditorBundleKt.isCurDarkTheme(this.editorBundle, boxInfo.getId()));
    }

    public final void clear() {
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(this.editorBundle), RenderManager.RENDER_KEY_RECT_EXCERPT, false, 2, null);
    }

    @NotNull
    public final RectF getBoundingRect(@Nullable TouchPoint downPoint, @Nullable List<TouchData> touchDataList) {
        Object last;
        TouchPoint touchPoint;
        List<TouchPoint> listOf;
        RectF intersectRectF;
        if (downPoint == null) {
            return new RectF();
        }
        if (touchDataList != null) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) touchDataList);
            TouchData touchData = (TouchData) last;
            if (touchData != null && (touchPoint = touchData.getTouchPoint()) != null) {
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{downPoint, touchPoint});
                RectF boundingRect = TouchPointList.INSTANCE.getBoundingRect(listOf);
                return (this.limitRectF.isEmpty() || (intersectRectF = RectKt.intersectRectF(boundingRect, this.limitRectF)) == null) ? boundingRect : intersectRectF;
            }
        }
        return new RectF();
    }

    public final void init(@NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        m41544b();
        if (EditorBundleKt.getUiFeature(this.editorBundle).supportRectExcerptLimitRect()) {
            updateLimitRectF();
        }
    }

    public final void lowLatencyRender(@Nullable final TouchPoint downPoint, @NotNull final List<TouchData> dataList) {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        if (dataList.isEmpty() || downPoint == null) {
            return;
        }
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(this.editorBundle), RenderManager.RENDER_KEY_RECT_EXCERPT, new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.view.RectExcerptCreationRenderer$lowLatencyRender$1
            @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
            public void onDraw(@NotNull Canvas canvas) {
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                RectExcerptCreationRenderer.this.m41543a(downPoint, canvas, dataList);
            }
        }, false, 4, null);
    }

    public final void updateLimitRectF() {
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            return;
        }
        this.limitRectF.set(boxInfo.getVisibleRect());
        float strokeWidth = this.strokePaint.getStrokeWidth();
        this.limitRectF.inset(strokeWidth, strokeWidth);
    }
}

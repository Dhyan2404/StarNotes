package com.onyx.android.sdk.universal.editor.request.textinput;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b0\u00101J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\fJ\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0018\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0016H\u0002J\b\u0010\u001a\u001a\u00020\u0016H\u0002J\u0018\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010!R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001a\u0010#R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010%R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010%R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010(R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010/\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010+¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Landroid/graphics/RectF;", "renderRect", "setRenderRect", "editorRect", "setEditorRect", "", "textWidth", "setTextWidth", "textHeight", "setTextHeight", "", "saveShape", "setSaveShape", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "transformType", "setTransformType", "value", "setUpdateRectOnly", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "i", C6998g.f39679a, C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "", "I", "TEXT_SHAPE_POINT_SIZE", "Landroid/graphics/RectF;", "j", C4921e.f26537n, "F", "l", "m", Constants.HASIDCALL_INDEX_SIG, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/textbox/data/TransformType;", C4921e.f26528e, "updateRectOnly", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateTextShapeRectRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Shape textShape;

    /* renamed from: h, reason: from kotlin metadata */
    public final int TEXT_SHAPE_POINT_SIZE;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public RectF renderRect;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public RectF editorRect;

    /* renamed from: k, reason: from kotlin metadata */
    public float textWidth;

    /* renamed from: l, reason: from kotlin metadata */
    public float textHeight;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean saveShape;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public TransformType transformType;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean updateRectOnly;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateTextShapeRectRequest(@NotNull WorkBundle workBundle, @NotNull RenderContext renderContext, @NotNull Shape textShape) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.renderContext = renderContext;
        this.textShape = textShape;
        this.TEXT_SHAPE_POINT_SIZE = 2;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (this.saveShape) {
            m41491g();
        } else {
            m41492h();
        }
    }

    /* renamed from: f */
    public final void m41490f(RenderContext renderContext, Shape textShape) {
        textShape.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(textShape));
        renderContext.clearSelectionRect();
        renderContext.setSelectionRect(TextRenderUtil.INSTANCE.getSelectionRect(renderContext, textShape));
    }

    /* renamed from: g */
    public final void m41491g() throws Exception {
        ShapeTextStyle textStyle = this.textShape.getTextStyle();
        if (textStyle == null) {
            return;
        }
        float f = this.textWidth;
        float textWidth = textStyle.getTextWidth() - f;
        textStyle.setTextWidth(f);
        textStyle.setTextHeight(this.textHeight);
        m41493i();
        if (textStyle.isVertical()) {
            if (textWidth == 0.0f) {
                return;
            }
            this.textShape.onTranslate(textWidth, 0.0f);
            Shape shape = this.textShape;
            shape.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(shape));
            Debug.INSTANCE.m32035d(UpdateTextShapeRectRequest.class, "update vertical position: " + textWidth, new Object[0]);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0062, code lost:
    
        if ((r3 == 0.0f) == false) goto L19;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41492h() {
        /*
            r7 = this;
            android.graphics.RectF r0 = r7.renderRect
            r1 = 0
            if (r0 != 0) goto L2c
            com.onyx.android.sdk.base.utils.Debug r0 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.universal.editor.request.textinput.UpdateTextShapeRectRequest> r2 = com.onyx.android.sdk.universal.editor.request.textinput.UpdateTextShapeRectRequest.class
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "render rect="
            r3.append(r4)
            android.graphics.RectF r4 = r7.renderRect
            r3.append(r4)
            java.lang.String r4 = ", shape="
            r3.append(r4)
            com.onyx.android.sdk.note.common.shape.Shape r7 = r7.textShape
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r0.m32044e(r2, r7, r1)
            return
        L2c:
            com.onyx.android.sdk.note.common.shape.Shape r0 = r7.textShape
            com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle r0 = r0.getTextStyle()
            if (r0 != 0) goto L35
            return
        L35:
            float r2 = r0.getTextWidth()
            float r3 = r7.textWidth
            float r2 = r2 - r3
            float r3 = r0.getTextHeight()
            float r4 = r7.textHeight
            float r3 = r3 - r4
            float r4 = r7.textWidth
            r0.setTextWidth(r4)
            float r4 = r7.textHeight
            r0.setTextHeight(r4)
            r7.m41493i()
            r0 = 0
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            r4 = 1
            if (r2 != 0) goto L58
            r2 = r4
            goto L59
        L58:
            r2 = r1
        L59:
            if (r2 == 0) goto L64
            int r2 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r2 != 0) goto L61
            r2 = r4
            goto L62
        L61:
            r2 = r1
        L62:
            if (r2 != 0) goto L75
        L64:
            com.onyx.android.sdk.note.common.data.render.RenderContext r2 = r7.renderContext
            com.onyx.android.sdk.note.common.shape.Shape r3 = r7.textShape
            r7.m41490f(r2, r3)
            com.onyx.android.sdk.note.common.utils.TextRenderUtil r2 = com.onyx.android.sdk.note.common.utils.TextRenderUtil.INSTANCE
            com.onyx.android.sdk.note.common.data.render.RenderContext r3 = r7.renderContext
            android.graphics.RectF r2 = r2.getRenderRect(r3)
            r7.renderRect = r2
        L75:
            boolean r2 = r7.updateRectOnly
            if (r2 == 0) goto L7a
            return
        L7a:
            com.onyx.android.sdk.note.common.data.render.RenderContext r2 = r7.renderContext
            android.graphics.RectF r3 = r7.editorRect
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            float r3 = r3.left
            android.graphics.RectF r5 = r7.renderRect
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            float r5 = r5.left
            float r3 = r3 - r5
            float r2 = r2.getMatrixInvertValue(r3)
            com.onyx.android.sdk.note.common.data.render.RenderContext r3 = r7.renderContext
            android.graphics.RectF r5 = r7.editorRect
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            float r5 = r5.top
            android.graphics.RectF r6 = r7.renderRect
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            float r6 = r6.top
            float r5 = r5 - r6
            float r3 = r3.getMatrixInvertValue(r5)
            int r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r5 != 0) goto Laa
            r5 = r4
            goto Lab
        Laa:
            r5 = r1
        Lab:
            if (r5 == 0) goto Lb4
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 != 0) goto Lb2
            r1 = r4
        Lb2:
            if (r1 != 0) goto Lc0
        Lb4:
            com.onyx.android.sdk.note.common.shape.Shape r0 = r7.textShape
            r0.onTranslate(r2, r3)
            com.onyx.android.sdk.note.common.data.render.RenderContext r0 = r7.renderContext
            com.onyx.android.sdk.note.common.shape.Shape r1 = r7.textShape
            r7.m41490f(r0, r1)
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.request.textinput.UpdateTextShapeRectRequest.m41492h():void");
    }

    /* renamed from: i */
    public final void m41493i() {
        List<TouchPoint> mutableList;
        ShapeTextStyle textStyle = this.textShape.getTextStyle();
        if (textStyle != null && this.textShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() == this.TEXT_SHAPE_POINT_SIZE) {
            TouchPoint downPoint = this.textShape.getDownPoint();
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.textShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
            mutableList.remove(1);
            this.textShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().setPoints(mutableList);
            TouchPoint touchPoint = new TouchPoint(downPoint.getX() + textStyle.getTextWidth(), downPoint.getY() + textStyle.getTextHeight());
            this.textShape.onUp(touchPoint, touchPoint);
        }
    }

    @NotNull
    public final UpdateTextShapeRectRequest setEditorRect(@Nullable RectF editorRect) {
        this.editorRect = editorRect;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectRequest setRenderRect(@Nullable RectF renderRect) {
        this.renderRect = renderRect;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectRequest setSaveShape(boolean saveShape) {
        this.saveShape = saveShape;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectRequest setTextHeight(float textHeight) {
        this.textHeight = textHeight;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectRequest setTextWidth(float textWidth) {
        this.textWidth = textWidth;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectRequest setTransformType(@Nullable TransformType transformType) {
        this.transformType = transformType;
        return this;
    }

    @NotNull
    public final UpdateTextShapeRectRequest setUpdateRectOnly(boolean value) {
        this.updateRectOnly = value;
        return this;
    }
}

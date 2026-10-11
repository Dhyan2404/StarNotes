package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SVGDrawableManager;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u000f\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000e¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/SVGDrawableShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "K", "getResId", "setResId", HWREngineConstant.Constant.RES_ID, Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSVGDrawableShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGDrawableShape.kt\ncom/onyx/android/sdk/note/common/shape/object/SVGDrawableShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"})
/* loaded from: classes8.dex */
public class SVGDrawableShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 43;

    /* renamed from: K, reason: from kotlin metadata */
    public int resId = C7485R.drawable.excerpt_indicator;

    /* renamed from: a */
    public final void m33871a(RenderContext renderContext) {
        try {
            RectF copy = RectFKt.copy(getOriginRect());
            Matrix shapeMatrix = getShapeMatrix();
            if (shapeMatrix != null) {
                shapeMatrix.mapRect(copy);
            }
            renderContext.getMatrix().mapRect(copy);
            Matrix matrix = new Matrix();
            Matrix shapeMatrix2 = getShapeMatrix();
            if (shapeMatrix2 != null) {
                matrix.postConcat(shapeMatrix2);
            }
            matrix.postConcat(renderContext.getMatrix());
            Bitmap loadResource = SVGDrawableManager.INSTANCE.getInstance().loadResource(matrix, getResId());
            if (loadResource == null) {
                Debug.INSTANCE.m32044e(getClass(), "loadIndicatorBitmap fail", new Object[0]);
            } else {
                renderContext.getCanvas().drawBitmap(loadResource, copy.left, copy.top, (Paint) null);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public int getResId() {
        return this.resId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        if (getOriginRect().isEmpty()) {
            Debug.INSTANCE.m32044e(getClass(), "origin rect width or height is error.", new Object[0]);
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        m33871a(renderContext);
        return true;
    }

    public void setResId(int i) {
        this.resId = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }
}

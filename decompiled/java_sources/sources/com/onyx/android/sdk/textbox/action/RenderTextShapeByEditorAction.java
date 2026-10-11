package com.onyx.android.sdk.textbox.action;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.text.SaveRenderCacheAction;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\bH\u0014J\b\u0010\n\u001a\u00020\u0000H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\bH\u0002R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;", "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "setTextShape", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "setRenderContext", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", C6997f.f39671c, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Landroid/graphics/Bitmap;", "i", "Landroid/graphics/Bitmap;", "bitmap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenderTextShapeByEditorAction extends TextBoxBaseAction<RenderTextShapeByEditorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public TextBoxView textBoxView;

    /* renamed from: g, reason: from kotlin metadata */
    public Shape textShape;

    /* renamed from: h, reason: from kotlin metadata */
    public RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: com.onyx.android.sdk.textbox.action.RenderTextShapeByEditorAction$a */
    /* loaded from: classes8.dex */
    public static final class C8008a<T, R> implements Function {
        public C8008a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderTextShapeByEditorAction apply(@NotNull TextBoxBaseAction<RenderTextShapeByEditorAction> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderTextShapeByEditorAction.this.m36082m();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.RenderTextShapeByEditorAction$b */
    /* loaded from: classes8.dex */
    public static final class C8009b<T, R> implements Function {
        public C8009b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveRenderCacheAction> apply(@NotNull RenderTextShapeByEditorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderTextShapeByEditorAction.this.m36083n();
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.RenderTextShapeByEditorAction$c */
    /* loaded from: classes8.dex */
    public static final class C8010c<T, R> implements Function {
        public C8010c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderTextShapeByEditorAction apply(@NotNull SaveRenderCacheAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderTextShapeByEditorAction.this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RenderTextShapeByEditorAction() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderTextShapeByEditorAction> create() {
        Observable<RenderTextShapeByEditorAction> map = createObservable().map(new C8008a()).flatMap(new C8009b()).map(new C8010c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final RenderTextShapeByEditorAction m36082m() {
        Number number;
        TextBoxView textBoxView = this.textBoxView;
        Intrinsics.checkNotNull(textBoxView);
        View richEditor = textBoxView.getEditor().getRichEditor();
        Shape shape = this.textShape;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textShape");
            shape = null;
        }
        ShapeTextStyle textStyle = shape.getTextStyle();
        Intrinsics.checkNotNull(textStyle);
        boolean isVertical = textStyle.isVertical();
        TextBoxView textBoxView2 = this.textBoxView;
        Intrinsics.checkNotNull(textBoxView2);
        int renderWidth = textBoxView2.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String().getRenderWidth();
        TextBoxView textBoxView3 = this.textBoxView;
        Intrinsics.checkNotNull(textBoxView3);
        int renderHeight = textBoxView3.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String().getRenderHeight();
        float orientation_vertical_angle = isVertical ? TextBoxView.INSTANCE.getORIENTATION_VERTICAL_ANGLE() : 0;
        if (isVertical) {
            TextBoxView textBoxView4 = this.textBoxView;
            Intrinsics.checkNotNull(textBoxView4);
            number = Float.valueOf(textBoxView4.getEditorScaleWidth() - renderWidth);
        } else {
            number = 0;
        }
        Size limitSize = TextRenderUtil.INSTANCE.getLimitSize(renderWidth, renderHeight);
        float width = limitSize.getWidth() / renderWidth;
        this.bitmap = Bitmap.createBitmap(limitSize.getWidth(), limitSize.getHeight(), Bitmap.Config.ARGB_8888);
        Bitmap bitmap = this.bitmap;
        Intrinsics.checkNotNull(bitmap);
        Canvas canvas = new Canvas(bitmap);
        Matrix matrix = new Matrix();
        matrix.postTranslate(number.floatValue(), 0.0f);
        matrix.postRotate(orientation_vertical_angle, richEditor.getWidth() / 2.0f, richEditor.getHeight() / 2.0f);
        matrix.postScale(width, width);
        canvas.concat(matrix);
        richEditor.draw(canvas);
        Debug.INSTANCE.m32052i(RenderTextShapeByEditorAction.class, "drawing cache by editor!", new Object[0]);
        return this;
    }

    /* renamed from: n */
    public final Observable<SaveRenderCacheAction> m36083n() {
        Size size;
        Shape shape = null;
        if (this.bitmap != null) {
            Bitmap bitmap = this.bitmap;
            Intrinsics.checkNotNull(bitmap);
            int width = bitmap.getWidth();
            Bitmap bitmap2 = this.bitmap;
            Intrinsics.checkNotNull(bitmap2);
            size = new Size(width, bitmap2.getHeight());
        } else {
            size = null;
        }
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        Shape shape2 = this.textShape;
        if (shape2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textShape");
        } else {
            shape = shape2;
        }
        Bitmap bitmap3 = this.bitmap;
        Intrinsics.checkNotNull(bitmap3);
        SaveRenderCacheAction saveRenderCacheAction = new SaveRenderCacheAction(renderContext, shape, bitmap3);
        Intrinsics.checkNotNull(size);
        return saveRenderCacheAction.setSize(size).build();
    }

    @NotNull
    public final RenderTextShapeByEditorAction setRenderContext(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        this.renderContext = renderContext;
        return this;
    }

    @NotNull
    public final RenderTextShapeByEditorAction setTextShape(@NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.textShape = textShape;
        return this;
    }

    public /* synthetic */ RenderTextShapeByEditorAction(TextBoxView textBoxView, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : textBoxView);
    }

    public RenderTextShapeByEditorAction(@Nullable TextBoxView textBoxView) {
        this.textBoxView = textBoxView;
    }
}

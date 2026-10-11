package com.onyx.android.sdk.universal.editor.action.layer;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailArgs;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/DrawViewportLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;", "l", "", C6999h.f39688c, "I", "layerId", "Landroid/graphics/Bitmap;", "i", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DrawViewportLayerAction extends RxBaseAppAction<DrawViewportLayerAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public int layerId;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.DrawViewportLayerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9588a<T> implements Consumer {
        public C9588a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderViewportThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DrawViewportLayerAction.this.setBitmap(it2.getBitmap());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.DrawViewportLayerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9589b<T, R> implements Function {
        public C9589b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DrawViewportLayerAction apply(@NotNull RenderViewportThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DrawViewportLayerAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawViewportLayerAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.layerId = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DrawViewportLayerAction> create() {
        Observable map = new RenderViewportThumbnailAction(getEditorBundle(), m39327l()).build().doOnNext(new C9588a()).map(new C9589b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    /* renamed from: l */
    public final RenderViewportThumbnailArgs m39327l() {
        RectF offsetToOrigin = RectFKt.offsetToOrigin(RectFKt.copy(EditorBundleKt.viewport(getEditorBundle()).getBox()));
        float scaleToArea = RectFKt.scaleToArea(RectFKt.copy(offsetToOrigin), AppConfig.INSTANCE.getDEFAULT_LAYER_THUMBNAIL_SIZE().toRectF());
        RectFKt.scaleRect(offsetToOrigin, scaleToArea);
        RenderViewportThumbnailArgs renderViewportThumbnailArgs = new RenderViewportThumbnailArgs(new BoxManagerViewArgs(EditorBundleKt.actualScale(getEditorBundle()) * scaleToArea, (EditorBundleKt.viewport(getEditorBundle()).left() * scaleToArea) + offsetToOrigin.left, (EditorBundleKt.viewport(getEditorBundle()).top() * scaleToArea) + offsetToOrigin.top), null, false, false, this.layerId, 10, null);
        renderViewportThumbnailArgs.setViewportBitmapSize(RectKt.toSize(offsetToOrigin));
        renderViewportThumbnailArgs.setScaleToThumbnailSize(false);
        return renderViewportThumbnailArgs;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}

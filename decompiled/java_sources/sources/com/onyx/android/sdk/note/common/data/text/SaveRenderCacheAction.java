package com.onyx.android.sdk.note.common.data.text;

import android.graphics.Bitmap;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.text.SaveRenderCacheAction;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0000H\u0002R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/base/data/Size;", "size", "setSize", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "e", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "Landroid/graphics/Bitmap;", C6998g.f39679a, "Landroid/graphics/Bitmap;", "bitmap", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/Size;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveRenderCacheAction extends RxBaseAction<SaveRenderCacheAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RenderContext renderContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Shape textShape;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Bitmap bitmap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Size size;

    /* renamed from: com.onyx.android.sdk.note.common.data.text.SaveRenderCacheAction$a */
    /* loaded from: classes8.dex */
    public static final class C7494a<T, R> implements Function {
        public C7494a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveRenderCacheAction apply(@NotNull SaveRenderCacheAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveRenderCacheAction.this.m33712n();
        }
    }

    public SaveRenderCacheAction(@NotNull RenderContext renderContext, @NotNull Shape textShape, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.renderContext = renderContext;
        this.textShape = textShape;
        this.bitmap = bitmap;
        this.size = new Size(0, 0, 3, null);
    }

    /* renamed from: m */
    public static final void m33711m(SaveRenderCacheAction this$0, SaveRenderCacheAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.renderContext.getTextRender();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveRenderCacheAction> create() {
        Observable observeOn = Observable.just(this).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<SaveRenderCacheAction> map = RxjavaKt.doOnNextIf(observeOn, new Function1<SaveRenderCacheAction, Boolean>() { // from class: com.onyx.android.sdk.note.common.data.text.SaveRenderCacheAction$create$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SaveRenderCacheAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.FALSE;
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.y0m
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SaveRenderCacheAction.m33711m(SaveRenderCacheAction.this, (SaveRenderCacheAction) obj);
            }
        }).observeOn(this.renderContext.getTextRenderObserveOn()).map(new C7494a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final SaveRenderCacheAction m33712n() {
        if (BitmapKt.isValid(this.bitmap) && !this.size.isEmpty()) {
            TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
            Size normalRenderSize = textRenderUtil.getNormalRenderSize();
            textRenderUtil.saveRenderThumbnailCache(this.textShape, this.bitmap, (this.size.getWidth() > normalRenderSize.getWidth() || this.size.getHeight() > normalRenderSize.getHeight()) ? TextRenderUtil.RENDER_CACHE_TYPE_ZOOM : "BASE");
            this.bitmap.recycle();
        }
        return this;
    }

    @NotNull
    public final SaveRenderCacheAction setSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.size = size;
        return this;
    }
}

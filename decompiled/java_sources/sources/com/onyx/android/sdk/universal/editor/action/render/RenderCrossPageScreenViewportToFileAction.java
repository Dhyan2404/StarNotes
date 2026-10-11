package com.onyx.android.sdk.universal.editor.action.render;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderCrossPageScreenViewportToFileAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;", OcrValues.LANG_ITALIAN, "", "deltaScaleFactor", "", C4921e.f26528e, "Landroid/graphics/RectF;", C6999h.f39688c, "Landroid/graphics/RectF;", "regionInViewport", "", "i", Constants.STRING_SIG, "getImgPath", "()Ljava/lang/String;", "setImgPath", "(Ljava/lang/String;)V", "imgPath", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenderCrossPageScreenViewportToFileAction extends RxBaseAppAction<RenderCrossPageScreenViewportToFileAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RectF regionInViewport;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String imgPath;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderCrossPageScreenViewportToFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C9773a<T, R> implements Function {
        public C9773a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderCrossPageScreenViewportToFileAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderCrossPageScreenViewportToFileAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderCrossPageScreenViewportToFileAction(@NotNull EditorBundle editorBundle, @NotNull RectF regionInViewport) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(regionInViewport, "regionInViewport");
        this.regionInViewport = regionInViewport;
        this.imgPath = "";
    }

    /* renamed from: n */
    public static final void m39640n(RenderCrossPageScreenViewportToFileAction this$0, Ref.FloatRef deltaScaleFactor, RenderViewportThumbnailAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(deltaScaleFactor, "$deltaScaleFactor");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m39642o(it2, deltaScaleFactor.element);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderCrossPageScreenViewportToFileAction> create() {
        Observable map = m39641m().map(new C9773a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getImgPath() {
        return this.imgPath;
    }

    /* renamed from: m */
    public final Observable<?> m39641m() {
        if (EditorBundleKt.getUiFeature(getEditorBundle()).supportMultiPage()) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        floatRef.element = 1.0f;
        RectF copy = RectFKt.copy(this.regionInViewport);
        ResManager resManager = ResManager.INSTANCE;
        if (copy.width() * copy.height() > resManager.getScreenArea()) {
            floatRef.element = RectFKt.scaleToArea(RectFKt.copy(copy), resManager.getScreenRectF());
        }
        RectFKt.scaleRect(copy, floatRef.element);
        RenderViewportThumbnailArgs renderViewportThumbnailArgs = new RenderViewportThumbnailArgs(new BoxManagerViewArgs(EditorBundleKt.actualScale(getEditorBundle()) * floatRef.element, (EditorBundleKt.viewport(getEditorBundle()).left() * floatRef.element) + copy.left, (EditorBundleKt.viewport(getEditorBundle()).top() * floatRef.element) + copy.top), null, true, false, 0, 26, null);
        renderViewportThumbnailArgs.setViewportBitmapSize(RectKt.toSize(copy));
        renderViewportThumbnailArgs.setScaleToThumbnailSize(false);
        Observable<RenderViewportThumbnailAction> observeOn = new RenderViewportThumbnailAction(getEditorBundle(), renderViewportThumbnailArgs).build().observeOn(Schedulers.m61350io());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<?> observeOn2 = RxjavaKt.doOnNextIf(observeOn, new Function1<RenderViewportThumbnailAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.render.RenderCrossPageScreenViewportToFileAction$renderCrossPageScreenViewportToFile$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RenderViewportThumbnailAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(BitmapKt.isValid(it2.getBitmap()));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.dkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenderCrossPageScreenViewportToFileAction.m39640n(RenderCrossPageScreenViewportToFileAction.this, floatRef, (RenderViewportThumbnailAction) obj);
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "observeOn(...)");
        return observeOn2;
    }

    /* renamed from: o */
    public final void m39642o(RenderViewportThumbnailAction it2, float deltaScaleFactor) {
        Bitmap bitmap = it2.getBitmap();
        if (bitmap == null) {
            return;
        }
        String absolutePath = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), UUIDUtils.INSTANCE.rawUUID() + ".png").getAbsolutePath();
        FileUtils.INSTANCE.ensureFileExists(absolutePath);
        BitmapKt.save$default(bitmap, absolutePath, 0, 2, null);
        Intrinsics.checkNotNull(absolutePath);
        this.imgPath = absolutePath;
        Debug.INSTANCE.m32035d(RenderCrossPageScreenViewportToFileAction.class, "saveImg, path = " + absolutePath + ", size = " + BitmapKt.boundingRectF(bitmap) + ", deltaScaleFactor = " + deltaScaleFactor, new Object[0]);
    }

    public final void setImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }
}

package com.onyx.android.sdk.universal.editor.action.render;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.NoteThumbnailRenderArgs;
import com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "", "i", "I", "getLayerId", "()I", "layerId", "Landroid/graphics/Bitmap;", "j", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenderNotePageThumbnailAction extends RxBaseAppAction<RenderNotePageThumbnailAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo boxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    public final int layerId;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderNotePageThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C9775a<T, R> implements Function {
        public C9775a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RenderNotePageThumbnailAction> apply(@NotNull RenderNotePageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageThumbnailAction.this.m39646n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderNotePageThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C9776b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Rect f50310e;

        /* renamed from: f */
        public final /* synthetic */ RenderNotePageThumbnailAction f50311f;

        public C9776b(Rect rect, RenderNotePageThumbnailAction renderNotePageThumbnailAction) {
            this.f50310e = rect;
            this.f50311f = renderNotePageThumbnailAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderNotePageThumbnailAction apply(@NotNull RenderNotePageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap createBitmap = Bitmap.createBitmap(this.f50310e.width(), this.f50310e.height(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            createBitmap.eraseColor(0);
            this.f50311f.setBitmap(createBitmap);
            return this.f50311f;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderNotePageThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C9777c<T, R> implements Function {
        public C9777c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderNotePageThumbnailAction apply(@NotNull RenderNotePageThumbnailRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageThumbnailAction.this;
        }
    }

    public /* synthetic */ RenderNotePageThumbnailAction(EditorBundle editorBundle, BoxInfo boxInfo, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, boxInfo, (i2 & 4) != 0 ? -1 : i);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderNotePageThumbnailAction> create() {
        Observable flatMap = m39644l().flatMap(new C9775a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    public final int getLayerId() {
        return this.layerId;
    }

    /* renamed from: l */
    public final Observable<RenderNotePageThumbnailAction> m39644l() {
        Observable<RenderNotePageThumbnailAction> observeOn = Observable.just(this).observeOn(Schedulers.computation()).map(new C9776b(RectKt.toRectNonNull(this.boxInfo.getBox()), this)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: m */
    public final Observable<RenderNotePageThumbnailAction> m39645m() {
        BoxInfo noteInfo = this.boxInfo.getNoteInfo();
        if (noteInfo == null) {
            Observable<RenderNotePageThumbnailAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            Observable<RenderNotePageThumbnailAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        NoteThumbnailRenderArgs noteThumbnailRenderArgs = new NoteThumbnailRenderArgs(RectFKt.copy(noteInfo.getBox()), this.boxInfo, noteInfo.getId(), noteInfo.getActualScale(), bitmap, null, 32, null);
        noteThumbnailRenderArgs.setLayerId(this.layerId);
        Observable<RenderNotePageThumbnailAction> map = RxBaseAppActionKt.submitRequestToNote(this, new RenderNotePageThumbnailRequest(EditorBundleKt.noteBundle(getEditorBundle()), noteThumbnailRenderArgs)).map(new C9777c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<RenderNotePageThumbnailAction> m39646n() {
        return m39645m();
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderNotePageThumbnailAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo boxInfo, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        this.boxInfo = boxInfo;
        this.layerId = i;
    }
}

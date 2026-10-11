package com.onyx.android.sdk.universal.editor.action.render;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.GeoLayoutShaderWrapper;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.NoteThumbnailRenderArgs;
import com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b2\u00103J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u001e\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R$\u0010\u001c\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010+R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010.¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "r", "Landroid/graphics/Bitmap;", "viewportBitmap", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxList", "q", "boxInfo", "noteBitmap", "p", "s", "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;", "args", "i", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "j", "Ljava/util/List;", "Lcom/onyx/android/sdk/base/data/Size;", C4921e.f26537n, "Lcom/onyx/android/sdk/base/data/Size;", "viewportBitmapSize", "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", "l", "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;", "geoLayoutShaderWrapper", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "m", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "targetViewport", "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "boundingRectF", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderViewportThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderViewportThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,156:1\n1549#2:157\n1620#2,3:158\n1855#2,2:161\n43#3,3:163\n43#3,3:166\n*S KotlinDebug\n*F\n+ 1 RenderViewportThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction\n*L\n73#1:157\n73#1:158,3\n104#1:161,2\n115#1:163,3\n137#1:166,3\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderViewportThumbnailAction extends RxBaseAppAction<RenderViewportThumbnailAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderViewportThumbnailArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<BoxInfo> boxList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Size viewportBitmapSize;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public GeoLayoutShaderWrapper geoLayoutShaderWrapper;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public GeoLayout geoLayout;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public BoxInfo targetViewport;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public RectF boundingRectF;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C9796a<T> implements Consumer {
        public C9796a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderViewportThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderViewportThumbnailAction.this.m39681o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C9797b<T> implements Consumer {
        public C9797b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderViewportThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderViewportThumbnailAction.this.m39684r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C9798c<T, R> implements Function {
        public C9798c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderViewportThumbnailAction apply(@NotNull RenderViewportThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderViewportThumbnailAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderViewportThumbnailAction(@NotNull EditorBundle editorBundle, @NotNull RenderViewportThumbnailArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.boxList = new ArrayList();
        this.viewportBitmapSize = new Size(0, 0, 3, null);
        this.targetViewport = new BoxInfo();
        this.boundingRectF = new RectF();
    }

    /* renamed from: m */
    public static final void m39679m(RenderViewportThumbnailAction this$0, RenderViewportThumbnailAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m39685s();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderViewportThumbnailAction> create() {
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C9796a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9797b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<RenderViewportThumbnailAction> map = RxjavaKt.doOnNextIf(doOnNext, new Function1<RenderViewportThumbnailAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.render.RenderViewportThumbnailAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RenderViewportThumbnailAction it2) {
                RenderViewportThumbnailArgs renderViewportThumbnailArgs;
                Intrinsics.checkNotNullParameter(it2, "it");
                renderViewportThumbnailArgs = RenderViewportThumbnailAction.this.args;
                return Boolean.valueOf(renderViewportThumbnailArgs.getScaleToThumbnailSize());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.okl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenderViewportThumbnailAction.m39679m(RenderViewportThumbnailAction.this, (RenderViewportThumbnailAction) obj);
            }
        }).map(new C9798c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    /* renamed from: n */
    public final void m39680n() {
        GeoLayoutShaderWrapper geoLayoutShaderWrapper = new GeoLayoutShaderWrapper(this.geoLayout);
        geoLayoutShaderWrapper.updateViewportAndBoundingRectF(this.targetViewport, geoLayoutShaderWrapper.getBoundingRectF());
        this.geoLayoutShaderWrapper = geoLayoutShaderWrapper;
    }

    /* renamed from: o */
    public final void m39681o() {
        int collectionSizeOrDefault;
        Size size;
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        BoxManagerViewArgs viewArgs = this.args.getViewArgs();
        BoxInfo copy = obtainBoxManager.getViewport().copy();
        Size viewportBitmapSize = this.args.getViewportBitmapSize();
        if (viewportBitmapSize != null) {
            BoxManager.updateViewportSize$default(obtainBoxManager, viewportBitmapSize, false, 2, null);
        }
        obtainBoxManager.setScale(viewArgs.getScale());
        obtainBoxManager.scrollTo(viewArgs.getViewportLeft(), viewArgs.getViewportTop());
        this.targetViewport = obtainBoxManager.getViewport().copy();
        this.boxList.addAll(obtainBoxManager.visibleBoxes());
        List<BoxInfo> list = this.boxList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((BoxInfo) it2.next()).getBox());
        }
        this.boundingRectF = RectFKt.boundingRectF(arrayList);
        obtainBoxManager.setScale(copy.getActualScale());
        obtainBoxManager.scrollTo(copy.left(), copy.top());
        obtainBoxManager.setViewport(copy);
        Size viewportBitmapSize2 = this.args.getViewportBitmapSize();
        if (viewportBitmapSize2 == null || (size = Size.copy$default(viewportBitmapSize2, 0, 0, 3, null)) == null) {
            size = copy.size();
        }
        this.viewportBitmapSize = size;
        this.geoLayout = workBundle.getVirtualPolicy().loadGeoLayoutBackground();
    }

    /* renamed from: p */
    public final void m39682p(BoxInfo boxInfo, Bitmap viewportBitmap, Bitmap noteBitmap) {
        BoxInfo noteInfo = boxInfo.getNoteInfo();
        if (noteInfo == null) {
            return;
        }
        noteBitmap.eraseColor(0);
        RectF copy = RectFKt.copy(noteInfo.getBox());
        copy.offsetTo(boxInfo.getVisibleRect().left, boxInfo.getVisibleRect().top);
        RectF copy2 = RectFKt.copy(boxInfo.getVisibleRect());
        copy2.intersect(BitmapKt.boundingRectF(noteBitmap));
        NoteThumbnailRenderArgs noteThumbnailRenderArgs = new NoteThumbnailRenderArgs(copy, boxInfo, noteInfo.getId(), noteInfo.getActualScale(), noteBitmap, copy2);
        noteThumbnailRenderArgs.setShowTape(this.args.getRenderTape());
        noteThumbnailRenderArgs.setLayerId(this.args.getLayerId());
        new RenderNotePageThumbnailRequest(EditorBundleKt.noteBundle(getEditorBundle()), noteThumbnailRenderArgs).execute2();
        new Canvas(viewportBitmap).drawBitmap(noteBitmap, RectKt.toRect(copy2), copy2, (Paint) null);
    }

    /* renamed from: q */
    public final void m39683q(Bitmap viewportBitmap, List<BoxInfo> boxList) {
        if (this.args.getRenderTemplate()) {
            Canvas canvas = new Canvas(viewportBitmap);
            canvas.drawColor(-1);
            GeoLayoutShaderWrapper geoLayoutShaderWrapper = this.geoLayoutShaderWrapper;
            if (geoLayoutShaderWrapper != null) {
                geoLayoutShaderWrapper.onDraw(canvas);
            }
        }
    }

    /* renamed from: r */
    public final void m39684r() {
        if (this.boxList.isEmpty() || this.viewportBitmapSize.isEmpty()) {
            return;
        }
        m39680n();
        Bitmap createBitmap = Bitmap.createBitmap(this.viewportBitmapSize.getWidth(), this.viewportBitmapSize.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        m39683q(createBitmap, this.boxList);
        Bitmap copy = BitmapKt.copy(createBitmap);
        if (copy == null) {
            return;
        }
        Iterator<T> it2 = this.boxList.iterator();
        while (it2.hasNext()) {
            m39682p((BoxInfo) it2.next(), createBitmap, copy);
        }
        this.bitmap = createBitmap;
    }

    /* renamed from: s */
    public final void m39685s() {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            BitmapKt.scaleToWidthRatioBitmap(bitmap, this.args.getThumbnailSize().getWidth());
        }
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}

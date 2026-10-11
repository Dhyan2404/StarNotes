package com.onyx.android.sdk.universal.editor.action.render;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.genericshape.DrawContext;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.NoteThumbnailRenderArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectThumbnailAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 82\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0017\u0012\u0006\u00105\u001a\u000204\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b6\u00107J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0005H\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\u0011018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u00102¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "r", "u", "Landroid/graphics/Bitmap;", "viewportBitmap", "t", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "s", "p", "q", "onDispose", "", NotificationCompat.CATEGORY_MESSAGE, "log", "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;", "args", "i", "Landroid/graphics/Bitmap;", "bitmap", "", "j", "Ljava/util/List;", "boxList", "Landroid/graphics/RectF;", C4921e.f26537n, "Landroid/graphics/RectF;", "scaleBoundingRect", "l", "originBoundingRectF", "", "m", "F", "actualScale", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "Ljava/util/concurrent/atomic/AtomicBoolean;", C4921e.f26528e, "Ljava/util/concurrent/atomic/AtomicBoolean;", "isAbort", "", "Ljava/util/Set;", "renderedShapeIds", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderBoundingRectThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderBoundingRectThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n766#2:193\n857#2,2:194\n1864#2,3:196\n*S KotlinDebug\n*F\n+ 1 RenderBoundingRectThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction\n*L\n98#1:193\n98#1:194,2\n99#1:196,3\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderBoundingRectThumbnailAction extends RxBaseAppAction<RenderBoundingRectResult> {
    public static final boolean DEBUG = false;
    public static final boolean DEBUG_BITMAP = false;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderBoundingRectThumbnailArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<BoxInfo> boxList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public RectF scaleBoundingRect;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public RectF originBoundingRectF;

    /* renamed from: m, reason: from kotlin metadata */
    public float actualScale;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public GeoLayout geoLayout;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean isAbort;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Set<String> renderedShapeIds;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C9770a<T> implements Consumer {
        public C9770a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderBoundingRectThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderBoundingRectThumbnailAction.this.m39632r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C9771b<T> implements Consumer {
        public C9771b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderBoundingRectThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderBoundingRectThumbnailAction.this.m39635u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C9772c<T, R> implements Function {
        public C9772c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderBoundingRectResult apply(@NotNull RenderBoundingRectThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderBoundingRectThumbnailAction.this.m39630p();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderBoundingRectThumbnailAction(@NotNull EditorBundle editorBundle, @NotNull RenderBoundingRectThumbnailArgs args) {
        super(editorBundle);
        List<BoxInfo> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.boxList = emptyList;
        this.scaleBoundingRect = new RectF();
        this.originBoundingRectF = new RectF();
        this.actualScale = 1.0f;
        this.isAbort = new AtomicBoolean(false);
        this.renderedShapeIds = new LinkedHashSet();
    }

    /* renamed from: n */
    public static final void m39628n(RenderBoundingRectThumbnailAction this$0, RenderBoundingRectThumbnailAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m39631q();
    }

    /* renamed from: o */
    public static final void m39629o(RenderBoundingRectThumbnailAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onDispose();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderBoundingRectResult> create() {
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C9770a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9771b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<RenderBoundingRectResult> doOnDispose = RxjavaKt.doOnNextIf(doOnNext, new Function1<RenderBoundingRectThumbnailAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectThumbnailAction$create$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RenderBoundingRectThumbnailAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.FALSE;
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.bkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenderBoundingRectThumbnailAction.m39628n(RenderBoundingRectThumbnailAction.this, (RenderBoundingRectThumbnailAction) obj);
            }
        }).map(new C9772c()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.ckl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RenderBoundingRectThumbnailAction.m39629o(RenderBoundingRectThumbnailAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    public final void log(String msg) {
    }

    public final void onDispose() {
        this.isAbort.set(true);
    }

    /* renamed from: p */
    public final RenderBoundingRectResult m39630p() {
        return new RenderBoundingRectResult(this.bitmap, this.scaleBoundingRect, this.originBoundingRectF, this.actualScale);
    }

    /* renamed from: q */
    public final void m39631q() {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            return;
        }
        File file = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), "NotePage-draft-boundingRect.png");
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "debug bitmap, path = " + file.getAbsolutePath(), new Object[0]);
        FileUtils.INSTANCE.deleteFile(file);
        BitmapKt.save$default(bitmap, file.getAbsolutePath(), 0, 2, null);
    }

    /* renamed from: r */
    public final void m39632r() {
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        BoxInfo copy = obtainBoxManager.getViewport().copy();
        obtainBoxManager.setScale(1.0f);
        this.originBoundingRectF = RectFKt.copy(obtainBoxManager.getBoundingRect());
        RectF copy2 = RectFKt.copy(copy.getBox());
        RectF copy3 = RectFKt.copy(this.originBoundingRectF);
        copy3.offsetTo(0.0f, 0.0f);
        float scaleToPage = RectFKt.scaleToPage(copy3, copy2);
        this.actualScale = scaleToPage;
        obtainBoxManager.setScale(scaleToPage);
        this.scaleBoundingRect = RectFKt.copy(obtainBoxManager.getBoundingRect());
        this.boxList = obtainBoxManager.copyBoxList();
        obtainBoxManager.setScale(copy.getActualScale());
        obtainBoxManager.scrollTo(copy.left(), copy.top());
        this.geoLayout = workBundle.getVirtualPolicy().loadGeoLayoutBackground();
    }

    /* renamed from: s */
    public final void m39633s(BoxInfo boxInfo, Bitmap viewportBitmap) {
        BoxInfo noteInfo = boxInfo.getNoteInfo();
        if (noteInfo == null) {
            return;
        }
        RectF copy = RectFKt.copy(noteInfo.getBox());
        RectF rectF = this.scaleBoundingRect;
        copy.offset(-rectF.left, -rectF.top);
        NoteThumbnailRenderArgs noteThumbnailRenderArgs = new NoteThumbnailRenderArgs(copy, boxInfo, noteInfo.getId(), noteInfo.getActualScale(), viewportBitmap, null, 32, null);
        noteThumbnailRenderArgs.setShowTape(this.args.getRenderTape());
        noteThumbnailRenderArgs.setLayerId(this.args.getLayerId());
        noteThumbnailRenderArgs.setRenderReferenceShape(true);
        noteThumbnailRenderArgs.setRenderedShapeIds(this.renderedShapeIds);
        RenderNotePageThumbnailRequest renderNotePageThumbnailRequest = new RenderNotePageThumbnailRequest(EditorBundleKt.noteBundle(getEditorBundle()), noteThumbnailRenderArgs);
        renderNotePageThumbnailRequest.disableThrowException();
        renderNotePageThumbnailRequest.execute2();
    }

    /* renamed from: t */
    public final void m39634t(Bitmap viewportBitmap) {
        GeoLayout geoLayout;
        if (this.args.getRenderTemplate() && (geoLayout = this.geoLayout) != null) {
            Matrix matrix = new Matrix();
            matrix.postScale(1.0f, 1.0f);
            DrawContext drawContext = new DrawContext(new Canvas(viewportBitmap), matrix, null, false, false, false, 0.0f, 124, null);
            PageMargins pageMargins = geoLayout.getProperties().getPageMargins();
            if (pageMargins != null) {
                RectF copy = RectFKt.copy(this.scaleBoundingRect);
                copy.offsetTo(0.0f, 0.0f);
                pageMargins.setLayoutRect(copy);
            }
            geoLayout.draw(drawContext);
        }
    }

    /* renamed from: u */
    public final void m39635u() {
        if (this.boxList.isEmpty()) {
            return;
        }
        log("actualScale = " + this.actualScale + ", scaleBoundingRect = " + this.scaleBoundingRect + ", originBoundingRectF = " + this.originBoundingRectF);
        Bitmap createBitmapOrNull = BitmapUtils.INSTANCE.createBitmapOrNull(this.scaleBoundingRect);
        if (createBitmapOrNull == null) {
            return;
        }
        m39634t(createBitmapOrNull);
        Set<String> loadValidShapeNotePageIds = NoteDocNotePage.INSTANCE.loadValidShapeNotePageIds(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc());
        List<BoxInfo> list = this.boxList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (loadValidShapeNotePageIds.contains(((BoxInfo) obj).getId())) {
                arrayList.add(obj);
            }
        }
        int i = 0;
        for (Object obj2 : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo = (BoxInfo) obj2;
            if (this.isAbort.get()) {
                log("abort");
                return;
            }
            log("renderNotePage, " + boxInfo.getCellKey() + ", progress = " + i + " / " + arrayList.size());
            m39633s(boxInfo, createBitmapOrNull);
            i = i2;
        }
        this.bitmap = createBitmapOrNull;
    }
}

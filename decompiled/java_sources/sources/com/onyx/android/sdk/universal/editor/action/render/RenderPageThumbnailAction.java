package com.onyx.android.sdk.universal.editor.action.render;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.NoteThumbnailRenderArgs;
import com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest;
import com.onyx.android.sdk.reader.data.ReaderThumbnailRenderArgs;
import com.onyx.android.sdk.reader.request.RenderReaderPageThumbnailRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.GetVirtualPageTemplateColorAction;
import com.onyx.android.sdk.universal.editor.data.RenderPageThumbnailArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.ObtainVirtualPageRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "l", C4921e.f26528e, "p", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;", "args", "Landroid/graphics/Bitmap;", "i", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", "", "j", Constants.STRING_SIG, "getContentPath", "()Ljava/lang/String;", "setContentPath", "(Ljava/lang/String;)V", "contentPath", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C4921e.f26537n, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "setVirtualPage", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "virtualPage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenderPageThumbnailAction extends RxBaseAppAction<RenderPageThumbnailAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderPageThumbnailArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String contentPath;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public VirtualPage virtualPage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$a */
    /* loaded from: classes8.dex */
    public static final class C9778a<T, R> implements Function {
        public C9778a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RenderPageThumbnailAction> apply(@NotNull RenderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderPageThumbnailAction.this.m39650l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$b */
    /* loaded from: classes8.dex */
    public static final class C9779b<T, R> implements Function {
        public C9779b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RenderPageThumbnailAction> apply(@NotNull RenderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderPageThumbnailAction.this.m39653o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$c */
    /* loaded from: classes8.dex */
    public static final class C9780c<T> implements Consumer {
        public C9780c() {
        }

        /* renamed from: a */
        public final void m39657a(int i) {
            RenderPageThumbnailAction renderPageThumbnailAction = RenderPageThumbnailAction.this;
            renderPageThumbnailAction.setBitmap(BitmapUtils.INSTANCE.createBitmapOrNull(RectFKt.copy(renderPageThumbnailAction.args.getBoxInfo().getBox())));
            Bitmap bitmap = RenderPageThumbnailAction.this.getBitmap();
            if (bitmap != null) {
                BitmapKt.clear(bitmap, i);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m39657a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$d */
    /* loaded from: classes8.dex */
    public static final class C9781d<T, R> implements Function {
        public C9781d() {
        }

        @NotNull
        /* renamed from: a */
        public final RenderPageThumbnailAction m39658a(int i) {
            return RenderPageThumbnailAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m39658a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$e */
    /* loaded from: classes8.dex */
    public static final class C9782e<T, R> implements Function {
        public C9782e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderPageThumbnailAction apply(@NotNull ObtainVirtualPageRequest it2) {
            VirtualPageConfig virtualPageConfig;
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderPageThumbnailAction.this.setVirtualPage(it2.getVirtualPage());
            RenderPageThumbnailAction renderPageThumbnailAction = RenderPageThumbnailAction.this;
            VirtualPage virtualPage = it2.getVirtualPage();
            renderPageThumbnailAction.setContentPath(StringKt.safelyGetStr((virtualPage == null || (virtualPageConfig = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : virtualPageConfig.getContentPath()));
            return RenderPageThumbnailAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$f */
    /* loaded from: classes8.dex */
    public static final class C9783f<T, R> implements Function {
        public C9783f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderPageThumbnailAction apply(@NotNull RenderNotePageThumbnailRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderPageThumbnailAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$g */
    /* loaded from: classes8.dex */
    public static final class C9784g<T, R> implements Function {
        public C9784g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RenderPageThumbnailAction> apply(@NotNull RenderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderPageThumbnailAction.this.m39652n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction$h */
    /* loaded from: classes8.dex */
    public static final class C9785h<T, R> implements Function {
        public C9785h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderPageThumbnailAction apply(@NotNull RenderReaderPageThumbnailRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderPageThumbnailAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderPageThumbnailAction(@NotNull EditorBundle editorBundle, @NotNull RenderPageThumbnailArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.contentPath = "";
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderPageThumbnailAction> create() {
        Observable<RenderPageThumbnailAction> flatMap = m39651m().flatMap(new C9778a()).flatMap(new C9779b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getContentPath() {
        return this.contentPath;
    }

    @Nullable
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    /* renamed from: l */
    public final Observable<RenderPageThumbnailAction> m39650l() {
        Observable map = new GetVirtualPageTemplateColorAction(getEditorBundle(), this.args.getBoxInfo(), this.args.getRenderTemplate()).build().observeOn(Schedulers.computation()).doOnNext(new C9780c()).observeOn(getMainUIScheduler()).map(new C9781d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<RenderPageThumbnailAction> m39651m() {
        Observable<RenderPageThumbnailAction> map = RxBaseAppActionKt.submitRequestToCore(this, new ObtainVirtualPageRequest(getEditorBundle().getWorkBundle(), this.args.getBoxInfo())).map(new C9782e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<RenderPageThumbnailAction> m39652n() {
        BoxInfo noteInfo = this.args.getBoxInfo().getNoteInfo();
        if (noteInfo == null) {
            Observable<RenderPageThumbnailAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            Observable<RenderPageThumbnailAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        NoteThumbnailRenderArgs noteThumbnailRenderArgs = new NoteThumbnailRenderArgs(RectFKt.copy(noteInfo.getBox()), this.args.getBoxInfo(), noteInfo.getId(), noteInfo.getActualScale(), bitmap, null, 32, null);
        noteThumbnailRenderArgs.setShowTape(this.args.getRenderTape());
        noteThumbnailRenderArgs.setRenderPageMarin(this.args.getRenderPageMargin());
        noteThumbnailRenderArgs.setShowExcerptIndicator(this.args.getRenderExcerptIndicator());
        noteThumbnailRenderArgs.setRotationMatrix(this.args.getRotationMatrix());
        Observable<RenderPageThumbnailAction> map = RxBaseAppActionKt.submitRequestToNote(this, new RenderNotePageThumbnailRequest(EditorBundleKt.noteBundle(getEditorBundle()), noteThumbnailRenderArgs)).map(new C9783f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<RenderPageThumbnailAction> m39653o() {
        Observable flatMap = m39654p().flatMap(new C9784g());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: p */
    public final Observable<RenderPageThumbnailAction> m39654p() {
        if (!this.args.getRenderTemplate()) {
            Observable<RenderPageThumbnailAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BoxInfo contentInfo = this.args.getBoxInfo().getContentInfo();
        if (contentInfo == null) {
            Observable<RenderPageThumbnailAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            Observable<RenderPageThumbnailAction> just3 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        Observable<RenderPageThumbnailAction> map = RxBaseAppActionKt.submitRequestToReader(this, new RenderReaderPageThumbnailRequest(EditorBundleKt.readerBundle(getEditorBundle()), new ReaderThumbnailRenderArgs(this.contentPath, contentInfo.getActualScale(), RectFKt.copy(contentInfo.getBox()), contentInfo.getId(), RectFKt.copy(contentInfo.getOriginRectF()), bitmap, null, contentInfo.getRotation(), 64, null))).map(new C9785h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setContentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPath = str;
    }

    public final void setVirtualPage(@Nullable VirtualPage virtualPage) {
        this.virtualPage = virtualPage;
    }
}

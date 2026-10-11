package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.Bitmap;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.render.RenderPageThumbnailAction;
import com.onyx.android.sdk.universal.editor.data.ExportPageToBitmapArgs;
import com.onyx.android.sdk.universal.editor.data.RenderPageThumbnailArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.GetPageBoxInfoRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Landroid/graphics/Bitmap;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "l", "boxInfo", "m", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;", "args", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExportPageToBitmapAction extends RxBaseAppAction<Bitmap> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ExportPageToBitmapArgs args;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion;", "", "()V", "getPageBoxInfo", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", CouchFieldKey.KEY_TOC_PAGE_ID, "", "pageIndex", "", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nExportPageToBitmapAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPageToBitmapAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction$Companion$a */
        /* loaded from: classes8.dex */
        public static final class C8976a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ GetPageBoxInfoRequest f48807e;

            public C8976a(GetPageBoxInfoRequest getPageBoxInfoRequest) {
                this.f48807e = getPageBoxInfoRequest;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final BoxInfo apply(@NotNull GetPageBoxInfoRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f48807e.getBoxInfo();
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Observable<BoxInfo> getPageBoxInfo(@NotNull EditorBundle editorBundle, @Nullable String pageId, @Nullable Integer pageIndex) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            VirtualDocPolicy virtualPolicy = editorBundle.getWorkBundle().getVirtualPolicy();
            final Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = pageIndex != null ? pageIndex.intValue() : EditorBundleKt.currentPageIndex(editorBundle);
            if (StringKt.isNotBlank(pageId)) {
                Integer valueOf = Integer.valueOf(virtualPolicy.getVirtualPageIndex(pageId));
                if (!(valueOf.intValue() >= 0)) {
                    valueOf = null;
                }
                intRef.element = ((Number) AnyKt.getOrElse(valueOf, new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction$Companion$getPageBoxInfo$2
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Integer invoke() {
                        return Integer.valueOf(Ref.IntRef.this.element);
                    }
                })).intValue();
            }
            GetPageBoxInfoRequest getPageBoxInfoRequest = new GetPageBoxInfoRequest(editorBundle.getWorkBundle(), intRef.element, Float.valueOf(1.0f));
            Observable<BoxInfo> map = RxBaseAppActionKt.submitRequestToCore(editorBundle, getPageBoxInfoRequest).map(new C8976a(getPageBoxInfoRequest));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction$a */
    /* loaded from: classes8.dex */
    public static final class C8977a<T, R> implements Function {
        public C8977a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull ExportPageToBitmapAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportPageToBitmapAction.this.m38132l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction$b */
    /* loaded from: classes8.dex */
    public static final class C8978b<T, R> implements Function {
        public C8978b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Bitmap> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportPageToBitmapAction.this.m38133m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction$c */
    /* loaded from: classes8.dex */
    public static final class C8979c<T> implements Consumer {
        public C8979c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportPageToBitmapAction.this.m38134n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction$d */
    /* loaded from: classes8.dex */
    public static final class C8980d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f48812f;

        public C8980d(BoxInfo boxInfo) {
            this.f48812f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull RenderPageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap bitmap = it2.getBitmap();
            if (bitmap != null) {
                return bitmap;
            }
            throw new FileNotFoundException(EditorBundleKt.noteBundle(ExportPageToBitmapAction.this.getEditorBundle()).getNoteDoc().getNoteModel().getTitle() + '-' + this.f48812f.getId());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportPageToBitmapAction(@NotNull EditorBundle editorBundle, @NotNull ExportPageToBitmapArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Bitmap> create() {
        Observable<Bitmap> flatMap = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).flatMap(new C8977a()).flatMap(new C8978b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<BoxInfo> m38132l() {
        Observable<BoxInfo> doOnNext = INSTANCE.getPageBoxInfo(getEditorBundle(), this.args.getPageId(), this.args.getPageIndex()).doOnNext(new C8979c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<Bitmap> m38133m(BoxInfo boxInfo) {
        Observable map = new RenderPageThumbnailAction(getEditorBundle(), new RenderPageThumbnailArgs(boxInfo, this.args.getRenderTemplate(), this.args.getRenderTape(), false, this.args.getRenderExcerptIndicator(), null, 40, null)).build().map(new C8980d(boxInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m38134n(BoxInfo boxInfo) {
        if (!this.args.getLimitSize().isEmpty()) {
            BoxInfo.scaleToViewport$default(boxInfo, RectKt.toSizeF(boxInfo.getOriginRectFWithMargin()).ratioPageSize(this.args.getLimitSize()), false, 2, null);
        }
        if (this.args.getExportSize().isEmpty()) {
            return;
        }
        BoxInfo.scaleToViewport$default(boxInfo, this.args.getExportSize().toRectF(), false, 2, null);
    }
}

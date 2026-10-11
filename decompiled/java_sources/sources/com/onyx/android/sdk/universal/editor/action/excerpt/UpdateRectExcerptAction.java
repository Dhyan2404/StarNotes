package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.excerpt.UpdateRectExcerptShapeArgs;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.render.RenderCrossPageScreenViewportToFileAction;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultArgs;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.excerpt.SaveRegionScreenshotRequest;
import com.onyx.android.sdk.universal.editor.request.excerpt.UpdateRectExcerptShapeRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b&\u0010'J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\f\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0014\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u0016\u0010\u0016\u001a\u00020\u00152\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\"¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "isRectUpdate", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "t", "r", "p", "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;", "safeBitmap", "q", "", "", "u", "s", "", "m", GoogleApiAvailabilityLight.f29016b, "list", "", C4921e.f26528e, "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;", "args", "i", Constants.STRING_SIG, "imgPath", "j", "F", "bitmapScaleRatio", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "forceUserNormalQualitySnapshot", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateRectExcerptAction extends RxBaseAppAction<UpdateRectExcerptAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final UpdateRectExcerptShapeArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String imgPath;

    /* renamed from: j, reason: from kotlin metadata */
    public float bitmapScaleRatio;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isRectUpdate;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean forceUserNormalQualitySnapshot;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$a */
    /* loaded from: classes8.dex */
    public static final class C8893a<T, R> implements Function {
        public C8893a() {
        }

        /* renamed from: a */
        public final void m37996a(@NotNull UpdateRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectF regionInViewport = UpdateRectExcerptAction.this.args.getRegionInViewport();
            if (regionInViewport.isEmpty()) {
                Debug.INSTANCE.m32044e(UpdateRectExcerptAction.this.getClass(), "Unexpected empty excerpt rect in updating " + UpdateRectExcerptAction.this.args.getShape().getShapeUniqueId() + '.', new Object[0]);
            }
            RectF mapToScreenRectF = BoxInfoUtils.INSTANCE.mapToScreenRectF(UpdateRectExcerptAction.this.args.getShape().getOriginRect(), UpdateRectExcerptAction.this.args.getVirtualPageBoxInfo());
            if (regionInViewport.isEmpty() || RectFKt.approximatelyTheSame(regionInViewport, mapToScreenRectF)) {
                UpdateRectExcerptAction.this.isRectUpdate = false;
            }
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37996a((UpdateRectExcerptAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$b */
    /* loaded from: classes8.dex */
    public static final class C8894b<T, R> implements Function {
        public C8894b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateRectExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$c */
    /* loaded from: classes8.dex */
    public static final class C8895c<T, R> implements Function {
        public C8895c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateRectExcerptAction> apply(@NotNull UpdateRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this.m37986l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$d */
    /* loaded from: classes8.dex */
    public static final class C8896d<T, R> implements Function {
        public C8896d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateRectExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$e */
    /* loaded from: classes8.dex */
    public static final class C8897e<T, R> implements Function {
        public C8897e() {
        }

        /* renamed from: a */
        public final void m38000a(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotePageShape.addShape$default(NotePageShape.INSTANCE, it2, UpdateRectExcerptAction.this.args.getShape(), 0, 2, null);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38000a((NotePage) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$f */
    /* loaded from: classes8.dex */
    public static final class C8898f<T, R> implements Function {
        public C8898f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction updateRectExcerptAction = UpdateRectExcerptAction.this;
            return ForceRenderSliceListActionsKt.forceRenderShapeOutsideRectToDisplay(updateRectExcerptAction, updateRectExcerptAction.args.getVirtualPageBoxInfo(), UpdateRectExcerptAction.this.args.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$g */
    /* loaded from: classes8.dex */
    public static final class C8899g<T, R> implements Function {
        public C8899g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateRectExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$h */
    /* loaded from: classes8.dex */
    public static final class C8900h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SaveRegionScreenshotRequest f48680f;

        public C8900h(SaveRegionScreenshotRequest saveRegionScreenshotRequest) {
            this.f48680f = saveRegionScreenshotRequest;
        }

        /* renamed from: a */
        public final void m38003a(@NotNull SaveRegionScreenshotRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction.this.imgPath = this.f48680f.getImgPath();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38003a((SaveRegionScreenshotRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$i */
    /* loaded from: classes8.dex */
    public static final class C8901i<T, R> implements Function {
        public C8901i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateRectExcerptAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$j */
    /* loaded from: classes8.dex */
    public static final class C8902j<T> implements Consumer {
        public C8902j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderCrossPageScreenViewportToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction.this.imgPath = it2.getImgPath();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$k */
    /* loaded from: classes8.dex */
    public static final class C8903k<T> implements Consumer {
        public C8903k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction updateRectExcerptAction = UpdateRectExcerptAction.this;
            updateRectExcerptAction.forceUserNormalQualitySnapshot = updateRectExcerptAction.m37993s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$l */
    /* loaded from: classes8.dex */
    public static final class C8904l<T, R> implements Function {
        public C8904l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SafeBitmap> apply(@NotNull UpdateRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this.m37988n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$m */
    /* loaded from: classes8.dex */
    public static final class C8905m<T, R> implements Function {
        public C8905m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateRectExcerptAction> apply(@NotNull SafeBitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this.m37991q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$n */
    /* loaded from: classes8.dex */
    public static final class C8906n<T, R> implements Function {
        public C8906n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<String>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this.m37995u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$o */
    /* loaded from: classes8.dex */
    public static final class C8907o<T, R> implements Function {
        public C8907o() {
        }

        /* renamed from: a */
        public final void m38010a(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction.this.m37989o(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38010a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$p */
    /* loaded from: classes8.dex */
    public static final class C8908p<T, R> implements Function {
        public C8908p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction updateRectExcerptAction = UpdateRectExcerptAction.this;
            return CommonEditorActionsKt.updateVirtualPage(updateRectExcerptAction, updateRectExcerptAction.args.getVirtualPageBoxInfo().getId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$q */
    /* loaded from: classes8.dex */
    public static final class C8909q<T, R> implements Function {
        public C8909q() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction updateRectExcerptAction = UpdateRectExcerptAction.this;
            return ForceRenderSliceListActionsKt.forceRenderShapeOutsideRectToDisplay(updateRectExcerptAction, updateRectExcerptAction.args.getVirtualPageBoxInfo(), UpdateRectExcerptAction.this.args.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$r */
    /* loaded from: classes8.dex */
    public static final class C8910r<T, R> implements Function {
        public C8910r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateRectExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateRectExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$s */
    /* loaded from: classes8.dex */
    public static final class C8911s<T, R> implements Function {
        public C8911s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull UpdateRectExcerptShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateRectExcerptAction.this.bitmapScaleRatio = it2.getBitmapScaleRatio();
            return it2.getShapeIds();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateRectExcerptAction(@NotNull EditorBundle editorBundle, @NotNull UpdateRectExcerptShapeArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.imgPath = "";
        this.bitmapScaleRatio = 1.0f;
        this.isRectUpdate = true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateRectExcerptAction> create() {
        Observable flatMap = Observable.just(this).flatMap(new C8895c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(flatMap, new Function1<UpdateRectExcerptAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull UpdateRectExcerptAction it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = UpdateRectExcerptAction.this.isRectUpdate;
                return Boolean.valueOf(z);
            }
        }, m37994t()).map(new C8896d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: isRectUpdate, reason: from getter */
    public final boolean getIsRectUpdate() {
        return this.isRectUpdate;
    }

    /* renamed from: l */
    public final Observable<UpdateRectExcerptAction> m37986l() {
        Observable map = Observable.just(this).map(new C8893a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateRectExcerptAction$checkIsRectUpdate$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = UpdateRectExcerptAction.this.isRectUpdate;
                return Boolean.valueOf(!z);
            }
        }, m37990p()).map(new C8894b());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: m */
    public final float m37987m() {
        float contentPageMaxScale$default = ScaleConfig.contentPageMaxScale$default(ScaleConfig.INSTANCE, this.args.getVirtualPageBoxInfo(), EditorBundleKt.viewportRect(getEditorBundle()), 0.0f, 4, null);
        if (this.args.getVirtualPageBoxInfo().getActualScale() > contentPageMaxScale$default) {
            return contentPageMaxScale$default / this.args.getVirtualPageBoxInfo().getActualScale();
        }
        return 1.0f;
    }

    /* renamed from: n */
    public final Observable<SafeBitmap> m37988n() {
        if (!this.forceUserNormalQualitySnapshot) {
            return DisplayActionsKt.createSnapshot(getEditorBundle());
        }
        SliceInfo displayContentSlice = EditorBundleKt.renderManager(getEditorBundle()).getDisplayContentSlice(this.args.getVirtualPageBoxInfo(), false);
        if (displayContentSlice == null) {
            Observable<SafeBitmap> just = Observable.just(new SafeBitmap());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<SafeBitmap> just2 = Observable.just(displayContentSlice.getSafeBitmap());
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* renamed from: o */
    public final void m37989o(List<String> list) {
        EditorBundleKt.postEvent(getEditorBundle(), new UpdateExcerptResultEvent(new UpdateExcerptResultArgs(this.args.getShape(), this.imgPath, this.bitmapScaleRatio, list)));
    }

    /* renamed from: p */
    public final Observable<UpdateRectExcerptAction> m37990p() {
        Observable<UpdateRectExcerptAction> map = new EnsureNotePageAction(getEditorBundle(), this.args.getVirtualPageBoxInfo()).build().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8897e()).observeOn(getMainUIScheduler()).flatMap(new C8898f()).map(new C8899g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<UpdateRectExcerptAction> m37991q(SafeBitmap safeBitmap) {
        Bitmap bitmap = safeBitmap.getBitmap();
        if (bitmap == null) {
            Observable<UpdateRectExcerptAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (!BitmapKt.isValid(bitmap)) {
            Observable<UpdateRectExcerptAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        SaveRegionScreenshotRequest saveRegionScreenshotRequest = new SaveRegionScreenshotRequest(getEditorBundle().getWorkBundle());
        if (this.forceUserNormalQualitySnapshot) {
            IRenderNode pageRenderNode = EditorBundleKt.renderManager(getEditorBundle()).getPageRenderNode(this.args.getShape().getPageUniqueId());
            if (pageRenderNode == null) {
                Observable<UpdateRectExcerptAction> just3 = Observable.just(this);
                Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
                return just3;
            }
            RectF copy = RectFKt.copy(this.args.getRegionInViewport());
            copy.offset(-pageRenderNode.getTranslationX(), -pageRenderNode.getTranslationY());
            RectFKt.scaleRect(copy, m37987m());
            saveRegionScreenshotRequest.setRegionInViewport(copy);
        } else {
            saveRegionScreenshotRequest.setRegionInViewport(this.args.getRegionInViewport());
        }
        saveRegionScreenshotRequest.setViewBitmap(bitmap);
        Observable<UpdateRectExcerptAction> map = RxBaseAppActionKt.submitRequestToCore(this, saveRegionScreenshotRequest).map(new C8900h(saveRegionScreenshotRequest)).map(new C8901i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<?> m37992r() {
        if (EditorBundleKt.getUiFeature(getEditorBundle()).supportMultiPage() || EditorBundleKt.viewportRect(getEditorBundle()).contains(this.args.getRegionInViewport())) {
            Observable<?> flatMap = Observable.just(this).doOnNext(new C8903k()).flatMap(new C8904l()).flatMap(new C8905m());
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            return flatMap;
        }
        Observable<RenderCrossPageScreenViewportToFileAction> doOnNext = new RenderCrossPageScreenViewportToFileAction(getEditorBundle(), this.args.getRegionInViewport()).build().doOnNext(new C8902j());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: s */
    public final boolean m37993s() {
        return EditorBundleKt.getUiFeature(getEditorBundle()).supportRenderPageContentBitmap() && ScaleConfig.INSTANCE.isEnabledHighQuality(this.args.getVirtualPageBoxInfo(), EditorBundleKt.viewportRect(getEditorBundle())) && !EditorBundleKt.viewportRect(getEditorBundle()).contains(this.args.getRegionInViewport());
    }

    /* renamed from: t */
    public final Observable<UpdateRectExcerptAction> m37994t() {
        Observable<UpdateRectExcerptAction> map = m37992r().flatMap(new C8906n()).map(new C8907o()).flatMap(new C8908p()).flatMap(new C8909q()).map(new C8910r());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<List<String>> m37995u() {
        UpdateRectExcerptShapeRequest updateRectExcerptShapeRequest = new UpdateRectExcerptShapeRequest(getEditorBundle().getWorkBundle(), this.args);
        updateRectExcerptShapeRequest.setImgPath(this.imgPath);
        updateRectExcerptShapeRequest.setSliceScale(m37987m());
        Observable<List<String>> map = RxBaseAppActionKt.submitRequestToNote(this, updateRectExcerptShapeRequest).map(new C8911s());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

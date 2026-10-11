package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.QuoteShape;
import com.onyx.android.sdk.note.extension.ResourceModelKt;
import com.onyx.android.sdk.note.request.LoadShapeListRequest;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\"\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\tH\u0002J\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\tH\u0002J \u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00022\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0007H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lkotlin/Pair;", "", "p", "", C4921e.f26528e, "shapes", "m", "pair", "q", "oldShape", "newImagePath", "", "r", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;", "args", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateQuoteAction extends RxBaseAppAction<UpdateQuoteAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final UpdateExcerptResultArgs args;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$a */
    /* loaded from: classes8.dex */
    public static final class C8878a<T, R> implements Function {
        public C8878a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull UpdateQuoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateQuoteAction.this.m37968o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$b */
    /* loaded from: classes8.dex */
    public static final class C8879b<T, R> implements Function {
        public C8879b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateQuoteAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateQuoteAction.this.m37967m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$c */
    /* loaded from: classes8.dex */
    public static final class C8880c<T, R> implements Function {
        public C8880c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<BoxInfo>> apply(@NotNull UpdateQuoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CommonEditorActionsKt.loadVisibleBoxList(UpdateQuoteAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$d */
    /* loaded from: classes8.dex */
    public static final class C8881d<T, R> implements Function {

        /* renamed from: e */
        public static final C8881d<T, R> f48653e = new C8881d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Iterable<BoxInfo> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$e */
    /* loaded from: classes8.dex */
    public static final class C8882e<T, R> implements Function {
        public C8882e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteToDisplay(UpdateQuoteAction.this, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$f */
    /* loaded from: classes8.dex */
    public static final class C8883f<T, R> implements Function {
        public C8883f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateQuoteAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateQuoteAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$h */
    /* loaded from: classes8.dex */
    public static final class C8885h<T, R> implements Function {
        public C8885h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Pair<Shape, String>> apply(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateQuoteAction.this.m37969p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$i */
    /* loaded from: classes8.dex */
    public static final class C8886i<T, R> implements Function {
        public C8886i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Pair<? extends Shape, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateQuoteAction.this.m37970q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$j */
    /* loaded from: classes8.dex */
    public static final class C8887j<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<Shape> f48659e;

        /* JADX WARN: Multi-variable type inference failed */
        public C8887j(Iterator<? extends Shape> it2) {
            this.f48659e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f48659e.hasNext();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$k */
    /* loaded from: classes8.dex */
    public static final class C8888k<T, R> implements Function {
        public C8888k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateQuoteAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateQuoteAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$l */
    /* loaded from: classes8.dex */
    public static final class C8889l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Shape f48662f;

        public C8889l(Shape shape) {
            this.f48662f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<Shape, String> apply(@NotNull UpdateQuoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            File file = new File(ResManager.INSTANCE.getAppContext().getCacheDir().getAbsolutePath(), UUIDUtils.INSTANCE.shortUUID() + ".png");
            FileUtils.copyFile(new File(UpdateQuoteAction.this.args.getImagePath()), file);
            return new Pair<>(this.f48662f, file.getAbsolutePath());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$m */
    /* loaded from: classes8.dex */
    public static final class C8890m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ QuoteShape f48664f;

        public C8890m(QuoteShape quoteShape) {
            this.f48664f = quoteShape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FindBoxInfoByNotePageIdRequest> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ComputeBoxListActionsKt.findBoxInfoByNotePageId(UpdateQuoteAction.this, this.f48664f.getPageUniqueId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$n */
    /* loaded from: classes8.dex */
    public static final class C8891n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<BoxInfo> f48665e;

        public C8891n(Ref.ObjectRef<BoxInfo> objectRef) {
            this.f48665e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48665e.element = (T) it2.getVirtualPageBoxInfo();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateQuoteAction(@NotNull EditorBundle editorBundle, @NotNull UpdateExcerptResultArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    /* renamed from: n */
    public static final boolean m37966n(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateQuoteAction> create() {
        Observable<UpdateQuoteAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8878a()).flatMap(new C8879b()).observeOn(getMainUIScheduler()).flatMap(new C8880c()).flatMapIterable(C8881d.f48653e).flatMap(new C8882e()).map(new C8883f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<UpdateQuoteAction> m37967m(List<? extends Shape> shapes) {
        final Iterator<? extends Shape> it2 = shapes.iterator();
        if (it2.hasNext()) {
            Observable<UpdateQuoteAction> map = Observable.just(it2).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction.g
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Shape apply(@NotNull Iterator<? extends Shape> p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return p0.next();
                }
            }).flatMap(new C8885h()).flatMap(new C8886i()).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.jxn
                @Override // io.reactivex.rxjava3.functions.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean m37966n;
                    m37966n = UpdateQuoteAction.m37966n(it2);
                    return m37966n;
                }
            }).filter(new C8887j(it2)).map(new C8888k());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<UpdateQuoteAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: o */
    public final List<Shape> m37968o() {
        LoadShapeListRequest loadShapeListRequest = new LoadShapeListRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.args.getQuoteShapeIds());
        loadShapeListRequest.execute2();
        return CollectionKt.ensureList(loadShapeListRequest.getShapeList());
    }

    /* renamed from: p */
    public final Observable<Pair<Shape, String>> m37969p(Shape shape) {
        Observable<Pair<Shape, String>> map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).map(new C8889l(shape));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<?> m37970q(final Pair<? extends Shape, String> pair) {
        final QuoteShape quoteShape = (QuoteShape) pair.getFirst();
        if (quoteShape == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
        shapeTransformBean.setUseAddTransformedMethod(false);
        Observable doOnNext = DocCommonActionsKt.createLightNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$updateQuoteShape$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                UpdateQuoteAction.this.m37971r(quoteShape, pair.getSecond());
            }
        }).flatMap(new C8890m(quoteShape)).doOnNext(new C8891n(objectRef));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(doOnNext, new Function1<FindBoxInfoByNotePageIdRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$updateQuoteShape$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull FindBoxInfoByNotePageIdRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(objectRef.element != null);
            }
        }, new Function1<FindBoxInfoByNotePageIdRequest, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$updateQuoteShape$5

            /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$updateQuoteShape$5$a */
            /* loaded from: classes8.dex */
            public static final class C8892a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ ShapeTransformBean f48666e;

                public C8892a(ShapeTransformBean shapeTransformBean) {
                    this.f48666e = shapeTransformBean;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull GetReferenceShapeAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f48666e.setTransformShapes(it2.mergeShapeList(true));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull FindBoxInfoByNotePageIdRequest it2) {
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = UpdateQuoteAction.this.getEditorBundle();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(quoteShape);
                Observable<GetReferenceShapeAction> doOnNext2 = new GetReferenceShapeAction(editorBundle, listOf).build().doOnNext(new C8892a(shapeTransformBean));
                Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                return doOnNext2;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$updateQuoteShape$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(objectRef.element != null);
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction$updateQuoteShape$7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RenderContext renderContext = new RenderContext(new Paint(), new Matrix());
                EditorBundle editorBundle = UpdateQuoteAction.this.getEditorBundle();
                BoxInfo boxInfo = objectRef.element;
                Intrinsics.checkNotNull(boxInfo);
                QuitTransformAction quitTransformAction = new QuitTransformAction(editorBundle, renderContext, boxInfo, shapeTransformBean);
                quitTransformAction.setAddToCmdStack(false);
                return quitTransformAction.build();
            }
        });
    }

    /* renamed from: r */
    public final void m37971r(Shape oldShape, String newImagePath) {
        QuoteShape quoteShape = (QuoteShape) oldShape;
        if (quoteShape == null) {
            return;
        }
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        Size size = new Size(0, 0, 3, null);
        BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(newImagePath, size);
        RectF excerptShapeIndicatorAnchorRect = ShapeKt.getExcerptShapeIndicatorAnchorRect(this.args.getShape());
        RectF copy = RectFKt.copy(this.args.getShape().getOriginRect());
        RectF rectF = size.toRectF();
        TouchPoint copy2 = oldShape.getDownPoint().copy();
        quoteShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
        RectFKt.scaleRect(rectF, 1 / this.args.getBitmapScaleRatio());
        RectFKt.scaleRect(excerptShapeIndicatorAnchorRect, RectFKt.scaleToPage(copy, rectF));
        quoteShape.onDown(copy2, copy2);
        TouchPoint copy3 = copy2.copy();
        copy3.setX(copy3.getX() + rectF.width());
        copy3.setY(copy3.getY() + rectF.height());
        quoteShape.onUp(copy3, copy3);
        quoteShape.updateShapeRect();
        quoteShape.setRevisionId("");
        ShapeOptions.INSTANCE.setResource(quoteShape, ResourceModels.INSTANCE.toShapeResource(ResourceModelKt.loadAndSaveResource(noteBundle.getNoteDoc(), newImagePath, noteBundle.getNoteDoc().getDocumentUniqueId())));
        ShapePersistOptionsKt.setQuoteIndicatorAnchorRect(quoteShape, excerptShapeIndicatorAnchorRect);
        NotePageShape.INSTANCE.saveShape(NoteDocNotePage.INSTANCE.ensureNotePage(noteBundle.getNoteDoc(), quoteShape.getPageUniqueId()), quoteShape);
    }
}

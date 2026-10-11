package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.extension.ResourceModelKt;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.note.request.excerpt.SaveExcerptCollectionListByPasteRequest;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction;
import com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelsAction;
import com.onyx.android.sdk.universal.editor.events.note.StartTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010$\u001a\u00020#\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u001a\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0002H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\u001c\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\u0016¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/InsertShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "s", "virtualBoxInfo", "u", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", GoogleApiAvailabilityLight.f29016b, "", "t", "v", "q", "", "Landroid/graphics/RectF;", "shapeBoundsMap", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "r", "w", C6999h.f39688c, "Ljava/util/List;", "shapes", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "", "j", Constants.HASIDCALL_INDEX_SIG, "autoSelect", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "l", "unqualifiedInsertShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInsertShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/InsertShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1855#2,2:183\n1855#2,2:185\n766#2:187\n857#2,2:188\n766#2:190\n857#2,2:191\n1855#2,2:193\n766#2:195\n857#2,2:196\n1549#2:198\n1620#2,3:199\n*S KotlinDebug\n*F\n+ 1 InsertShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/InsertShapesAction\n*L\n105#1:183,2\n124#1:185,2\n137#1:187\n137#1:188,2\n148#1:190\n148#1:191,2\n164#1:193,2\n176#1:195\n176#1:196,2\n176#1:198\n176#1:199,3\n*E\n"})
/* loaded from: classes8.dex */
public final class InsertShapesAction extends RxBaseAppAction<InsertShapesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapes;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint startPoint;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean autoSelect;

    /* renamed from: k, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    public List<? extends Shape> unqualifiedInsertShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10106a<T> implements Consumer {
        public C10106a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QuitTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertShapesAction.this.shapes = it2.getTransformShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10107b<T, R> implements Function {
        public C10107b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertShapesAction> apply(@NotNull QuitTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this.m40265v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C10108c<T, R> implements Function {
        public C10108c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull InsertShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this.shapes;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C10109d<T, R> implements Function {
        public C10109d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertShapesAction apply(@NotNull InsertShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$e */
    /* loaded from: classes8.dex */
    public static final class C10110e<T> implements Consumer {
        public C10110e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull InsertShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertShapesAction.this.m40260q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$f */
    /* loaded from: classes8.dex */
    public static final class C10111f<T, R> implements Function {
        public C10111f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull InsertShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this.m40262s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$g */
    /* loaded from: classes8.dex */
    public static final class C10112g<T, R> implements Function {
        public C10112g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this.m40264u(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$h */
    /* loaded from: classes8.dex */
    public static final class C10113h<T, R> implements Function {
        public C10113h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this.m40259n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$i */
    /* loaded from: classes8.dex */
    public static final class C10114i<T, R> implements Function {
        public C10114i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this.m40266w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$j */
    /* loaded from: classes8.dex */
    public static final class C10115j<T> implements Consumer {
        public C10115j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertShapesAction.this.virtualBoxInfo = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$k */
    /* loaded from: classes8.dex */
    public static final class C10116k<T, R> implements Function {
        public C10116k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertShapesAction apply(@NotNull SaveExcerptCollectionListByPasteRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$l */
    /* loaded from: classes8.dex */
    public static final class C10117l<T, R> implements Function {
        public C10117l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertShapesAction apply(@NotNull List<? extends PageTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertShapesAction.this;
        }
    }

    public /* synthetic */ InsertShapesAction(EditorBundle editorBundle, List list, TouchPoint touchPoint, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, list, touchPoint, (i & 8) != 0 ? false : z);
    }

    /* renamed from: o */
    public static final void m40257o(InsertShapesAction this$0, InsertShapesAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new StartTransformEvent(new ShapeTransformBean().setTransformShapes(this$0.shapes)));
    }

    /* renamed from: p */
    public static final void m40258p(InsertShapesAction it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.can_note_paste_audio_link, false, 2, (Object) null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InsertShapesAction> create() {
        Observable flatMap = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10110e()).flatMap(new C10111f()).flatMap(new C10112g()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C10113h()).flatMap(new C10114i());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<InsertShapesAction> map = RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(flatMap, new Function1<InsertShapesAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$create$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull InsertShapesAction it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = InsertShapesAction.this.autoSelect;
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.gmi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InsertShapesAction.m40257o(InsertShapesAction.this, (InsertShapesAction) obj);
            }
        }), new Function1<InsertShapesAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$create$8
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull InsertShapesAction it2) {
                List list;
                Intrinsics.checkNotNullParameter(it2, "it");
                list = InsertShapesAction.this.unqualifiedInsertShapes;
                if (list == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("unqualifiedInsertShapes");
                    list = null;
                }
                return Boolean.valueOf(!list.isEmpty());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.hmi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InsertShapesAction.m40258p((InsertShapesAction) obj);
            }
        }).map(new C10109d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<List<Shape>> m40259n() {
        if (this.shapes.isEmpty()) {
            Observable<List<Shape>> just = Observable.just(this.shapes);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ShapeCopyUtils.INSTANCE.forceUpdateShapesTime(this.shapes);
        TouchPoint touchPoint = new TouchPoint(this.startPoint);
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualBoxInfo;
        BoxInfo boxInfo2 = null;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        touchPoint.applyMatrix(boxInfoUtils.noteNormalizeMatrix(boxInfo));
        TouchPoint m40261r = m40261r(CollectionKt.toMap(this.shapes, new Function1<Shape, Shape>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$apply$shapeBoundsMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Shape, RectF>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction$apply$shapeBoundsMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RectF pointsBoundingRect = ShapeKt.getPointsBoundingRect(it2);
                Matrix shapeMatrix = it2.getShapeMatrix();
                if (shapeMatrix != null) {
                    shapeMatrix.mapRect(pointsBoundingRect);
                }
                return pointsBoundingRect;
            }
        }));
        Matrix matrix = new Matrix();
        matrix.postTranslate(touchPoint.getX() - m40261r.getX(), touchPoint.getY() - m40261r.getY());
        PageInfo pageInfo = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().ensureGlobalNotePage().getPageInfo();
        for (Shape shape : this.shapes) {
            BoxInfo boxInfo3 = this.virtualBoxInfo;
            if (boxInfo3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo3 = null;
            }
            shape.setPageUniqueId(boxInfo3.getId());
            shape.postConcat(matrix);
            shape.setLayerId(pageInfo.getCurrentLayerId());
        }
        m40263t();
        RenderContext renderContext = new RenderContext(new Paint(), new Matrix());
        ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
        shapeTransformBean.setTransformShapes(this.shapes);
        shapeTransformBean.setForceUpdateOnQuit(true);
        EditorBundle editorBundle = getEditorBundle();
        BoxInfo boxInfo4 = this.virtualBoxInfo;
        if (boxInfo4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo2 = boxInfo4;
        }
        Observable<List<Shape>> map = new QuitTransformAction(editorBundle, renderContext, boxInfo2, shapeTransformBean).build().doOnNext(new C10106a()).flatMap(new C10107b()).map(new C10108c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final void m40260q() {
        Object obj;
        List<? extends Shape> mutableList;
        String docId = EditorBundleKt.docId(getEditorBundle());
        List<? extends Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            ShapeLinkBean shapeLinkBean = ShapeTypes.INSTANCE.getShapeLinkBean((Shape) next);
            boolean z = false;
            if (shapeLinkBean != null && shapeLinkBean.isLinkAudioType()) {
                LinkDocBean docBean = shapeLinkBean.getDocBean();
                if (!Intrinsics.areEqual(docBean != null ? docBean.getDocumentId() : null, docId)) {
                    z = true;
                }
            }
            if (z) {
                arrayList.add(next);
            }
        }
        this.unqualifiedInsertShapes = arrayList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.shapes);
        List<? extends Shape> list2 = this.unqualifiedInsertShapes;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unqualifiedInsertShapes");
        } else {
            obj = list2;
        }
        mutableList.removeAll((Collection) obj);
        this.shapes = mutableList;
    }

    /* renamed from: r */
    public final TouchPoint m40261r(Map<Shape, ? extends RectF> shapeBoundsMap) {
        Object first;
        Object first2;
        if (shapeBoundsMap.isEmpty()) {
            return new TouchPoint(0.0f, 0.0f);
        }
        Collection<? extends RectF> values = shapeBoundsMap.values();
        first = CollectionsKt___CollectionsKt.first(values);
        float f = ((RectF) first).left;
        first2 = CollectionsKt___CollectionsKt.first(values);
        float f2 = ((RectF) first2).top;
        for (RectF rectF : values) {
            float f3 = rectF.left;
            if (f3 < f) {
                f = f3;
            }
            float f4 = rectF.top;
            if (f4 < f2) {
                f2 = f4;
            }
        }
        return new TouchPoint(f, f2);
    }

    /* renamed from: s */
    public final Observable<BoxInfo> m40262s() {
        Observable<BoxInfo> doOnNext = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, this.startPoint).doOnNext(new C10115j());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: t */
    public final void m40263t() {
        for (Shape shape : this.shapes) {
            ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
            ShapeResource resource = shapeOptions.getResource(shape);
            String path = resource != null ? resource.getPath() : null;
            if (FileUtils.INSTANCE.isFileExist(path)) {
                shapeOptions.setResource(shape, ResourceModels.INSTANCE.toShapeResource(ResourceModelKt.loadAndSaveResource(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), path, EditorBundleKt.docId(getEditorBundle()))));
            }
        }
    }

    /* renamed from: u */
    public final Observable<BoxInfo> m40264u(BoxInfo virtualBoxInfo) {
        return new NormalizeShapesMatrixAction(getEditorBundle(), virtualBoxInfo, this.shapes).build();
    }

    /* renamed from: v */
    public final Observable<InsertShapesAction> m40265v() {
        List<? extends Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeTypes.INSTANCE.isQuoteShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            Observable<InsertShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<InsertShapesAction> map = RxBaseAppActionKt.submitRequestToNote(this, new SaveExcerptCollectionListByPasteRequest(EditorBundleKt.noteBundle(getEditorBundle()), arrayList)).map(new C10116k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final Observable<InsertShapesAction> m40266w() {
        int collectionSizeOrDefault;
        List<? extends Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeKt.isTagShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(ShapeOptions.INSTANCE.getTagBean((Shape) it2.next()));
        }
        EditorBundle editorBundle = getEditorBundle();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        Observable map = new SavePageTagModelsAction(editorBundle, boxInfo.getId(), arrayList2).build().map(new C10117l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes, @NotNull TouchPoint startPoint, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        this.shapes = shapes;
        this.startPoint = startPoint;
        this.autoSelect = z;
    }
}

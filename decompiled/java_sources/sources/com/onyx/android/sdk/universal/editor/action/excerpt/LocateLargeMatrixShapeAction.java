package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "m", "", C6999h.f39688c, "F", "getScale", "()F", "scale", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLocateLargeMatrixShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocateLargeMatrixShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1855#2:105\n288#2,2:106\n1856#2:108\n1549#2:109\n1620#2,3:110\n288#2,2:113\n288#2,2:115\n1#3:117\n*S KotlinDebug\n*F\n+ 1 LocateLargeMatrixShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction\n*L\n78#1:105\n82#1:106,2\n78#1:108\n87#1:109\n87#1:110,3\n96#1:113,2\n58#1:115,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LocateLargeMatrixShapeAction extends RxBaseAppAction<LocateLargeMatrixShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final float scale;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8802a<T, R> implements Function {
        public C8802a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull LocateLargeMatrixShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateLargeMatrixShapeAction.this.m37851n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C8803b<T, R> implements Function {
        public C8803b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(LocateLargeMatrixShapeAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C8804c<T, R> implements Function {
        public C8804c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocateLargeMatrixShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateLargeMatrixShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C8805d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<Shape> f48532e;

        /* renamed from: f */
        public final /* synthetic */ LocateLargeMatrixShapeAction f48533f;

        public C8805d(Ref.ObjectRef<Shape> objectRef, LocateLargeMatrixShapeAction locateLargeMatrixShapeAction) {
            this.f48532e = objectRef;
            this.f48533f = locateLargeMatrixShapeAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LocateLargeMatrixShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48532e.element = (T) this.f48533f.m37850m();
        }
    }

    public /* synthetic */ LocateLargeMatrixShapeAction(EditorBundle editorBundle, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? 1000.0f : f);
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [T, com.onyx.android.sdk.note.common.shape.Shape] */
    /* renamed from: o */
    public static final void m37849o(LocateLargeMatrixShapeAction this$0, Ref.ObjectRef shape, LocateLargeMatrixShapeAction it2) {
        Object obj;
        Shape shape2;
        RectF originRect;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shape, "$shape");
        Intrinsics.checkNotNullParameter(it2, "it");
        NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
        NoteDocument noteDoc = EditorBundleKt.noteBundle(this$0.getEditorBundle()).getNoteDoc();
        T t = shape.element;
        Intrinsics.checkNotNull(t);
        Iterator<T> it3 = noteDocNotePage.ensureNotePage(noteDoc, ((Shape) t).getPageUniqueId()).getShapeList().iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            }
            obj = it3.next();
            String shapeUniqueId = ((Shape) obj).getShapeUniqueId();
            Shape shape3 = (Shape) shape.element;
            if (Intrinsics.areEqual(shapeUniqueId, shape3 != null ? shape3.getShapeUniqueId() : null)) {
                break;
            }
        }
        ?? r5 = (Shape) obj;
        if (r5 != 0) {
            shape.element = r5;
        }
        Shape shape4 = (Shape) shape.element;
        if (RectKt.isNullOrEmpty(shape4 != null ? shape4.getOriginRect() : null) && (shape2 = (Shape) shape.element) != null && (originRect = shape2.getOriginRect()) != null) {
            RectKt.expand(originRect, 1.0f);
        }
        T t2 = shape.element;
        Shape shape5 = (Shape) t2;
        if (shape5 != null) {
            Shape shape6 = (Shape) t2;
            shape5.postConcat(MatrixKt.invertMatrix(shape6 != null ? shape6.getShapeMatrix() : null));
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LocateLargeMatrixShapeAction> create() {
        Observable<LocateLargeMatrixShapeAction> map = Observable.just(this).flatMap(new C8802a()).flatMap(new C8803b()).map(new C8804c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final float getScale() {
        return this.scale;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [T, com.onyx.android.sdk.note.common.shape.Shape] */
    /* renamed from: m */
    public final Shape m37850m() {
        Object obj;
        int collectionSizeOrDefault;
        Set set;
        List<NotePage> loadedNotePages = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getLoadedNotePages();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        List<NotePage> list = loadedNotePages;
        Iterator<T> it2 = list.iterator();
        while (true) {
            obj = null;
            T t = 0;
            if (!it2.hasNext()) {
                break;
            }
            NotePage notePage = (NotePage) it2.next();
            if (objectRef.element == 0) {
                Iterator<T> it3 = notePage.getShapeList().iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    Object next = it3.next();
                    if ((MatrixKt.getAverageScale(((Shape) next).getShapeMatrix()) >= this.scale) != false) {
                        t = next;
                        break;
                    }
                }
                objectRef.element = t;
            }
        }
        if (objectRef.element == 0) {
            Set<String> validShapePageSet = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getValidShapePageSet();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it4 = list.iterator();
            while (it4.hasNext()) {
                arrayList.add(((NotePage) it4.next()).getPageUniqueId());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            Set diff = CollectionKt.diff(validShapePageSet, set);
            NoteProviderHolder providerHolder = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder();
            CBQueryArgs cBQueryArgs = new CBQueryArgs();
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            Iterator<T> it5 = providerHolder.getNoteShapeProvider().loadShapeList(cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, EditorBundleKt.docId(getEditorBundle()))).andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, diff)).andWith(couchUtils.notNullOrMissing("matrixValues"))).iterator();
            while (true) {
                if (!it5.hasNext()) {
                    break;
                }
                Object next2 = it5.next();
                if ((MatrixKt.getAverageScale(MatrixKt.getMatrixByValues(((ShapeModel) next2).getMatrixValues())) >= this.scale) != false) {
                    obj = next2;
                    break;
                }
            }
            ShapeModel shapeModel = (ShapeModel) obj;
            if (shapeModel != null) {
                objectRef.element = ShapeConvertUtils.INSTANCE.shapeFromModel(providerHolder, shapeModel);
            }
        }
        return (Shape) objectRef.element;
    }

    /* renamed from: n */
    public final Observable<?> m37851n() {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8805d(objectRef, this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(doOnNext, new Function1<LocateLargeMatrixShapeAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$locate$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LocateLargeMatrixShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(objectRef.element != null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.u1j
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LocateLargeMatrixShapeAction.m37849o(LocateLargeMatrixShapeAction.this, objectRef, (LocateLargeMatrixShapeAction) obj);
            }
        }), new Function1<LocateLargeMatrixShapeAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$locate$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LocateLargeMatrixShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(objectRef.element != null);
            }
        }, new LocateLargeMatrixShapeAction$locate$5(this, objectRef));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocateLargeMatrixShapeAction(@NotNull EditorBundle editorBundle, float f) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.scale = f;
    }
}

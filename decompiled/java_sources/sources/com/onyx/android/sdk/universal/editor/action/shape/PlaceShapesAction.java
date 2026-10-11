package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/PlaceShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "p", "", "m", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "i", "Ljava/util/List;", "", "j", Constants.HASIDCALL_INDEX_SIG, "topping", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPlaceShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaceShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/PlaceShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1045#2:118\n1855#2,2:119\n1864#2,3:122\n1864#2,3:125\n766#2:128\n857#2,2:129\n1#3:121\n*S KotlinDebug\n*F\n+ 1 PlaceShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/PlaceShapesAction\n*L\n45#1:118\n49#1:119,2\n68#1:122,3\n73#1:125,3\n91#1:128\n91#1:129,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PlaceShapesAction extends RxBaseAppAction<PlaceShapesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean topping;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10125a<T> implements Consumer {
        public C10125a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PlaceShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PlaceShapesAction.this.m40291l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10126b<T, R> implements Function {
        public C10126b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull PlaceShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PlaceShapesAction placeShapesAction = PlaceShapesAction.this;
            return ForceRenderSliceListActionsKt.forceRenderIntersectsNoteDirtyRectToDisplay(placeShapesAction, placeShapesAction.shapes);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C10127c<T, R> implements Function {
        public C10127c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PlaceShapesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PlaceShapesAction.this;
        }
    }

    public /* synthetic */ PlaceShapesAction(EditorBundle editorBundle, BoxInfo boxInfo, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, boxInfo, list, (i & 8) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PlaceShapesAction> create() {
        Observable<PlaceShapesAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10125a()).flatMap(new C10126b()).map(new C10127c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40291l() {
        List<? extends Shape> sortedWith;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.shapes, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction$apply$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                Date date = shapeTypes.getTargetShape((Shape) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                Long valueOf = date != null ? Long.valueOf(date.getTime()) : null;
                Date date2 = shapeTypes.getTargetShape((Shape) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, date2 != null ? Long.valueOf(date2.getTime()) : null);
                return compareValues;
            }
        });
        m40295p(sortedWith);
        Map<String, List<Shape>> pageShapeMap = ShapeTypes.INSTANCE.toPageShapeMap(sortedWith);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = pageShapeMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage((String) entry.getKey());
            Intrinsics.checkNotNull(virtualPage);
            NotePage ensureNotePage = getEditorBundle().getWorkBundle().getVirtualPolicy().ensureNotePage(virtualPage);
            if (!NotePage.removeShapeList$default(ensureNotePage, (List) entry.getValue(), false, 2, null).getRemoveShapeList().isEmpty()) {
                if (this.topping) {
                    m40294o(ensureNotePage, (List) entry.getValue());
                } else {
                    m40293n(ensureNotePage, (List) entry.getValue());
                }
                arrayList.addAll((Collection) entry.getValue());
            }
        }
        EditorBundleKt.noteBundle(getEditorBundle()).postAddShapeEvent(arrayList);
    }

    /* renamed from: m */
    public final long m40292m() {
        Object lastOrNull;
        long longValue;
        Date date;
        Object firstOrNull;
        long longValue2;
        Date date2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        long j = 0;
        for (Shape shape : this.shapes) {
            if (!linkedHashSet.contains(shape.getPageUniqueId())) {
                linkedHashSet.add(shape.getPageUniqueId());
                VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(shape.getPageUniqueId());
                Intrinsics.checkNotNull(virtualPage);
                List<Shape> shapeList = getEditorBundle().getWorkBundle().getVirtualPolicy().ensureNotePage(virtualPage).getShapeList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : shapeList) {
                    if (((Shape) obj).getLayerId() == shape.getLayerId()) {
                        arrayList.add(obj);
                    }
                }
                if (this.topping) {
                    MathUtils mathUtils = MathUtils.INSTANCE;
                    lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) arrayList);
                    Shape shape2 = (Shape) lastOrNull;
                    if (shape2 == null || (date = shape2.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String()) == null) {
                        Date date3 = shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                        longValue = ((Number) AnyKt.getOrElse(date3 != null ? Long.valueOf(date3.getTime()) : null, new Function0<Long>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction$findTargetCreatedAt$createdAt$1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Long invoke() {
                                return Long.valueOf(new Date().getTime());
                            }
                        })).longValue();
                    } else {
                        longValue = date.getTime();
                    }
                    j = Math.max(((Number) mathUtils.atLeast(Long.valueOf(longValue), Long.valueOf(System.currentTimeMillis()))).longValue(), j);
                } else {
                    firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
                    Shape shape3 = (Shape) firstOrNull;
                    if (shape3 == null || (date2 = shape3.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String()) == null) {
                        Date date4 = shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                        longValue2 = ((Number) AnyKt.getOrElse(date4 != null ? Long.valueOf(date4.getTime()) : null, new Function0<Long>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction$findTargetCreatedAt$createdAt$2
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Long invoke() {
                                return Long.valueOf(new Date().getTime());
                            }
                        })).longValue();
                    } else {
                        longValue2 = date2.getTime();
                    }
                    j = j == 0 ? longValue2 : Math.min(longValue2, j);
                }
            }
        }
        return j;
    }

    /* renamed from: n */
    public final void m40293n(NotePage notePage, List<? extends Shape> shapes) {
        List reversed;
        NotePageShape notePageShape = NotePageShape.INSTANCE;
        reversed = CollectionsKt___CollectionsKt.reversed(shapes);
        notePageShape.addShapeList(notePage, reversed, 0);
    }

    /* renamed from: o */
    public final void m40294o(NotePage notePage, List<? extends Shape> shapes) {
        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage, shapes, 0, 2, null);
    }

    /* renamed from: p */
    public final void m40295p(List<? extends Shape> shapes) {
        long m40292m = m40292m();
        int i = 0;
        if (!this.topping) {
            for (Object obj : shapes) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Shape shape = (Shape) obj;
                shape.setCreatedAt(new Date(m40292m - (shapes.size() - i)));
                ShapePersistOptionsKt.setBottom(shape, true);
                i = i2;
            }
            return;
        }
        int i3 = 0;
        for (Object obj2 : shapes) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Shape shape2 = (Shape) obj2;
            shape2.setCreatedAt(new Date(i3 + m40292m + 1));
            ShapePersistOptionsKt.setBottom(shape2, false);
            i3 = i4;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PlaceShapesAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapes, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapes = shapes;
        this.topping = z;
    }
}

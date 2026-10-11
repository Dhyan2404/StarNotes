package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.note.request.excerpt.UpdateQuoteExcerptListRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppShapeAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.shape.ClonePageChangedShapesRequest;
import com.onyx.android.sdk.universal.editor.request.shape.CreatePageChangedShapesRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001B!\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\b\b\u0002\u0010%\u001a\u00020\"¢\u0006\u0004\b:\u0010;J\u001a\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J(\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\n0\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J4\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\n0\u0002H\u0002J:\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e2\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00060\u0010H\u0002J\"\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000eH\u0002J\"\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0015\u001a\u00020\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\"\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0015\u001a\u00020\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u001a\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u00042\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u001c\u0010\u001d\u001a\u00020\u001c2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010(\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010)R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00030\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010)R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R(\u00107\u001a\u0004\u0018\u0001022\b\u00103\u001a\u0004\u0018\u0001028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0012\u00104\u001a\u0004\b5\u00106¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "q", "intersectBoxList", "", "s", "pageShapesMap", GoogleApiAvailabilityLight.f29016b, "", "changedShapeMap", "", "entry", C4921e.f26528e, "t", "", CouchFieldKey.KEY_TOC_PAGE_ID, "shapeList", "l", "tagShapeList", "r", "shapes", "p", "", "m", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "i", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "noteContext", "", "j", Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Ljava/util/List;", "changedReferenceShapes", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "setChangedShapeBean", "(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V", "changedShapeBean", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "<set-?>", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "getUndoRedoCommand", "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "undoRedoCommand", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAddShapesToOtherPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,171:1\n215#2,2:172\n*S KotlinDebug\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction\n*L\n157#1:172,2\n*E\n"})
/* loaded from: classes8.dex */
public final class AddShapesToOtherPageAction extends RxBaseAppShapeAction<Map<Shape, ? extends Shape>> {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TransformShapeContext noteContext;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean addToCmdStack;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> changedReferenceShapes;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public ChangedShapeBean changedShapeBean;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public UndoRedoCommand undoRedoCommand;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9988a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f50747f;

        public C9988a(String str) {
            this.f50747f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CommonEditorActionsKt.updateVirtualPage(AddShapesToOtherPageAction.this, this.f50747f);
        }
    }

    @SourceDebugExtension({"SMAP\nAddShapesToOtherPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n766#2:172\n857#2,2:173\n*S KotlinDebug\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$3\n*L\n131#1:172\n131#1:173,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9989b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f50749f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f50750g;

        /* JADX WARN: Multi-variable type inference failed */
        public C9989b(String str, List<? extends Shape> list) {
            this.f50749f = str;
            this.f50750g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddShapesToOtherPageAction addShapesToOtherPageAction = AddShapesToOtherPageAction.this;
            String str = this.f50749f;
            List<Shape> list = this.f50750g;
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (ShapeKt.isTagShape((Shape) t)) {
                    arrayList.add(t);
                }
            }
            return addShapesToOtherPageAction.m40066r(str, arrayList);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C9990c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ LinkedHashMap<Shape, Shape> f50752f;

        public C9990c(LinkedHashMap<Shape, Shape> linkedHashMap) {
            this.f50752f = linkedHashMap;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map.Entry<BoxInfo, ? extends List<Shape>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this.m40063o(this.f50752f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C9991d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LinkedHashMap<Shape, Shape> f50753e;

        public C9991d(LinkedHashMap<Shape, Shape> linkedHashMap) {
            this.f50753e = linkedHashMap;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<Shape, Shape> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50753e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$e */
    /* loaded from: classes8.dex */
    public static final class C9992e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f50755f;

        public C9992e(List<Shape> list) {
            this.f50755f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GetReferenceShapeAction> apply(@NotNull Map<Shape, Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GetReferenceShapeAction(AddShapesToOtherPageAction.this.getEditorBundle(), this.f50755f).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$f */
    /* loaded from: classes8.dex */
    public static final class C9993f<T> implements Consumer {
        public C9993f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAddAll(AddShapesToOtherPageAction.this.changedReferenceShapes, it2.getReferenceShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$g */
    /* loaded from: classes8.dex */
    public static final class C9994g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f50757e;

        public C9994g(List<Shape> list) {
            this.f50757e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAddAll(this.f50757e, GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$h */
    /* loaded from: classes8.dex */
    public static final class C9995h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map<Shape, Shape> f50759f;

        public C9995h(Map<Shape, Shape> map) {
            this.f50759f = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesToOtherPageAction> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this.m40068t(this.f50759f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$i */
    /* loaded from: classes8.dex */
    public static final class C9996i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f50761f;

        public C9996i(List<Shape> list) {
            this.f50761f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull AddShapesToOtherPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this.m40064p(this.f50761f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$j */
    /* loaded from: classes8.dex */
    public static final class C9997j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map.Entry<BoxInfo, List<Shape>> f50763f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f50764g;

        /* JADX WARN: Multi-variable type inference failed */
        public C9997j(Map.Entry<BoxInfo, ? extends List<? extends Shape>> entry, List<Shape> list) {
            this.f50763f = entry;
            this.f50764g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this.m40060l(this.f50763f.getKey().getId(), this.f50764g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$k */
    /* loaded from: classes8.dex */
    public static final class C9998k<T, R> implements Function {
        public C9998k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<BoxInfo>> apply(@NotNull AddShapesToOtherPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this.m40065q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$l */
    /* loaded from: classes8.dex */
    public static final class C9999l<T, R> implements Function {
        public C9999l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<BoxInfo, List<Shape>> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this.m40067s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$m */
    /* loaded from: classes8.dex */
    public static final class C10000m<T, R> implements Function {
        public C10000m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map<Shape, Shape>> apply(@NotNull Map<BoxInfo, ? extends List<Shape>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this.m40062n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$n */
    /* loaded from: classes8.dex */
    public static final class C10001n<T> implements Consumer {
        public C10001n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<Shape, ? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddShapesToOtherPageAction.this.m40061m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$o */
    /* loaded from: classes8.dex */
    public static final class C10002o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f50770f;

        public C10002o(String str) {
            this.f50770f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SavePageTagModelAction(AddShapesToOtherPageAction.this.getEditorBundle(), this.f50770f, ShapeOptions.INSTANCE.getTagBean(it2)).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$p */
    /* loaded from: classes8.dex */
    public static final class C10003p<T, R> implements Function {
        public C10003p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddShapesToOtherPageAction apply(@NotNull UpdateQuoteExcerptListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesToOtherPageAction.this;
        }
    }

    public /* synthetic */ AddShapesToOtherPageAction(EditorBundle editorBundle, TransformShapeContext transformShapeContext, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, transformShapeContext, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Map<Shape, Shape>> create() {
        Observable<Map<Shape, Shape>> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C9998k()).map(new C9999l()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C10000m()).doOnNext(new C10001n());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }

    @Nullable
    public final UndoRedoCommand getUndoRedoCommand() {
        return this.undoRedoCommand;
    }

    /* renamed from: l */
    public final Observable<?> m40060l(final String pageId, final List<? extends Shape> shapeList) {
        Observable<?> flatMap = DocCommonActionsKt.createLightNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$addShapes$1
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
            public final void invoke2(@NotNull NoteBundle noteBundle) {
                List<? extends Shape> mutableList;
                Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
                NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteBundle.getNoteDoc(), pageId);
                if (pageByUniqueId == null) {
                    return;
                }
                for (Shape shape : shapeList) {
                    shape.setLayerId(pageByUniqueId.getLayerIndex());
                    shape.updateShapeTime();
                }
                NotePageShape.INSTANCE.addTransformedShapeList(pageByUniqueId, shapeList);
                if (this.getPostShapeChangedEvent()) {
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapeList);
                    noteBundle.postAddShapeEvent(mutableList);
                }
            }
        }).flatMap(new C9988a(pageId)).flatMap(new C9989b(pageId, shapeList));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final void m40061m(Map<Shape, ? extends Shape> changedShapeMap) {
        if (CollectionKt.isNullOrEmpty(changedShapeMap)) {
            return;
        }
        UndoRedoCommand undoRedoCommand = new UndoRedoCommand();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<Shape, ? extends Shape> entry : changedShapeMap.entrySet()) {
            arrayList2.add(entry.getKey());
            arrayList.add(entry.getValue());
        }
        arrayList2.addAll(this.changedReferenceShapes);
        this.changedShapeBean.setAddShapeList(arrayList).setRemoveShapeList(arrayList2);
        undoRedoCommand.addChangedShapeBean(this.changedShapeBean);
        if (this.addToCmdStack) {
            EditorBundleKt.noteBundle(getEditorBundle()).getCommandManager().addUndoRedoCommand(undoRedoCommand);
        }
        this.undoRedoCommand = undoRedoCommand;
    }

    /* renamed from: n */
    public final Observable<Map<Shape, Shape>> m40062n(Map<BoxInfo, ? extends List<Shape>> pageShapesMap) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (CollectionKt.isNullOrEmpty(pageShapesMap)) {
            Observable<Map<Shape, Shape>> just = Observable.just(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(pageShapesMap.entrySet()).concatMap(new C9990c(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<Map<Shape, Shape>> map = RxjavaKt.takeLastOne(concatMap).map(new C9991d(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<?> m40063o(final Map<Shape, Shape> changedShapeMap, final Map.Entry<BoxInfo, ? extends List<? extends Shape>> entry) {
        List mutableList;
        if (CollectionKt.isNullOrEmpty(entry.getValue())) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) entry.getValue());
        final ArrayList arrayList = new ArrayList();
        Observable<?> flatMap = DocCommonActionsKt.createLightNoteObservable(getEditorBundle(), new Function1<NoteBundle, Map<Shape, Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddShapesToOtherPageAction$applyPageShapes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Map<Shape, Shape> invoke(@NotNull NoteBundle it2) {
                Map mutableMapOf;
                BoxInfo boxInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                WorkBundle workBundle = AddShapesToOtherPageAction.this.getEditorBundle().getWorkBundle();
                mutableMapOf = MapsKt__MapsKt.mutableMapOf(new Pair(entry.getKey(), entry.getValue()));
                boxInfo = AddShapesToOtherPageAction.this.virtualBoxInfo;
                ClonePageChangedShapesRequest clonePageChangedShapesRequest = new ClonePageChangedShapesRequest(workBundle, mutableMapOf, boxInfo);
                clonePageChangedShapesRequest.execute2();
                Map<Shape, Shape> changedShapeMap2 = clonePageChangedShapesRequest.getChangedShapeMap();
                Map<Shape, Shape> map = changedShapeMap;
                List<Shape> list = arrayList;
                map.putAll(changedShapeMap2);
                list.addAll(changedShapeMap2.values());
                return changedShapeMap2;
            }
        }).flatMap(new C9992e(mutableList)).doOnNext(new C9993f()).doOnNext(new C9994g(mutableList)).flatMap(new C9995h(changedShapeMap)).flatMap(new C9996i(mutableList)).flatMap(new C9997j(entry, arrayList));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: p */
    public final Observable<?> m40064p(List<? extends Shape> shapes) {
        DeleteShapesAction deleteShapesAction = new DeleteShapesAction(getEditorBundle(), shapes, false, false, 12, null);
        deleteShapesAction.setRender(false);
        deleteShapesAction.setPostShapeChangedEvent(getPostShapeChangedEvent());
        return deleteShapesAction.build();
    }

    /* renamed from: q */
    public final Observable<List<BoxInfo>> m40065q() {
        return ComputeBoxListActionsKt.findBoxListObservable(this, this.noteContext, this.shapeList, this.virtualBoxInfo);
    }

    /* renamed from: r */
    public final Observable<?> m40066r(String pageId, List<? extends Shape> tagShapeList) {
        if (CollectionKt.isNullOrEmpty(tagShapeList)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = Observable.fromIterable(tagShapeList).flatMap(new C10002o(pageId));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.takeLastOne(flatMap);
    }

    /* renamed from: s */
    public final Map<BoxInfo, List<Shape>> m40067s(List<BoxInfo> intersectBoxList) {
        CreatePageChangedShapesRequest createPageChangedShapesRequest = new CreatePageChangedShapesRequest(getEditorBundle().getWorkBundle(), intersectBoxList, this.virtualBoxInfo, this.shapeList);
        createPageChangedShapesRequest.execute2();
        return createPageChangedShapesRequest.getPageShapesMap();
    }

    public final void setChangedShapeBean(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "<set-?>");
        this.changedShapeBean = changedShapeBean;
    }

    /* renamed from: t */
    public final Observable<AddShapesToOtherPageAction> m40068t(Map<Shape, Shape> changedShapeMap) {
        Observable<AddShapesToOtherPageAction> map = RxBaseAppActionKt.submitRequestToNote(getEditorBundle(), new UpdateQuoteExcerptListRequest(EditorBundleKt.noteBundle(getEditorBundle()), changedShapeMap)).map(new C10003p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddShapesToOtherPageAction(@NotNull EditorBundle editorBundle, @NotNull TransformShapeContext noteContext, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteContext, "noteContext");
        this.noteContext = noteContext;
        this.addToCmdStack = z;
        this.virtualBoxInfo = noteContext.getVirtualBoxInfo();
        this.shapeList = noteContext.getShapeList();
        this.changedReferenceShapes = new ArrayList();
        this.changedShapeBean = new ChangedShapeBean();
    }
}

package com.onyx.android.sdk.universal.editor.action.selection;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.AddUndoRedoCommandRequest;
import com.onyx.android.sdk.note.request.DeleteShapesRequest;
import com.onyx.android.sdk.note.request.GetReferenceShapesRequest;
import com.onyx.android.sdk.note.request.excerpt.DeleteQuoteRequest;
import com.onyx.android.sdk.note.request.excerpt.UpdateQuoteExcerptListRequest;
import com.onyx.android.sdk.note.request.selection.QuitTransformRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelsAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.note.TransformQuitedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.shape.ClonePageChangedShapesRequest;
import com.onyx.android.sdk.universal.editor.request.shape.CreatePageChangedShapesRequest;
import com.onyx.android.sdk.universal.editor.request.shape.UpdateCrossPageShapesRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u0010X\u001a\u00020W\u0012\u0006\u0010*\u001a\u00020%\u0012\u0006\u0010/\u001a\u00020\u0006\u0012\u0006\u00103\u001a\u000200¢\u0006\u0004\bY\u0010ZJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004H\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J<\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000e2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00050\u000bH\u0002JN\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u0012\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u000e0\u00112\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u001e\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00050\u00050\u000eH\u0002J\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0015H\u0002J\u001e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0015H\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0017H\u0002J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0017H\u0002J\b\u0010 \u001a\u00020\u0017H\u0002J\u000e\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u0010\u0010$\u001a\u00020\u00172\b\u0010#\u001a\u0004\u0018\u00010\"R\u0017\u0010*\u001a\u00020%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010/\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R(\u00104\u001a\b\u0012\u0004\u0012\u00020\t0\u00058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R \u0010A\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010P\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010V\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010U¨\u0006["}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "v", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "u", "boxList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "A", "", "", "pageShapeMapEntry", "", "t", Constant.MAP_TAG, "Lkotlin/Pair;", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "s", CouchFieldKey.KEY_TOC_PAGE_ID, "", "shapeList", "", "p", C4921e.f26528e, "Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;", "y", "z", SardineUtil.DEFAULT_NAMESPACE_PREFIX, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "x", "w", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/command/Command;", "command", "addCommand", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "j", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "shapeTransformBean", "transformShapeList", "Ljava/util/List;", "getTransformShapeList", "()Ljava/util/List;", "setTransformShapeList", "(Ljava/util/List;)V", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "transformShapeContext", "", "l", "Ljava/util/Map;", "changedTagShapeMap", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "m", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getQuitCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setQuitCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "quitCompositeCommand", GoogleApiAvailabilityLight.f29016b, Constants.HASIDCALL_INDEX_SIG, "getAddToCmdStack", Constants.BOOLEAN_VALUE_SIG, "setAddToCmdStack", "(Z)V", "addToCmdStack", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "setChangedShapeBean", "(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V", "changedShapeBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQuitTransformAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,311:1\n1855#2:312\n1856#2:331\n1477#2:335\n1502#2,3:336\n1505#2,3:346\n1238#2,2:351\n1549#2:353\n1620#2,3:354\n1241#2:357\n1855#2,2:364\n1549#2:366\n1620#2,3:367\n1789#2,3:370\n526#3:313\n511#3,6:314\n526#3:320\n511#3,6:321\n372#3,7:339\n453#3:349\n403#3:350\n215#4,2:327\n215#4,2:329\n215#4,2:333\n215#4,2:358\n215#4,2:360\n215#4,2:362\n1#5:332\n*S KotlinDebug\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction\n*L\n119#1:312\n119#1:331\n156#1:335\n156#1:336,3\n156#1:346,3\n157#1:351,2\n157#1:353\n157#1:354,3\n157#1:357\n240#1:364,2\n304#1:366\n304#1:367,3\n305#1:370,3\n130#1:313\n130#1:314,6\n131#1:320\n131#1:321,6\n156#1:339,7\n157#1:349\n157#1:350\n132#1:327,2\n133#1:329,2\n152#1:333,2\n158#1:358,2\n203#1:360,2\n222#1:362,2\n*E\n"})
/* loaded from: classes8.dex */
public final class QuitTransformAction extends RxBaseAppAction<QuitTransformAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean shapeTransformBean;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final TransformShapeContext transformShapeContext;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, Shape> changedTagShapeMap;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public CompositeCommand quitCompositeCommand;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean addToCmdStack;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public ChangedShapeBean changedShapeBean;
    public List<? extends Shape> transformShapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$a */
    /* loaded from: classes8.dex */
    public static final class C9920a<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$a$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f50612e;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends Shape> list) {
                this.f50612e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull QuitTransformAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f50612e;
            }
        }

        public C9920a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapeList) {
            Intrinsics.checkNotNullParameter(shapeList, "shapeList");
            return QuitTransformAction.this.m39932C().map(new a(shapeList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$b */
    /* loaded from: classes8.dex */
    public static final class C9921b<T, R> implements Function {
        public C9921b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final QuitTransformAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuitTransformAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$c */
    /* loaded from: classes8.dex */
    public static final class C9922c<T, R> implements Function {
        public C9922c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends QuitTransformRequest> apply(@NotNull QuitTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuitTransformAction.this.m39942y();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$d */
    /* loaded from: classes8.dex */
    public static final class C9923d<T, R> implements Function {
        public C9923d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<BoxInfo>> apply(@NotNull QuitTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuitTransformAction.this.m39938u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$e */
    /* loaded from: classes8.dex */
    public static final class C9924e<T, R> implements Function {
        public C9924e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuitTransformAction.this.m39931A(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$f */
    /* loaded from: classes8.dex */
    public static final class C9925f<T> implements Consumer {
        public C9925f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QuitTransformAction.this.setTransformShapeList(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$g */
    /* loaded from: classes8.dex */
    public static final class C9926g<T> implements Consumer {
        public C9926g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QuitTransformAction.this.m39940w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$h */
    /* loaded from: classes8.dex */
    public static final class C9927h<T> implements Consumer {
        public C9927h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QuitTransformAction.this.m39941x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$i */
    /* loaded from: classes8.dex */
    public static final class C9928i<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$i$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f50621e;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends Shape> list) {
                this.f50621e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull QuitTransformAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f50621e;
            }
        }

        public C9928i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapeList) {
            Intrinsics.checkNotNullParameter(shapeList, "shapeList");
            return QuitTransformAction.this.m39933D().map(new a(shapeList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$j */
    /* loaded from: classes8.dex */
    public static final class C9929j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ QuitTransformRequest f50622e;

        public C9929j(QuitTransformRequest quitTransformRequest) {
            this.f50622e = quitTransformRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final QuitTransformRequest apply(@NotNull QuitTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50622e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$k */
    /* loaded from: classes8.dex */
    public static final class C9930k<T> implements Consumer {
        public C9930k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QuitTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QuitTransformAction.this.getChangedShapeBean().merge(it2.getChangedShapeBean());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$l */
    /* loaded from: classes8.dex */
    public static final class C9931l<T> implements Consumer {
        public C9931l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QuitTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QuitTransformAction.this.addCommand(it2.getCompositeCommand());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$m */
    /* loaded from: classes8.dex */
    public static final class C9932m<T> implements Consumer {
        public C9932m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QuitTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(QuitTransformAction.this.getEditorBundle(), new TransformQuitedEvent());
        }
    }

    @SourceDebugExtension({"SMAP\nQuitTransformAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$updatePageTagModels$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,311:1\n1549#2:312\n1620#2,3:313\n*S KotlinDebug\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$updatePageTagModels$1\n*L\n285#1:312\n285#1:313,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$n */
    /* loaded from: classes8.dex */
    public static final class C9933n<T, R> implements Function {
        public C9933n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull Map.Entry<String, ? extends List<? extends Shape>> entry) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(entry, "entry");
            EditorBundle editorBundle = QuitTransformAction.this.getEditorBundle();
            String key = entry.getKey();
            List<? extends Shape> value = entry.getValue();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(value, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = value.iterator();
            while (it2.hasNext()) {
                arrayList.add(ShapeOptions.INSTANCE.getTagBean((Shape) it2.next()));
            }
            return new SavePageTagModelsAction(editorBundle, key, arrayList).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$o */
    /* loaded from: classes8.dex */
    public static final class C9934o<T, R> implements Function {
        public C9934o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final QuitTransformAction apply(@NotNull List<? extends PageTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuitTransformAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$p */
    /* loaded from: classes8.dex */
    public static final class C9935p<T, R> implements Function {
        public C9935p() {
        }

        @NotNull
        /* renamed from: a */
        public final QuitTransformAction m39961a(boolean z) {
            return QuitTransformAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m39961a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuitTransformAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull ShapeTransformBean shapeTransformBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeTransformBean, "shapeTransformBean");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeTransformBean = shapeTransformBean;
        this.transformShapeContext = new TransformShapeContext(virtualBoxInfo, shapeTransformBean.getTransformShapes(), null, false, 12, null);
        this.changedTagShapeMap = new LinkedHashMap();
        this.quitCompositeCommand = new CompositeCommand(null, 1, null);
        this.addToCmdStack = true;
        this.changedShapeBean = new ChangedShapeBean();
    }

    /* renamed from: B */
    public static final Shape m39925B(Shape it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return it2;
    }

    /* renamed from: q */
    public static final void m39929q(QuitTransformAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m39943z();
    }

    /* renamed from: r */
    public static final void m39930r(QuitTransformAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.renderManager(this$0.getEditorBundle()).removeRenderer(RenderManager.RENDER_KEY_TRANSFORM, this$0.m39939v());
    }

    /* JADX WARN: Type inference failed for: r10v10, types: [T, java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, java.util.Map] */
    /* renamed from: A */
    public final List<Shape> m39931A(List<BoxInfo> boxList) {
        Set mutableSet;
        Set mutableSet2;
        int mapCapacity;
        List<Shape> mutableList;
        List<Shape> mutableList2;
        List<Shape> mutableList3;
        Set set;
        int collectionSizeOrDefault;
        List<Shape> transformShapes = this.shapeTransformBean.getTransformShapes();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        List<Shape> list = transformShapes;
        ?? pageShapeMap = shapeTypes.toPageShapeMap(shapeTypes.filterNormalShapes(list));
        objectRef.element = pageShapeMap;
        if (CollectionKt.isNullOrEmpty((Map<?, ?>) pageShapeMap)) {
            return transformShapes;
        }
        Benchmark benchmark = new Benchmark();
        Map mutableMap = CollectionKt.toMutableMap(list, new Function() { // from class: com.sunia.HTREnginev2.qbl
            @Override // io.reactivex.rxjava3.functions.Function
            public final Object apply(Object obj) {
                Shape m39925B;
                m39925B = QuitTransformAction.m39925B((Shape) obj);
                return m39925B;
            }
        });
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        UndoRedoCommand undoRedoCommand = new UndoRedoCommand();
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(this.changedShapeBean.getAddShapeList());
        mutableSet2 = CollectionsKt___CollectionsKt.toMutableSet(this.changedShapeBean.getRemoveShapeList());
        benchmark.reportDebug(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$transformShapes$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "transform begin";
            }
        });
        Iterator it2 = ((Map) objectRef.element).entrySet().iterator();
        while (it2.hasNext()) {
            Map<Shape, Shape> m39937t = m39937t(boxList, (Map.Entry) it2.next());
            Set<Shape> keySet = m39937t.keySet();
            mutableSet2.addAll(keySet);
            GetReferenceShapesRequest getReferenceShapesRequest = new GetReferenceShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), keySet);
            getReferenceShapesRequest.execute2();
            mutableSet2.addAll(getReferenceShapesRequest.getReferenceShapeList());
            mutableSet.addAll(m39937t.values());
            mutableSet.removeAll(keySet);
            linkedHashMap.putAll(m39937t);
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (Map.Entry<Shape, Shape> entry : m39937t.entrySet()) {
                Iterator it3 = it2;
                if (ShapeTypes.INSTANCE.isQuoteShape(entry.getKey())) {
                    linkedHashMap3.put(entry.getKey(), entry.getValue());
                }
                it2 = it3;
            }
            Iterator it4 = it2;
            linkedHashMap2.putAll(linkedHashMap3);
            Map<Shape, Shape> map = this.changedTagShapeMap;
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            Iterator<Map.Entry<Shape, Shape>> it5 = m39937t.entrySet().iterator();
            while (it5.hasNext()) {
                Map.Entry<Shape, Shape> next = it5.next();
                Iterator<Map.Entry<Shape, Shape>> it6 = it5;
                if (ShapeTypes.INSTANCE.isTagShape(next.getKey())) {
                    linkedHashMap4.put(next.getKey(), next.getValue());
                }
                it5 = it6;
            }
            map.putAll(linkedHashMap4);
            for (Map.Entry<Shape, Shape> entry2 : m39937t.entrySet()) {
                mutableMap.replace(entry2.getKey(), entry2.getValue());
            }
            for (Map.Entry<String, List<Shape>> entry3 : ShapeTypes.INSTANCE.toPageShapeMap(m39937t.values()).entrySet()) {
                m39935p(entry3.getKey(), entry3.getValue());
            }
            undoRedoCommand.addShapes(m39937t.values());
            it2 = it4;
        }
        benchmark.reportDebugAndRestart(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$transformShapes$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "transform, create add pageChangedShape:" + linkedHashMap.size();
            }
        });
        ShapeTypes shapeTypes2 = ShapeTypes.INSTANCE;
        objectRef.element = shapeTypes2.toPageShapeMap(shapeTypes2.filterNormalShapes(mutableMap.values()));
        final Pair<ChangedShapeBean, Map<Shape, BoxInfo>> m39936s = m39936s(boxList, CollectionKt.toMapList(boxList, new Function1<BoxInfo, List<? extends Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$transformShapes$crossPageShapeResult$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull BoxInfo it7) {
                List<Shape> emptyList;
                Intrinsics.checkNotNullParameter(it7, "it");
                List<Shape> list2 = objectRef.element.get(it7.getId());
                if (list2 != null) {
                    return list2;
                }
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        }));
        ChangedShapeBean first = m39936s.getFirst();
        mutableSet.addAll(first.getAddShapeList());
        mutableSet2.addAll(first.getRemoveShapeList());
        for (Map.Entry<String, List<Shape>> entry4 : shapeTypes2.toPageShapeMap(m39936s.getFirst().getAddShapeList()).entrySet()) {
            m39934o(entry4.getKey(), entry4.getValue());
        }
        Set<Map.Entry<Shape, BoxInfo>> entrySet = m39936s.getSecond().entrySet();
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        for (Object obj : entrySet) {
            BoxInfo boxInfo = (BoxInfo) ((Map.Entry) obj).getValue();
            Object obj2 = linkedHashMap5.get(boxInfo);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap5.put(boxInfo, obj2);
            }
            ((List) obj2).add(obj);
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(linkedHashMap5.size());
        LinkedHashMap linkedHashMap6 = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry5 : linkedHashMap5.entrySet()) {
            Object key = entry5.getKey();
            Iterable iterable = (Iterable) entry5.getValue();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator it7 = iterable.iterator();
            while (it7.hasNext()) {
                arrayList.add((Shape) ((Map.Entry) it7.next()).getKey());
            }
            linkedHashMap6.put(key, arrayList);
        }
        for (Map.Entry entry6 : linkedHashMap6.entrySet()) {
            m39934o(((BoxInfo) entry6.getKey()).getId(), (Collection) entry6.getValue());
            undoRedoCommand.addShapes((Collection) entry6.getValue());
            mutableSet.addAll((Collection) entry6.getValue());
        }
        benchmark.reportDebugAndRestart(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$transformShapes$9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "transform, create add cross page shape:" + m39936s.getSecond().size();
            }
        });
        mutableSet.removeAll(mutableSet2);
        ChangedShapeBean changedShapeBean = this.changedShapeBean;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) mutableSet);
        changedShapeBean.setAddShapeList(mutableList);
        ChangedShapeBean changedShapeBean2 = this.changedShapeBean;
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) mutableSet2);
        changedShapeBean2.setRemoveShapeList(mutableList2);
        DeleteShapesRequest deleteShapesRequest = new DeleteShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.changedShapeBean.getRemoveShapeList(), false, 4, null);
        deleteShapesRequest.setPostShapeChangedEvent(false);
        deleteShapesRequest.execute2();
        new UpdateQuoteExcerptListRequest(EditorBundleKt.noteBundle(getEditorBundle()), linkedHashMap2).execute2();
        new DeleteQuoteRequest(EditorBundleKt.noteBundle(getEditorBundle()), linkedHashMap2.keySet()).execute2();
        benchmark.reportDebugAndRestart(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$transformShapes$11
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "transform, delete old shapes:" + QuitTransformAction.this.getChangedShapeBean().getRemoveShapeList().size();
            }
        });
        undoRedoCommand.removeShapes(this.changedShapeBean);
        if (!undoRedoCommand.isEmpty()) {
            addCommand(undoRedoCommand);
        }
        mutableList3 = CollectionsKt___CollectionsKt.toMutableList(mutableMap.values());
        mutableList3.addAll(m39936s.getSecond().keySet());
        set = CollectionsKt___CollectionsKt.toSet(mutableSet2);
        mutableList3.removeAll(set);
        return mutableList3;
    }

    /* renamed from: C */
    public final Observable<QuitTransformAction> m39932C() {
        Collection<Shape> values = this.changedTagShapeMap.values();
        if (CollectionKt.isNullOrEmpty(values)) {
            Observable<QuitTransformAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(ShapeTypes.INSTANCE.toPageShapeMap(values).entrySet()).concatMap(new C9933n());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<QuitTransformAction> map = RxjavaKt.takeLastOne(concatMap).map(new C9934o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: D */
    public final Observable<QuitTransformAction> m39933D() {
        Observable map = CommonEditorActionsKt.updateVirtualPages(this, this.changedShapeBean.getChangedPageSet()).map(new C9935p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void addCommand(@Nullable Command command) {
        this.quitCompositeCommand.addCommand(command);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<QuitTransformAction> create() {
        Observable doOnNext = Observable.just(this).flatMap(new C9922c()).flatMap(new C9923d()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9924e()).doOnNext(new C9925f()).doOnNext(new C9926g()).doOnNext(new C9927h());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable observeOn = RxjavaKt.doOnNextIf(doOnNext, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$create$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(QuitTransformAction.this.getAddToCmdStack());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.obl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                QuitTransformAction.m39929q(QuitTransformAction.this, (List) obj);
            }
        }).flatMap(new C9928i()).flatMap(new C9920a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<QuitTransformAction> doFinally = RxjavaKt.onErrorReturnItemWithLog(RxjavaKt.flatMapIf(observeOn, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$create$11
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                boolean m39939v;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39939v = QuitTransformAction.this.m39939v();
                return Boolean.valueOf(m39939v);
            }
        }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$create$12
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay((RxBaseAppAction<?>) QuitTransformAction.this, it2, false);
            }
        }), this).map(new C9921b()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.pbl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                QuitTransformAction.m39930r(QuitTransformAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final boolean getAddToCmdStack() {
        return this.addToCmdStack;
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }

    @NotNull
    public final CompositeCommand getQuitCompositeCommand() {
        return this.quitCompositeCommand;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final List<Shape> getTransformShapeList() {
        List list = this.transformShapeList;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("transformShapeList");
        return null;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: o */
    public final void m39934o(String pageId, Collection<? extends Shape> shapeList) {
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), pageId);
        if (pageByUniqueId == null) {
            return;
        }
        ShapeUtils.INSTANCE.updateShapesTimes(shapeList);
        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, pageByUniqueId, shapeList, 0, 2, null);
    }

    /* renamed from: p */
    public final void m39935p(String pageId, Collection<? extends Shape> shapeList) {
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), pageId);
        if (pageByUniqueId == null) {
            return;
        }
        Iterator<T> it2 = shapeList.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).updateShapeTime();
        }
        NotePageShape.INSTANCE.addTransformedShapeList(pageByUniqueId, shapeList);
    }

    /* renamed from: s */
    public final Pair<ChangedShapeBean, Map<Shape, BoxInfo>> m39936s(List<BoxInfo> boxList, Map<BoxInfo, ? extends List<? extends List<? extends Shape>>> map) {
        List flatten;
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<BoxInfo, ? extends List<? extends List<? extends Shape>>> entry : map.entrySet()) {
            flatten = CollectionsKt__IterablesKt.flatten(entry.getValue());
            if (!CollectionKt.isNullOrEmpty(flatten)) {
                UpdateCrossPageShapesRequest updateCrossPageShapesRequest = new UpdateCrossPageShapesRequest(getEditorBundle().getWorkBundle(), boxList, entry.getKey(), flatten);
                updateCrossPageShapesRequest.setCheckDuplicatedShapes(true);
                updateCrossPageShapesRequest.execute2();
                changedShapeBean.merge(updateCrossPageShapesRequest.getChangedShapeBean());
                linkedHashMap.putAll(updateCrossPageShapesRequest.getCrossPageShapeMap());
            }
        }
        return TuplesKt.m61535to(changedShapeBean, linkedHashMap);
    }

    public final void setAddToCmdStack(boolean z) {
        this.addToCmdStack = z;
    }

    public final void setChangedShapeBean(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "<set-?>");
        this.changedShapeBean = changedShapeBean;
    }

    public final void setQuitCompositeCommand(@NotNull CompositeCommand compositeCommand) {
        Intrinsics.checkNotNullParameter(compositeCommand, "<set-?>");
        this.quitCompositeCommand = compositeCommand;
    }

    public final void setTransformShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.transformShapeList = list;
    }

    /* renamed from: t */
    public final Map<Shape, Shape> m39937t(List<BoxInfo> boxList, Map.Entry<String, ? extends List<? extends Shape>> pageShapeMapEntry) {
        Object obj;
        Map mutableMapOf;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = boxList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((BoxInfo) obj).getId(), pageShapeMapEntry.getKey())) {
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$createPageChangedShapes$boxInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BoxInfo invoke() {
                return QuitTransformAction.this.getVirtualBoxInfo();
            }
        });
        CreatePageChangedShapesRequest createPageChangedShapesRequest = new CreatePageChangedShapesRequest(getEditorBundle().getWorkBundle(), boxList, boxInfo, pageShapeMapEntry.getValue());
        createPageChangedShapesRequest.execute2();
        for (Map.Entry<BoxInfo, List<Shape>> entry : createPageChangedShapesRequest.getPageShapesMap().entrySet()) {
            WorkBundle workBundle = getEditorBundle().getWorkBundle();
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(new Pair(entry.getKey(), entry.getValue()));
            ClonePageChangedShapesRequest clonePageChangedShapesRequest = new ClonePageChangedShapesRequest(workBundle, mutableMapOf, boxInfo);
            clonePageChangedShapesRequest.execute2();
            linkedHashMap.putAll(clonePageChangedShapesRequest.getChangedShapeMap());
        }
        return linkedHashMap;
    }

    /* renamed from: u */
    public final Observable<List<BoxInfo>> m39938u() {
        return ComputeBoxListActionsKt.findBoxListObservable(this, this.transformShapeContext);
    }

    /* renamed from: v */
    public final boolean m39939v() {
        return this.shapeTransformBean.getIsUpdateDisplayAfterQuit();
    }

    /* renamed from: w */
    public final void m39940w() {
        List<UndoRedoCommand> undoRedoCommands;
        int collectionSizeOrDefault;
        CompositeCommand lastCompositeCommand = this.shapeTransformBean.getLastCompositeCommand();
        if (lastCompositeCommand == null || (undoRedoCommands = lastCompositeCommand.getUndoRedoCommands()) == null) {
            return;
        }
        List<UndoRedoCommand> list = undoRedoCommands;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((UndoRedoCommand) it2.next()).toChangedShapeBean());
        }
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            changedShapeBean.merge((ChangedShapeBean) it3.next());
        }
        this.changedShapeBean.addRemoveShapeList(changedShapeBean.getRemoveShapeList());
    }

    /* renamed from: x */
    public final void m39941x() {
        if (this.changedShapeBean.isEmpty()) {
            return;
        }
        Benchmark benchmark = new Benchmark();
        EditorBundleKt.noteBundle(getEditorBundle()).postShapeChangedEvent(this.changedShapeBean);
        EditorBundleKt.noteBundle(getEditorBundle()).postStashChangeShapeEvent(this.changedShapeBean);
        benchmark.reportDebug(new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction$postChangedShapeBean$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "transform, postShapeEvent:" + QuitTransformAction.this.getChangedShapeBean().getDebugString();
            }
        });
    }

    /* renamed from: y */
    public final Observable<QuitTransformRequest> m39942y() {
        QuitTransformRequest quitTransformRequest = new QuitTransformRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.renderContext, this.shapeTransformBean);
        Observable<QuitTransformRequest> doOnNext = RxBaseAppActionKt.submitRequestToNote(this, quitTransformRequest).map(new C9929j(quitTransformRequest)).doOnNext(new C9930k()).doOnNext(new C9931l()).doOnNext(new C9932m());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: z */
    public final void m39943z() {
        this.quitCompositeCommand.addCommand(this.shapeTransformBean.getLastCompositeCommand());
        if (this.quitCompositeCommand.hasCommand()) {
            new AddUndoRedoCommandRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.quitCompositeCommand).execute2();
        }
    }
}

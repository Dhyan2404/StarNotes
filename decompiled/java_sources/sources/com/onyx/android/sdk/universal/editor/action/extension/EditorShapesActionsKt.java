package com.onyx.android.sdk.universal.editor.action.extension;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.shape.AddShapesBackgroundArgs;
import com.onyx.android.sdk.note.common.data.shape.SingleTapExcerptShapeArgs;
import com.onyx.android.sdk.note.common.data.shape.SingleTapTapeShapeArgs;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.request.AddShapesBackgroundRequest;
import com.onyx.android.sdk.note.request.SingleTapTapeShapesRequest;
import com.onyx.android.sdk.rxgesture.RxGestureConstant;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgs;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyResult;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\b\u0004\u001a,\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u0006\u0012\u0002\b\u00030\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a<\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\n0\u0006*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\t\u001a\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\n\u001a6\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u0006\u0012\u0002\b\u00030\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u000e\u001a\u00020\r\u001a\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0010\u001a\u00020\u000f\u001aB\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\n0\u0006*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0011\u001a\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u001a4\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\n0\u0006*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0016\u001a\u00020\u00152\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u001a&\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002\u001a&\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002\u001a&\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002\u001a\u0018\u0010\u001b\u001a\u00020\r*\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0002\u001a\u00020\u0001\u001a&\u0010\u001b\u001a\u00020\r*\u00020\u001c2\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u001e\u001a\u00020\u001d2\b\b\u0002\u0010 \u001a\u00020\u001f\u001a.\u0010'\u001a\u00020\r2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010#\u001a\u0004\u0018\u00010!2\b\b\u0002\u0010%\u001a\u00020$2\b\b\u0002\u0010&\u001a\u00020\u001f¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;", "addShapeAndForceRenderNote", "srcShapeAddResult", "", "shapeMap", "addShapes", "", "addToCmdStack", "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;", "args", "boxInfo", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "compositeCommand", "addCrossPageShapes", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "transformShapeContext", "bean", "c", "b", "a", "isSingleTap", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "", "maxDistance", "", "timeout", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "down", "up", "", "distanceThreshold", "timeThreshold", "isSingleTapEvent", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorShapesActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorShapesActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,248:1\n1477#2:249\n1502#2,3:250\n1505#2,3:260\n1238#2,2:265\n1549#2:267\n1620#2,3:268\n1241#2:271\n1549#2:272\n1620#2,3:273\n372#3,7:253\n453#3:263\n403#3:264\n*S KotlinDebug\n*F\n+ 1 EditorShapesActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt\n*L\n70#1:249\n70#1:250,3\n70#1:260,3\n71#1:265,2\n71#1:267\n71#1:268,3\n71#1:271\n148#1:272\n148#1:273,3\n70#1:253,7\n71#1:263\n71#1:264\n*E\n"})
/* loaded from: classes8.dex */
public final class EditorShapesActionsKt {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$a */
    /* loaded from: classes8.dex */
    public static final class C9063a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48968e;

        /* renamed from: f */
        public final /* synthetic */ TransformShapeContext f48969f;

        /* renamed from: g */
        public final /* synthetic */ CompositeCommand f48970g;

        public C9063a(RxBaseAppAction<?> rxBaseAppAction, TransformShapeContext transformShapeContext, CompositeCommand compositeCommand) {
            this.f48968e = rxBaseAppAction;
            this.f48969f = transformShapeContext;
            this.f48970g = compositeCommand;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Map<Shape, BoxInfo>> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddCrossPageShapesAction addCrossPageShapesAction = new AddCrossPageShapesAction(this.f48968e.getEditorBundle(), this.f48969f);
            CompositeCommand compositeCommand = this.f48970g;
            if (compositeCommand != null) {
                addCrossPageShapesAction.setCompositeCommand(compositeCommand);
            }
            return addCrossPageShapesAction.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$b */
    /* loaded from: classes8.dex */
    public static final class C9064b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<AddShapesBackgroundResultBean> f48971e;

        public C9064b(Ref.ObjectRef<AddShapesBackgroundResultBean> objectRef) {
            this.f48971e = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48971e.element = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$c */
    /* loaded from: classes8.dex */
    public static final class C9065c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48972e;

        /* renamed from: f */
        public final /* synthetic */ ForceRenderNoteDirtyArgs f48973f;

        public C9065c(RxBaseAppAction<?> rxBaseAppAction, ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs) {
            this.f48972e = rxBaseAppAction;
            this.f48973f = forceRenderNoteDirtyArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends ForceRenderNoteDirtyResult> apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(this.f48972e, this.f48973f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$d */
    /* loaded from: classes8.dex */
    public static final class C9066d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<AddShapesBackgroundResultBean> f48974e;

        public C9066d(Ref.ObjectRef<AddShapesBackgroundResultBean> objectRef) {
            this.f48974e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final AddShapesBackgroundResultBean apply(@NotNull ForceRenderNoteDirtyResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48974e.element;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$e */
    /* loaded from: classes8.dex */
    public static final class C9067e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f48975e;

        /* renamed from: f */
        public final /* synthetic */ RxBaseAppAction<?> f48976f;

        /* renamed from: g */
        public final /* synthetic */ Map<Shape, BoxInfo> f48977g;

        @SourceDebugExtension({"SMAP\nEditorShapesActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorShapesActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$addShapes$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1855#2,2:249\n*S KotlinDebug\n*F\n+ 1 EditorShapesActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$addShapes$1$1\n*L\n81#1:249,2\n*E\n"})
        /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$e$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ Map.Entry<BoxInfo, List<Shape>> f48978e;

            /* renamed from: f */
            public final /* synthetic */ Map<Shape, BoxInfo> f48979f;

            /* JADX WARN: Multi-variable type inference failed */
            public a(Map.Entry<BoxInfo, ? extends List<? extends Shape>> entry, Map<Shape, BoxInfo> map) {
                this.f48978e = entry;
                this.f48979f = map;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a */
            public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                List<Shape> value = this.f48978e.getValue();
                Map<Shape, BoxInfo> map = this.f48979f;
                Map.Entry<BoxInfo, List<Shape>> entry = this.f48978e;
                Iterator<T> it3 = value.iterator();
                while (it3.hasNext()) {
                    map.put((Shape) it3.next(), entry.getKey());
                }
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$e$b */
        /* loaded from: classes8.dex */
        public static final class b<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ AddShapesBackgroundResultBean f48980e;

            /* renamed from: f */
            public final /* synthetic */ Map.Entry<BoxInfo, List<Shape>> f48981f;

            /* JADX WARN: Multi-variable type inference failed */
            public b(AddShapesBackgroundResultBean addShapesBackgroundResultBean, Map.Entry<BoxInfo, ? extends List<? extends Shape>> entry) {
                this.f48980e = addShapesBackgroundResultBean;
                this.f48981f = entry;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a */
            public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                UndoRedoCommand undoRedoCommand = this.f48980e.getUndoRedoCommand();
                if (undoRedoCommand != null) {
                    undoRedoCommand.addShapes(this.f48981f.getValue());
                }
            }
        }

        public C9067e(AddShapesBackgroundResultBean addShapesBackgroundResultBean, RxBaseAppAction<?> rxBaseAppAction, Map<Shape, BoxInfo> map) {
            this.f48975e = addShapesBackgroundResultBean;
            this.f48976f = rxBaseAppAction;
            this.f48977g = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull Map.Entry<BoxInfo, ? extends List<? extends Shape>> entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            AddShapesBackgroundArgs addShapesBackgroundArgs = new AddShapesBackgroundArgs(entry.getKey().getId(), entry.getKey(), entry.getValue(), false, 8, null);
            addShapesBackgroundArgs.setAddToCmdStack(false);
            addShapesBackgroundArgs.setPostShapeChangedEvent(this.f48975e.getPostShapeChangedEvent());
            addShapesBackgroundArgs.setSetZOrder(this.f48975e.getSetZOrder());
            return EditorShapesActionsKt.addShapes(this.f48976f, addShapesBackgroundArgs).doOnNext(new a(entry, this.f48977g)).doOnNext(new b(this.f48975e, entry));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$f */
    /* loaded from: classes8.dex */
    public static final class C9068f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Map<Shape, BoxInfo> f48982e;

        public C9068f(Map<Shape, BoxInfo> map) {
            this.f48982e = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final Map<Shape, BoxInfo> apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48982e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$g */
    /* loaded from: classes8.dex */
    public static final class C9069g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48983e;

        /* renamed from: f */
        public final /* synthetic */ AddShapesBackgroundArgs f48984f;

        /* renamed from: g */
        public final /* synthetic */ AddShapesBackgroundResultBean f48985g;

        public C9069g(RxBaseAppAction<?> rxBaseAppAction, AddShapesBackgroundArgs addShapesBackgroundArgs, AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
            this.f48983e = rxBaseAppAction;
            this.f48984f = addShapesBackgroundArgs;
            this.f48985g = addShapesBackgroundResultBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorShapesActionsKt.m38275a(this.f48983e, this.f48984f, this.f48985g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$h */
    /* loaded from: classes8.dex */
    public static final class C9070h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f48986e;

        public C9070h(AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
            this.f48986e = addShapesBackgroundResultBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final AddShapesBackgroundResultBean apply(@NotNull AddShapesBackgroundRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48986e.setHasBottomUnderContentShape(it2.getHasBottomUnderContentShape());
            this.f48986e.setForceRenderNoteDirtyRectToDisplay(it2.getForceRenderNoteDirtyRectToDisplay());
            this.f48986e.setUndoRedoCommand(it2.getUndoRedoCommand());
            return this.f48986e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$i */
    /* loaded from: classes8.dex */
    public static final class C9071i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48987e;

        /* renamed from: f */
        public final /* synthetic */ AddShapesBackgroundArgs f48988f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$i$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ AddShapesBackgroundResultBean f48989e;

            public a(AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
                this.f48989e = addShapesBackgroundResultBean;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a */
            public final AddShapesBackgroundResultBean apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f48989e;
            }
        }

        public C9071i(RxBaseAppAction<?> rxBaseAppAction, AddShapesBackgroundArgs addShapesBackgroundArgs) {
            this.f48987e = rxBaseAppAction;
            this.f48988f = addShapesBackgroundArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull AddShapesBackgroundResultBean result) {
            Intrinsics.checkNotNullParameter(result, "result");
            return CommonEditorActionsKt.updateVirtualPage(this.f48987e, this.f48988f.getPageUniqueId()).map(new a(result));
        }
    }

    @SourceDebugExtension({"SMAP\nEditorShapesActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorShapesActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$singleTapExcerptShape$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$j */
    /* loaded from: classes8.dex */
    public static final class C9072j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f48990e;

        /* renamed from: f */
        public final /* synthetic */ AddShapesBackgroundArgs f48991f;

        public C9072j(AddShapesBackgroundResultBean addShapesBackgroundResultBean, AddShapesBackgroundArgs addShapesBackgroundArgs) {
            this.f48990e = addShapesBackgroundResultBean;
            this.f48991f = addShapesBackgroundArgs;
        }

        /* JADX WARN: Code restructure failed: missing block: B:3:0x0018, code lost:
        
            r4 = kotlin.collections.CollectionsKt__CollectionsKt.mutableListOf(r4);
         */
        @Override // io.reactivex.rxjava3.functions.Function
        @org.jetbrains.annotations.NotNull
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean apply(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction r4) {
            /*
                r3 = this;
                java.lang.String r0 = "it"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean r0 = r3.f48990e
                com.onyx.android.sdk.note.common.data.shape.AddShapesBackgroundArgs r1 = r3.f48991f
                boolean r1 = r1.getIsSingleTap()
                r0.setSingleTap(r1)
                com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean r0 = r3.f48990e
                com.onyx.android.sdk.note.common.shape.Shape r4 = r4.getHitTestShape()
                if (r4 == 0) goto L24
                r1 = 1
                com.onyx.android.sdk.note.common.shape.Shape[] r1 = new com.onyx.android.sdk.note.common.shape.Shape[r1]
                r2 = 0
                r1[r2] = r4
                java.util.List r4 = kotlin.collections.CollectionsKt.mutableListOf(r1)
                if (r4 != 0) goto L29
            L24:
                java.util.ArrayList r4 = new java.util.ArrayList
                r4.<init>()
            L29:
                r0.setHitTestSupportSingleTapShapeList(r4)
                com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean r3 = r3.f48990e
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt.C9072j.apply(com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction):com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean");
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$k */
    /* loaded from: classes8.dex */
    public static final class C9073k<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f48992e;

        /* renamed from: f */
        public final /* synthetic */ AddShapesBackgroundArgs f48993f;

        public C9073k(AddShapesBackgroundResultBean addShapesBackgroundResultBean, AddShapesBackgroundArgs addShapesBackgroundArgs) {
            this.f48992e = addShapesBackgroundResultBean;
            this.f48993f = addShapesBackgroundArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final AddShapesBackgroundResultBean apply(@NotNull SingleTapTapeShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48992e.setSingleTap(this.f48993f.getIsSingleTap());
            this.f48992e.setHitTestSupportSingleTapShapeList(it2.getHitTestTapeShapeList());
            return this.f48992e;
        }
    }

    /* renamed from: a */
    public static final Observable<AddShapesBackgroundResultBean> m38275a(RxBaseAppAction<?> rxBaseAppAction, AddShapesBackgroundArgs addShapesBackgroundArgs, AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
        if (!addShapesBackgroundResultBean.canAddShape()) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(addShapesBackgroundResultBean);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        AddShapesBackgroundRequest addShapesBackgroundRequest = new AddShapesBackgroundRequest(EditorBundleKt.noteBundle(rxBaseAppAction.getEditorBundle()), addShapesBackgroundArgs);
        addShapesBackgroundRequest.setPostShapeChangedEvent(addShapesBackgroundArgs.getPostShapeChangedEvent());
        Observable<AddShapesBackgroundResultBean> flatMap = RxBaseAppActionKt.submitRequestToNote(rxBaseAppAction, addShapesBackgroundRequest).map(new C9070h(addShapesBackgroundResultBean)).flatMap(new C9071i(rxBaseAppAction, addShapesBackgroundArgs));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public static final Observable<Map<Shape, BoxInfo>> addCrossPageShapes(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo boxInfo, @NotNull List<? extends Shape> shapeList, @Nullable CompositeCommand compositeCommand) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        return addCrossPageShapes(rxBaseAppAction, new TransformShapeContext(boxInfo, shapeList, null, false, 12, null), compositeCommand);
    }

    public static /* synthetic */ Observable addCrossPageShapes$default(RxBaseAppAction rxBaseAppAction, BoxInfo boxInfo, List list, CompositeCommand compositeCommand, int i, Object obj) {
        if ((i & 4) != 0) {
            compositeCommand = null;
        }
        return addCrossPageShapes(rxBaseAppAction, boxInfo, list, compositeCommand);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean] */
    @NotNull
    public static final Observable<AddShapesBackgroundResultBean> addShapeAndForceRenderNote(@NotNull RxBaseAppAction<?> rxBaseAppAction, @Nullable BoxInfo boxInfo, @NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new AddShapesBackgroundResultBean();
        if (CollectionKt.isNullOrEmpty(shapeList)) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(objectRef.element);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (boxInfo == null) {
            Observable<AddShapesBackgroundResultBean> just2 = Observable.just(objectRef.element);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable<AddShapesBackgroundResultBean> map = addShapes$default(rxBaseAppAction, boxInfo, shapeList, false, 4, null).doOnNext(new C9064b(objectRef)).flatMap(new C9065c(rxBaseAppAction, new ForceRenderNoteDirtyArgs(boxInfo.copy(), ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(shapeList, boxInfo), false, true, false, false, 48, null))).map(new C9066d(objectRef));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<Map<Shape, BoxInfo>> addShapes(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull AddShapesBackgroundResultBean srcShapeAddResult, @NotNull Map<Shape, BoxInfo> shapeMap) {
        int mapCapacity;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(srcShapeAddResult, "srcShapeAddResult");
        Intrinsics.checkNotNullParameter(shapeMap, "shapeMap");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (CollectionKt.isNullOrEmpty(shapeMap)) {
            Observable<Map<Shape, BoxInfo>> just = Observable.just(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Set<Map.Entry<Shape, BoxInfo>> entrySet = shapeMap.entrySet();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj : entrySet) {
            BoxInfo boxInfo = (BoxInfo) ((Map.Entry) obj).getValue();
            Object obj2 = linkedHashMap2.get(boxInfo);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap2.put(boxInfo, obj2);
            }
            ((List) obj2).add(obj);
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(linkedHashMap2.size());
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            Object key = entry.getKey();
            Iterable iterable = (Iterable) entry.getValue();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                arrayList.add((Shape) ((Map.Entry) it2.next()).getKey());
            }
            linkedHashMap3.put(key, arrayList);
        }
        Observable concatMap = Observable.fromIterable(linkedHashMap3.entrySet()).concatMap(new C9067e(srcShapeAddResult, rxBaseAppAction, linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<Map<Shape, BoxInfo>> map = RxjavaKt.takeLastOne(concatMap).map(new C9068f(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public static /* synthetic */ Observable addShapes$default(RxBaseAppAction rxBaseAppAction, BoxInfo boxInfo, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return addShapes(rxBaseAppAction, boxInfo, list, z);
    }

    /* renamed from: b */
    public static final Observable<AddShapesBackgroundResultBean> m38276b(RxBaseAppAction<?> rxBaseAppAction, AddShapesBackgroundArgs addShapesBackgroundArgs, AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
        Object firstOrNull;
        TouchPoint currentPoint;
        if (!addShapesBackgroundArgs.getIsSingleTap()) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(addShapesBackgroundResultBean);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) addShapesBackgroundArgs.getShapes());
        Shape shape = (Shape) firstOrNull;
        if (shape == null || (currentPoint = shape.getCurrentPoint()) == null) {
            Observable<AddShapesBackgroundResultBean> just2 = Observable.just(addShapesBackgroundResultBean);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable map = new SingleTapExcerptShapesAction(rxBaseAppAction.getEditorBundle(), new SingleTapExcerptShapeArgs(addShapesBackgroundArgs.getPageUniqueId(), addShapesBackgroundArgs.getVirtualPageBoxInfo(), currentPoint, addShapesBackgroundArgs.getHitTestRadius())).build().map(new C9072j(addShapesBackgroundResultBean, addShapesBackgroundArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: c */
    public static final Observable<AddShapesBackgroundResultBean> m38277c(RxBaseAppAction<?> rxBaseAppAction, AddShapesBackgroundArgs addShapesBackgroundArgs, AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
        int collectionSizeOrDefault;
        Object firstOrNull;
        TouchPoint currentPoint;
        if (!addShapesBackgroundArgs.getIsSingleTap()) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(addShapesBackgroundResultBean);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<Shape> shapes = addShapesBackgroundArgs.getShapes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(shapes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = shapes.iterator();
        while (it2.hasNext()) {
            arrayList.add(ShapeTypes.INSTANCE.getTargetShape((Shape) it2.next()));
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
        Shape shape = (Shape) firstOrNull;
        if (shape == null || (currentPoint = shape.getCurrentPoint()) == null) {
            Observable<AddShapesBackgroundResultBean> just2 = Observable.just(addShapesBackgroundResultBean);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable<AddShapesBackgroundResultBean> map = RxBaseAppActionKt.submitRequestToNote(rxBaseAppAction, new SingleTapTapeShapesRequest(EditorBundleKt.noteBundle(rxBaseAppAction.getEditorBundle()), new SingleTapTapeShapeArgs(addShapesBackgroundArgs.getPageUniqueId(), currentPoint, addShapesBackgroundArgs.getHitTestRadius()))).map(new C9073k(addShapesBackgroundResultBean, addShapesBackgroundArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public static final boolean isSingleTap(@NotNull List<? extends Shape> list, @NotNull BoxInfo virtualPageBoxInfo) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        if (list.size() != 1) {
            return false;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
        Shape shape = (Shape) firstOrNull;
        if (shape == null) {
            return false;
        }
        return isSingleTap$default(shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String(), virtualPageBoxInfo, 0, 0L, 6, null);
    }

    public static /* synthetic */ boolean isSingleTap$default(TouchPointList touchPointList, BoxInfo boxInfo, int i, long j, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = RxGestureConstant.INSTANCE.getSINGLE_TAP_DISTANCE_THRESHOLD();
        }
        if ((i2 & 4) != 0) {
            j = 300;
        }
        return isSingleTap(touchPointList, boxInfo, i, j);
    }

    public static final boolean isSingleTapEvent(@Nullable TouchData touchData, @Nullable TouchData touchData2, @NotNull Number distanceThreshold, long j) {
        TouchPoint touchPoint;
        TouchPoint touchPoint2;
        Intrinsics.checkNotNullParameter(distanceThreshold, "distanceThreshold");
        if (touchData == null || (touchPoint = touchData.getTouchPoint()) == null || touchData2 == null || (touchPoint2 = touchData2.getTouchPoint()) == null) {
            return false;
        }
        return MathUtils.INSTANCE.distance(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()) < ((double) distanceThreshold.floatValue()) && touchPoint2.getTimestamp() - touchPoint.getTimestamp() < j;
    }

    public static /* synthetic */ boolean isSingleTapEvent$default(TouchData touchData, TouchData touchData2, Number number, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            number = Integer.valueOf(RxGestureConstant.INSTANCE.getSINGLE_TAP_DISTANCE_THRESHOLD());
        }
        if ((i & 8) != 0) {
            j = 300;
        }
        return isSingleTapEvent(touchData, touchData2, number, j);
    }

    public static /* synthetic */ Observable addCrossPageShapes$default(RxBaseAppAction rxBaseAppAction, TransformShapeContext transformShapeContext, CompositeCommand compositeCommand, int i, Object obj) {
        if ((i & 2) != 0) {
            compositeCommand = null;
        }
        return addCrossPageShapes(rxBaseAppAction, transformShapeContext, compositeCommand);
    }

    @NotNull
    public static final Observable<Map<Shape, BoxInfo>> addCrossPageShapes(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull TransformShapeContext transformShapeContext, @Nullable CompositeCommand compositeCommand) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(transformShapeContext, "transformShapeContext");
        Observable flatMap = ComputeBoxListActionsKt.findBoxListObservable(rxBaseAppAction, transformShapeContext).flatMap(new C9063a(rxBaseAppAction, transformShapeContext, compositeCommand));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public static final boolean isSingleTap(@NotNull TouchPointList touchPointList, @NotNull BoxInfo virtualPageBoxInfo, int i, long j) {
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(touchPointList, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        List<TouchPoint> points = touchPointList.getPoints();
        if (touchPointList.isEmpty() || points.size() > 15) {
            return false;
        }
        Matrix noteRenderMatrix = BoxInfoUtils.INSTANCE.noteRenderMatrix(virtualPageBoxInfo);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
        TouchPoint copy = ((TouchPoint) first).copy();
        copy.applyMatrix(noteRenderMatrix);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) points);
        TouchPoint copy2 = ((TouchPoint) last).copy();
        copy2.applyMatrix(noteRenderMatrix);
        if (MathUtils.INSTANCE.distance(copy.getX(), copy.getY(), copy2.getX(), copy2.getY()) > i) {
            return false;
        }
        long timestamp = copy2.getTimestamp() - copy.getTimestamp();
        return 0 <= timestamp && timestamp < j;
    }

    @NotNull
    public static final Observable<AddShapesBackgroundResultBean> addShapes(@NotNull RxBaseAppAction<?> rxBaseAppAction, @Nullable BoxInfo boxInfo, @NotNull List<? extends Shape> shapeList, boolean z) {
        BoxInfo noteInfo;
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        if (boxInfo != null && (noteInfo = boxInfo.getNoteInfo()) != null) {
            AddShapesBackgroundArgs addShapesBackgroundArgs = new AddShapesBackgroundArgs(noteInfo.getId(), boxInfo, shapeList, isSingleTap(shapeList, boxInfo));
            addShapesBackgroundArgs.setAddToCmdStack(z);
            return addShapes(rxBaseAppAction, addShapesBackgroundArgs);
        }
        Observable<AddShapesBackgroundResultBean> just = Observable.just(new AddShapesBackgroundResultBean());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public static final Observable<AddShapesBackgroundResultBean> addShapes(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull AddShapesBackgroundArgs args) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        final AddShapesBackgroundResultBean addShapesBackgroundResultBean = new AddShapesBackgroundResultBean();
        addShapesBackgroundResultBean.setVirtualPageBoxInfo(args.getVirtualPageBoxInfo());
        addShapesBackgroundResultBean.setPostShapeChangedEvent(args.getPostShapeChangedEvent());
        addShapesBackgroundResultBean.setSetZOrder(args.getSetZOrder());
        if (CollectionKt.isNullOrEmpty(args.getShapes())) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(addShapesBackgroundResultBean);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = RxjavaKt.flatMapIf(m38277c(rxBaseAppAction, args, addShapesBackgroundResultBean), new Function1<AddShapesBackgroundResultBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt$addShapes$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(AddShapesBackgroundResultBean.this.getHitTestSupportSingleTapShapeList().isEmpty());
            }
        }, m38276b(rxBaseAppAction, args, addShapesBackgroundResultBean)).flatMap(new C9069g(rxBaseAppAction, args, addShapesBackgroundResultBean));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}

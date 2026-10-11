package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.request.DeleteShapesRequest;
import com.onyx.android.sdk.note.request.excerpt.DeleteQuoteRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppShapeAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgs;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyResult;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B1\u0012\u0006\u0010-\u001a\u00020,\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u0006\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0018¢\u0006\u0004\b.\u0010/J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J6\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\tH\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u00068\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\"\u0010#\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R$\u0010+\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "w", "s", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfos", "", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "pageShapesMap", "u", "q", "p", "", "r", "i", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", "", "j", Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", C4921e.f26537n, "invalidate", "l", "getRender", Constants.BOOLEAN_VALUE_SIG, "setRender", "(Z)V", "render", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "m", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "getCommand", "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "setCommand", "(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V", "command", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n1855#2,2:129\n766#2:131\n857#2,2:132\n766#2:134\n857#2,2:135\n*S KotlinDebug\n*F\n+ 1 DeleteShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction\n*L\n53#1:125\n53#1:126,3\n69#1:129,2\n98#1:131\n98#1:132,2\n110#1:134\n110#1:135,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DeleteShapesAction extends RxBaseAppShapeAction<DeleteShapesAction> {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: j, reason: from kotlin metadata */
    public final boolean addToCmdStack;

    /* renamed from: k, reason: from kotlin metadata */
    public final boolean invalidate;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean render;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public UndoRedoCommand command;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10046a<T, R> implements Function {
        public C10046a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this.m40154q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10047b<T, R> implements Function {
        public C10047b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this.m40153p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C10048c<T, R> implements Function {
        public C10048c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this.m40158w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C10049d<T, R> implements Function {
        public C10049d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this.m40156s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$e */
    /* loaded from: classes8.dex */
    public static final class C10050e<T, R> implements Function {
        public C10050e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteShapesAction apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$f */
    /* loaded from: classes8.dex */
    public static final class C10051f<T, R> implements Function {
        public C10051f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteShapesAction apply(@NotNull DeleteQuoteRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$g */
    /* loaded from: classes8.dex */
    public static final class C10052g<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ DeleteShapesRequest f50842f;

        public C10052g(DeleteShapesRequest deleteShapesRequest) {
            this.f50842f = deleteShapesRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteShapesAction.this.setCommand(this.f50842f.getCommand());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$h */
    /* loaded from: classes8.dex */
    public static final class C10053h<T, R> implements Function {
        public C10053h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteShapesAction apply(@NotNull DeleteShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$i */
    /* loaded from: classes8.dex */
    public static final class C10054i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map<String, List<Shape>> f50845f;

        public C10054i(Map<String, List<Shape>> map) {
            this.f50845f = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this.m40157u(it2, this.f50845f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$j */
    /* loaded from: classes8.dex */
    public static final class C10055j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Map<String, List<Shape>> f50846e;

        /* renamed from: f */
        public final /* synthetic */ DeleteShapesAction f50847f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$j$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ DeleteShapesAction f50848e;

            public a(DeleteShapesAction deleteShapesAction) {
                this.f50848e = deleteShapesAction;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final DeleteShapesAction apply(@NotNull ForceRenderNoteDirtyResult it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f50848e;
            }
        }

        public C10055j(Map<String, List<Shape>> map, DeleteShapesAction deleteShapesAction) {
            this.f50846e = map;
            this.f50847f = deleteShapesAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull BoxInfo boxInfo) {
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            Map<String, List<Shape>> map = this.f50846e;
            BoxInfo noteInfo = boxInfo.getNoteInfo();
            String id = noteInfo != null ? noteInfo.getId() : null;
            if (id == null) {
                id = "";
            }
            List<Shape> list = map.get(id);
            if (list == null) {
                return Observable.just(this.f50847f);
            }
            ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs = new ForceRenderNoteDirtyArgs(boxInfo.copy(), ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(list, boxInfo), false, false, false, false, 60, null);
            forceRenderNoteDirtyArgs.setInvalidate(this.f50847f.invalidate);
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(this.f50847f, forceRenderNoteDirtyArgs).map(new a(this.f50847f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$k */
    /* loaded from: classes8.dex */
    public static final class C10056k<T, R> implements Function {
        public C10056k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteShapesAction apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$l */
    /* loaded from: classes8.dex */
    public static final class C10057l<T, R> implements Function {
        public C10057l() {
        }

        @NotNull
        /* renamed from: a */
        public final DeleteShapesAction m40171a(boolean z) {
            return DeleteShapesAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40171a(((Boolean) obj).booleanValue());
        }
    }

    public /* synthetic */ DeleteShapesAction(EditorBundle editorBundle, List list, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, list, (i & 4) != 0 ? false : z, (i & 8) != 0 ? true : z2);
    }

    /* renamed from: o */
    public static final void m40150o(DeleteShapesAction this$0, DeleteShapesAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m40155r();
    }

    /* renamed from: t */
    public static final List m40151t(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: v */
    public static final void m40152v(DeleteShapesAction this$0, DeleteShapesAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.renderManager(this$0.getEditorBundle()).invalidate();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteShapesAction> create() {
        Observable flatMap = Observable.just(this).flatMap(new C10046a()).flatMap(new C10047b()).flatMap(new C10048c()).flatMap(new C10049d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<DeleteShapesAction> map = RxjavaKt.doOnNextIf(flatMap, new Function1<DeleteShapesAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$create$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DeleteShapesAction it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = DeleteShapesAction.this.addToCmdStack;
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.k3f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DeleteShapesAction.m40150o(DeleteShapesAction.this, (DeleteShapesAction) obj);
            }
        }).map(new C10050e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final UndoRedoCommand getCommand() {
        return this.command;
    }

    public final boolean getRender() {
        return this.render;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    /* renamed from: p */
    public final Observable<DeleteShapesAction> m40153p() {
        List<Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeTypes.INSTANCE.isQuoteShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            Observable<DeleteShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<DeleteShapesAction> map = RxBaseAppActionKt.submitRequestToNote(this, new DeleteQuoteRequest(EditorBundleKt.noteBundle(getEditorBundle()), arrayList)).map(new C10051f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<DeleteShapesAction> m40154q() {
        List<Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!ShapeTypes.INSTANCE.isQuoteShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            Observable<DeleteShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        DeleteShapesRequest deleteShapesRequest = new DeleteShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), arrayList, this.addToCmdStack);
        deleteShapesRequest.setPostShapeChangedEvent(getPostShapeChangedEvent());
        Observable<DeleteShapesAction> map = RxBaseAppActionKt.submitRequestToNote(this, deleteShapesRequest).doOnNext(new C10052g(deleteShapesRequest)).map(new C10053h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final void m40155r() {
        UndoRedoCommand undoRedoCommand = this.command;
        if (undoRedoCommand == null) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new CommandEvent(undoRedoCommand));
    }

    /* renamed from: s */
    public final Observable<DeleteShapesAction> m40156s() {
        if (!this.render) {
            Observable<DeleteShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (this.shapes.isEmpty()) {
            Observable<DeleteShapesAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Shape shape : this.shapes) {
            String pageUniqueId = shape.getPageUniqueId();
            final DeleteShapesAction$renderAndDisplay$1$1 deleteShapesAction$renderAndDisplay$1$1 = new Function1<String, List<Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$renderAndDisplay$1$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<Shape> invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            ((List) linkedHashMap.computeIfAbsent(pageUniqueId, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.j3f
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m40151t;
                    m40151t = DeleteShapesAction.m40151t(Function1.this, obj);
                    return m40151t;
                }
            })).add(shape);
        }
        Observable flatMap = ComputeBoxListActionsKt.findVisibleBoxInfoList((RxBaseAppAction<?>) this, (List<? extends Shape>) this.shapes).flatMap(new C10054i(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void setCommand(@Nullable UndoRedoCommand undoRedoCommand) {
        this.command = undoRedoCommand;
    }

    public final void setRender(boolean z) {
        this.render = z;
    }

    /* renamed from: u */
    public final Observable<DeleteShapesAction> m40157u(List<BoxInfo> boxInfos, Map<String, List<Shape>> pageShapesMap) {
        if (boxInfos.isEmpty()) {
            Observable<DeleteShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(boxInfos).concatMap(new C10055j(pageShapesMap, this));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<DeleteShapesAction> map = RxjavaKt.doOnNextIf(RxjavaKt.takeLastOne(concatMap), new Function1<DeleteShapesAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction$renderBoxList$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DeleteShapesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(DeleteShapesAction.this.invalidate);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.l3f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DeleteShapesAction.m40152v(DeleteShapesAction.this, (DeleteShapesAction) obj);
            }
        }).map(new C10056k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final Observable<DeleteShapesAction> m40158w() {
        int collectionSizeOrDefault;
        Set set;
        List<Shape> list = this.shapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getPageUniqueId());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        if (CollectionKt.isNullOrEmpty(set)) {
            Observable<DeleteShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = CommonEditorActionsKt.updateVirtualPages(this, set).map(new C10057l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeleteShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes, boolean z, boolean z2) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.addToCmdStack = z;
        this.invalidate = z2;
        this.render = true;
    }
}

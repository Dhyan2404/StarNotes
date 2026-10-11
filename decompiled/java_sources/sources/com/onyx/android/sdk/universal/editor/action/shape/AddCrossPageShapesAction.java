package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppShapeAction;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001B\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u001f\u0010 J\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0005H\u0014J(\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, Constant.MAP_TAG, "", "addToCmdStack", "m", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "i", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "transformShapeContext", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "j", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "compositeCommand", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddCrossPageShapesAction extends RxBaseAppShapeAction<Map<Shape, ? extends BoxInfo>> {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TransformShapeContext transformShapeContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public CompositeCommand compositeCommand;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final ChangedShapeBean changedShapeBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9976a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UpdateCrossPageShapesAction f50719e;

        public C9976a(UpdateCrossPageShapesAction updateCrossPageShapesAction) {
            this.f50719e = updateCrossPageShapesAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateCrossPageShapesAction apply(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50719e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCrossPageShapesAction(@NotNull EditorBundle editorBundle, @NotNull TransformShapeContext transformShapeContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(transformShapeContext, "transformShapeContext");
        this.transformShapeContext = transformShapeContext;
        this.compositeCommand = new CompositeCommand(null, 1, null);
        this.changedShapeBean = new ChangedShapeBean();
    }

    /* renamed from: n */
    public static final void m40044n(AddCrossPageShapesAction this$0, Map it2) {
        List<? extends Shape> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        CompositeCommand compositeCommand = this$0.compositeCommand;
        list = CollectionsKt___CollectionsKt.toList(it2.keySet());
        compositeCommand.addShapesUndoRedoCommand(list);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Map<Shape, BoxInfo>> create() {
        final UpdateCrossPageShapesAction updateCrossPageShapesAction = new UpdateCrossPageShapesAction(getEditorBundle(), this.transformShapeContext);
        updateCrossPageShapesAction.setCheckDuplicatedShapes(true);
        Observable<Map<Shape, BoxInfo>> flatMap = updateCrossPageShapesAction.build().map(new C9976a(updateCrossPageShapesAction)).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2

            /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2$a */
            /* loaded from: classes8.dex */
            public static final class C9981a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ Map<Shape, BoxInfo> f50726e;

                public C9981a(Map<Shape, BoxInfo> map) {
                    this.f50726e = map;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Map<Shape, BoxInfo> apply(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return this.f50726e;
                }
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Map<Shape, BoxInfo>> apply(@NotNull UpdateCrossPageShapesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AddCrossPageShapesAction.this.getChangedShapeBean().merge(updateCrossPageShapesAction.getChangedShapeBean());
                AddCrossPageShapesAction.this.getChangedShapeBean().addShapeList(updateCrossPageShapesAction.getCrossPageShapeMap().keySet());
                final Map<Shape, BoxInfo> crossPageShapeMap = updateCrossPageShapesAction.getCrossPageShapeMap();
                final ChangedShapeBean changedShapeBean = updateCrossPageShapesAction.getChangedShapeBean();
                Observable just = Observable.just(AddCrossPageShapesAction.this);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                Function1<AddCrossPageShapesAction, Boolean> function1 = new Function1<AddCrossPageShapesAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull AddCrossPageShapesAction it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(!crossPageShapeMap.isEmpty());
                    }
                };
                final AddCrossPageShapesAction addCrossPageShapesAction = AddCrossPageShapesAction.this;
                final UpdateCrossPageShapesAction updateCrossPageShapesAction2 = updateCrossPageShapesAction;
                Observable<Object> flatMapIf = RxjavaKt.flatMapIf(just, function1, new Function1<AddCrossPageShapesAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2.2

                    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2$2$a */
                    /* loaded from: classes8.dex */
                    public static final class a<T, R> implements Function {

                        /* renamed from: e */
                        public final /* synthetic */ AddCrossPageShapesAction f50722e;

                        /* renamed from: f */
                        public final /* synthetic */ Map<Shape, BoxInfo> f50723f;

                        public a(AddCrossPageShapesAction addCrossPageShapesAction, Map<Shape, BoxInfo> map) {
                            this.f50722e = addCrossPageShapesAction;
                            this.f50723f = map;
                        }

                        @Override // io.reactivex.rxjava3.functions.Function
                        @NotNull
                        /* renamed from: a, reason: merged with bridge method [inline-methods] */
                        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
                            Observable m40045m;
                            Intrinsics.checkNotNullParameter(it2, "it");
                            m40045m = this.f50722e.m40045m(this.f50723f, true);
                            return m40045m;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Observable<? extends Object> invoke(@NotNull AddCrossPageShapesAction it3) {
                        Observable m40045m;
                        Intrinsics.checkNotNullParameter(it3, "it");
                        m40045m = AddCrossPageShapesAction.this.m40045m(updateCrossPageShapesAction2.getTargetPageShapeMap(), false);
                        Observable<? extends Object> flatMap2 = m40045m.flatMap(new a(AddCrossPageShapesAction.this, crossPageShapeMap));
                        Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
                        return flatMap2;
                    }
                });
                Function1<Object, Boolean> function12 = new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2.3
                    {
                        super(1);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Object it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(ChangedShapeBean.this.hasRemovedShapeList());
                    }
                };
                final AddCrossPageShapesAction addCrossPageShapesAction2 = AddCrossPageShapesAction.this;
                return RxjavaKt.flatMapIf(flatMapIf, function12, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2.4

                    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$create$2$4$a */
                    /* loaded from: classes8.dex */
                    public static final class a<T> implements Consumer {

                        /* renamed from: e */
                        public final /* synthetic */ AddCrossPageShapesAction f50724e;

                        /* renamed from: f */
                        public final /* synthetic */ ChangedShapeBean f50725f;

                        public a(AddCrossPageShapesAction addCrossPageShapesAction, ChangedShapeBean changedShapeBean) {
                            this.f50724e = addCrossPageShapesAction;
                            this.f50725f = changedShapeBean;
                        }

                        @Override // io.reactivex.rxjava3.functions.Consumer
                        /* renamed from: a, reason: merged with bridge method [inline-methods] */
                        public final void accept(@NotNull DeleteShapesAction it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            this.f50724e.getCompositeCommand().addCommand(new UndoRedoCommand().removeShapes(this.f50725f));
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Observable<? extends Object> invoke(@NotNull Object it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        DeleteShapesAction deleteShapesAction = new DeleteShapesAction(AddCrossPageShapesAction.this.getEditorBundle(), changedShapeBean.getRemoveShapeList(), false, false, 12, null);
                        deleteShapesAction.setPostShapeChangedEvent(AddCrossPageShapesAction.this.getPostShapeChangedEvent());
                        Observable<DeleteShapesAction> doOnNext = deleteShapesAction.build().doOnNext(new a(AddCrossPageShapesAction.this, changedShapeBean));
                        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                        return doOnNext;
                    }
                }).map(new C9981a(crossPageShapeMap));
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }

    @NotNull
    public final CompositeCommand getCompositeCommand() {
        return this.compositeCommand;
    }

    /* renamed from: m */
    public final Observable<?> m40045m(Map<Shape, BoxInfo> map, final boolean addToCmdStack) {
        if (CollectionKt.isNullOrEmpty(map)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        AddShapesBackgroundResultBean addShapesBackgroundResultBean = new AddShapesBackgroundResultBean();
        addShapesBackgroundResultBean.setPostShapeChangedEvent(getPostShapeChangedEvent());
        addShapesBackgroundResultBean.setSetZOrder(this.transformShapeContext.getSetZOrder());
        return RxjavaKt.doOnNextIf(EditorShapesActionsKt.addShapes(this, addShapesBackgroundResultBean, map), new Function1<Map<Shape, ? extends BoxInfo>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddCrossPageShapesAction$addShapes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull Map<Shape, BoxInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(addToCmdStack);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Map<Shape, ? extends BoxInfo> map2) {
                return invoke2((Map<Shape, BoxInfo>) map2);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.l8
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AddCrossPageShapesAction.m40044n(AddCrossPageShapesAction.this, (Map) obj);
            }
        });
    }

    public final void setCompositeCommand(@NotNull CompositeCommand compositeCommand) {
        Intrinsics.checkNotNullParameter(compositeCommand, "<set-?>");
        this.compositeCommand = compositeCommand;
    }
}

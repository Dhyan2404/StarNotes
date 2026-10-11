package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppShapeAction;
import com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B5\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\nR\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\n¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/note/common/command/Command;", "l", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Ljava/util/List;", "getOriginShapes", "()Ljava/util/List;", "originShapes", "j", "getNewShapes", "newShapes", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", "", "removedShapes", "addedShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReplaceShapesAction extends RxBaseAppShapeAction<ReplaceShapesAction> {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> originShapes;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> newShapes;

    /* renamed from: k, reason: from kotlin metadata */
    public final boolean addToCmdStack;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> removedShapes;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> addedShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10129a<T, R> implements Function {
        public C10129a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplaceShapesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReplaceShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10130b<T, R> implements Function {
        public C10130b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GetReferenceShapeAction> apply(@NotNull ReplaceShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GetReferenceShapeAction(ReplaceShapesAction.this.getEditorBundle(), ReplaceShapesAction.this.getOriginShapes()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C10131c<T, R> implements Function {

        /* renamed from: e */
        public static final C10131c<T, R> f50982e = new C10131c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.mergeShapeList(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C10132d<T> implements Consumer {
        public C10132d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReplaceShapesAction.this.removedShapes.addAll(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$e */
    /* loaded from: classes8.dex */
    public static final class C10133e<T, R> implements Function {
        public C10133e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteShapesAction(ReplaceShapesAction.this.getEditorBundle(), it2, false, true).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$f */
    /* loaded from: classes8.dex */
    public static final class C10134f<T, R> implements Function {
        public C10134f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesAction> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new AddShapesAction(ReplaceShapesAction.this.getEditorBundle(), ReplaceShapesAction.this.getNewShapes(), false).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$g */
    /* loaded from: classes8.dex */
    public static final class C10135g<T> implements Consumer {
        public C10135g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AddShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReplaceShapesAction.this.addedShapes.addAll(it2.getAddedShapes());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$h */
    /* loaded from: classes8.dex */
    public static final class C10136h<T, R> implements Function {
        public C10136h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull AddShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReplaceShapesAction.this.m40302m();
        }
    }

    public /* synthetic */ ReplaceShapesAction(EditorBundle editorBundle, List list, List list2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, list, list2, (i & 8) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ReplaceShapesAction> create() {
        Observable observeOn = Observable.just(this).flatMap(new C10130b()).map(C10131c.f50982e).doOnNext(new C10132d()).flatMap(new C10133e()).flatMap(new C10134f()).doOnNext(new C10135g()).flatMap(new C10136h()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle()));
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable map = RxjavaKt.flatMapIf(observeOn, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$create$8
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = ReplaceShapesAction.this.addToCmdStack;
                return Boolean.valueOf(z);
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction$create$9
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m40301l;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40301l = ReplaceShapesAction.this.m40301l();
                return m40301l;
            }
        }).map(new C10129a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Shape> getNewShapes() {
        return this.newShapes;
    }

    @NotNull
    public final List<Shape> getOriginShapes() {
        return this.originShapes;
    }

    /* renamed from: l */
    public final Observable<Command> m40301l() {
        UndoRedoCommand undoRedoCommand = new UndoRedoCommand();
        undoRedoCommand.removeShapes(this.removedShapes);
        undoRedoCommand.addShapes(this.addedShapes);
        return new AddUndoRedoCommandAction(getEditorBundle(), undoRedoCommand).build();
    }

    /* renamed from: m */
    public final Observable<?> m40302m() {
        return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(this, CollectionKt.mergeList(this.originShapes, this.addedShapes), false, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ReplaceShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> originShapes, @NotNull List<? extends Shape> newShapes, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(originShapes, "originShapes");
        Intrinsics.checkNotNullParameter(newShapes, "newShapes");
        this.originShapes = originShapes;
        this.newShapes = newShapes;
        this.addToCmdStack = z;
        this.removedShapes = new ArrayList();
        this.addedShapes = new ArrayList();
    }
}

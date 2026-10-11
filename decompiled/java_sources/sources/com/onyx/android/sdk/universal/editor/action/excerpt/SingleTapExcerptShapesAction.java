package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.shape.SingleTapExcerptShapeArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.android.sdk.universal.editor.request.excerpt.SingleTapExcerptShapesRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00190\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0017¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "l", "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;", "args", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setHitTestShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "hitTestShape", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "j", "Ljava/util/List;", "excerptCollectionList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C4921e.f26537n, "noteModelList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SingleTapExcerptShapesAction extends RxBaseAppAction<SingleTapExcerptShapesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SingleTapExcerptShapeArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Shape hitTestShape;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModelList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C8867a<T, R> implements Function {
        public C8867a() {
        }

        /* renamed from: a */
        public final void m37949a(@NotNull SingleTapExcerptShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Shape hitTestShape = SingleTapExcerptShapesAction.this.getHitTestShape();
            if (hitTestShape == null) {
                return;
            }
            BoxInfo virtualPageBoxInfo = SingleTapExcerptShapesAction.this.getArgs().getVirtualPageBoxInfo();
            ShapeHandlerManager shapeHandlerManager = EditorBundleKt.shapeHandlerManager(SingleTapExcerptShapesAction.this.getEditorBundle());
            SingleTapExcerptShapesAction singleTapExcerptShapesAction = SingleTapExcerptShapesAction.this;
            shapeHandlerManager.activeShapeProvider(ShapeHandlerManager.EXCERPT_PROVIDER);
            BaseShapeHandler activeHandler = shapeHandlerManager.getActiveHandler();
            if (activeHandler != null) {
                activeHandler.startExcerptEdit(new StartExcerptEditArgs(virtualPageBoxInfo, hitTestShape, singleTapExcerptShapesAction.excerptCollectionList, singleTapExcerptShapesAction.noteModelList));
            }
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37949a((SingleTapExcerptShapesAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C8868b<T, R> implements Function {
        public C8868b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SingleTapExcerptShapesAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SingleTapExcerptShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C8869c<T, R> implements Function {
        public C8869c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SingleTapExcerptShapesAction> apply(@NotNull SingleTapExcerptShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SingleTapExcerptShapesAction.this.m37948m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C8870d<T, R> implements Function {
        public C8870d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SingleTapExcerptShapesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SingleTapExcerptShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction$e */
    /* loaded from: classes8.dex */
    public static final class C8871e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SingleTapExcerptShapesRequest f48639f;

        public C8871e(SingleTapExcerptShapesRequest singleTapExcerptShapesRequest) {
            this.f48639f = singleTapExcerptShapesRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull SingleTapExcerptShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SingleTapExcerptShapesAction.this.setHitTestShape(this.f48639f.getHitTestShape());
            SingleTapExcerptShapesAction.this.excerptCollectionList.addAll(this.f48639f.getExcerptCollectionList());
            return Boolean.valueOf(SingleTapExcerptShapesAction.this.noteModelList.addAll(this.f48639f.getNoteModelList()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction$f */
    /* loaded from: classes8.dex */
    public static final class C8872f<T, R> implements Function {
        public C8872f() {
        }

        @NotNull
        /* renamed from: a */
        public final SingleTapExcerptShapesAction m37954a(boolean z) {
            return SingleTapExcerptShapesAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37954a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleTapExcerptShapesAction(@NotNull EditorBundle editorBundle, @NotNull SingleTapExcerptShapeArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.excerptCollectionList = new ArrayList();
        this.noteModelList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SingleTapExcerptShapesAction> create() {
        if (!EditorBundleKt.shapeHandlerManager(getEditorBundle()).isExcerptHandler()) {
            Observable<SingleTapExcerptShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = Observable.just(this).flatMap(new C8869c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(flatMap, new Function1<SingleTapExcerptShapesAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.SingleTapExcerptShapesAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SingleTapExcerptShapesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SingleTapExcerptShapesAction.this.getHitTestShape() != null);
            }
        }, m37947l()).map(new C8870d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SingleTapExcerptShapeArgs getArgs() {
        return this.args;
    }

    @Nullable
    public final Shape getHitTestShape() {
        return this.hitTestShape;
    }

    /* renamed from: l */
    public final Observable<SingleTapExcerptShapesAction> m37947l() {
        Observable<SingleTapExcerptShapesAction> map = Observable.just(this).map(new C8867a()).map(new C8868b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<SingleTapExcerptShapesAction> m37948m() {
        SingleTapExcerptShapesRequest singleTapExcerptShapesRequest = new SingleTapExcerptShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.args);
        Observable<SingleTapExcerptShapesAction> map = RxBaseAppActionKt.submitRequestToNote(this, singleTapExcerptShapesRequest).map(new C8871e(singleTapExcerptShapesRequest)).map(new C8872f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setHitTestShape(@Nullable Shape shape) {
        this.hitTestShape = shape;
    }
}

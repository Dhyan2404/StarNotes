package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.LoadShapeByExcerptRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR$\u0010\u0016\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeByExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "shapeId", "", "l", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "model", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "shape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoShapeByExcerptAction extends RxBaseAppAction<GotoShapeByExcerptAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ExcerptInfoBean model;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeByExcerptAction$a */
    /* loaded from: classes8.dex */
    public static final class C8757a<T, R> implements Function {
        public C8757a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull GotoShapeByExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeByExcerptAction.this.m37776m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeByExcerptAction$b */
    /* loaded from: classes8.dex */
    public static final class C8758b<T, R> implements Function {
        public C8758b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeByExcerptAction.this.m37775l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeByExcerptAction$c */
    /* loaded from: classes8.dex */
    public static final class C8759c<T, R> implements Function {
        public C8759c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoShapeByExcerptAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeByExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeByExcerptAction$d */
    /* loaded from: classes8.dex */
    public static final class C8760d<T> implements Consumer {
        public C8760d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GotoShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoShapeByExcerptAction.this.setShape(it2.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeByExcerptAction$e */
    /* loaded from: classes8.dex */
    public static final class C8761e<T, R> implements Function {

        /* renamed from: e */
        public static final C8761e<T, R> f48468e = new C8761e<>();

        /* renamed from: a */
        public final void m37781a(@NotNull GotoShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37781a((GotoShapeAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeByExcerptAction$f */
    /* loaded from: classes8.dex */
    public static final class C8762f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LoadShapeByExcerptRequest f48469e;

        public C8762f(LoadShapeByExcerptRequest loadShapeByExcerptRequest) {
            this.f48469e = loadShapeByExcerptRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull LoadShapeByExcerptRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Shape shape = this.f48469e.getShape();
            return StringKt.safelyGetStr(shape != null ? shape.getShapeUniqueId() : null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoShapeByExcerptAction(@NotNull EditorBundle editorBundle, @NotNull ExcerptInfoBean model) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoShapeByExcerptAction> create() {
        Observable<GotoShapeByExcerptAction> map = Observable.just(this).flatMap(new C8757a()).flatMap(new C8758b()).map(new C8759c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final ExcerptInfoBean getModel() {
        return this.model;
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    /* renamed from: l */
    public final Observable<Unit> m37775l(String shapeId) {
        Observable map = new GotoShapeAction(getEditorBundle(), shapeId, false, 4, null).build().doOnNext(new C8760d()).map(C8761e.f48468e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<String> m37776m() {
        LoadShapeByExcerptRequest loadShapeByExcerptRequest = new LoadShapeByExcerptRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.model);
        Observable<String> map = RxBaseAppActionKt.submitRequestToNote(this, loadShapeByExcerptRequest).map(new C8762f(loadShapeByExcerptRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setShape(@Nullable Shape shape) {
        this.shape = shape;
    }
}

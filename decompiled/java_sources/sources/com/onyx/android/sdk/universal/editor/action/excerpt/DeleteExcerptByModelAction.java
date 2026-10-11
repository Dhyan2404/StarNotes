package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
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
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\n¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByModelAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "excerptInfoBean", "", "l", GoogleApiAvailabilityLight.f29016b, "m", "", C6999h.f39688c, "Ljava/util/List;", "excerptInfoBeanList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteExcerptByModelAction extends RxBaseAppAction<DeleteExcerptByModelAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptInfoBean> excerptInfoBeanList;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Shape hitTestShape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction$a */
    /* loaded from: classes8.dex */
    public static final class C8721a<T, R> implements Function {
        public C8721a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull ExcerptInfoBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptByModelAction.this.m37726n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction$b */
    /* loaded from: classes8.dex */
    public static final class C8722b<T, R> implements Function {
        public C8722b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptByModelAction.this.m37725m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction$c */
    /* loaded from: classes8.dex */
    public static final class C8723c<T, R> implements Function {
        public C8723c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull ExcerptInfoBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptByModelAction.this.m37724l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction$d */
    /* loaded from: classes8.dex */
    public static final class C8724d<T, R> implements Function {
        public C8724d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteExcerptByModelAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptByModelAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction$e */
    /* loaded from: classes8.dex */
    public static final class C8725e<T, R> implements Function {

        /* renamed from: e */
        public static final C8725e<T, R> f48410e = new C8725e<>();

        /* renamed from: a */
        public final void m37731a(@NotNull DeleteExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37731a((DeleteExcerptAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction$f */
    /* loaded from: classes8.dex */
    public static final class C8726f<T> implements Consumer {
        public C8726f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadShapeByExcerptRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteExcerptByModelAction.this.hitTestShape = it2.getShape();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction$g */
    /* loaded from: classes8.dex */
    public static final class C8727g<T, R> implements Function {

        /* renamed from: e */
        public static final C8727g<T, R> f48412e = new C8727g<>();

        /* renamed from: a */
        public final void m37733a(@NotNull LoadShapeByExcerptRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37733a((LoadShapeByExcerptRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteExcerptByModelAction(@NotNull EditorBundle editorBundle, @NotNull List<ExcerptInfoBean> excerptInfoBeanList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(excerptInfoBeanList, "excerptInfoBeanList");
        this.excerptInfoBeanList = excerptInfoBeanList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteExcerptByModelAction> create() {
        Observable concatMap = Observable.fromIterable(CollectionKt.copy(this.excerptInfoBeanList)).concatMap(new C8723c());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<DeleteExcerptByModelAction> map = RxjavaKt.takeLastOne(concatMap).map(new C8724d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<Unit> m37724l(ExcerptInfoBean excerptInfoBean) {
        Observable<Unit> concatMap = Observable.just(excerptInfoBean).concatMap(new C8721a()).concatMap(new C8722b());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return concatMap;
    }

    /* renamed from: m */
    public final Observable<Unit> m37725m() {
        if (this.hitTestShape == null) {
            Observable<Unit> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = getEditorBundle();
        Shape shape = this.hitTestShape;
        Intrinsics.checkNotNull(shape);
        Observable map = new DeleteExcerptAction(editorBundle, shape).build().map(C8725e.f48410e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<Unit> m37726n(ExcerptInfoBean excerptInfoBean) {
        Observable<Unit> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadShapeByExcerptRequest(EditorBundleKt.noteBundle(getEditorBundle()), excerptInfoBean)).doOnNext(new C8726f()).map(C8727g.f48412e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

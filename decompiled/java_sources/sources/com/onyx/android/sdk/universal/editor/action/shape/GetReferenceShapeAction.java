package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.GetReferenceShapesRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007H\u0014R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u00148F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\f¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "includeOriginShapes", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "mergeShapeList", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "shapeList", "Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;", "i", "Lkotlin/Lazy;", "l", "()Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;", AbstractLogger.REQUEST, "", "getNormalShapeList", "normalShapeList", "getReferenceShapeList", "referenceShapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GetReferenceShapeAction extends RxBaseAppAction<GetReferenceShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy request;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10060a<T> implements Consumer {
        public C10060a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GetReferenceShapeAction.this.m40176l().execute2();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10061b<T, R> implements Function {
        public C10061b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetReferenceShapeAction apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetReferenceShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GetReferenceShapeAction(@NotNull final EditorBundle editorBundle, @NotNull List<? extends Shape> shapeList) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<GetReferenceShapesRequest>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction$request$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetReferenceShapesRequest invoke() {
                return new GetReferenceShapesRequest(EditorBundle.this.getWorkBundle().getNoteBundle(), this.getShapeList());
            }
        });
        this.request = lazy;
    }

    public static /* synthetic */ List mergeShapeList$default(GetReferenceShapeAction getReferenceShapeAction, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return getReferenceShapeAction.mergeShapeList(z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GetReferenceShapeAction> create() {
        Observable<GetReferenceShapeAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10060a()).map(new C10061b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Shape> getNormalShapeList() {
        return m40176l().getNormalShapeList();
    }

    @NotNull
    public final List<Shape> getReferenceShapeList() {
        return m40176l().getReferenceShapeList();
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final GetReferenceShapesRequest m40176l() {
        return (GetReferenceShapesRequest) this.request.getValue();
    }

    @NotNull
    public final List<Shape> mergeShapeList(boolean includeOriginShapes) {
        List mutableList;
        List<Shape> distinct;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getNormalShapeList());
        List list = mutableList;
        CollectionKt.safeAddAll(list, getReferenceShapeList());
        if (includeOriginShapes) {
            CollectionKt.safeAddAll(list, this.shapeList);
        }
        distinct = CollectionsKt___CollectionsKt.distinct(mutableList);
        return distinct;
    }
}

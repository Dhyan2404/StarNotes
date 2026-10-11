package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.DeleteQuoteRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteQuoteAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestVirtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteQuoteAction extends RxBaseAppAction<DeleteQuoteAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public BoxInfo hitTestVirtualPage;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteQuoteAction$a */
    /* loaded from: classes8.dex */
    public static final class C8733a<T, R> implements Function {
        public C8733a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteQuoteAction> apply(@NotNull DeleteQuoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteQuoteAction.this.m37740l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteQuoteAction$b */
    /* loaded from: classes8.dex */
    public static final class C8734b<T, R> implements Function {
        public C8734b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DeleteQuoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteQuoteAction deleteQuoteAction = DeleteQuoteAction.this;
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(deleteQuoteAction, deleteQuoteAction.hitTestVirtualPage, DeleteQuoteAction.this.hitTestShape);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteQuoteAction$c */
    /* loaded from: classes8.dex */
    public static final class C8735c<T, R> implements Function {
        public C8735c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteQuoteAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteQuoteAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteQuoteAction$d */
    /* loaded from: classes8.dex */
    public static final class C8736d<T, R> implements Function {
        public C8736d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteQuoteAction apply(@NotNull DeleteQuoteRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteQuoteAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteQuoteAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo hitTestVirtualPage, @NotNull Shape hitTestShape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestVirtualPage, "hitTestVirtualPage");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        this.hitTestVirtualPage = hitTestVirtualPage;
        this.hitTestShape = hitTestShape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteQuoteAction> create() {
        Observable<DeleteQuoteAction> map = Observable.just(this).flatMap(new C8733a()).flatMap(new C8734b()).map(new C8735c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<DeleteQuoteAction> m37740l() {
        List listOf;
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.hitTestShape);
        Observable<DeleteQuoteAction> map = RxBaseAppActionKt.submitRequestToNote(this, new DeleteQuoteRequest(noteBundle, listOf)).map(new C8736d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

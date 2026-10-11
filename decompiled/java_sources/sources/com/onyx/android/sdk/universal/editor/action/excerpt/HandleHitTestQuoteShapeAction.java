package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.LoadExcerptCollectionByQuoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.note.ShowQuotePopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.ShowQuotePopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowSourceEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0000H\u0002J\b\u0010\u0006\u001a\u00020\u0000H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR$\u0010\u0016\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestVirtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "j", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "setModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V", "model", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleHitTestQuoteShapeAction extends RxBaseAppAction<HandleHitTestQuoteShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo hitTestVirtualPage;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ExcerptCollectionModel model;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestQuoteShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8769a<T, R> implements Function {
        public C8769a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HandleHitTestQuoteShapeAction> apply(@NotNull HandleHitTestQuoteShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestQuoteShapeAction.this.m37796l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestQuoteShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C8770b<T, R> implements Function {
        public C8770b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestQuoteShapeAction apply(@NotNull HandleHitTestQuoteShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestQuoteShapeAction.this.m37797m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestQuoteShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C8771c<T, R> implements Function {
        public C8771c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestQuoteShapeAction apply(@NotNull LoadExcerptCollectionByQuoteRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HandleHitTestQuoteShapeAction.this.setModel(it2.getModel());
            return HandleHitTestQuoteShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleHitTestQuoteShapeAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo hitTestVirtualPage, @NotNull Shape hitTestShape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestVirtualPage, "hitTestVirtualPage");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        this.hitTestVirtualPage = hitTestVirtualPage;
        this.hitTestShape = hitTestShape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleHitTestQuoteShapeAction> create() {
        Observable<HandleHitTestQuoteShapeAction> map = Observable.just(this).flatMap(new C8769a()).map(new C8770b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final ExcerptCollectionModel getModel() {
        return this.model;
    }

    /* renamed from: l */
    public final Observable<HandleHitTestQuoteShapeAction> m37796l() {
        Observable<HandleHitTestQuoteShapeAction> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadExcerptCollectionByQuoteRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.hitTestShape.getShapeUniqueId())).map(new C8771c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final HandleHitTestQuoteShapeAction m37797m() {
        ExcerptCollectionModel excerptCollectionModel = this.model;
        if (excerptCollectionModel == null) {
            return this;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new ShowQuotePopupEvent(new ShowQuotePopupArgs(this.hitTestVirtualPage, this.hitTestShape, excerptCollectionModel)));
        return this;
    }

    /* renamed from: n */
    public final HandleHitTestQuoteShapeAction m37798n() {
        ExcerptCollectionModel excerptCollectionModel = this.model;
        if (excerptCollectionModel == null) {
            return this;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new SplitScreenShowSourceEvent(excerptCollectionModel.getSourceDocId(), excerptCollectionModel.getSourceShapeId()));
        return this;
    }

    public final void setModel(@Nullable ExcerptCollectionModel excerptCollectionModel) {
        this.model = excerptCollectionModel;
    }
}

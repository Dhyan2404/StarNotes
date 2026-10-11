package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.LoadShapeRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B+\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000f¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageInfo", "", "i", Constants.STRING_SIG, "shapeUniqueId", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", C4921e.f26537n, "targetShape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteExcerptByShapeIdAction extends RxBaseAppAction<DeleteExcerptByShapeIdAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final String shapeUniqueId;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public final Shape shape;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Shape targetShape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByShapeIdAction$a */
    /* loaded from: classes8.dex */
    public static final class C8728a<T, R> implements Function {
        public C8728a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteExcerptByShapeIdAction> apply(@NotNull DeleteExcerptByShapeIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptByShapeIdAction.this.m37734l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByShapeIdAction$b */
    /* loaded from: classes8.dex */
    public static final class C8729b<T> implements Predicate {
        public C8729b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull DeleteExcerptByShapeIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptByShapeIdAction.this.targetShape != null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByShapeIdAction$c */
    /* loaded from: classes8.dex */
    public static final class C8730c<T, R> implements Function {
        public C8730c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteExcerptAction> apply(@NotNull DeleteExcerptByShapeIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = DeleteExcerptByShapeIdAction.this.getEditorBundle();
            Shape shape = DeleteExcerptByShapeIdAction.this.targetShape;
            Intrinsics.checkNotNull(shape);
            return new DeleteExcerptAction(editorBundle, shape).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByShapeIdAction$d */
    /* loaded from: classes8.dex */
    public static final class C8731d<T, R> implements Function {
        public C8731d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteExcerptByShapeIdAction apply(@NotNull DeleteExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptByShapeIdAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByShapeIdAction$e */
    /* loaded from: classes8.dex */
    public static final class C8732e<T, R> implements Function {
        public C8732e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteExcerptByShapeIdAction apply(@NotNull LoadShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteExcerptByShapeIdAction deleteExcerptByShapeIdAction = DeleteExcerptByShapeIdAction.this;
            Shape shape = it2.getShape();
            if (shape == null) {
                shape = DeleteExcerptByShapeIdAction.this.shape;
            }
            deleteExcerptByShapeIdAction.targetShape = shape;
            return DeleteExcerptByShapeIdAction.this;
        }
    }

    public /* synthetic */ DeleteExcerptByShapeIdAction(EditorBundle editorBundle, BoxInfo boxInfo, String str, Shape shape, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, boxInfo, str, (i & 8) != 0 ? null : shape);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteExcerptByShapeIdAction> create() {
        Observable<DeleteExcerptByShapeIdAction> map = Observable.just(this).flatMap(new C8728a()).filter(new C8729b()).flatMap(new C8730c()).map(new C8731d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<DeleteExcerptByShapeIdAction> m37734l() {
        Observable<DeleteExcerptByShapeIdAction> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.shapeUniqueId)).map(new C8732e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteExcerptByShapeIdAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo virtualPageInfo, @NotNull String shapeUniqueId, @Nullable Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualPageInfo, "virtualPageInfo");
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        this.virtualPageInfo = virtualPageInfo;
        this.shapeUniqueId = shapeUniqueId;
        this.shape = shape;
    }
}

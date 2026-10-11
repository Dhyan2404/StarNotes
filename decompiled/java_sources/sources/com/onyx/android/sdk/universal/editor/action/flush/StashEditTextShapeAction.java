package com.onyx.android.sdk.universal.editor.action.flush;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/flush/StashEditTextShapeAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getTextShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StashEditTextShapeAction extends RxBaseAction<StashShapeAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Shape textShape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.StashEditTextShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9101a<T> implements Consumer {
        public C9101a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StashEditTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StashEditTextShapeAction.this.m38333l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.StashEditTextShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9102b<T, R> implements Function {
        public C9102b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StashShapeAction> apply(@NotNull StashEditTextShapeAction it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = StashEditTextShapeAction.this.getEditorBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(StashEditTextShapeAction.this.getTextShape());
            return new StashShapeAction(editorBundle, listOf).build();
        }
    }

    public StashEditTextShapeAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo virtualBoxInfo, @NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.editorBundle = editorBundle;
        this.virtualBoxInfo = virtualBoxInfo;
        this.textShape = textShape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StashShapeAction> create() {
        Observable<StashShapeAction> flatMap = Observable.just(this).observeOn(EditorBundleKt.stashScheduler(this.editorBundle)).doOnNext(new C9101a()).flatMap(new C9102b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final Shape getTextShape() {
        return this.textShape;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: l */
    public final void m38333l() {
        if (Intrinsics.areEqual(this.virtualBoxInfo.getId(), this.textShape.getPageUniqueId())) {
            this.textShape.updateShapeRect();
            RectF visibleRect = this.virtualBoxInfo.getVisibleRect();
            RectF boundingScreenRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingScreenRectWithWidth(this.textShape, this.virtualBoxInfo);
            if (visibleRect.intersect(boundingScreenRectWithWidth)) {
                return;
            }
            this.textShape.onTranslate((visibleRect.centerX() - boundingScreenRectWithWidth.left) / this.virtualBoxInfo.getActualScale(), (visibleRect.centerY() - boundingScreenRectWithWidth.top) / this.virtualBoxInfo.getActualScale());
            Shape shape = this.textShape;
            shape.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(shape));
        }
    }
}

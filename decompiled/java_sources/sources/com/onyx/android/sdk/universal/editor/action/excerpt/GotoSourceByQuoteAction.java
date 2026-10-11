package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.LoadExcerptCollectionByQuoteRequest;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowSourceEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoSourceByQuoteAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;", OcrValues.LANG_ITALIAN, "", "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "shape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoSourceByQuoteAction extends RxBaseAppAction<GotoSourceByQuoteAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoSourceByQuoteAction$a */
    /* loaded from: classes8.dex */
    public static final class C8763a<T, R> implements Function {
        public C8763a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoSourceByQuoteAction apply(@NotNull LoadExcerptCollectionByQuoteRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoSourceByQuoteAction.this.m37783l(it2);
            return GotoSourceByQuoteAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoSourceByQuoteAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoSourceByQuoteAction> create() {
        return m37784m();
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    /* renamed from: l */
    public final void m37783l(LoadExcerptCollectionByQuoteRequest it2) {
        ExcerptCollectionModel model = it2.getModel();
        if (model == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.goto_by_quote_excerpt_collection_not_found, false, 2, (Object) null);
        } else {
            EditorBundleKt.postEvent(getEditorBundle(), new SplitScreenShowSourceEvent(model.getSourceDocId(), model.getSourceShapeId()));
        }
    }

    /* renamed from: m */
    public final Observable<GotoSourceByQuoteAction> m37784m() {
        Observable<GotoSourceByQuoteAction> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadExcerptCollectionByQuoteRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.shape.getShapeUniqueId())).map(new C8763a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }
}

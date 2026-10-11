package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.page.LocateShapeInPageRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LocateShapeInPageAction extends RxBaseAppAction<LocateShapeInPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeInPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8808a<T, R> implements Function {
        public C8808a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LocateShapeInPageAction> apply(@NotNull LocateShapeInPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateShapeInPageAction.this.m37858l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeInPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8809b<T, R> implements Function {
        public C8809b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull LocateShapeInPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(LocateShapeInPageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeInPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8810c<T, R> implements Function {
        public C8810c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocateShapeInPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateShapeInPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeInPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8811d<T, R> implements Function {
        public C8811d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocateShapeInPageAction apply(@NotNull LocateShapeInPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateShapeInPageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocateShapeInPageAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, @NotNull Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.pageId = pageId;
        this.shape = shape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LocateShapeInPageAction> create() {
        Observable<LocateShapeInPageAction> map = Observable.just(this).flatMap(new C8808a()).flatMap(new C8809b()).map(new C8810c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    /* renamed from: l */
    public final Observable<LocateShapeInPageAction> m37858l() {
        Observable<LocateShapeInPageAction> map = RxBaseAppActionKt.submitRequestToCore(this, new LocateShapeInPageRequest(getEditorBundle().getWorkBundle(), this.pageId, this.shape)).map(new C8811d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

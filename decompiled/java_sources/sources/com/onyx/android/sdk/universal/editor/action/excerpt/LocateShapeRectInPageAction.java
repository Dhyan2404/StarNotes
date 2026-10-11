package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.page.LocateShapeRectInPageRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", CouchFieldKey.KEY_TOC_PAGE_ID, "Landroid/graphics/RectF;", "i", "Landroid/graphics/RectF;", "shapeRect", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LocateShapeRectInPageAction extends RxBaseAppAction<LocateShapeRectInPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final RectF shapeRect;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeRectInPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8812a<T, R> implements Function {
        public C8812a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LocateShapeRectInPageAction> apply(@NotNull LocateShapeRectInPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateShapeRectInPageAction.this.m37863l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeRectInPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8813b<T, R> implements Function {
        public C8813b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull LocateShapeRectInPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(LocateShapeRectInPageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeRectInPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8814c<T, R> implements Function {
        public C8814c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocateShapeRectInPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateShapeRectInPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeRectInPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8815d<T, R> implements Function {
        public C8815d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocateShapeRectInPageAction apply(@NotNull LocateShapeRectInPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateShapeRectInPageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocateShapeRectInPageAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, @NotNull RectF shapeRect) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(shapeRect, "shapeRect");
        this.pageId = pageId;
        this.shapeRect = shapeRect;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LocateShapeRectInPageAction> create() {
        Observable<LocateShapeRectInPageAction> map = Observable.just(this).flatMap(new C8812a()).flatMap(new C8813b()).map(new C8814c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    /* renamed from: l */
    public final Observable<LocateShapeRectInPageAction> m37863l() {
        Observable<LocateShapeRectInPageAction> map = RxBaseAppActionKt.submitRequestToCore(this, new LocateShapeRectInPageRequest(getEditorBundle().getWorkBundle(), this.pageId, RectFKt.copy(this.shapeRect))).map(new C8815d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

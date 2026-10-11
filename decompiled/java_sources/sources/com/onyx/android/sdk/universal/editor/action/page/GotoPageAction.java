package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.page.GotoPageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/GotoPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, "I", "getPageIndex", "()I", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoPageAction extends RxBaseAppAction<GotoPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9670a<T, R> implements Function {
        public C9670a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoPageAction> apply(@NotNull GotoPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageAction.this.m39468l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9671b<T, R> implements Function {
        public C9671b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull GotoPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(GotoPageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C9672c<T, R> implements Function {
        public C9672c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.preRenderNextScreen(GotoPageAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C9673d<T, R> implements Function {
        public C9673d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageAction$e */
    /* loaded from: classes8.dex */
    public static final class C9674e<T, R> implements Function {
        public C9674e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoPageAction apply(@NotNull GotoPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageAction.this;
        }
    }

    public /* synthetic */ GotoPageAction(EditorBundle editorBundle, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i2 & 2) != 0 ? 0 : i);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoPageAction> create() {
        Observable<GotoPageAction> map = Observable.just(this).flatMap(new C9670a()).flatMap(new C9671b()).flatMap(new C9672c()).map(new C9673d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    /* renamed from: l */
    public final Observable<GotoPageAction> m39468l() {
        Observable<GotoPageAction> map = RxBaseAppActionKt.submitRequestToCore(this, new GotoPageRequest(getEditorBundle().getWorkBundle(), this.pageIndex)).map(new C9674e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoPageAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageIndex = i;
    }
}

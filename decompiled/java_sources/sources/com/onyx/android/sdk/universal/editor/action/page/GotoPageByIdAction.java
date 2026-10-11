package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.page.GotoPageByIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/GotoPageByIdAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", CouchFieldKey.KEY_TOC_PAGE_ID, "", "i", Constants.HASIDCALL_INDEX_SIG, "getDisplay", Constants.BOOLEAN_VALUE_SIG, "display", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoPageByIdAction extends RxBaseAppAction<GotoPageByIdAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean display;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageByIdAction$a */
    /* loaded from: classes8.dex */
    public static final class C9675a<T, R> implements Function {
        public C9675a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoPageByIdAction> apply(@NotNull GotoPageByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageByIdAction.this.m39474l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageByIdAction$b */
    /* loaded from: classes8.dex */
    public static final class C9676b<T, R> implements Function {
        public C9676b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoPageByIdAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageByIdAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GotoPageByIdAction$c */
    /* loaded from: classes8.dex */
    public static final class C9677c<T, R> implements Function {
        public C9677c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoPageByIdAction apply(@NotNull GotoPageByIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoPageByIdAction.this;
        }
    }

    public /* synthetic */ GotoPageByIdAction(EditorBundle editorBundle, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoPageByIdAction> create() {
        Observable flatMap = Observable.just(this).flatMap(new C9675a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(flatMap, new Function1<GotoPageByIdAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.GotoPageByIdAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull GotoPageByIdAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(GotoPageByIdAction.this.getDisplay());
            }
        }, new Function1<GotoPageByIdAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.GotoPageByIdAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull GotoPageByIdAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DisplayActionsKt.display(GotoPageByIdAction.this);
            }
        }).map(new C9676b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getDisplay() {
        return this.display;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    /* renamed from: l */
    public final Observable<GotoPageByIdAction> m39474l() {
        Observable<GotoPageByIdAction> map = RxBaseAppActionKt.submitRequestToCore(this, new GotoPageByIdRequest(getEditorBundle().getWorkBundle(), this.pageId)).map(new C9677c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoPageByIdAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
        this.display = z;
    }
}

package com.onyx.android.sdk.universal.editor.action.page;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.ScrollToPageRectRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", C6999h.f39688c, Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "Landroid/graphics/RectF;", "i", "Landroid/graphics/RectF;", "pageRect", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LocateRectInPageAction extends RxBaseAppAction<LocateRectInPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final RectF pageRect;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9701a<T, R> implements Function {
        public C9701a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(LocateRectInPageAction.this.m39521l());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9702b<T, R> implements Function {
        public C9702b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LocateRectInPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocateRectInPageAction.this;
        }
    }

    public /* synthetic */ LocateRectInPageAction(EditorBundle editorBundle, String str, RectF rectF, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, (i & 4) != 0 ? null : rectF);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LocateRectInPageAction> create() {
        Observable map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C9701a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction$create$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction$create$3

            /* renamed from: com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction$create$3$a */
            /* loaded from: classes8.dex */
            public static final class C9703a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ LocateRectInPageAction f50195e;

                public C9703a(LocateRectInPageAction locateRectInPageAction) {
                    this.f50195e = locateRectInPageAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return DisplayActionsKt.preRenderNextScreen(this.f50195e.getEditorBundle());
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable flatMap = DisplayActionsKt.display(LocateRectInPageAction.this).flatMap(new C9703a(LocateRectInPageAction.this));
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                return flatMap;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                String str;
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = LocateRectInPageAction.this.getEditorBundle();
                str = LocateRectInPageAction.this.pageId;
                return new GotoPageByIdAction(editorBundle, str, false, 4, null).build();
            }
        }).map(new C9702b());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: l */
    public final boolean m39521l() {
        RectF rectF = this.pageRect;
        if (rectF == null) {
            return false;
        }
        new ScrollToPageRectRequest(getEditorBundle().getWorkBundle(), this.pageId, rectF).execute2();
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocateRectInPageAction(@NotNull EditorBundle editorBundle, @NotNull String pageId, @Nullable RectF rectF) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
        this.pageRect = rectF;
    }
}

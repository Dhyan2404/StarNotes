package com.onyx.android.sdk.universal.editor.action.draft;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/draft/ScrollToDisplayAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6999h.f39688c, "F", "newX", "i", "newY", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;FF)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScrollToDisplayAction extends RxBaseAppAction<ScrollToDisplayAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final float newX;

    /* renamed from: i, reason: from kotlin metadata */
    public final float newY;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.ScrollToDisplayAction$a */
    /* loaded from: classes8.dex */
    public static final class C8676a<T, R> implements Function {
        public C8676a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(ScrollToDisplayAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.ScrollToDisplayAction$b */
    /* loaded from: classes8.dex */
    public static final class C8677b<T, R> implements Function {
        public C8677b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScrollToDisplayAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScrollToDisplayAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollToDisplayAction(@NotNull EditorBundle editorBundle, float f, float f2) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.newX = f;
        this.newY = f2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ScrollToDisplayAction> create() {
        EditorBundleKt.stopScroll(getEditorBundle());
        Observable<ScrollToDisplayAction> map = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.draft.ScrollToDisplayAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                float f;
                float f2;
                Intrinsics.checkNotNullParameter(it2, "it");
                BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(it2);
                f = ScrollToDisplayAction.this.newX;
                f2 = ScrollToDisplayAction.this.newY;
                obtainBoxManager.scrollTo(f, f2);
                WorkBundleKt.postVirtualDocViewInfo$default(it2, null, 1, null);
            }
        }).flatMap(new C8676a()).map(new C8677b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

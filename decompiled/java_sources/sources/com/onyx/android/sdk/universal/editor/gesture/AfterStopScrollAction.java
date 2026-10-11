package com.onyx.android.sdk.universal.editor.gesture;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AfterStopScrollAction extends RxBaseAppAction<AfterStopScrollAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction$a */
    /* loaded from: classes8.dex */
    public static final class C10373a<T, R> implements Function {
        public C10373a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VirtualDocViewInfo apply(@NotNull AfterStopScrollAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WorkBundleKt.collectVirtualDocViewInfo(AfterStopScrollAction.this.getEditorBundle().getWorkBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction$b */
    /* loaded from: classes8.dex */
    public static final class C10374b<T> implements Consumer {
        public C10374b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateVirtualDocViewInfo(AfterStopScrollAction.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction$c */
    /* loaded from: classes8.dex */
    public static final class C10375c<T> implements Consumer {
        public C10375c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(AfterStopScrollAction.this.getEditorBundle(), new VirtualDocViewInfoEvent(it2, false, 2, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction$d */
    /* loaded from: classes8.dex */
    public static final class C10376d<T, R> implements Function {
        public C10376d() {
        }

        /* renamed from: a */
        public final void m40886a(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(AfterStopScrollAction.this.getEditorBundle()).displayBoxListAfterStopScroll(AfterStopScrollAction.this.getEditorBundle(), it2.getVisibleBoxInfoList());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40886a((VirtualDocViewInfo) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction$e */
    /* loaded from: classes8.dex */
    public static final class C10377e<T, R> implements Function {
        public C10377e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.preRenderNextScreen(AfterStopScrollAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction$f */
    /* loaded from: classes8.dex */
    public static final class C10378f<T, R> implements Function {
        public C10378f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AfterStopScrollAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AfterStopScrollAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AfterStopScrollAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AfterStopScrollAction> create() {
        Observable<AfterStopScrollAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10373a()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10374b()).doOnNext(new C10375c()).map(new C10376d()).flatMap(new C10377e()).map(new C10378f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

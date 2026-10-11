package com.onyx.android.sdk.universal.editor.gesture;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.app.FastUpdateContentViewSizeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.CheckViewSizeChangedRequest;
import com.onyx.android.sdk.universal.editor.request.UpdateViewSizeRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u000fH\u0002R'\u0010\u0018\u001a\u0015\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\t0\t0\u0013¢\u0006\u0002\b\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", "", "onSubscribe", "dispose", "Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;", NotificationCompat.CATEGORY_EVENT, "onFastUpdateContentViewSizeEvent", "m", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;", "l", "checkViewSizeChangedRequest", GoogleApiAvailabilityLight.f29016b, "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", C6999h.f39688c, "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "contentViewSizeSubject", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FastUpdateContentViewSizeAction extends RxBaseAppAction<FastUpdateContentViewSizeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BehaviorSubject<FastUpdateContentViewSizeEvent> contentViewSizeSubject;

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10379a<T> implements Predicate {
        public C10379a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull FastUpdateContentViewSizeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.isDocumentOpen(FastUpdateContentViewSizeAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10380b<T, R> implements Function {
        public C10380b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Size apply(@NotNull FastUpdateContentViewSizeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.viewSize(FastUpdateContentViewSizeAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10381c<T, R> implements Function {
        public C10381c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckViewSizeChangedRequest apply(@NotNull Size it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FastUpdateContentViewSizeAction.this.m40889l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10382d<T> implements Predicate {

        /* renamed from: e */
        public static final C10382d<T> f52117e = new C10382d<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CheckViewSizeChangedRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getNeedUpdateViewSize();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10383e<T, R> implements Function {
        public C10383e() {
        }

        /* renamed from: a */
        public final void m40896a(@NotNull CheckViewSizeChangedRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FastUpdateContentViewSizeAction.this.m40891n(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40896a((CheckViewSizeChangedRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$f */
    /* loaded from: classes8.dex */
    public static final class C10384f<T, R> implements Function {
        public C10384f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<BoxInfo> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WorkBundleKt.visibleBoxList(FastUpdateContentViewSizeAction.this.getEditorBundle().getWorkBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$g */
    /* loaded from: classes8.dex */
    public static final class C10385g<T> implements Consumer {
        public C10385g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(FastUpdateContentViewSizeAction.this.getEditorBundle()).displayScrollingBoxList(FastUpdateContentViewSizeAction.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$h */
    /* loaded from: classes8.dex */
    public static final class C10386h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ FastUpdateContentViewSizeEvent f52121e;

        public C10386h(FastUpdateContentViewSizeEvent fastUpdateContentViewSizeEvent) {
            this.f52121e = fastUpdateContentViewSizeEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FastUpdateContentViewSizeEvent apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52121e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$i */
    /* loaded from: classes8.dex */
    public static final class C10387i<T, R> implements Function {
        public C10387i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FastUpdateContentViewSizeAction apply(FastUpdateContentViewSizeEvent fastUpdateContentViewSizeEvent) {
            return FastUpdateContentViewSizeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FastUpdateContentViewSizeAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        BehaviorSubject<FastUpdateContentViewSizeEvent> create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.contentViewSizeSubject = create;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FastUpdateContentViewSizeAction> create() {
        Observable<FastUpdateContentViewSizeAction> map = RxjavaKt.concatMapIfLast(this.contentViewSizeSubject, new Function1<FastUpdateContentViewSizeEvent, Observable<FastUpdateContentViewSizeEvent>>() { // from class: com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<FastUpdateContentViewSizeEvent> invoke(FastUpdateContentViewSizeEvent fastUpdateContentViewSizeEvent) {
                Observable<FastUpdateContentViewSizeEvent> m40890m;
                FastUpdateContentViewSizeAction fastUpdateContentViewSizeAction = FastUpdateContentViewSizeAction.this;
                Intrinsics.checkNotNull(fastUpdateContentViewSizeEvent);
                m40890m = fastUpdateContentViewSizeAction.m40890m(fastUpdateContentViewSizeEvent);
                return m40890m;
            }
        }).map(new C10387i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        EditorBundleKt.unregister(getEditorBundle(), this);
    }

    /* renamed from: l */
    public final CheckViewSizeChangedRequest m40889l(Size viewSize) {
        CheckViewSizeChangedRequest checkViewSizeChangedRequest = new CheckViewSizeChangedRequest(getEditorBundle().getWorkBundle(), viewSize);
        checkViewSizeChangedRequest.execute2();
        return checkViewSizeChangedRequest;
    }

    /* renamed from: m */
    public final Observable<FastUpdateContentViewSizeEvent> m40890m(FastUpdateContentViewSizeEvent event) {
        Observable map = Observable.just(this).filter(new C10379a()).map(new C10380b()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10381c()).filter(C10382d.f52117e).map(new C10383e()).map(new C10384f()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10385g()).map(new C10386h(event));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, event);
    }

    /* renamed from: n */
    public final void m40891n(CheckViewSizeChangedRequest checkViewSizeChangedRequest) {
        Size newSize = checkViewSizeChangedRequest.getNewSize();
        UpdateViewSizeRequest updateViewSizeRequest = new UpdateViewSizeRequest(getEditorBundle());
        updateViewSizeRequest.setSize(Size.copy$default(newSize, 0, 0, 3, null));
        updateViewSizeRequest.setCalculateBoxManager(false);
        updateViewSizeRequest.setLockScaleByUser(!getEditorBundle().getUiBundle().getHandlerManager().getIsEnabledScale());
        updateViewSizeRequest.execute2();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFastUpdateContentViewSizeEvent(@NotNull FastUpdateContentViewSizeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.contentViewSizeSubject.onNext(event);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    public void onSubscribe(@NotNull Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        super.onSubscribe(disposable);
        EditorBundleKt.register(getEditorBundle(), this);
    }
}

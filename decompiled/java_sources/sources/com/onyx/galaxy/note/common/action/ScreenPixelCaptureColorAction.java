package com.onyx.galaxy.note.common.action;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ScreenCapture;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.events.note.ScreenBitmapCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenBitmapEvent;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.editor.service.ScreenCaptureService;
import com.onyx.galaxy.note.p048ui.pixelcapture.ScreenPixelCaptureCallback;
import com.onyx.galaxy.note.p048ui.pixelcapture.ScreenPixelView;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b4\u00105J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\tH\u0007J\b\u0010\u000b\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u0007H\u0002J\u0018\u0010\u0011\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0003H\u0002J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0014\u0010\u001a\u001a\u00020\u00072\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0002R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR'\u0010$\u001a\u0015\u0012\f\u0012\n  *\u0004\u0018\u00010\u00140\u00140\u001f¢\u0006\u0002\b!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R'\u0010&\u001a\u0015\u0012\f\u0012\n  *\u0004\u0018\u00010\u00020\u00020\u001f¢\u0006\u0002\b!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u001c\u0010.\u001a\b\u0012\u0002\b\u0003\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001e\u00103\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapEvent;", NotificationCompat.CATEGORY_EVENT, "", "onScreenBitmapCaptured", "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;", "onScreenBitmapCancelEvent", "r", "u", "s", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroid/content/Intent;", Name.REFER, C4921e.f26528e, "", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/Bitmap;", "t", "bitmap", "q", "Lio/reactivex/rxjava3/core/Observer;", EventHandlerManager.OBSERVER, "p", "Landroid/content/Context;", "e", "Landroid/content/Context;", "componentActivity", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", C6997f.f39671c, "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "bitmapPublisher", C6998g.f39679a, "colorPublisher", "Lorg/greenrobot/eventbus/EventBus;", C6999h.f39688c, "Lorg/greenrobot/eventbus/EventBus;", "eventBus", "Lcom/hjq/window/EasyWindow;", "i", "Lcom/hjq/window/EasyWindow;", "currentEasyWindow", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/os/Bundle;", "j", "Landroidx/activity/result/ActivityResultLauncher;", "resultLauncher", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "PixelCaptureWindow", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ScreenPixelCaptureColorAction extends RxBaseAction<Integer> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context componentActivity;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<Bitmap> bitmapPublisher;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<Integer> colorPublisher;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EventBus eventBus;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public EasyWindow<?> currentEasyWindow;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ActivityResultLauncher<Bundle> resultLauncher;

    /* loaded from: classes9.dex */
    public final class PixelCaptureWindow extends EasyWindow<PixelCaptureWindow> {

        /* renamed from: s */
        public final /* synthetic */ ScreenPixelCaptureColorAction f55951s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PixelCaptureWindow(@NotNull final ScreenPixelCaptureColorAction screenPixelCaptureColorAction, @NotNull Application application, ScreenPixelView screenPixelView) {
            super(application);
            Intrinsics.checkNotNullParameter(application, "application");
            Intrinsics.checkNotNullParameter(screenPixelView, "screenPixelView");
            this.f55951s = screenPixelCaptureColorAction;
            setOutsideTouchable(false);
            setOnWindowLifecycle(new EasyWindow.OnWindowLifecycle() { // from class: com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction.PixelCaptureWindow.1
                @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
                public void onWindowCancel(@Nullable EasyWindow<?> easyWindow) {
                    ScreenPixelCaptureColorAction.this.currentEasyWindow = null;
                    GlobalBundle.INSTANCE.unregister(this);
                }

                @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
                public void onWindowShow(@Nullable EasyWindow<?> easyWindow) {
                    ScreenPixelCaptureColorAction.this.currentEasyWindow = easyWindow;
                    GlobalBundle.INSTANCE.register(this);
                }
            });
            setContentView(screenPixelView);
            m44952j();
        }

        /* renamed from: j */
        public final void m44952j() {
            WindowManager.LayoutParams windowParams = getWindowParams();
            Intrinsics.checkNotNullExpressionValue(windowParams, "getWindowParams(...)");
            ViewKt.matchScreen(windowParams);
            View safeContentView = EasyWindowKt.getSafeContentView(this);
            if (safeContentView != null) {
                ViewKt.matchParent(safeContentView);
            }
            setWindowParams(getWindowParams());
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onOrientationChanged(@NotNull OrientationChangedEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            m44952j();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction$a */
    /* loaded from: classes9.dex */
    public static final class C11598a<T> implements Consumer {
        public C11598a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScreenPixelCaptureColorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScreenPixelCaptureColorAction.this.m44948r();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction$b */
    /* loaded from: classes9.dex */
    public static final class C11599b<T> implements Consumer {
        public C11599b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScreenPixelCaptureColorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ActivityResultLauncher activityResultLauncher = ScreenPixelCaptureColorAction.this.resultLauncher;
            if (activityResultLauncher != null) {
                activityResultLauncher.launch(new Bundle());
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction$c */
    /* loaded from: classes9.dex */
    public static final class C11600c<T, R> implements Function {
        public C11600c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Bitmap> apply(@NotNull ScreenPixelCaptureColorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScreenPixelCaptureColorAction.this.m44950t();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction$d */
    /* loaded from: classes9.dex */
    public static final class C11601d<T, R> implements Function {
        public C11601d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Integer> apply(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScreenPixelCaptureColorAction.this.m44947q(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction$e */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11602e implements ActivityResultCallback, FunctionAdapter {
        public C11602e() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull AtomicReference<Intent> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ScreenPixelCaptureColorAction.this.m44945o(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, ScreenPixelCaptureColorAction.this, ScreenPixelCaptureColorAction.class, "handleScreenBitmapCaptureResult", "handleScreenBitmapCaptureResult(Ljava/util/concurrent/atomic/AtomicReference;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    public ScreenPixelCaptureColorAction(@NotNull Context componentActivity) {
        Intrinsics.checkNotNullParameter(componentActivity, "componentActivity");
        this.componentActivity = componentActivity;
        ReplaySubject<Bitmap> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.bitmapPublisher = create;
        ReplaySubject<Integer> create2 = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create2, "create(...)");
        this.colorPublisher = create2;
        this.eventBus = new EventBus();
    }

    /* renamed from: m */
    public static final void m44943m(ScreenPixelCaptureColorAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44951u();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Integer> create() {
        Observable<Integer> doFinally = Observable.just(this).doOnNext(new C11598a()).doOnNext(new C11599b()).flatMap(new C11600c()).flatMap(new C11601d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.g6m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ScreenPixelCaptureColorAction.m44943m(ScreenPixelCaptureColorAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final String m44944n() {
        return Reflection.getOrCreateKotlinClass(ScreenPixelCaptureColorAction.class).getSimpleName() + NameUtil.USCORE + hashCode();
    }

    /* renamed from: o */
    public final void m44945o(AtomicReference<Intent> reference) {
        Intent intent = reference.get();
        if (intent == null) {
            this.eventBus.post(new ScreenBitmapCancelEvent());
            return;
        }
        ScreenCaptureService.Companion companion = ScreenCaptureService.INSTANCE;
        companion.setEventBus(this.eventBus);
        companion.screenBitmapCapture(ResManager.INSTANCE.getAppContext(), intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenBitmapCancelEvent(@NotNull ScreenBitmapCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m44946p(this.bitmapPublisher);
    }

    @Subscribe
    public final void onScreenBitmapCaptured(@NotNull ScreenBitmapEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxjavaKt.done(this.bitmapPublisher, event.getBitmap());
    }

    /* renamed from: p */
    public final void m44946p(Observer<?> observer) {
        observer.onError(new AbortException("Pixel Capture Canceled"));
    }

    /* renamed from: q */
    public final Observable<Integer> m44947q(Bitmap bitmap) {
        Context context = this.componentActivity;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.activity.ComponentActivity");
        Application application = ((ComponentActivity) context).getApplication();
        Intrinsics.checkNotNull(application);
        new PixelCaptureWindow(this, application, new ScreenPixelView(application, bitmap, new ScreenPixelCaptureCallback() { // from class: com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1
            @Override // com.onyx.galaxy.note.p048ui.pixelcapture.ScreenPixelCaptureCallback
            public void onCaptureCanceled() {
                EasyWindow easyWindow;
                ReplaySubject replaySubject;
                easyWindow = ScreenPixelCaptureColorAction.this.currentEasyWindow;
                if (easyWindow != null) {
                    easyWindow.cancel();
                }
                ScreenPixelCaptureColorAction screenPixelCaptureColorAction = ScreenPixelCaptureColorAction.this;
                replaySubject = screenPixelCaptureColorAction.colorPublisher;
                screenPixelCaptureColorAction.m44946p(replaySubject);
            }

            @Override // com.onyx.galaxy.note.p048ui.pixelcapture.ScreenPixelCaptureCallback
            public void onPixelCaptured(int color) {
                EasyWindow easyWindow;
                ReplaySubject replaySubject;
                easyWindow = ScreenPixelCaptureColorAction.this.currentEasyWindow;
                if (easyWindow != null) {
                    easyWindow.cancel();
                }
                replaySubject = ScreenPixelCaptureColorAction.this.colorPublisher;
                RxjavaKt.done(replaySubject, Integer.valueOf(color));
            }
        })).show();
        return this.colorPublisher;
    }

    /* renamed from: r */
    public final void m44948r() {
        EventBusHolderKt.ensureRegister(this.eventBus, this);
        m44949s();
    }

    /* renamed from: s */
    public final void m44949s() {
        Context context = this.componentActivity;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.activity.ComponentActivity");
        this.resultLauncher = ((ComponentActivity) context).getActivityResultRegistry().register(m44944n(), new ScreenCapture(this.componentActivity), new C11602e());
    }

    /* renamed from: t */
    public final Observable<Bitmap> m44950t() {
        return this.bitmapPublisher;
    }

    /* renamed from: u */
    public final void m44951u() {
        EventBusHolderKt.ensureUnRegister(this.eventBus, this);
        ActivityResultLauncher<Bundle> activityResultLauncher = this.resultLauncher;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
        }
    }
}

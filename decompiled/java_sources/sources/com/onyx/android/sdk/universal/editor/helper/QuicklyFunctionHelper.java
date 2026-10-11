package com.onyx.android.sdk.universal.editor.helper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.AppUtils;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.IDevice;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.android.sdk.universal.editor.events.note.FunctionLongPressEraserEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionPaperAdaptiveEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionScreenShotEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchColorChangeEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchEraserEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchLassoEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchLastToolEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchPenBushEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchRedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchTapePenEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchUndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.StylusFunctionInvalidEvent;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.android.sdk.universal.editor.receiver.QuicklyFunBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 C2\u00020\u0001:\u0001CB-\u0012\u0006\u0010)\u001a\u00020\"\u0012\u0006\u00100\u001a\u00020*\u0012\u0006\u00103\u001a\u000201\u0012\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u000b04¢\u0006\u0004\bA\u0010BJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010\u001d\u001a\u00020\u0002J\u0006\u0010\u001e\u001a\u00020\u0002J\u0006\u0010\u001f\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0002R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u00100\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0016\u00103\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u00102R\u001a\u00106\u001a\b\u0012\u0004\u0012\u00020\u000b048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u00105R\u0014\u00109\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u00108R\u001b\u0010=\u001a\u00020:8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010;\u001a\u0004\b#\u0010<R\u001c\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00040>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010?¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;", "", "", "q", "Landroid/content/Intent;", v6l.f87196g, "c", "b", "d", "", "clickKey", "", "isStylus", "e", "i", "p", GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "l", "j", C6997f.f39671c, C4921e.f26528e, "m", C4921e.f26537n, "isStylusPressed", C6998g.f39679a, "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "handleStylusEvent", "releaseTouchStatus", "registerStylusReceiver", "unRegisterStylusReceiver", "registerStylusEngine", "unRegisterStylusEngine", "Landroid/app/Activity;", "a", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "setActivity", "(Landroid/app/Activity;)V", ActivityChooserModel.f1429r, "Lorg/greenrobot/eventbus/EventBus;", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", "Lcom/onyx/android/sdk/device/IDevice;", "Lcom/onyx/android/sdk/device/IDevice;", "deviceOpt", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "stylusStateCallback", "Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;", "Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;", "quicklyFunBroadCastReceiver", "Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;", "stylusClickHelper", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "clickFilter", Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;Lorg/greenrobot/eventbus/EventBus;Lcom/onyx/android/sdk/device/IDevice;Lkotlin/jvm/functions/Function0;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class QuicklyFunctionHelper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long FUNCTION_CLICK_TIME_INTERVAL = 200;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Activity activity;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public EventBus eventBus;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public IDevice deviceOpt;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Function0<Boolean> stylusStateCallback;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final QuicklyFunBroadCastReceiver quicklyFunBroadCastReceiver;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy stylusClickHelper;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public RxFilter<Intent> clickFilter;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;", "", "()V", "FUNCTION_CLICK_TIME_INTERVAL", "", "getQuicklyClickFunc", "", "key", "", "hasGestureDoubleQuicklyClickFunc", "", "hasQuicklyClickFunc", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getQuicklyClickFunc(@NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return MMKVUtils.INSTANCE.getInt(key, -1);
        }

        public final boolean hasGestureDoubleQuicklyClickFunc() {
            return hasQuicklyClickFunc(QuicklyFunTypeConst.SETTINGS_GESTURE_DOUBLE_CLICK);
        }

        public final boolean hasQuicklyClickFunc(@NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return getQuicklyClickFunc(key) != -1;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.QuicklyFunctionHelper$a */
    /* loaded from: classes8.dex */
    public static final class C10538a<T> implements Consumer {
        public C10538a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Intent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (AppUtils.isAppForeground()) {
                QuicklyFunctionHelper.this.m41228c(it2);
            }
        }
    }

    public QuicklyFunctionHelper(@NotNull Activity activity, @NotNull EventBus eventBus, @NotNull IDevice deviceOpt, @NotNull Function0<Boolean> stylusStateCallback) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(deviceOpt, "deviceOpt");
        Intrinsics.checkNotNullParameter(stylusStateCallback, "stylusStateCallback");
        this.activity = activity;
        this.eventBus = eventBus;
        this.deviceOpt = deviceOpt;
        this.stylusStateCallback = stylusStateCallback;
        this.quicklyFunBroadCastReceiver = new QuicklyFunBroadCastReceiver();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<StylusClickHelper>() { // from class: com.onyx.android.sdk.universal.editor.helper.QuicklyFunctionHelper$stylusClickHelper$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final StylusClickHelper invoke() {
                return new StylusClickHelper();
            }
        });
        this.stylusClickHelper = lazy;
        this.clickFilter = new RxFilter<>();
    }

    /* renamed from: a */
    public final StylusClickHelper m41226a() {
        return (StylusClickHelper) this.stylusClickHelper.getValue();
    }

    /* renamed from: b */
    public final void m41227b(Intent intent) {
        String stringExtra = intent.getStringExtra(QuicklyFunBroadCastReceiver.KEY_CODE_CLICK_KEY);
        if (stringExtra == null) {
            return;
        }
        m41230e(stringExtra, false);
    }

    /* renamed from: c */
    public final void m41228c(Intent intent) {
        String action;
        if ((Intrinsics.areEqual(intent.getAction(), QuicklyFunBroadCastReceiver.ACTION_ON_FINGER_CLICKED) || TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit()) && (action = intent.getAction()) != null) {
            switch (action.hashCode()) {
                case -183461727:
                    if (!action.equals(QuicklyFunBroadCastReceiver.ACTION_STYLUS_BROAD_CAST_DOUBLE_CLICK_OPPO)) {
                        return;
                    }
                    break;
                case 67235801:
                    if (!action.equals(QuicklyFunBroadCastReceiver.ACTION_STYLUS_BROAD_CAST_DOUBLE_CLICK_HONOR)) {
                        return;
                    }
                    break;
                case 479503410:
                    if (action.equals(QuicklyFunBroadCastReceiver.ACTION_ON_STYLUS_CLICK)) {
                        m41229d(intent);
                        return;
                    }
                    return;
                case 2082655720:
                    if (action.equals(QuicklyFunBroadCastReceiver.ACTION_ON_FINGER_CLICKED)) {
                        m41227b(intent);
                        return;
                    }
                    return;
                default:
                    return;
            }
            m41230e("settings_stylus_double_click", true);
        }
    }

    /* renamed from: d */
    public final void m41229d(Intent intent) {
        String stringExtra = intent.getStringExtra(QuicklyFunBroadCastReceiver.KEY_CODE_CLICK_KEY);
        if (stringExtra == null) {
            return;
        }
        m41230e(stringExtra, true);
    }

    /* renamed from: e */
    public final boolean m41230e(String clickKey, boolean isStylus) {
        if (!AppUtils.isAppForeground()) {
            Debug.INSTANCE.m32037d("app is running at background!");
            LogUtils.file(QuicklyFunctionHelper.class.getSimpleName(), "clickKey:" + clickKey + " app is running at background!!!");
            return false;
        }
        boolean booleanValue = this.stylusStateCallback.invoke().booleanValue();
        int i = MMKVUtils.INSTANCE.getInt(clickKey, -1);
        if (isStylus && i == -1) {
            GlobalBundle.INSTANCE.postEvent(new StylusFunctionInvalidEvent());
            return false;
        }
        if (Intrinsics.areEqual(clickKey, "settings_stylus_double_click") && i != -1) {
            DeviceFactory.INSTANCE.getCurrentDevice().startVibrate(this.activity);
        }
        if (!Intrinsics.areEqual(clickKey, QuicklyFunTypeConst.SETTINGS_STYLUS_LONG_PRESS) && booleanValue) {
            Debug.INSTANCE.m32037d("stylus is touching");
            return false;
        }
        if (!TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit()) {
            if (i != 9) {
                return false;
            }
            m41233h();
            return true;
        }
        switch (i) {
            case 0:
                if (!Intrinsics.areEqual(clickKey, QuicklyFunTypeConst.SETTINGS_STYLUS_LONG_PRESS)) {
                    m41236k();
                    break;
                } else if (booleanValue) {
                    m41232g(true);
                    break;
                }
                break;
            case 1:
                m41238m();
                break;
            case 2:
                m41240o();
                break;
            case 3:
                m41231f();
                break;
            case 4:
                m41235j();
                break;
            case 5:
                m41237l();
                break;
            case 6:
                m41239n();
                break;
            case 7:
                m41241p();
                break;
            case 8:
                m41234i();
                break;
            case 9:
                m41233h();
                break;
        }
        return true;
    }

    /* renamed from: f */
    public final void m41231f() {
        this.eventBus.post(new FunctionSwitchLastToolEvent());
    }

    /* renamed from: g */
    public final void m41232g(boolean isStylusPressed) {
        this.eventBus.post(new FunctionLongPressEraserEvent(isStylusPressed));
    }

    @NotNull
    public final Activity getActivity() {
        return this.activity;
    }

    @NotNull
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    /* renamed from: h */
    public final void m41233h() {
        this.eventBus.post(new FunctionPaperAdaptiveEvent());
    }

    public final void handleStylusEvent(@Nullable KeyEvent event) {
        if (AppUtils.isAppForeground()) {
            m41226a().handleStylusEvent(event);
        }
    }

    /* renamed from: i */
    public final void m41234i() {
        this.eventBus.post(new FunctionSwitchRedoEvent());
    }

    /* renamed from: j */
    public final void m41235j() {
        this.eventBus.post(new FunctionSwitchColorChangeEvent());
    }

    /* renamed from: k */
    public final void m41236k() {
        this.eventBus.post(new FunctionSwitchEraserEvent());
    }

    /* renamed from: l */
    public final void m41237l() {
        this.eventBus.post(new FunctionSwitchLassoEvent());
    }

    /* renamed from: m */
    public final void m41238m() {
        this.eventBus.post(new FunctionSwitchPenBushEvent());
    }

    /* renamed from: n */
    public final void m41239n() {
        this.eventBus.post(new FunctionScreenShotEvent());
    }

    /* renamed from: o */
    public final void m41240o() {
        this.eventBus.post(new FunctionSwitchTapePenEvent());
    }

    /* renamed from: p */
    public final void m41241p() {
        this.eventBus.post(new FunctionSwitchUndoEvent());
    }

    /* renamed from: q */
    public final void m41242q() {
        this.clickFilter.subscribeThrottleFirst(200L, new C10538a());
        this.quicklyFunBroadCastReceiver.setClickFilter(this.clickFilter);
    }

    public final void registerStylusEngine() {
        this.deviceOpt.registerStylusEngine(ResManager.INSTANCE.getAppContext(), new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.helper.QuicklyFunctionHelper$registerStylusEngine$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String clickKey) {
                boolean m41230e;
                Intrinsics.checkNotNullParameter(clickKey, "clickKey");
                m41230e = QuicklyFunctionHelper.this.m41230e(clickKey, true);
                return Boolean.valueOf(m41230e);
            }
        });
    }

    public final void registerStylusReceiver() {
        m41242q();
        Context appContext = ResManager.INSTANCE.getAppContext();
        QuicklyFunBroadCastReceiver quicklyFunBroadCastReceiver = this.quicklyFunBroadCastReceiver;
        ContextKt.registerReceiverCompat(appContext, quicklyFunBroadCastReceiver, quicklyFunBroadCastReceiver.getIntentFilter());
    }

    public final void releaseTouchStatus() {
        m41226a().releaseTouchStatus();
    }

    public final void setActivity(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<set-?>");
        this.activity = activity;
    }

    public final void setEventBus(@NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(eventBus, "<set-?>");
        this.eventBus = eventBus;
    }

    public final void unRegisterStylusEngine() {
        this.deviceOpt.unRegisterStylusEngine(ResManager.INSTANCE.getAppContext());
    }

    public final void unRegisterStylusReceiver() {
        this.clickFilter.dispose();
        ResManager.INSTANCE.getAppContext().unregisterReceiver(this.quicklyFunBroadCastReceiver);
    }
}

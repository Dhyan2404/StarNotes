package com.onyx.galaxy.note.editor.p046ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.activity.OnBackPressedCallback;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.device.CommonBaseDevice;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.IDevice;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.FilePickerEvent;
import com.onyx.android.sdk.replicator.note.action.FetchScaleCollectionQuotasAction;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.config.IUnSupportThemeRecreateActivity;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.common.events.OutsideTouchedEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.events.app.ActivityUpOrCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionMouseScaleEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionMouseScrollEvent;
import com.onyx.android.sdk.universal.editor.helper.QuicklyFunctionHelper;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseNavigationActivity;
import com.onyx.galaxy.note.editor.action.importfiles.ObtainDocumentListAction;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.event.CloseSideBarEvent;
import com.onyx.galaxy.note.editor.event.SideBarAreaEvent;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity$mBackPressedCallback$2;
import com.onyx.galaxy.note.receiver.ScreenBroadcastReceiver;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Timed;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 T2\u00020\u00012\u00020\u0002:\u0001TB\u0007¢\u0006\u0004\bR\u0010SJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u001a\u0010\f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0014J\b\u0010\u0010\u001a\u00020\u000eH\u0014J\b\u0010\u0011\u001a\u00020\u000eH\u0014J\b\u0010\u0012\u001a\u00020\u000eH\u0014J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0017H\u0007J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\u0012\u0010\u001f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u001cH\u0016J\"\u0010$\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00032\b\u0010#\u001a\u0004\u0018\u00010\"H\u0014J\b\u0010%\u001a\u00020\u000eH\u0002J\b\u0010&\u001a\u00020\u000eH\u0002J\b\u0010'\u001a\u00020\u000eH\u0002R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0016\u00100\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010:\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00107R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR'\u0010H\u001a\u0015\u0012\f\u0012\n D*\u0004\u0018\u00010\t0\t0C¢\u0006\u0002\bE8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010*\u001a\u0004\bK\u0010LR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006U"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;", "Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;", "Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;", "", "getNavigationResId", "Landroid/os/Bundle;", "getStartDestinationArgs", "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "", "dispatchKeyEvent", "keyCode", "onKeyDown", C1126e.f7693h, "", "onCreate", "onResume", "onPause", "onDestroy", "Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;", "onEditFocusEvent", "Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;", "onSideBarAreaEvent", "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", "onSystemThemeChangedEvent", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Landroid/view/MotionEvent;", "ev", "dispatchTouchEvent", "onGenericMotionEvent", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "H", "K", "G", "Lcom/onyx/android/sdk/device/IDevice;", "w0", "Lkotlin/Lazy;", "I", "()Lcom/onyx/android/sdk/device/IDevice;", "deviceOpt", "x0", Constants.HASIDCALL_INDEX_SIG, "isStylusPressed", "Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;", "y0", "Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;", "stylusPenHelper", "Landroid/graphics/Rect;", "z0", "Landroid/graphics/Rect;", "editAreaRect", "A0", "sideBarAreaRect", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "B0", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "type", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "C0", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "D0", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "backButtonClickSource", "Landroidx/activity/OnBackPressedCallback;", "E0", "J", "()Landroidx/activity/OnBackPressedCallback;", "mBackPressedCallback", "Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;", "F0", "Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;", "screenBroadcastReceiver", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class NoteScribbleActivity extends BaseNavigationActivity implements IUnSupportThemeRecreateActivity {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: A0, reason: from kotlin metadata */
    @Nullable
    public Rect sideBarAreaRect;

    /* renamed from: B0, reason: from kotlin metadata */
    @Nullable
    public SlideBarType type;

    /* renamed from: C0, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: D0, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Boolean> backButtonClickSource;

    /* renamed from: E0, reason: from kotlin metadata */
    @NotNull
    public final Lazy mBackPressedCallback;

    /* renamed from: F0, reason: from kotlin metadata */
    @NotNull
    public final ScreenBroadcastReceiver screenBroadcastReceiver;

    /* renamed from: w0, reason: from kotlin metadata */
    @NotNull
    public final Lazy deviceOpt;

    /* renamed from: x0, reason: from kotlin metadata */
    public boolean isStylusPressed;

    /* renamed from: y0, reason: from kotlin metadata */
    @NotNull
    public final QuicklyFunctionHelper stylusPenHelper;

    /* renamed from: z0, reason: from kotlin metadata */
    @Nullable
    public Rect editAreaRect;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tJ\b\u0010\u000e\u001a\u00020\rH\u0002¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "", "openNewTask", "Landroid/content/Context;", "context", "open", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "args", "Landroid/content/Intent;", "createStartIntent", "", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final boolean m46909a() {
            if (!BuildKt.isApiLevelBelow(29)) {
                return true;
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C10651R.string.android_sdk_support_version_tips), false, 2, (Object) null);
            return false;
        }

        @NotNull
        public final Intent createStartIntent(@NotNull Context context, @NotNull OpenDocArgs args) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(args, "args");
            Intent intent = new Intent(context, (Class<?>) NoteScribbleActivity.class);
            intent.putExtra("args", JSONUtils.INSTANCE.toJson(args));
            return intent;
        }

        public final void open(@NotNull Context context, @NotNull SyncNoteModel noteModel) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            if (m46909a()) {
                open(context, OpenDocArgs.INSTANCE.createFrom(noteModel));
            }
        }

        public final void openNewTask(@NotNull SyncNoteModel noteModel) {
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            if (m46909a()) {
                Context appContext = ResManager.INSTANCE.getAppContext();
                Intent createStartIntent = createStartIntent(appContext, OpenDocArgs.INSTANCE.createFrom(noteModel));
                createStartIntent.setFlags(268435456);
                appContext.startActivity(createStartIntent);
            }
        }

        public Companion() {
        }

        public final void open(@NotNull Context context, @NotNull OpenDocArgs args) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(args, "args");
            if (m46909a()) {
                context.startActivity(createStartIntent(context, args));
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$a */
    /* loaded from: classes9.dex */
    public static final class C12201a<T> implements Consumer {

        /* renamed from: e */
        public static final C12201a<T> f59145e = new C12201a<>();

        /* renamed from: a */
        public final void m46910a(int i) {
            if (i > 0) {
                NoteConfigManager.INSTANCE.getScaleCollectionCount().put(i);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m46910a(((Number) obj).intValue());
        }
    }

    public NoteScribbleActivity() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CommonBaseDevice>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$deviceOpt$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonBaseDevice invoke() {
                return DeviceFactory.INSTANCE.getDevice();
            }
        });
        this.deviceOpt = lazy;
        this.stylusPenHelper = new QuicklyFunctionHelper(this, GlobalBundle.INSTANCE.getEventBus(), m46906I(), new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$stylusPenHelper$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                boolean z;
                z = NoteScribbleActivity.this.isStylusPressed;
                return Boolean.valueOf(z);
            }
        });
        this.compositeDisposable = new CompositeDisposable();
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.backButtonClickSource = create;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteScribbleActivity$mBackPressedCallback$2.C122051>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$mBackPressedCallback$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$mBackPressedCallback$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C122051 invoke() {
                final NoteScribbleActivity noteScribbleActivity = NoteScribbleActivity.this;
                return new OnBackPressedCallback() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$mBackPressedCallback$2.1
                    {
                        super(true);
                    }

                    @Override // androidx.activity.OnBackPressedCallback
                    public void handleOnBackPressed() {
                        PublishSubject publishSubject;
                        publishSubject = NoteScribbleActivity.this.backButtonClickSource;
                        publishSubject.onNext(Boolean.TRUE);
                    }
                };
            }
        });
        this.mBackPressedCallback = lazy2;
        this.screenBroadcastReceiver = new ScreenBroadcastReceiver();
    }

    /* renamed from: L */
    public static final void m46903L(int i, ObtainDocumentListAction action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        GlobalBundle.INSTANCE.postEvent(new FilePickerEvent(i, action.getDocumentList()));
    }

    /* renamed from: G */
    public final void m46904G() {
        this.type = null;
        this.sideBarAreaRect = null;
    }

    /* renamed from: H */
    public final void m46905H() {
        new FetchScaleCollectionQuotasAction().build().doOnNext(C12201a.f59145e).subscribe();
    }

    /* renamed from: I */
    public final IDevice m46906I() {
        return (IDevice) this.deviceOpt.getValue();
    }

    /* renamed from: J */
    public final OnBackPressedCallback m46907J() {
        return (OnBackPressedCallback) this.mBackPressedCallback.getValue();
    }

    /* renamed from: K */
    public final void m46908K() {
        getOnBackPressedDispatcher().addCallback(this, m46907J());
        getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$initBackDebounce$1

            /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$initBackDebounce$1$a */
            /* loaded from: classes9.dex */
            public static final class C12202a<T> implements Consumer {

                /* renamed from: e */
                public static final C12202a<T> f59147e = new C12202a<>();

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(Boolean bool) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.exit_app, false, 2, (Object) null);
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$initBackDebounce$1$b */
            /* loaded from: classes9.dex */
            public static final class C12203b<T> implements Predicate {

                /* renamed from: e */
                public static final C12203b<T> f59148e = new C12203b<>();

                @Override // io.reactivex.rxjava3.functions.Predicate
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final boolean test(@NotNull Timed<Boolean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.time() < 1500;
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleActivity$initBackDebounce$1$c */
            /* loaded from: classes9.dex */
            public static final class C12204c<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ NoteScribbleActivity f59149e;

                public C12204c(NoteScribbleActivity noteScribbleActivity) {
                    this.f59149e = noteScribbleActivity;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Timed<Boolean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f59149e.finish();
                }
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onPause(@NotNull LifecycleOwner owner) {
                CompositeDisposable compositeDisposable;
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onPause(owner);
                compositeDisposable = NoteScribbleActivity.this.compositeDisposable;
                compositeDisposable.clear();
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(@NotNull LifecycleOwner owner) {
                PublishSubject publishSubject;
                CompositeDisposable compositeDisposable;
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onResume(owner);
                publishSubject = NoteScribbleActivity.this.backButtonClickSource;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                Disposable subscribe = publishSubject.debounce(100L, timeUnit).observeOn(AndroidSchedulers.mainThread()).doOnNext(C12202a.f59147e).timeInterval(timeUnit).skip(1L).filter(C12203b.f59148e).subscribe(new C12204c(NoteScribbleActivity.this));
                Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
                compositeDisposable = NoteScribbleActivity.this.compositeDisposable;
                compositeDisposable.add(subscribe);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(@NotNull KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.stylusPenHelper.handleStylusEvent(event);
        return super.dispatchKeyEvent(event);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(@NotNull MotionEvent ev) {
        SlideBarType slideBarType;
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (MotionEventKt.isDownAction(ev)) {
            GlobalBundle.INSTANCE.postEvent(OutsideTouchedEvent.INSTANCE);
        }
        if (MotionEventKt.isUpAction(ev) || MotionEventKt.isCancelAction(ev)) {
            GlobalBundle.INSTANCE.postEvent(new ActivityUpOrCancelEvent());
        }
        boolean isPressed = m46906I().isPressed(ev);
        this.isStylusPressed = isPressed;
        if (!isPressed) {
            this.stylusPenHelper.releaseTouchStatus();
        }
        Rect rect = this.editAreaRect;
        if (rect != null && RectKt.touchDownOutside(rect, ev)) {
            GlobalBundle.INSTANCE.postEvent(new EditDoneEvent());
            this.editAreaRect = null;
            return false;
        }
        Rect rect2 = this.sideBarAreaRect;
        if (!(rect2 != null && RectKt.touchDownOutside(rect2, ev)) || (slideBarType = this.type) == null) {
            return super.dispatchTouchEvent(ev);
        }
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        Intrinsics.checkNotNull(slideBarType);
        globalBundle.postEvent(new CloseSideBarEvent(slideBarType));
        m46904G();
        return false;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseNavigationActivity
    public int getNavigationResId() {
        return C10651R.navigation.scribble_navigation;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseNavigationActivity
    @Nullable
    public Bundle getStartDestinationArgs() {
        return getIntent().getExtras();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(final int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 2009) {
            final ObtainDocumentListAction obtainDocumentListAction = new ObtainDocumentListAction(data);
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<List<? extends DocumentBean>> doOnComplete = obtainDocumentListAction.build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.e1k
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    NoteScribbleActivity.m46903L(requestCode, obtainDocumentListAction);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnComplete, null, null, 3, null);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        GlobalBundle.INSTANCE.postEvent(new ConfigurationChangedEvent(newConfig));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseNavigationActivity, com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063282, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.stylusPenHelper.unRegisterStylusEngine();
        GlobalBundle.INSTANCE.unregister(this);
        ThemeBundle.INSTANCE.unRegister(this);
        this.screenBroadcastReceiver.unRegisterScreenActionReceiver(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditFocusEvent(@NotNull EditFocusEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editAreaRect = event.getEditRect();
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(@Nullable MotionEvent event) {
        if (event == null) {
            return super.onGenericMotionEvent(null);
        }
        if (event.getAction() != 8) {
            return super.onGenericMotionEvent(event);
        }
        float axisValue = event.getAxisValue(9);
        if ((event.getMetaState() & 4096) != 0) {
            GlobalBundle.INSTANCE.postEvent(new FunctionMouseScaleEvent(axisValue));
        } else {
            GlobalBundle.INSTANCE.postEvent(new FunctionMouseScrollEvent(axisValue));
        }
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, @Nullable KeyEvent event) {
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.stylusPenHelper.unRegisterStylusReceiver();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.stylusPenHelper.registerStylusReceiver();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSideBarAreaEvent(@NotNull SideBarAreaEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!event.getIsShow()) {
            m46904G();
        } else {
            this.type = event.getType();
            this.sideBarAreaRect = event.getAreaRect();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ThemeUtils.refreshUI(this);
    }
}

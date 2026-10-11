package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.annotation.SuppressLint;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentContainerView;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.navigation.NavController;
import androidx.navigation.NavDirections;
import androidx.navigation.Navigation;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.device.CommonBaseDevice;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.WindowModeType;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsBinding;
import com.onyx.galaxy.note.databinding.LayoutSidebarNotificationBinding;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.handler.NotificationHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.onyx.galaxy.note.p048ui.view.RatioImageView;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.SettingsMenuType;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.onyx.galaxy.note.settings.p047ui.adapter.SettingsMenuAdapter;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsFragment;
import com.onyx.galaxy.note.settings.viewmodel.SettingsViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bL\u0010MJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0003J\u0012\u0010\u001f\u001a\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002J\b\u0010 \u001a\u00020\u0004H\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0002R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010&\u001a\u0004\b,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010&\u001a\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010&\u001a\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010K\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010J¨\u0006N"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "onStart", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onNetworkChange", "t0", "", "s0", "u0", "B0", "w0", "Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;", "menuType", "C0", "y0", "", "allowCloudSync", "x0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;", "d1", "Lkotlin/Lazy;", "o0", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;", "binding", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;", "e1", "q0", "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;", "settingViewModel", "Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;", "f1", "r0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;", "settingsMenuAdapter", "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "g1", "p0", "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "notificationViewModel", "Landroidx/navigation/NavController;", "h1", "Landroidx/navigation/NavController;", "rightNavController", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "i1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "viewScopeDisposables", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "j1", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "lastWindowModeType", "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "k1", "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "lastMultiWindowModeType", "l1", "I", "recreateTimerKey", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class SettingsFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy settingViewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy settingsMenuAdapter;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy notificationViewModel;

    /* renamed from: h1, reason: from kotlin metadata */
    @Nullable
    public NavController rightNavController;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public CompositeDisposable viewScopeDisposables;

    /* renamed from: j1, reason: from kotlin metadata */
    @Nullable
    public WindowModeType lastWindowModeType;

    /* renamed from: k1, reason: from kotlin metadata */
    @Nullable
    public MultiWindowType lastMultiWindowModeType;

    /* renamed from: l1, reason: from kotlin metadata */
    public int recreateTimerKey;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12701a<T, R> implements Function {
        public C12701a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotificationModel> apply(List<NotificationModel> list) {
            NotificationViewModel m50940p0 = SettingsFragment.this.m50940p0();
            Intrinsics.checkNotNull(list);
            return m50940p0.filterSidebarNotification(list, NotificationDisplayHandler.GROUP_SIDEBAR_SETTINGS);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12702b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61693a;

        public C12702b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61693a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f61693a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61693a.invoke(obj);
        }
    }

    public SettingsFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentSettingsBinding>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentSettingsBinding invoke() {
                return FragmentSettingsBinding.inflate(SettingsFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SettingsViewModel>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$settingViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SettingsViewModel invoke() {
                return (SettingsViewModel) FragmentKt.getViewModel(SettingsFragment.this, SettingsViewModel.class);
            }
        });
        this.settingViewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<SettingsMenuAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$settingsMenuAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SettingsMenuAdapter invoke() {
                SettingsViewModel m50941q0;
                m50941q0 = SettingsFragment.this.m50941q0();
                return new SettingsMenuAdapter(m50941q0);
            }
        });
        this.settingsMenuAdapter = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<NotificationViewModel>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$notificationViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NotificationViewModel invoke() {
                FragmentActivity requireActivity = SettingsFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NotificationViewModel) FragmentActivityKt.getViewModel(requireActivity, NotificationViewModel.class);
            }
        });
        this.notificationViewModel = lazy4;
        this.viewScopeDisposables = new CompositeDisposable();
    }

    /* renamed from: A0 */
    public static final void m50931A0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NavDirections gotoSettingsHelpAndFeedbackFragment = SettingsFragmentDirections.gotoSettingsHelpAndFeedbackFragment();
        Intrinsics.checkNotNullExpressionValue(gotoSettingsHelpAndFeedbackFragment, "gotoSettingsHelpAndFeedbackFragment(...)");
        androidx.navigation.fragment.FragmentKt.findNavController(this$0).navigate(gotoSettingsHelpAndFeedbackFragment);
    }

    /* renamed from: v0 */
    public static final void m50935v0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireActivity().finish();
    }

    /* renamed from: z0 */
    public static final void m50936z0(SettingsFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m50941q0().getSelectMenuType().setValue((SettingsMenuType) adapter.getItem(i));
    }

    /* renamed from: B0 */
    public final void m50937B0() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = m50940p0().getNotifications().flatMap(new C12701a()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$initViewModel$disposable$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull final NotificationModel notification) {
                FragmentSettingsBinding m50939o0;
                FragmentSettingsBinding m50939o02;
                FragmentSettingsBinding m50939o03;
                Intrinsics.checkNotNullParameter(notification, "notification");
                m50939o0 = SettingsFragment.this.m50939o0();
                ViewKt.setViewVisibleOrInvisible(m50939o0.sidebarNotificationBinding.container, false);
                m50939o02 = SettingsFragment.this.m50939o0();
                RatioImageView image = m50939o02.sidebarNotificationBinding.image;
                Intrinsics.checkNotNullExpressionValue(image, "image");
                final SettingsFragment settingsFragment = SettingsFragment.this;
                if (!image.isLaidOut() || image.isLayoutRequested()) {
                    image.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$initViewModel$disposable$2$accept$$inlined$doOnLayout$1
                        @Override // android.view.View.OnLayoutChangeListener
                        public void onLayoutChange(@NotNull View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                            FragmentSettingsBinding m50939o04;
                            view.removeOnLayoutChangeListener(this);
                            NotificationHandler notificationHandler = NotificationHandler.INSTANCE;
                            NotificationModel notificationModel = NotificationModel.this;
                            m50939o04 = settingsFragment.m50939o0();
                            LayoutSidebarNotificationBinding sidebarNotificationBinding = m50939o04.sidebarNotificationBinding;
                            Intrinsics.checkNotNullExpressionValue(sidebarNotificationBinding, "sidebarNotificationBinding");
                            notificationHandler.handleSidebarNotification(notificationModel, sidebarNotificationBinding, settingsFragment.m50940p0());
                        }
                    });
                    return;
                }
                NotificationHandler notificationHandler = NotificationHandler.INSTANCE;
                m50939o03 = settingsFragment.m50939o0();
                LayoutSidebarNotificationBinding sidebarNotificationBinding = m50939o03.sidebarNotificationBinding;
                Intrinsics.checkNotNullExpressionValue(sidebarNotificationBinding, "sidebarNotificationBinding");
                notificationHandler.handleSidebarNotification(notification, sidebarNotificationBinding, settingsFragment.m50940p0());
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.viewScopeDisposables.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null));
        m50940p0().load();
    }

    /* renamed from: C0 */
    public final void m50938C0(SettingsMenuType menuType) {
        if (menuType != null) {
            NavController navController = this.rightNavController;
            if (navController != null) {
                navController.popBackStack(C10651R.id.settings_fragment_main, false);
            }
            NavController navController2 = this.rightNavController;
            if (navController2 != null) {
                navController2.navigate(menuType.getNavigationAction());
            }
        }
    }

    /* renamed from: o0 */
    public final FragmentSettingsBinding m50939o0() {
        return (FragmentSettingsBinding) this.binding.getValue();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        DeviceFactory deviceFactory = DeviceFactory.INSTANCE;
        WindowModeType windowModeType = deviceFactory.getCurrentDevice().getScreenInfo().getWindowModeType();
        CommonBaseDevice currentDevice = deviceFactory.getCurrentDevice();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        MultiWindowType multiWindowType = currentDevice.getMultiWindowType(requireActivity, windowModeType);
        if (windowModeType != this.lastWindowModeType || multiWindowType != this.lastMultiWindowModeType) {
            RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
            rxTimerUtil.cancel(this.recreateTimerKey);
            this.recreateTimerKey = rxTimerUtil.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$onConfigurationChanged$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke(l.longValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(long j) {
                    SettingsFragment.this.requireActivity().recreate();
                }
            });
        }
        this.lastWindowModeType = windowModeType;
        this.lastMultiWindowModeType = multiWindowType;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063268, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m50944t0();
        ConstraintLayout root = m50939o0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        GlobalBundle.INSTANCE.unregister(this);
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RxTimerUtil.INSTANCE.cancel(this.recreateTimerKey);
        this.viewScopeDisposables.dispose();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChange(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            m50941q0().checkCloudSyncCondition();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        FragmentContainerView settingsRight = m50939o0().settingsRight;
        Intrinsics.checkNotNullExpressionValue(settingsRight, "settingsRight");
        this.rightNavController = Navigation.findNavController(settingsRight);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewScopeDisposables = new CompositeDisposable();
        m50948y0();
        m50946w0();
        m50945u0();
        m50937B0();
    }

    /* renamed from: p0 */
    public final NotificationViewModel m50940p0() {
        return (NotificationViewModel) this.notificationViewModel.getValue();
    }

    /* renamed from: q0 */
    public final SettingsViewModel m50941q0() {
        return (SettingsViewModel) this.settingViewModel.getValue();
    }

    /* renamed from: r0 */
    public final SettingsMenuAdapter m50942r0() {
        return (SettingsMenuAdapter) this.settingsMenuAdapter.getValue();
    }

    /* renamed from: s0 */
    public final int m50943s0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getInt(SettingsActivity.SETTING_MENU_NAME, -1);
        }
        return -1;
    }

    /* renamed from: t0 */
    public final void m50944t0() {
        int m50943s0 = m50943s0();
        if (m50943s0 == 1) {
            m50941q0().getSelectMenuType().setValue(SettingsMenuType.DOC);
        } else if (m50943s0 == 2) {
            m50941q0().getSelectMenuType().setValue(SettingsMenuType.CLOUD_BACKUP);
        } else {
            if (m50943s0 != 3) {
                return;
            }
            m50941q0().getSelectMenuType().setValue(SettingsMenuType.STYLUS);
        }
    }

    /* renamed from: u0 */
    public final void m50945u0() {
        m50939o0().ivSettingBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.m50935v0(SettingsFragment.this, view);
            }
        });
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: w0 */
    public final void m50946w0() {
        m50941q0().getSelectMenuType().observe(getViewLifecycleOwner(), new C12702b(new Function1<SettingsMenuType, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$initObserve$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SettingsMenuType settingsMenuType) {
                invoke2(settingsMenuType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SettingsMenuType settingsMenuType) {
                SettingsMenuAdapter m50942r0;
                m50942r0 = SettingsFragment.this.m50942r0();
                m50942r0.notifyDataSetChanged();
                SettingsFragment.this.m50938C0(settingsMenuType);
            }
        }));
    }

    /* renamed from: x0 */
    public final void m50947x0(boolean allowCloudSync) {
        List mutableList;
        Object first;
        mutableList = ArraysKt___ArraysKt.toMutableList(SettingsMenuType.values());
        if (!allowCloudSync) {
            mutableList.remove(SettingsMenuType.CLOUD_SYNC);
        }
        if (!NoteConfigManager.INSTANCE.getNoteEditConfigInfo().isAiLabEnable()) {
            mutableList.remove(SettingsMenuType.AI_LAB);
        }
        m50942r0().submitList(mutableList);
        if (m50943s0() == -1 && m50941q0().getSelectMenuType().getValue() == null) {
            LiveData selectMenuType = m50941q0().getSelectMenuType();
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) mutableList);
            selectMenuType.setValue(first);
        }
    }

    /* renamed from: y0 */
    public final void m50948y0() {
        m50939o0().clSettingMenuList.setLayoutManager(new LinearLayoutManager(getContext()));
        m50939o0().clSettingMenuList.setAdapter(m50942r0());
        ItemClickUtilsKt.setOnDebouncedItemClick$default(m50942r0(), 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.djm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsFragment.m50936z0(SettingsFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        m50939o0().flHelpAndFeedback.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ejm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.m50931A0(SettingsFragment.this, view);
            }
        });
        m50941q0().checkCloudSyncCondition();
        m50941q0().getAllowCloudSync().observe(requireActivity(), new C12702b(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsFragment$initView$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                SettingsFragment settingsFragment = SettingsFragment.this;
                Intrinsics.checkNotNull(bool);
                settingsFragment.m50947x0(bool.booleanValue());
            }
        }));
    }
}

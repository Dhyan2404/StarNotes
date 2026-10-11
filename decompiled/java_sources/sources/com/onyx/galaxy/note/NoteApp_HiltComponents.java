package com.onyx.galaxy.note;

import com.onyx.android.sdk.pay.IPaymentFactoryEntryPoint;
import com.onyx.android.sdk.pay.google.PaymentModule;
import com.onyx.android.sdk.statistics.GoogleStatisticsModule;
import com.onyx.android.sdk.statistics.IStatisticsEntryPoint;
import com.onyx.galaxy.note.account.AccountAuthModule;
import com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity_GeneratedInjector;
import com.onyx.galaxy.note.hilt.convert.HWRResultConvertModule;
import com.onyx.galaxy.note.hilt.convert.IHWRResultConvertEntryPoint;
import com.onyx.galaxy.note.hilt.recognizer.HwrRecognizerModule;
import com.onyx.galaxy.note.hilt.recognizer.IRecognizerEntrypoint;
import com.onyx.galaxy.note.update.GoogleAppUpdateModule;
import com.onyx.galaxy.note.usercenter.p049ui.AccountCenterFragment_GeneratedInjector;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragment_GeneratedInjector;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity_GeneratedInjector;
import com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel_HiltModules;
import dagger.Binds;
import dagger.Component;
import dagger.Module;
import dagger.Subcomponent;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.components.FragmentComponent;
import dagger.hilt.android.components.ServiceComponent;
import dagger.hilt.android.components.ViewComponent;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.components.ViewWithFragmentComponent;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.flags.HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_DefaultViewModelFactories_ActivityModule;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_HiltViewModelFactory_ViewModelModule;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivityRetainedComponentManager_LifecycleModule;
import dagger.hilt.android.internal.managers.HiltWrapper_SavedStateHandleModule;
import dagger.hilt.android.internal.managers.InterfaceC17059xb4b32df6;
import dagger.hilt.android.internal.managers.InterfaceC17060x7709314e;
import dagger.hilt.android.internal.managers.ServiceComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.android.internal.modules.HiltWrapper_ActivityModule;
import dagger.hilt.android.scopes.ActivityRetainedScoped;
import dagger.hilt.android.scopes.ActivityScoped;
import dagger.hilt.android.scopes.FragmentScoped;
import dagger.hilt.android.scopes.ServiceScoped;
import dagger.hilt.android.scopes.ViewModelScoped;
import dagger.hilt.android.scopes.ViewScoped;
import dagger.hilt.components.SingletonComponent;
import dagger.hilt.internal.GeneratedComponent;
import dagger.hilt.migration.DisableInstallInCheck;
import javax.inject.Singleton;

/* loaded from: classes9.dex */
public final class NoteApp_HiltComponents {

    @ActivityScoped
    @Subcomponent(modules = {GoogleAppUpdateModule.class, HiltWrapper_ActivityModule.class, HiltWrapper_DefaultViewModelFactories_ActivityModule.class, InterfaceC10646c.class, InterfaceC10648e.class})
    /* loaded from: classes9.dex */
    public static abstract class ActivityC implements NoteListActivity_GeneratedInjector, UserCenterActivity_GeneratedInjector, ActivityComponent, DefaultViewModelFactories.ActivityEntryPoint, HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint, FragmentComponentManager.FragmentComponentBuilderEntryPoint, ViewComponentManager.ViewComponentBuilderEntryPoint, GeneratedComponent {

        @Subcomponent.Builder
        /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$ActivityC$a */
        /* loaded from: classes9.dex */
        public interface InterfaceC10637a extends ActivityComponentBuilder {
        }
    }

    @ActivityRetainedScoped
    @Subcomponent(modules = {HiltWrapper_ActivityRetainedComponentManager_LifecycleModule.class, HiltWrapper_SavedStateHandleModule.class, MicrosoftVerifyViewModel_HiltModules.KeyModule.class, InterfaceC10644a.class, InterfaceC10649f.class})
    /* loaded from: classes9.dex */
    public static abstract class ActivityRetainedC implements ActivityRetainedComponent, ActivityComponentManager.ActivityComponentBuilderEntryPoint, InterfaceC17060x7709314e, GeneratedComponent {

        @Subcomponent.Builder
        /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$ActivityRetainedC$a */
        /* loaded from: classes9.dex */
        public interface InterfaceC10638a extends ActivityRetainedComponentBuilder {
        }
    }

    @FragmentScoped
    @Subcomponent(modules = {InterfaceC10650g.class})
    /* loaded from: classes9.dex */
    public static abstract class FragmentC implements AccountCenterFragment_GeneratedInjector, LogOffAgreementFragment_GeneratedInjector, FragmentComponent, DefaultViewModelFactories.FragmentEntryPoint, ViewComponentManager.ViewWithFragmentComponentBuilderEntryPoint, GeneratedComponent {

        @Subcomponent.Builder
        /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$FragmentC$a */
        /* loaded from: classes9.dex */
        public interface InterfaceC10639a extends FragmentComponentBuilder {
        }
    }

    @ServiceScoped
    @Subcomponent
    /* loaded from: classes9.dex */
    public static abstract class ServiceC implements ServiceComponent, GeneratedComponent {

        @Subcomponent.Builder
        /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$ServiceC$a */
        /* loaded from: classes9.dex */
        public interface InterfaceC10640a extends ServiceComponentBuilder {
        }
    }

    @Component(modules = {AccountAuthModule.class, ApplicationContextModule.class, GoogleStatisticsModule.class, HWRResultConvertModule.class, HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule.class, HwrRecognizerModule.class, InterfaceC10645b.class, InterfaceC10647d.class, PaymentModule.class})
    @Singleton
    /* loaded from: classes9.dex */
    public static abstract class SingletonC implements IPaymentFactoryEntryPoint, IStatisticsEntryPoint, NoteApp_GeneratedInjector, IAccountAuthEntryPoint, IHWRResultConvertEntryPoint, IRecognizerEntrypoint, FragmentGetContextFix.FragmentGetContextFixEntryPoint, InterfaceC17059xb4b32df6, ServiceComponentManager.ServiceComponentBuilderEntryPoint, SingletonComponent, GeneratedComponent {
    }

    @ViewScoped
    @Subcomponent
    /* loaded from: classes9.dex */
    public static abstract class ViewC implements ViewComponent, GeneratedComponent {

        @Subcomponent.Builder
        /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$ViewC$a */
        /* loaded from: classes9.dex */
        public interface InterfaceC10641a extends ViewComponentBuilder {
        }
    }

    @ViewModelScoped
    @Subcomponent(modules = {HiltWrapper_HiltViewModelFactory_ViewModelModule.class, MicrosoftVerifyViewModel_HiltModules.BindsModule.class})
    /* loaded from: classes9.dex */
    public static abstract class ViewModelC implements ViewModelComponent, HiltViewModelFactory.ViewModelFactoriesEntryPoint, GeneratedComponent {

        @Subcomponent.Builder
        /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$ViewModelC$a */
        /* loaded from: classes9.dex */
        public interface InterfaceC10642a extends ViewModelComponentBuilder {
        }
    }

    @ViewScoped
    @Subcomponent
    /* loaded from: classes9.dex */
    public static abstract class ViewWithFragmentC implements ViewWithFragmentComponent, GeneratedComponent {

        @Subcomponent.Builder
        /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$ViewWithFragmentC$a */
        /* loaded from: classes9.dex */
        public interface InterfaceC10643a extends ViewWithFragmentComponentBuilder {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {ActivityC.class})
    /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$a */
    /* loaded from: classes9.dex */
    public interface InterfaceC10644a {
        @Binds
        /* renamed from: a */
        ActivityComponentBuilder m41716a(ActivityC.InterfaceC10637a builder);
    }

    @DisableInstallInCheck
    @Module(subcomponents = {ActivityRetainedC.class})
    /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$b */
    /* loaded from: classes9.dex */
    public interface InterfaceC10645b {
        @Binds
        /* renamed from: a */
        ActivityRetainedComponentBuilder m41717a(ActivityRetainedC.InterfaceC10638a builder);
    }

    @DisableInstallInCheck
    @Module(subcomponents = {FragmentC.class})
    /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$c */
    /* loaded from: classes9.dex */
    public interface InterfaceC10646c {
        @Binds
        /* renamed from: a */
        FragmentComponentBuilder m41718a(FragmentC.InterfaceC10639a builder);
    }

    @DisableInstallInCheck
    @Module(subcomponents = {ServiceC.class})
    /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$d */
    /* loaded from: classes9.dex */
    public interface InterfaceC10647d {
        @Binds
        /* renamed from: a */
        ServiceComponentBuilder m41719a(ServiceC.InterfaceC10640a builder);
    }

    @DisableInstallInCheck
    @Module(subcomponents = {ViewC.class})
    /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$e */
    /* loaded from: classes9.dex */
    public interface InterfaceC10648e {
        @Binds
        /* renamed from: a */
        ViewComponentBuilder m41720a(ViewC.InterfaceC10641a builder);
    }

    @DisableInstallInCheck
    @Module(subcomponents = {ViewModelC.class})
    /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$f */
    /* loaded from: classes9.dex */
    public interface InterfaceC10649f {
        @Binds
        /* renamed from: a */
        ViewModelComponentBuilder m41721a(ViewModelC.InterfaceC10642a builder);
    }

    @DisableInstallInCheck
    @Module(subcomponents = {ViewWithFragmentC.class})
    /* renamed from: com.onyx.galaxy.note.NoteApp_HiltComponents$g */
    /* loaded from: classes9.dex */
    public interface InterfaceC10650g {
        @Binds
        /* renamed from: a */
        ViewWithFragmentComponentBuilder m41722a(ViewWithFragmentC.InterfaceC10643a builder);
    }
}

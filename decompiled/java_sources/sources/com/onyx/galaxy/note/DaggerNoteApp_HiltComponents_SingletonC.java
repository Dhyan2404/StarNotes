package com.onyx.galaxy.note;

import android.app.Activity;
import android.app.Service;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider;
import com.onyx.android.sdk.hwr.service.recognizer.IHWRRecognizer;
import com.onyx.android.sdk.pay.BasePayment;
import com.onyx.android.sdk.pay.PaymentSelector;
import com.onyx.android.sdk.pay.constants.Constants;
import com.onyx.android.sdk.pay.google.PaymentModule_GetGooglePaymentFactory;
import com.onyx.android.sdk.statistics.GoogleStatistics;
import com.onyx.android.sdk.statistics.IStatistics;
import com.onyx.galaxy.note.NoteApp_HiltComponents;
import com.onyx.galaxy.note.account.AccountAuthModule_GetGoogleAccountAuthFactory;
import com.onyx.galaxy.note.account.AccountAuthModule_GetMicroSoftAccountAuthFactory;
import com.onyx.galaxy.note.account.hilt.AccountAuthSelector;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity_MembersInjector;
import com.onyx.galaxy.note.hilt.convert.HWRResultConvertModule_GetMLResultConvertFactory;
import com.onyx.galaxy.note.hilt.convert.HWRResultConvertSelector;
import com.onyx.galaxy.note.hilt.recognizer.HwrRecognizerModule;
import com.onyx.galaxy.note.hilt.recognizer.HwrRecognizerModule_GetCommonRecognizerFactory;
import com.onyx.galaxy.note.hilt.recognizer.HwrRecognizerModule_GetMixedRecognizerFactory;
import com.onyx.galaxy.note.hilt.recognizer.HwrRecognizerModule_GetSuNiaNaiNbiRecognizerFactory;
import com.onyx.galaxy.note.hilt.recognizer.HwrRecognizerModule_GetSuNiaRecognizerFactory;
import com.onyx.galaxy.note.hilt.recognizer.RecognizerSelector;
import com.onyx.galaxy.note.update.GoogleAppUpdateModule_BindGoogleAppUpdateFactory;
import com.onyx.galaxy.note.update.IAppUpdateDetect;
import com.onyx.galaxy.note.usercenter.p049ui.AccountCenterFragment;
import com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragment;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity;
import com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel;
import com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel_HiltModules;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.ViewModelLifecycle;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories_InternalFactoryFactory_Factory;
import dagger.hilt.android.internal.managers.C17058xa054dd2f;
import dagger.hilt.android.internal.managers.SavedStateHandleHolder;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.internal.DaggerGenerated;
import dagger.internal.DoubleCheck;
import dagger.internal.IdentifierNameString;
import dagger.internal.KeepFieldType;
import dagger.internal.LazyClassKeyMap;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.SingleCheck;
import java.util.Map;
import java.util.Set;

@DaggerGenerated
/* loaded from: classes9.dex */
public final class DaggerNoteApp_HiltComponents_SingletonC {

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public HwrRecognizerModule f52907a;

        @Deprecated
        public Builder applicationContextModule(ApplicationContextModule applicationContextModule) {
            Preconditions.checkNotNull(applicationContextModule);
            return this;
        }

        public NoteApp_HiltComponents.SingletonC build() {
            if (this.f52907a == null) {
                this.f52907a = new HwrRecognizerModule();
            }
            return new C10625j(this.f52907a);
        }

        public Builder hwrRecognizerModule(HwrRecognizerModule hwrRecognizerModule) {
            this.f52907a = (HwrRecognizerModule) Preconditions.checkNotNull(hwrRecognizerModule);
            return this;
        }

        public Builder() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$b */
    /* loaded from: classes9.dex */
    public static final class C10617b implements NoteApp_HiltComponents.ActivityC.InterfaceC10637a {

        /* renamed from: a */
        public final C10625j f52908a;

        /* renamed from: b */
        public final C10620e f52909b;

        /* renamed from: c */
        public Activity f52910c;

        @Override // dagger.hilt.android.internal.builders.ActivityComponentBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C10617b activity(Activity activity) {
            this.f52910c = (Activity) Preconditions.checkNotNull(activity);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ActivityComponentBuilder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public NoteApp_HiltComponents.ActivityC build() {
            Preconditions.checkBuilderRequirement(this.f52910c, Activity.class);
            return new C10618c(this.f52908a, this.f52909b, this.f52910c);
        }

        public C10617b(C10625j singletonCImpl, C10620e activityRetainedCImpl) {
            this.f52908a = singletonCImpl;
            this.f52909b = activityRetainedCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$c */
    /* loaded from: classes9.dex */
    public static final class C10618c extends NoteApp_HiltComponents.ActivityC {

        /* renamed from: a */
        public final C10625j f52911a;

        /* renamed from: b */
        public final C10620e f52912b;

        /* renamed from: c */
        public final C10618c f52913c;

        /* renamed from: d */
        public Provider<IAppUpdateDetect> f52914d;

        @IdentifierNameString
        /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$c$a */
        /* loaded from: classes9.dex */
        public static final class a {

            /* renamed from: b */
            public static String f52915b = "com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel";

            /* renamed from: a */
            @KeepFieldType
            public MicrosoftVerifyViewModel f52916a;
        }

        /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$c$b */
        /* loaded from: classes9.dex */
        public static final class b<T> implements Provider<T> {

            /* renamed from: a */
            public final C10625j f52917a;

            /* renamed from: b */
            public final C10620e f52918b;

            /* renamed from: c */
            public final C10618c f52919c;

            /* renamed from: d */
            public final int f52920d;

            public b(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10618c activityCImpl, int id) {
                this.f52917a = singletonCImpl;
                this.f52918b = activityRetainedCImpl;
                this.f52919c = activityCImpl;
                this.f52920d = id;
            }

            @Override // javax.inject.Provider
            public T get() {
                if (this.f52920d == 0) {
                    return (T) GoogleAppUpdateModule_BindGoogleAppUpdateFactory.bindGoogleAppUpdate();
                }
                throw new AssertionError(this.f52920d);
            }
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.InterfaceC17053c
        /* renamed from: a */
        public Map<Class<?>, Boolean> mo41661a() {
            return LazyClassKeyMap.m60909of(ImmutableMap.m26186of(a.f52915b, Boolean.valueOf(MicrosoftVerifyViewModel_HiltModules.KeyModule.provide())));
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.InterfaceC17053c
        /* renamed from: b */
        public ViewModelComponentBuilder mo41662b() {
            return new C10628m(this.f52911a, this.f52912b);
        }

        /* renamed from: c */
        public final void m41663c(final Activity activityParam) {
            this.f52914d = DoubleCheck.provider(new b(this.f52911a, this.f52912b, this.f52913c, 0));
        }

        @CanIgnoreReturnValue
        /* renamed from: d */
        public final NoteListActivity m41664d(NoteListActivity instance) {
            NoteListActivity_MembersInjector.injectAppUpdateDetect(instance, this.f52914d.get());
            return instance;
        }

        @Override // dagger.hilt.android.internal.managers.FragmentComponentManager.FragmentComponentBuilderEntryPoint
        public FragmentComponentBuilder fragmentComponentBuilder() {
            return new C10621f(this.f52911a, this.f52912b, this.f52913c);
        }

        @Override // dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories.ActivityEntryPoint
        public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
            return DefaultViewModelFactories_InternalFactoryFactory_Factory.newInstance(mo41661a(), new C10628m(this.f52911a, this.f52912b));
        }

        @Override // com.onyx.galaxy.note.category.p044ui.NoteListActivity_GeneratedInjector
        public void injectNoteListActivity(NoteListActivity arg0) {
            m41664d(arg0);
        }

        @Override // com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity_GeneratedInjector
        public void injectUserCenterActivity(UserCenterActivity arg0) {
        }

        @Override // dagger.hilt.android.internal.managers.ViewComponentManager.ViewComponentBuilderEntryPoint
        public ViewComponentBuilder viewComponentBuilder() {
            return new C10626k(this.f52911a, this.f52912b, this.f52913c);
        }

        public C10618c(C10625j singletonCImpl, C10620e activityRetainedCImpl, Activity activityParam) {
            this.f52913c = this;
            this.f52911a = singletonCImpl;
            this.f52912b = activityRetainedCImpl;
            m41663c(activityParam);
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$d */
    /* loaded from: classes9.dex */
    public static final class C10619d implements NoteApp_HiltComponents.ActivityRetainedC.InterfaceC10638a {

        /* renamed from: a */
        public final C10625j f52921a;

        /* renamed from: b */
        public SavedStateHandleHolder f52922b;

        @Override // dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteApp_HiltComponents.ActivityRetainedC build() {
            Preconditions.checkBuilderRequirement(this.f52922b, SavedStateHandleHolder.class);
            return new C10620e(this.f52921a, this.f52922b);
        }

        @Override // dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C10619d savedStateHandleHolder(SavedStateHandleHolder savedStateHandleHolder) {
            this.f52922b = (SavedStateHandleHolder) Preconditions.checkNotNull(savedStateHandleHolder);
            return this;
        }

        public C10619d(C10625j singletonCImpl) {
            this.f52921a = singletonCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$e */
    /* loaded from: classes9.dex */
    public static final class C10620e extends NoteApp_HiltComponents.ActivityRetainedC {

        /* renamed from: a */
        public final C10625j f52923a;

        /* renamed from: b */
        public final C10620e f52924b;

        /* renamed from: c */
        public Provider<ActivityRetainedLifecycle> f52925c;

        /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$e$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Provider<T> {

            /* renamed from: a */
            public final C10625j f52926a;

            /* renamed from: b */
            public final C10620e f52927b;

            /* renamed from: c */
            public final int f52928c;

            public a(C10625j singletonCImpl, C10620e activityRetainedCImpl, int id) {
                this.f52926a = singletonCImpl;
                this.f52927b = activityRetainedCImpl;
                this.f52928c = id;
            }

            @Override // javax.inject.Provider
            public T get() {
                if (this.f52928c == 0) {
                    return (T) C17058xa054dd2f.provideActivityRetainedLifecycle();
                }
                throw new AssertionError(this.f52928c);
            }
        }

        /* renamed from: a */
        public final void m41667a(final SavedStateHandleHolder savedStateHandleHolderParam) {
            this.f52925c = DoubleCheck.provider(new a(this.f52923a, this.f52924b, 0));
        }

        @Override // dagger.hilt.android.internal.managers.ActivityComponentManager.ActivityComponentBuilderEntryPoint
        public ActivityComponentBuilder activityComponentBuilder() {
            return new C10617b(this.f52923a, this.f52924b);
        }

        @Override // dagger.hilt.android.internal.managers.ActivityRetainedComponentManager.ActivityRetainedLifecycleEntryPoint
        public ActivityRetainedLifecycle getActivityRetainedLifecycle() {
            return this.f52925c.get();
        }

        public C10620e(C10625j singletonCImpl, SavedStateHandleHolder savedStateHandleHolderParam) {
            this.f52924b = this;
            this.f52923a = singletonCImpl;
            m41667a(savedStateHandleHolderParam);
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$f */
    /* loaded from: classes9.dex */
    public static final class C10621f implements NoteApp_HiltComponents.FragmentC.InterfaceC10639a {

        /* renamed from: a */
        public final C10625j f52929a;

        /* renamed from: b */
        public final C10620e f52930b;

        /* renamed from: c */
        public final C10618c f52931c;

        /* renamed from: d */
        public Fragment f52932d;

        @Override // dagger.hilt.android.internal.builders.FragmentComponentBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteApp_HiltComponents.FragmentC build() {
            Preconditions.checkBuilderRequirement(this.f52932d, Fragment.class);
            return new C10622g(this.f52929a, this.f52930b, this.f52931c, this.f52932d);
        }

        @Override // dagger.hilt.android.internal.builders.FragmentComponentBuilder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C10621f fragment(Fragment fragment) {
            this.f52932d = (Fragment) Preconditions.checkNotNull(fragment);
            return this;
        }

        public C10621f(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10618c activityCImpl) {
            this.f52929a = singletonCImpl;
            this.f52930b = activityRetainedCImpl;
            this.f52931c = activityCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$g */
    /* loaded from: classes9.dex */
    public static final class C10622g extends NoteApp_HiltComponents.FragmentC {

        /* renamed from: a */
        public final C10625j f52933a;

        /* renamed from: b */
        public final C10620e f52934b;

        /* renamed from: c */
        public final C10618c f52935c;

        /* renamed from: d */
        public final C10622g f52936d;

        @Override // dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories.FragmentEntryPoint
        public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
            return this.f52935c.getHiltInternalFactoryFactory();
        }

        @Override // com.onyx.galaxy.note.usercenter.p049ui.AccountCenterFragment_GeneratedInjector
        public void injectAccountCenterFragment(AccountCenterFragment arg0) {
        }

        @Override // com.onyx.galaxy.note.usercenter.p049ui.LogOffAgreementFragment_GeneratedInjector
        public void injectLogOffAgreementFragment(LogOffAgreementFragment arg0) {
        }

        @Override // dagger.hilt.android.internal.managers.ViewComponentManager.ViewWithFragmentComponentBuilderEntryPoint
        public ViewWithFragmentComponentBuilder viewWithFragmentComponentBuilder() {
            return new C10630o(this.f52933a, this.f52934b, this.f52935c, this.f52936d);
        }

        public C10622g(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10618c activityCImpl, Fragment fragmentParam) {
            this.f52936d = this;
            this.f52933a = singletonCImpl;
            this.f52934b = activityRetainedCImpl;
            this.f52935c = activityCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$h */
    /* loaded from: classes9.dex */
    public static final class C10623h implements NoteApp_HiltComponents.ServiceC.InterfaceC10640a {

        /* renamed from: a */
        public final C10625j f52937a;

        /* renamed from: b */
        public Service f52938b;

        @Override // dagger.hilt.android.internal.builders.ServiceComponentBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteApp_HiltComponents.ServiceC build() {
            Preconditions.checkBuilderRequirement(this.f52938b, Service.class);
            return new C10624i(this.f52937a, this.f52938b);
        }

        @Override // dagger.hilt.android.internal.builders.ServiceComponentBuilder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C10623h service(Service service) {
            this.f52938b = (Service) Preconditions.checkNotNull(service);
            return this;
        }

        public C10623h(C10625j singletonCImpl) {
            this.f52937a = singletonCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$i */
    /* loaded from: classes9.dex */
    public static final class C10624i extends NoteApp_HiltComponents.ServiceC {

        /* renamed from: a */
        public final C10625j f52939a;

        /* renamed from: b */
        public final C10624i f52940b;

        public C10624i(C10625j singletonCImpl, Service serviceParam) {
            this.f52940b = this;
            this.f52939a = singletonCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$j */
    /* loaded from: classes9.dex */
    public static final class C10625j extends NoteApp_HiltComponents.SingletonC {

        /* renamed from: a */
        public final HwrRecognizerModule f52941a;

        /* renamed from: b */
        public final C10625j f52942b;

        /* renamed from: c */
        public Provider<PaymentSelector.Factory> f52943c;

        /* renamed from: d */
        public Provider<AccountAuthSelector.Creator> f52944d;

        /* renamed from: e */
        public Provider<HWRResultConvertSelector.Creator> f52945e;

        /* renamed from: f */
        public Provider<RecognizerSelector.Creator> f52946f;

        /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$j$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Provider<T> {

            /* renamed from: a */
            public final C10625j f52947a;

            /* renamed from: b */
            public final int f52948b;

            /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$j$a$a, reason: collision with other inner class name */
            /* loaded from: classes9.dex */
            public class C20602a implements PaymentSelector.Factory {
                public C20602a() {
                }

                @Override // com.onyx.android.sdk.pay.PaymentSelector.Factory
                public PaymentSelector create(String paymentType) {
                    return new PaymentSelector(a.this.f52947a.m41677f(), paymentType);
                }
            }

            /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$j$a$b */
            /* loaded from: classes9.dex */
            public class b implements AccountAuthSelector.Creator {
                public b() {
                }

                @Override // com.onyx.galaxy.note.account.hilt.AccountAuthSelector.Creator
                public AccountAuthSelector create(String type) {
                    return new AccountAuthSelector(a.this.f52947a.m41679h(), type);
                }
            }

            /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$j$a$c */
            /* loaded from: classes9.dex */
            public class c implements HWRResultConvertSelector.Creator {
                public c() {
                }

                @Override // com.onyx.galaxy.note.hilt.convert.HWRResultConvertSelector.Creator
                public HWRResultConvertSelector create(String type2) {
                    return new HWRResultConvertSelector(a.this.f52947a.m41678g(), type2);
                }
            }

            /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$j$a$d */
            /* loaded from: classes9.dex */
            public class d implements RecognizerSelector.Creator {
                public d() {
                }

                @Override // com.onyx.galaxy.note.hilt.recognizer.RecognizerSelector.Creator
                public RecognizerSelector create(String type3) {
                    return new RecognizerSelector(a.this.f52947a.m41680i(), type3);
                }
            }

            public a(C10625j singletonCImpl, int id) {
                this.f52947a = singletonCImpl;
                this.f52948b = id;
            }

            @Override // javax.inject.Provider
            public T get() {
                int i = this.f52948b;
                if (i == 0) {
                    return (T) new C20602a();
                }
                if (i == 1) {
                    return (T) new b();
                }
                if (i == 2) {
                    return (T) new c();
                }
                if (i == 3) {
                    return (T) new d();
                }
                throw new AssertionError(this.f52948b);
            }
        }

        /* renamed from: e */
        public final void m41676e(final HwrRecognizerModule hwrRecognizerModuleParam) {
            this.f52943c = SingleCheck.provider(new a(this.f52942b, 0));
            this.f52944d = SingleCheck.provider(new a(this.f52942b, 1));
            this.f52945e = SingleCheck.provider(new a(this.f52942b, 2));
            this.f52946f = SingleCheck.provider(new a(this.f52942b, 3));
        }

        /* renamed from: f */
        public final Map<String, BasePayment> m41677f() {
            return ImmutableMap.m26186of(Constants.PAY_GOOGLE, PaymentModule_GetGooglePaymentFactory.getGooglePayment());
        }

        /* renamed from: g */
        public final Map<String, HWRResultConvertProvider> m41678g() {
            return ImmutableMap.m26186of(HWRValues.ENGINE_ML, HWRResultConvertModule_GetMLResultConvertFactory.getMLResultConvert());
        }

        @Override // com.onyx.galaxy.note.account.hilt.IAccountAuthEntryPoint
        public AccountAuthSelector.Creator getAccountAuthCreator() {
            return this.f52944d.get();
        }

        @Override // com.onyx.galaxy.note.hilt.convert.IHWRResultConvertEntryPoint
        public HWRResultConvertSelector.Creator getConvertCreator() {
            return this.f52945e.get();
        }

        @Override // dagger.hilt.android.flags.FragmentGetContextFix.FragmentGetContextFixEntryPoint
        public Set<Boolean> getDisableFragmentGetContextFix() {
            return ImmutableSet.m26234of();
        }

        @Override // com.onyx.android.sdk.pay.IPaymentFactoryEntryPoint
        public PaymentSelector.Factory getFactory() {
            return this.f52943c.get();
        }

        @Override // com.onyx.galaxy.note.hilt.recognizer.IRecognizerEntrypoint
        public RecognizerSelector.Creator getRecognizeCreator() {
            return this.f52946f.get();
        }

        @Override // com.onyx.android.sdk.statistics.IStatisticsEntryPoint
        public IStatistics getStatistics() {
            return new GoogleStatistics();
        }

        /* renamed from: h */
        public final Map<String, IAccountAuth> m41679h() {
            return ImmutableMap.m26187of(LoginAuthConst.GOOGLE_AUTH, AccountAuthModule_GetGoogleAccountAuthFactory.getGoogleAccountAuth(), LoginAuthConst.MICROSOFT_AUTH, AccountAuthModule_GetMicroSoftAccountAuthFactory.getMicroSoftAccountAuth());
        }

        /* renamed from: i */
        public final Map<String, IHWRRecognizer> m41680i() {
            return ImmutableMap.m26189of(HwrRecognizerConstant.RECOGNIZER_ML, HwrRecognizerModule_GetCommonRecognizerFactory.getCommonRecognizer(this.f52941a), HwrRecognizerConstant.RECOGNIZER_ML_MIXED, HwrRecognizerModule_GetMixedRecognizerFactory.getMixedRecognizer(this.f52941a), HwrRecognizerConstant.RECOGNIZER_SUNIA, HwrRecognizerModule_GetSuNiaRecognizerFactory.getSuNiaRecognizer(this.f52941a), HwrRecognizerConstant.RECOGNIZER_SUNIA_NAI_NBI, HwrRecognizerModule_GetSuNiaNaiNbiRecognizerFactory.getSuNiaNaiNbiRecognizer(this.f52941a));
        }

        @Override // com.onyx.galaxy.note.NoteApp_GeneratedInjector
        public void injectNoteApp(NoteApp arg0) {
        }

        @Override // dagger.hilt.android.internal.managers.ActivityRetainedComponentManager.ActivityRetainedComponentBuilderEntryPoint
        public ActivityRetainedComponentBuilder retainedComponentBuilder() {
            return new C10619d(this.f52942b);
        }

        @Override // dagger.hilt.android.internal.managers.ServiceComponentManager.ServiceComponentBuilderEntryPoint
        public ServiceComponentBuilder serviceComponentBuilder() {
            return new C10623h(this.f52942b);
        }

        public C10625j(HwrRecognizerModule hwrRecognizerModuleParam) {
            this.f52942b = this;
            this.f52941a = hwrRecognizerModuleParam;
            m41676e(hwrRecognizerModuleParam);
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$k */
    /* loaded from: classes9.dex */
    public static final class C10626k implements NoteApp_HiltComponents.ViewC.InterfaceC10641a {

        /* renamed from: a */
        public final C10625j f52953a;

        /* renamed from: b */
        public final C10620e f52954b;

        /* renamed from: c */
        public final C10618c f52955c;

        /* renamed from: d */
        public View f52956d;

        @Override // dagger.hilt.android.internal.builders.ViewComponentBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteApp_HiltComponents.ViewC build() {
            Preconditions.checkBuilderRequirement(this.f52956d, View.class);
            return new C10627l(this.f52953a, this.f52954b, this.f52955c, this.f52956d);
        }

        @Override // dagger.hilt.android.internal.builders.ViewComponentBuilder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C10626k view(View view) {
            this.f52956d = (View) Preconditions.checkNotNull(view);
            return this;
        }

        public C10626k(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10618c activityCImpl) {
            this.f52953a = singletonCImpl;
            this.f52954b = activityRetainedCImpl;
            this.f52955c = activityCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$l */
    /* loaded from: classes9.dex */
    public static final class C10627l extends NoteApp_HiltComponents.ViewC {

        /* renamed from: a */
        public final C10625j f52957a;

        /* renamed from: b */
        public final C10620e f52958b;

        /* renamed from: c */
        public final C10618c f52959c;

        /* renamed from: d */
        public final C10627l f52960d;

        public C10627l(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10618c activityCImpl, View viewParam) {
            this.f52960d = this;
            this.f52957a = singletonCImpl;
            this.f52958b = activityRetainedCImpl;
            this.f52959c = activityCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$m */
    /* loaded from: classes9.dex */
    public static final class C10628m implements NoteApp_HiltComponents.ViewModelC.InterfaceC10642a {

        /* renamed from: a */
        public final C10625j f52961a;

        /* renamed from: b */
        public final C10620e f52962b;

        /* renamed from: c */
        public SavedStateHandle f52963c;

        /* renamed from: d */
        public ViewModelLifecycle f52964d;

        @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteApp_HiltComponents.ViewModelC build() {
            Preconditions.checkBuilderRequirement(this.f52963c, SavedStateHandle.class);
            Preconditions.checkBuilderRequirement(this.f52964d, ViewModelLifecycle.class);
            return new C10629n(this.f52961a, this.f52962b, this.f52963c, this.f52964d);
        }

        @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C10628m savedStateHandle(SavedStateHandle handle) {
            this.f52963c = (SavedStateHandle) Preconditions.checkNotNull(handle);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C10628m viewModelLifecycle(ViewModelLifecycle viewModelLifecycle) {
            this.f52964d = (ViewModelLifecycle) Preconditions.checkNotNull(viewModelLifecycle);
            return this;
        }

        public C10628m(C10625j singletonCImpl, C10620e activityRetainedCImpl) {
            this.f52961a = singletonCImpl;
            this.f52962b = activityRetainedCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$n */
    /* loaded from: classes9.dex */
    public static final class C10629n extends NoteApp_HiltComponents.ViewModelC {

        /* renamed from: a */
        public final C10625j f52965a;

        /* renamed from: b */
        public final C10620e f52966b;

        /* renamed from: c */
        public final C10629n f52967c;

        /* renamed from: d */
        public Provider<MicrosoftVerifyViewModel> f52968d;

        @IdentifierNameString
        /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$n$a */
        /* loaded from: classes9.dex */
        public static final class a {

            /* renamed from: b */
            public static String f52969b = "com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel";

            /* renamed from: a */
            @KeepFieldType
            public MicrosoftVerifyViewModel f52970a;
        }

        /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$n$b */
        /* loaded from: classes9.dex */
        public static final class b<T> implements Provider<T> {

            /* renamed from: a */
            public final C10625j f52971a;

            /* renamed from: b */
            public final C10620e f52972b;

            /* renamed from: c */
            public final C10629n f52973c;

            /* renamed from: d */
            public final int f52974d;

            public b(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10629n viewModelCImpl, int id) {
                this.f52971a = singletonCImpl;
                this.f52972b = activityRetainedCImpl;
                this.f52973c = viewModelCImpl;
                this.f52974d = id;
            }

            @Override // javax.inject.Provider
            public T get() {
                if (this.f52974d == 0) {
                    return (T) new MicrosoftVerifyViewModel();
                }
                throw new AssertionError(this.f52974d);
            }
        }

        /* renamed from: a */
        public final void m41687a(final SavedStateHandle savedStateHandleParam, final ViewModelLifecycle viewModelLifecycleParam) {
            this.f52968d = new b(this.f52965a, this.f52966b, this.f52967c, 0);
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ViewModelFactoriesEntryPoint
        public Map<Class<?>, Object> getHiltViewModelAssistedMap() {
            return ImmutableMap.m26185of();
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ViewModelFactoriesEntryPoint
        public Map<Class<?>, javax.inject.Provider<ViewModel>> getHiltViewModelMap() {
            return LazyClassKeyMap.m60909of(ImmutableMap.m26186of(a.f52969b, this.f52968d));
        }

        public C10629n(C10625j singletonCImpl, C10620e activityRetainedCImpl, SavedStateHandle savedStateHandleParam, ViewModelLifecycle viewModelLifecycleParam) {
            this.f52967c = this;
            this.f52965a = singletonCImpl;
            this.f52966b = activityRetainedCImpl;
            m41687a(savedStateHandleParam, viewModelLifecycleParam);
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$o */
    /* loaded from: classes9.dex */
    public static final class C10630o implements NoteApp_HiltComponents.ViewWithFragmentC.InterfaceC10643a {

        /* renamed from: a */
        public final C10625j f52975a;

        /* renamed from: b */
        public final C10620e f52976b;

        /* renamed from: c */
        public final C10618c f52977c;

        /* renamed from: d */
        public final C10622g f52978d;

        /* renamed from: e */
        public View f52979e;

        @Override // dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoteApp_HiltComponents.ViewWithFragmentC build() {
            Preconditions.checkBuilderRequirement(this.f52979e, View.class);
            return new C10631p(this.f52975a, this.f52976b, this.f52977c, this.f52978d, this.f52979e);
        }

        @Override // dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C10630o view(View view) {
            this.f52979e = (View) Preconditions.checkNotNull(view);
            return this;
        }

        public C10630o(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10618c activityCImpl, C10622g fragmentCImpl) {
            this.f52975a = singletonCImpl;
            this.f52976b = activityRetainedCImpl;
            this.f52977c = activityCImpl;
            this.f52978d = fragmentCImpl;
        }
    }

    /* renamed from: com.onyx.galaxy.note.DaggerNoteApp_HiltComponents_SingletonC$p */
    /* loaded from: classes9.dex */
    public static final class C10631p extends NoteApp_HiltComponents.ViewWithFragmentC {

        /* renamed from: a */
        public final C10625j f52980a;

        /* renamed from: b */
        public final C10620e f52981b;

        /* renamed from: c */
        public final C10618c f52982c;

        /* renamed from: d */
        public final C10622g f52983d;

        /* renamed from: e */
        public final C10631p f52984e;

        public C10631p(C10625j singletonCImpl, C10620e activityRetainedCImpl, C10618c activityCImpl, C10622g fragmentCImpl, View viewParam) {
            this.f52984e = this;
            this.f52980a = singletonCImpl;
            this.f52981b = activityRetainedCImpl;
            this.f52982c = activityCImpl;
            this.f52983d = fragmentCImpl;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static NoteApp_HiltComponents.SingletonC create() {
        return new Builder().build();
    }
}

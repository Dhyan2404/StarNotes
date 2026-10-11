package com.onyx.galaxy.note.usercenter.viewmodel;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.internal.lifecycle.HiltViewModelMap;
import dagger.hilt.codegen.OriginatingElement;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

@OriginatingElement(topLevelClass = MicrosoftVerifyViewModel.class)
/* loaded from: classes9.dex */
public final class MicrosoftVerifyViewModel_HiltModules {

    @Module
    @InstallIn({ViewModelComponent.class})
    /* loaded from: classes9.dex */
    public static abstract class BindsModule {
        @LazyClassKey(MicrosoftVerifyViewModel.class)
        @Binds
        @HiltViewModelMap
        @IntoMap
        public abstract ViewModel binds(MicrosoftVerifyViewModel microsoftVerifyViewModel);
    }

    @Module
    @InstallIn({ActivityRetainedComponent.class})
    /* loaded from: classes9.dex */
    public static final class KeyModule {
        @Provides
        @LazyClassKey(MicrosoftVerifyViewModel.class)
        @HiltViewModelMap.KeySet
        @IntoMap
        public static boolean provide() {
            return true;
        }
    }
}

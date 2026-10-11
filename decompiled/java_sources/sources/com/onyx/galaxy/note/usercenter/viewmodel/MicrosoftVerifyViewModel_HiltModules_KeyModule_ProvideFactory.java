package com.onyx.galaxy.note.usercenter.viewmodel;

import com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel_HiltModules;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
/* loaded from: classes9.dex */
public final class MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory$a */
    /* loaded from: classes9.dex */
    public static final class C12960a {

        /* renamed from: a */
        public static final MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory f62631a = new MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory();
    }

    public static MicrosoftVerifyViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return C12960a.f62631a;
    }

    public static boolean provide() {
        return MicrosoftVerifyViewModel_HiltModules.KeyModule.provide();
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }
}

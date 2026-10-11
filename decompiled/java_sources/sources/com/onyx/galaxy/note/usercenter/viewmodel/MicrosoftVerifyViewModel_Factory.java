package com.onyx.galaxy.note.usercenter.viewmodel;

import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class MicrosoftVerifyViewModel_Factory implements Factory<MicrosoftVerifyViewModel> {

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.MicrosoftVerifyViewModel_Factory$a */
    /* loaded from: classes9.dex */
    public static final class C12959a {

        /* renamed from: a */
        public static final MicrosoftVerifyViewModel_Factory f62630a = new MicrosoftVerifyViewModel_Factory();
    }

    public static MicrosoftVerifyViewModel_Factory create() {
        return C12959a.f62630a;
    }

    public static MicrosoftVerifyViewModel newInstance() {
        return new MicrosoftVerifyViewModel();
    }

    @Override // javax.inject.Provider
    public MicrosoftVerifyViewModel get() {
        return newInstance();
    }
}

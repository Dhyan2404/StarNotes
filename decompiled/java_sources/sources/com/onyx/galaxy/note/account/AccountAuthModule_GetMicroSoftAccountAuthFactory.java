package com.onyx.galaxy.note.account;

import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class AccountAuthModule_GetMicroSoftAccountAuthFactory implements Factory<IAccountAuth> {

    /* renamed from: com.onyx.galaxy.note.account.AccountAuthModule_GetMicroSoftAccountAuthFactory$a */
    /* loaded from: classes9.dex */
    public static final class C10653a {

        /* renamed from: a */
        public static final AccountAuthModule_GetMicroSoftAccountAuthFactory f53358a = new AccountAuthModule_GetMicroSoftAccountAuthFactory();
    }

    public static AccountAuthModule_GetMicroSoftAccountAuthFactory create() {
        return C10653a.f53358a;
    }

    public static IAccountAuth getMicroSoftAccountAuth() {
        return (IAccountAuth) Preconditions.checkNotNullFromProvides(AccountAuthModule.INSTANCE.getMicroSoftAccountAuth());
    }

    @Override // javax.inject.Provider
    public IAccountAuth get() {
        return getMicroSoftAccountAuth();
    }
}

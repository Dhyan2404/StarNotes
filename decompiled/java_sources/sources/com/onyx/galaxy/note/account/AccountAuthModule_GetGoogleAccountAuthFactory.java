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
public final class AccountAuthModule_GetGoogleAccountAuthFactory implements Factory<IAccountAuth> {

    /* renamed from: com.onyx.galaxy.note.account.AccountAuthModule_GetGoogleAccountAuthFactory$a */
    /* loaded from: classes9.dex */
    public static final class C10652a {

        /* renamed from: a */
        public static final AccountAuthModule_GetGoogleAccountAuthFactory f53357a = new AccountAuthModule_GetGoogleAccountAuthFactory();
    }

    public static AccountAuthModule_GetGoogleAccountAuthFactory create() {
        return C10652a.f53357a;
    }

    public static IAccountAuth getGoogleAccountAuth() {
        return (IAccountAuth) Preconditions.checkNotNullFromProvides(AccountAuthModule.INSTANCE.getGoogleAccountAuth());
    }

    @Override // javax.inject.Provider
    public IAccountAuth get() {
        return getGoogleAccountAuth();
    }
}

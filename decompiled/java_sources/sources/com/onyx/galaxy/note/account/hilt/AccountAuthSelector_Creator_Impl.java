package com.onyx.galaxy.note.account.hilt;

import com.onyx.galaxy.note.account.hilt.AccountAuthSelector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InstanceFactory;
import dagger.internal.Provider;

@DaggerGenerated
/* loaded from: classes9.dex */
public final class AccountAuthSelector_Creator_Impl implements AccountAuthSelector.Creator {

    /* renamed from: a */
    public final AccountAuthSelector_Factory f53451a;

    public AccountAuthSelector_Creator_Impl(AccountAuthSelector_Factory accountAuthSelector_Factory) {
        this.f53451a = accountAuthSelector_Factory;
    }

    public static Provider<AccountAuthSelector.Creator> createFactoryProvider(AccountAuthSelector_Factory accountAuthSelector_Factory) {
        return InstanceFactory.create(new AccountAuthSelector_Creator_Impl(accountAuthSelector_Factory));
    }

    @Override // com.onyx.galaxy.note.account.hilt.AccountAuthSelector.Creator
    public AccountAuthSelector create(String str) {
        return this.f53451a.get(str);
    }

    public static javax.inject.Provider<AccountAuthSelector.Creator> create(AccountAuthSelector_Factory accountAuthSelector_Factory) {
        return InstanceFactory.create(new AccountAuthSelector_Creator_Impl(accountAuthSelector_Factory));
    }
}

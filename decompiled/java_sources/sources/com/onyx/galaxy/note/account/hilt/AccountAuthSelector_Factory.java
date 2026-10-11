package com.onyx.galaxy.note.account.hilt;

import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import java.util.Map;
import javax.inject.Provider;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class AccountAuthSelector_Factory {

    /* renamed from: a */
    public final Provider<Map<String, IAccountAuth>> f53452a;

    public AccountAuthSelector_Factory(Provider<Map<String, IAccountAuth>> provider) {
        this.f53452a = provider;
    }

    public static AccountAuthSelector_Factory create(Provider<Map<String, IAccountAuth>> provider) {
        return new AccountAuthSelector_Factory(provider);
    }

    public static AccountAuthSelector newInstance(Map<String, IAccountAuth> map, String str) {
        return new AccountAuthSelector(map, str);
    }

    public AccountAuthSelector get(String str) {
        return newInstance(this.f53452a.get(), str);
    }
}

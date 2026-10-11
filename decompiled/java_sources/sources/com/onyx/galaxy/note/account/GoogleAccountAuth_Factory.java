package com.onyx.galaxy.note.account;

import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class GoogleAccountAuth_Factory implements Factory<GoogleAccountAuth> {

    /* renamed from: com.onyx.galaxy.note.account.GoogleAccountAuth_Factory$a */
    /* loaded from: classes9.dex */
    public static final class C10654a {

        /* renamed from: a */
        public static final GoogleAccountAuth_Factory f53359a = new GoogleAccountAuth_Factory();
    }

    public static GoogleAccountAuth_Factory create() {
        return C10654a.f53359a;
    }

    public static GoogleAccountAuth newInstance() {
        return new GoogleAccountAuth();
    }

    @Override // javax.inject.Provider
    public GoogleAccountAuth get() {
        return newInstance();
    }
}

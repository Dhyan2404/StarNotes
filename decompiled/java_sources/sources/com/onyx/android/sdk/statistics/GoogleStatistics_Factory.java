package com.onyx.android.sdk.statistics;

import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes8.dex */
public final class GoogleStatistics_Factory implements Factory<GoogleStatistics> {

    /* renamed from: com.onyx.android.sdk.statistics.GoogleStatistics_Factory$a */
    /* loaded from: classes8.dex */
    public static final class C7997a {

        /* renamed from: a */
        public static final GoogleStatistics_Factory f46582a = new GoogleStatistics_Factory();
    }

    public static GoogleStatistics_Factory create() {
        return C7997a.f46582a;
    }

    public static GoogleStatistics newInstance() {
        return new GoogleStatistics();
    }

    @Override // javax.inject.Provider
    public GoogleStatistics get() {
        return newInstance();
    }
}

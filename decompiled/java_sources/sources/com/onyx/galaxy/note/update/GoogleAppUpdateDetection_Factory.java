package com.onyx.galaxy.note.update;

import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes9.dex */
public final class GoogleAppUpdateDetection_Factory implements Factory<GoogleAppUpdateDetection> {

    /* renamed from: com.onyx.galaxy.note.update.GoogleAppUpdateDetection_Factory$a */
    /* loaded from: classes9.dex */
    public static final class C12832a {

        /* renamed from: a */
        public static final GoogleAppUpdateDetection_Factory f62286a = new GoogleAppUpdateDetection_Factory();
    }

    public static GoogleAppUpdateDetection_Factory create() {
        return C12832a.f62286a;
    }

    public static GoogleAppUpdateDetection newInstance() {
        return new GoogleAppUpdateDetection();
    }

    @Override // javax.inject.Provider
    public GoogleAppUpdateDetection get() {
        return newInstance();
    }
}

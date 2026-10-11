package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import com.google.android.datatransport.runtime.backends.BackendFactory;
import com.google.android.datatransport.runtime.backends.CreationContext;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.sunia.HTREnginev2.sod;

@Keep
/* loaded from: classes4.dex */
public class CctBackendFactory implements BackendFactory {
    @Override // com.google.android.datatransport.runtime.backends.BackendFactory
    public TransportBackend create(CreationContext creationContext) {
        return new sod(creationContext.getApplicationContext(), creationContext.getWallClock(), creationContext.getMonotonicClock());
    }
}

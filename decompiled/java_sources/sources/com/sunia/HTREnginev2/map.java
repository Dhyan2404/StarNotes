package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

/* loaded from: classes5.dex */
public final class map implements Comparator {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return ((Scope) obj).getScopeUri().compareTo(((Scope) obj2).getScopeUri());
    }
}

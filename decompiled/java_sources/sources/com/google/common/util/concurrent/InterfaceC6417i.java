package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.util.concurrent.Service;
import com.sunia.HTREnginev2.pnf;

@GwtIncompatible
@pnf
/* renamed from: com.google.common.util.concurrent.i */
/* loaded from: classes6.dex */
public interface InterfaceC6417i {
    ImmutableMultimap<Service.State, Service> servicesByState();
}

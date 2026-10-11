package com.sunia.HTREnginev2;

import java.util.concurrent.locks.LockSupport;
import javax.annotation.CheckForNull;

@pnf
/* loaded from: classes6.dex */
public final class ojk {

    /* renamed from: a */
    public static final long f79805a = 2147483647999999999L;

    /* renamed from: a */
    public static void m55988a(@CheckForNull Object obj, long j) {
        LockSupport.parkNanos(obj, Math.min(j, f79805a));
    }
}

package com.google.android.datatransport.runtime;

import androidx.annotation.WorkerThread;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.Transport;

/* loaded from: classes4.dex */
public final class ForcedSender {
    /* renamed from: a */
    public static TransportContext m17418a(Transport<?> transport) {
        if (transport instanceof C4634e) {
            return ((C4634e) transport).m17448b();
        }
        throw new IllegalArgumentException("Expected instance of TransportImpl.");
    }

    @WorkerThread
    public static void sendBlocking(Transport<?> transport, Priority priority) {
        TransportRuntime.getInstance().getUploader().logAndUpdateState(m17418a(transport).withPriority(priority), 1);
    }
}

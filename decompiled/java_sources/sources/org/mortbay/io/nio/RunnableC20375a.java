package org.mortbay.io.nio;

import java.io.IOException;
import org.mortbay.io.nio.SelectorManager;
import org.mortbay.log.Log;

/* renamed from: org.mortbay.io.nio.a */
/* loaded from: classes13.dex */
public class RunnableC20375a implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ SelectChannelEndPoint f114526e;

    /* renamed from: f */
    public final /* synthetic */ SelectorManager.SelectSet f114527f;

    public RunnableC20375a(SelectorManager.SelectSet selectSet, SelectChannelEndPoint selectChannelEndPoint) {
        this.f114527f = selectSet;
        this.f114526e = selectChannelEndPoint;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f114526e.close();
        } catch (IOException e) {
            Log.ignore(e);
        }
    }
}

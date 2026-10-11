package org.apache.http.impl.conn.tsccm;

@Deprecated
/* loaded from: classes12.dex */
public class WaitingThreadAborter {

    /* renamed from: a */
    public WaitingThread f110834a;

    /* renamed from: b */
    public boolean f110835b;

    public void abort() {
        this.f110835b = true;
        WaitingThread waitingThread = this.f110834a;
        if (waitingThread != null) {
            waitingThread.interrupt();
        }
    }

    public void setWaitingThread(WaitingThread waitingThread) {
        this.f110834a = waitingThread;
        if (this.f110835b) {
            waitingThread.interrupt();
        }
    }
}

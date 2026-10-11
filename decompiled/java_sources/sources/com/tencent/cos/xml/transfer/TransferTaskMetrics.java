package com.tencent.cos.xml.transfer;

import java.net.InetAddress;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class TransferTaskMetrics {
    InetAddress connectAddress;
    String domain;
    private long firstProgressTookTime;
    long size;
    private long tookTime;
    private long waitTookTime;
    private long startTime = 0;
    private long progressTime = 0;
    private long firstProgressCallbackTime = 0;
    private long completeTime = 0;

    private long tookTime(long j) {
        return Math.max(-1L, j - this.startTime) / 1000000;
    }

    public InetAddress getConnectAddress() {
        return this.connectAddress;
    }

    public String getDomain() {
        return this.domain;
    }

    public long getFirstProgressTookTime() {
        return this.firstProgressTookTime;
    }

    public long getSize() {
        return this.size;
    }

    public long getTookTime() {
        return this.tookTime;
    }

    public long getWaitTookTime() {
        return this.waitTookTime;
    }

    public void onComplete() {
        long nanoTime = System.nanoTime();
        this.completeTime = nanoTime;
        this.tookTime = tookTime(nanoTime);
        this.waitTookTime = tookTime(this.progressTime);
        this.firstProgressTookTime = tookTime(this.firstProgressCallbackTime);
    }

    public void onFirstProgressCallback() {
        if (this.firstProgressCallbackTime <= this.progressTime) {
            this.firstProgressCallbackTime = System.nanoTime();
        }
    }

    public void onInProgress() {
        long nanoTime = System.nanoTime();
        this.progressTime = nanoTime;
        this.firstProgressCallbackTime = nanoTime;
    }

    public void onStart() {
        this.startTime = System.nanoTime();
    }

    public String toString() {
        return "TransferTaskMetrics{domain='" + this.domain + Chars.QUOTE + ", connectAddress=" + this.connectAddress + ", size=" + this.size + ", tookTime=" + this.tookTime + ", waitTookTime=" + this.waitTookTime + ", firstProgressTookTime=" + this.firstProgressTookTime + '}';
    }
}

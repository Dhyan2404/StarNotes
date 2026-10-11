package org.apache.http.config;

import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class SocketConfig implements Cloneable {
    public static final SocketConfig DEFAULT = new Builder().build();

    /* renamed from: e */
    public final int f110265e;

    /* renamed from: f */
    public final boolean f110266f;

    /* renamed from: g */
    public final int f110267g;

    /* renamed from: h */
    public final boolean f110268h;

    /* renamed from: i */
    public final boolean f110269i;

    /* renamed from: j */
    public final int f110270j;

    /* renamed from: k */
    public final int f110271k;

    /* renamed from: l */
    public final int f110272l;

    /* loaded from: classes12.dex */
    public static class Builder {

        /* renamed from: a */
        public int f110273a;

        /* renamed from: b */
        public boolean f110274b;

        /* renamed from: d */
        public boolean f110276d;

        /* renamed from: f */
        public int f110278f;

        /* renamed from: g */
        public int f110279g;

        /* renamed from: h */
        public int f110280h;

        /* renamed from: c */
        public int f110275c = -1;

        /* renamed from: e */
        public boolean f110277e = true;

        public SocketConfig build() {
            return new SocketConfig(this.f110273a, this.f110274b, this.f110275c, this.f110276d, this.f110277e, this.f110278f, this.f110279g, this.f110280h);
        }

        public Builder setBacklogSize(int i) {
            this.f110280h = i;
            return this;
        }

        public Builder setRcvBufSize(int i) {
            this.f110279g = i;
            return this;
        }

        public Builder setSndBufSize(int i) {
            this.f110278f = i;
            return this;
        }

        public Builder setSoKeepAlive(boolean z) {
            this.f110276d = z;
            return this;
        }

        public Builder setSoLinger(int i) {
            this.f110275c = i;
            return this;
        }

        public Builder setSoReuseAddress(boolean z) {
            this.f110274b = z;
            return this;
        }

        public Builder setSoTimeout(int i) {
            this.f110273a = i;
            return this;
        }

        public Builder setTcpNoDelay(boolean z) {
            this.f110277e = z;
            return this;
        }
    }

    public SocketConfig(int i, boolean z, int i2, boolean z2, boolean z3, int i3, int i4, int i5) {
        this.f110265e = i;
        this.f110266f = z;
        this.f110267g = i2;
        this.f110268h = z2;
        this.f110269i = z3;
        this.f110270j = i3;
        this.f110271k = i4;
        this.f110272l = i5;
    }

    public static Builder copy(SocketConfig socketConfig) {
        Args.notNull(socketConfig, "Socket config");
        return new Builder().setSoTimeout(socketConfig.getSoTimeout()).setSoReuseAddress(socketConfig.isSoReuseAddress()).setSoLinger(socketConfig.getSoLinger()).setSoKeepAlive(socketConfig.isSoKeepAlive()).setTcpNoDelay(socketConfig.isTcpNoDelay()).setSndBufSize(socketConfig.getSndBufSize()).setRcvBufSize(socketConfig.getRcvBufSize()).setBacklogSize(socketConfig.getBacklogSize());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getBacklogSize() {
        return this.f110272l;
    }

    public int getRcvBufSize() {
        return this.f110271k;
    }

    public int getSndBufSize() {
        return this.f110270j;
    }

    public int getSoLinger() {
        return this.f110267g;
    }

    public int getSoTimeout() {
        return this.f110265e;
    }

    public boolean isSoKeepAlive() {
        return this.f110268h;
    }

    public boolean isSoReuseAddress() {
        return this.f110266f;
    }

    public boolean isTcpNoDelay() {
        return this.f110269i;
    }

    public String toString() {
        return "[soTimeout=" + this.f110265e + ", soReuseAddress=" + this.f110266f + ", soLinger=" + this.f110267g + ", soKeepAlive=" + this.f110268h + ", tcpNoDelay=" + this.f110269i + ", sndBufSize=" + this.f110270j + ", rcvBufSize=" + this.f110271k + ", backlogSize=" + this.f110272l + IteratorUtils.f104924b;
    }

    public SocketConfig clone() throws CloneNotSupportedException {
        return (SocketConfig) super.clone();
    }
}

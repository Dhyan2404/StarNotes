package com.tencent.beacon.event.open;

import com.tencent.beacon.base.net.adapter.AbstractNetAdapter;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import java.util.concurrent.ScheduledExecutorService;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class BeaconConfig {

    /* renamed from: A */
    private final boolean f93129A;

    /* renamed from: B */
    private final boolean f93130B;

    /* renamed from: C */
    private final int f93131C;

    /* renamed from: D */
    private final int f93132D;

    /* renamed from: E */
    private final boolean f93133E;

    /* renamed from: F */
    private final int f93134F;

    /* renamed from: G */
    private final boolean f93135G;

    /* renamed from: a */
    private final int f93136a;

    /* renamed from: b */
    private final boolean f93137b;

    /* renamed from: c */
    private final boolean f93138c;

    /* renamed from: d */
    private final long f93139d;

    /* renamed from: e */
    private final long f93140e;

    /* renamed from: f */
    private final int f93141f;

    /* renamed from: g */
    private final int f93142g;

    /* renamed from: h */
    private final boolean f93143h;

    /* renamed from: i */
    private final AbstractNetAdapter f93144i;

    /* renamed from: j */
    private final String f93145j;

    /* renamed from: k */
    private final String f93146k;

    /* renamed from: l */
    private final boolean f93147l;

    /* renamed from: m */
    private final boolean f93148m;

    /* renamed from: n */
    private final boolean f93149n;

    /* renamed from: o */
    private final String f93150o;

    /* renamed from: p */
    private final String f93151p;

    /* renamed from: q */
    private final String f93152q;

    /* renamed from: r */
    private final String f93153r;

    /* renamed from: s */
    private final String f93154s;

    /* renamed from: t */
    private final String f93155t;

    /* renamed from: u */
    private final String f93156u;

    /* renamed from: v */
    private final String f93157v;

    /* renamed from: w */
    private final String f93158w;

    /* renamed from: x */
    private final String f93159x;

    /* renamed from: y */
    private final boolean f93160y;

    /* renamed from: z */
    private final boolean f93161z;

    /* loaded from: classes10.dex */
    public static final class Builder {

        /* renamed from: d */
        private ScheduledExecutorService f93173d;

        /* renamed from: f */
        private AbstractNetAdapter f93175f;

        /* renamed from: k */
        private String f93180k;

        /* renamed from: l */
        private String f93181l;

        /* renamed from: a */
        private int f93170a = 10000;

        /* renamed from: b */
        private boolean f93171b = true;

        /* renamed from: c */
        private boolean f93172c = true;

        /* renamed from: e */
        private boolean f93174e = true;

        /* renamed from: g */
        private long f93176g = 2000;

        /* renamed from: h */
        private long f93177h = 5000;

        /* renamed from: i */
        private int f93178i = 48;

        /* renamed from: j */
        private int f93179j = 48;

        /* renamed from: m */
        private boolean f93182m = false;

        /* renamed from: n */
        private boolean f93183n = true;

        /* renamed from: o */
        private boolean f93184o = true;

        /* renamed from: p */
        private String f93185p = "";

        /* renamed from: q */
        private String f93186q = "";

        /* renamed from: r */
        private String f93187r = "";

        /* renamed from: s */
        private String f93188s = "";

        /* renamed from: t */
        private String f93189t = "";

        /* renamed from: u */
        private String f93190u = "";

        /* renamed from: v */
        private String f93191v = "";

        /* renamed from: w */
        private String f93192w = "";

        /* renamed from: x */
        private String f93193x = "";

        /* renamed from: y */
        private String f93194y = "";

        /* renamed from: z */
        private boolean f93195z = true;

        /* renamed from: A */
        private boolean f93162A = true;

        /* renamed from: B */
        private boolean f93163B = true;

        /* renamed from: C */
        private boolean f93164C = false;

        /* renamed from: D */
        private int f93165D = 2;

        /* renamed from: E */
        private int f93166E = 0;

        /* renamed from: F */
        private boolean f93167F = true;

        /* renamed from: G */
        private int f93168G = -1;

        /* renamed from: H */
        private boolean f93169H = true;

        public Builder auditEnable(boolean z) {
            this.f93171b = z;
            return this;
        }

        public Builder bidEnable(boolean z) {
            this.f93172c = z;
            return this;
        }

        public BeaconConfig build() {
            ScheduledExecutorService scheduledExecutorService = this.f93173d;
            if (scheduledExecutorService != null) {
                AbstractC14874b.m58932a(scheduledExecutorService);
            }
            return new BeaconConfig(this);
        }

        @Deprecated
        public Builder eventReportEnable(boolean z) {
            C14954c.m59395b("eventReportEnable is deprecated!", new Object[0]);
            return this;
        }

        public Builder maxDBCount(int i) {
            this.f93170a = i;
            return this;
        }

        public Builder pagePathEnable(boolean z) {
            this.f93184o = z;
            return this;
        }

        public Builder qmspEnable(boolean z) {
            this.f93183n = z;
            return this;
        }

        public Builder setAndroidID(String str) {
            this.f93185p = str;
            return this;
        }

        public Builder setCompressType(int i) {
            this.f93165D = i;
            return this;
        }

        public Builder setConfigHost(String str) {
            this.f93181l = str;
            return this;
        }

        public Builder setExecutorService(ScheduledExecutorService scheduledExecutorService) {
            this.f93173d = scheduledExecutorService;
            return this;
        }

        public Builder setForceEnableAtta(boolean z) {
            this.f93182m = z;
            return this;
        }

        public Builder setHighPerformanceMode(boolean z) {
            this.f93164C = z;
            return this;
        }

        public Builder setHttpAdapter(AbstractNetAdapter abstractNetAdapter) {
            this.f93175f = abstractNetAdapter;
            return this;
        }

        public Builder setImei(String str) {
            this.f93186q = str;
            return this;
        }

        public Builder setImei2(String str) {
            this.f93187r = str;
            return this;
        }

        public Builder setImsi(String str) {
            this.f93188s = str;
            return this;
        }

        public Builder setIsSocketMode(boolean z) {
            this.f93174e = z;
            return this;
        }

        public Builder setLongConnectionType(int i) {
            this.f93168G = i;
            return this;
        }

        public Builder setMac(String str) {
            this.f93191v = str;
            return this;
        }

        public Builder setMeid(String str) {
            this.f93189t = str;
            return this;
        }

        public Builder setModel(String str) {
            this.f93190u = str;
            return this;
        }

        public Builder setNeedAttaReport(boolean z) {
            this.f93163B = z;
            return this;
        }

        public Builder setNeedInitQimei(boolean z) {
            this.f93195z = z;
            return this;
        }

        public Builder setNeedLifeCycleListener(boolean z) {
            this.f93167F = z;
            return this;
        }

        public Builder setNeedReportRqdEvent(boolean z) {
            this.f93162A = z;
            return this;
        }

        public Builder setNormalPollingTime(long j) {
            this.f93177h = j;
            return this;
        }

        public Builder setNormalUploadNum(int i) {
            this.f93179j = i;
            return this;
        }

        public Builder setOaid(String str) {
            this.f93194y = str;
            return this;
        }

        public Builder setRealtimePollingTime(long j) {
            this.f93176g = j;
            return this;
        }

        public Builder setRealtimeUploadNum(int i) {
            this.f93178i = i;
            return this;
        }

        public Builder setRetryAfterQuicFailImme(boolean z) {
            this.f93169H = z;
            return this;
        }

        public Builder setRsaPubKeyType(int i) {
            this.f93166E = i;
            return this;
        }

        public Builder setUploadHost(String str) {
            this.f93180k = str;
            return this;
        }

        public Builder setWifiMacAddress(String str) {
            this.f93192w = str;
            return this;
        }

        public Builder setWifiSSID(String str) {
            this.f93193x = str;
            return this;
        }
    }

    public BeaconConfig(Builder builder) {
        this.f93136a = builder.f93170a;
        this.f93137b = builder.f93171b;
        this.f93138c = builder.f93172c;
        this.f93139d = builder.f93176g;
        this.f93140e = builder.f93177h;
        this.f93141f = builder.f93178i;
        this.f93142g = builder.f93179j;
        this.f93143h = builder.f93174e;
        this.f93144i = builder.f93175f;
        this.f93145j = builder.f93180k;
        this.f93146k = builder.f93181l;
        this.f93147l = builder.f93182m;
        this.f93148m = builder.f93183n;
        this.f93149n = builder.f93184o;
        this.f93150o = builder.f93185p;
        this.f93151p = builder.f93186q;
        this.f93152q = builder.f93187r;
        this.f93153r = builder.f93188s;
        this.f93154s = builder.f93189t;
        this.f93155t = builder.f93190u;
        this.f93156u = builder.f93191v;
        this.f93157v = builder.f93192w;
        this.f93158w = builder.f93193x;
        this.f93159x = builder.f93194y;
        this.f93160y = builder.f93195z;
        this.f93161z = builder.f93162A;
        this.f93129A = builder.f93163B;
        this.f93130B = builder.f93164C;
        this.f93131C = builder.f93165D;
        this.f93132D = builder.f93166E;
        this.f93133E = builder.f93167F;
        this.f93134F = builder.f93168G;
        this.f93135G = builder.f93169H;
    }

    public static Builder builder() {
        return new Builder();
    }

    public String getAndroidID() {
        return this.f93150o;
    }

    public int getCompressType() {
        return this.f93131C;
    }

    public String getConfigHost() {
        return this.f93146k;
    }

    public AbstractNetAdapter getHttpAdapter() {
        return this.f93144i;
    }

    public String getImei() {
        return this.f93151p;
    }

    public String getImei2() {
        return this.f93152q;
    }

    public String getImsi() {
        return this.f93153r;
    }

    public int getLongConnectionType() {
        return this.f93134F;
    }

    public String getMac() {
        return this.f93156u;
    }

    public int getMaxDBCount() {
        return this.f93136a;
    }

    public String getMeid() {
        return this.f93154s;
    }

    public String getModel() {
        return this.f93155t;
    }

    public long getNormalPollingTIme() {
        return this.f93140e;
    }

    public int getNormalUploadNum() {
        return this.f93142g;
    }

    public String getOaid() {
        return this.f93159x;
    }

    public long getRealtimePollingTime() {
        return this.f93139d;
    }

    public int getRealtimeUploadNum() {
        return this.f93141f;
    }

    public boolean getRetryAfterQuicFailImme() {
        return this.f93135G;
    }

    public int getRsaPubKeyType() {
        return this.f93132D;
    }

    public String getUploadHost() {
        return this.f93145j;
    }

    public String getWifiMacAddress() {
        return this.f93157v;
    }

    public String getWifiSSID() {
        return this.f93158w;
    }

    public boolean isAuditEnable() {
        return this.f93137b;
    }

    public boolean isBidEnable() {
        return this.f93138c;
    }

    public boolean isEnableQmsp() {
        return this.f93148m;
    }

    public boolean isForceEnableAtta() {
        return this.f93147l;
    }

    public boolean isHighPerformanceMode() {
        return this.f93130B;
    }

    public boolean isNeedInitQimei() {
        return this.f93160y;
    }

    public boolean isNeedLifeCycleListener() {
        return this.f93133E;
    }

    public boolean isPagePathEnable() {
        return this.f93149n;
    }

    public boolean isSocketMode() {
        return this.f93143h;
    }

    public boolean needAttaReport() {
        return this.f93129A;
    }

    public boolean needReportRqdEvent() {
        return this.f93161z;
    }

    public String toString() {
        return "BeaconConfig{maxDBCount=" + this.f93136a + ", auditEnable=" + this.f93137b + ", bidEnable=" + this.f93138c + ", realtimePollingTime=" + this.f93139d + ", normalPollingTIme=" + this.f93140e + ", normalUploadNum=" + this.f93142g + ", realtimeUploadNum=" + this.f93141f + ", httpAdapter=" + this.f93144i + ", uploadHost='" + this.f93145j + Chars.QUOTE + ", configHost='" + this.f93146k + Chars.QUOTE + ", forceEnableAtta=" + this.f93147l + ", enableQmsp=" + this.f93148m + ", pagePathEnable=" + this.f93149n + ", androidID='" + this.f93150o + Chars.QUOTE + ", imei='" + this.f93151p + Chars.QUOTE + ", imei2='" + this.f93152q + Chars.QUOTE + ", imsi='" + this.f93153r + Chars.QUOTE + ", meid='" + this.f93154s + Chars.QUOTE + ", model='" + this.f93155t + Chars.QUOTE + ", mac='" + this.f93156u + Chars.QUOTE + ", wifiMacAddress='" + this.f93157v + Chars.QUOTE + ", wifiSSID='" + this.f93158w + Chars.QUOTE + ", oaid='" + this.f93159x + Chars.QUOTE + ", needInitQ='" + this.f93160y + Chars.QUOTE + '}';
    }
}

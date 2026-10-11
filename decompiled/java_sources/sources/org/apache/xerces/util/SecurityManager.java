package org.apache.xerces.util;

/* loaded from: classes13.dex */
public final class SecurityManager {

    /* renamed from: c */
    public static final int f113509c = 100000;

    /* renamed from: d */
    public static final int f113510d = 3000;

    /* renamed from: a */
    public int f113511a = 100000;

    /* renamed from: b */
    public int f113512b = 3000;

    public int getEntityExpansionLimit() {
        return this.f113511a;
    }

    public int getMaxOccurNodeLimit() {
        return this.f113512b;
    }

    public void setEntityExpansionLimit(int i) {
        this.f113511a = i;
    }

    public void setMaxOccurNodeLimit(int i) {
        this.f113512b = i;
    }
}

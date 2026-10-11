package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.aof;

@GwtCompatible
@aof
/* loaded from: classes6.dex */
public abstract class Ticker {

    /* renamed from: a */
    public static final Ticker f33650a = new C5672a();

    /* renamed from: com.google.common.base.Ticker$a */
    /* loaded from: classes6.dex */
    public class C5672a extends Ticker {
        @Override // com.google.common.base.Ticker
        public long read() {
            return C5673a.m25869l();
        }
    }

    public static Ticker systemTicker() {
        return f33650a;
    }

    public abstract long read();
}

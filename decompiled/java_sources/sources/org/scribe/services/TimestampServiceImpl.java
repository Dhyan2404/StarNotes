package org.scribe.services;

import java.util.Random;

/* loaded from: classes16.dex */
public class TimestampServiceImpl implements TimestampService {

    /* renamed from: a */
    public C20461a f115998a = new C20461a();

    /* renamed from: org.scribe.services.TimestampServiceImpl$a */
    /* loaded from: classes16.dex */
    public static class C20461a {

        /* renamed from: a */
        public final Random f115999a = new Random();

        /* renamed from: a */
        public Long m71892a() {
            return Long.valueOf(System.currentTimeMillis());
        }

        /* renamed from: b */
        public Integer m71893b() {
            return Integer.valueOf(this.f115999a.nextInt());
        }
    }

    /* renamed from: a */
    public final Long m71890a() {
        return Long.valueOf(this.f115998a.m71892a().longValue() / 1000);
    }

    /* renamed from: b */
    public void m71891b(C20461a c20461a) {
        this.f115998a = c20461a;
    }

    @Override // org.scribe.services.TimestampService
    public String getNonce() {
        return String.valueOf(m71890a().longValue() + this.f115998a.m71893b().intValue());
    }

    @Override // org.scribe.services.TimestampService
    public String getTimestampInSeconds() {
        return String.valueOf(m71890a());
    }
}

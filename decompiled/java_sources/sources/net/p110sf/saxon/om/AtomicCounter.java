package net.p110sf.saxon.om;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes11.dex */
public class AtomicCounter {

    /* renamed from: a */
    public AtomicLong f100755a;

    public AtomicCounter(int i) {
        m63373a(i);
    }

    /* renamed from: a */
    public final void m63373a(int i) {
        this.f100755a = new AtomicLong(i);
    }

    public long get() {
        return this.f100755a.get();
    }

    public long getAndIncrement() {
        return this.f100755a.getAndIncrement();
    }

    public long incrementAndGet() {
        return getAndIncrement() + 1;
    }
}

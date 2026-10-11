package com.google.common.hash;

import com.google.common.base.Supplier;
import com.sunia.HTREnginev2.d5j;
import com.sunia.HTREnginev2.wnf;
import java.util.concurrent.atomic.AtomicLong;

@wnf
/* loaded from: classes6.dex */
public final class LongAddables {

    /* renamed from: a */
    public static final Supplier<d5j> f34773a;

    /* loaded from: classes6.dex */
    public static final class PureJavaLongAddable extends AtomicLong implements d5j {
        private PureJavaLongAddable() {
        }

        @Override // com.sunia.HTREnginev2.d5j
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // com.sunia.HTREnginev2.d5j
        public void increment() {
            getAndIncrement();
        }

        @Override // com.sunia.HTREnginev2.d5j
        public long sum() {
            return get();
        }

        public /* synthetic */ PureJavaLongAddable(C6183a c6183a) {
            this();
        }
    }

    /* renamed from: com.google.common.hash.LongAddables$a */
    /* loaded from: classes6.dex */
    public class C6183a implements Supplier<d5j> {
        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public d5j get() {
            return new LongAdder();
        }
    }

    /* renamed from: com.google.common.hash.LongAddables$b */
    /* loaded from: classes6.dex */
    public class C6184b implements Supplier<d5j> {
        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public d5j get() {
            return new PureJavaLongAddable(null);
        }
    }

    static {
        Supplier<d5j> c6184b;
        try {
            new LongAdder();
            c6184b = new C6183a();
        } catch (Throwable unused) {
            c6184b = new C6184b();
        }
        f34773a = c6184b;
    }

    /* renamed from: a */
    public static d5j m27151a() {
        return f34773a.get();
    }
}

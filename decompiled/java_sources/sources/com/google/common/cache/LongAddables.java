package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import com.sunia.HTREnginev2.e5j;
import com.sunia.HTREnginev2.rnf;
import java.util.concurrent.atomic.AtomicLong;

@rnf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class LongAddables {

    /* renamed from: a */
    public static final Supplier<e5j> f33832a;

    /* loaded from: classes6.dex */
    public static final class PureJavaLongAddable extends AtomicLong implements e5j {
        private PureJavaLongAddable() {
        }

        @Override // com.sunia.HTREnginev2.e5j
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // com.sunia.HTREnginev2.e5j
        public void increment() {
            getAndIncrement();
        }

        @Override // com.sunia.HTREnginev2.e5j
        public long sum() {
            return get();
        }

        public /* synthetic */ PureJavaLongAddable(C5738a c5738a) {
            this();
        }
    }

    /* renamed from: com.google.common.cache.LongAddables$a */
    /* loaded from: classes6.dex */
    public class C5738a implements Supplier<e5j> {
        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e5j get() {
            return new LongAdder();
        }
    }

    /* renamed from: com.google.common.cache.LongAddables$b */
    /* loaded from: classes6.dex */
    public class C5739b implements Supplier<e5j> {
        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e5j get() {
            return new PureJavaLongAddable(null);
        }
    }

    static {
        Supplier<e5j> c5739b;
        try {
            new LongAdder();
            c5739b = new C5738a();
        } catch (Throwable unused) {
            c5739b = new C5739b();
        }
        f33832a = c5739b;
    }

    /* renamed from: a */
    public static e5j m25996a() {
        return f33832a.get();
    }
}

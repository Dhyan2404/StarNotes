package io.opencensus.common;

import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public final class Functions {

    /* renamed from: a */
    public static final Function<Object, Void> f94640a = new C17108a();

    /* renamed from: b */
    public static final Function<Object, Void> f94641b = new C17109b();

    /* renamed from: c */
    public static final Function<Object, Void> f94642c = new C17110c();

    /* renamed from: d */
    public static final Function<Object, String> f94643d = new C17111d();

    /* renamed from: io.opencensus.common.Functions$a */
    /* loaded from: classes10.dex */
    public class C17108a implements Function<Object, Void> {
        @Override // io.opencensus.common.Function
        @Nullable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Object obj) {
            return null;
        }
    }

    /* renamed from: io.opencensus.common.Functions$b */
    /* loaded from: classes10.dex */
    public class C17109b implements Function<Object, Void> {
        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Object obj) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: io.opencensus.common.Functions$c */
    /* loaded from: classes10.dex */
    public class C17110c implements Function<Object, Void> {
        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Object obj) {
            throw new AssertionError();
        }
    }

    /* renamed from: io.opencensus.common.Functions$d */
    /* loaded from: classes10.dex */
    public class C17111d implements Function<Object, String> {
        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(Object obj) {
            if (obj == null) {
                return null;
            }
            return obj.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: io.opencensus.common.Functions$e */
    /* loaded from: classes10.dex */
    public class C17112e<T> implements Function<Object, T> {

        /* renamed from: a */
        public final /* synthetic */ Object f94644a;

        public C17112e(Object obj) {
            this.f94644a = obj;
        }

        @Override // io.opencensus.common.Function
        public T apply(Object obj) {
            return (T) this.f94644a;
        }
    }

    public static <T> Function<Object, T> returnConstant(T t) {
        return new C17112e(t);
    }

    public static <T> Function<Object, T> returnNull() {
        return (Function<Object, T>) f94640a;
    }

    public static Function<Object, String> returnToString() {
        return f94643d;
    }

    public static <T> Function<Object, T> throwAssertionError() {
        return (Function<Object, T>) f94642c;
    }

    public static <T> Function<Object, T> throwIllegalArgumentException() {
        return (Function<Object, T>) f94641b;
    }
}

package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.aof;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@DoNotMock("Use Optional.of(value) or Optional.absent()")
@GwtCompatible(serializable = true)
@aof
/* loaded from: classes6.dex */
public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: com.google.common.base.Optional$a */
    /* loaded from: classes6.dex */
    public class C5655a implements Iterable<T> {

        /* renamed from: e */
        public final /* synthetic */ Iterable f33609e;

        /* renamed from: com.google.common.base.Optional$a$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<T> {

            /* renamed from: g */
            public final Iterator<? extends Optional<? extends T>> f33610g;

            public a() {
                this.f33610g = (Iterator) Preconditions.checkNotNull(C5655a.this.f33609e.iterator());
            }

            @Override // com.google.common.base.AbstractIterator
            @CheckForNull
            /* renamed from: a */
            public T mo25762a() {
                while (this.f33610g.hasNext()) {
                    Optional<? extends T> next = this.f33610g.next();
                    if (next.isPresent()) {
                        return next.get();
                    }
                }
                return m25763b();
            }
        }

        public C5655a(Iterable iterable) {
            this.f33609e = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new a();
        }
    }

    public static <T> Optional<T> absent() {
        return Absent.withType();
    }

    @CheckForNull
    public static <T> Optional<T> fromJavaUtil(@CheckForNull java.util.Optional<T> optional) {
        if (optional == null) {
            return null;
        }
        return fromNullable(optional.orElse(null));
    }

    public static <T> Optional<T> fromNullable(@CheckForNull T t) {
        return t == null ? absent() : new Present(t);
    }

    /* renamed from: of */
    public static <T> Optional<T> m25808of(T t) {
        return new Present(Preconditions.checkNotNull(t));
    }

    @Beta
    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        Preconditions.checkNotNull(iterable);
        return new C5655a(iterable);
    }

    @CheckForNull
    public static <T> java.util.Optional<T> toJavaUtil(@CheckForNull Optional<T> optional) {
        if (optional == null) {
            return null;
        }
        return optional.toJavaUtil();
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(@CheckForNull Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    /* renamed from: or */
    public abstract Optional<T> mo25759or(Optional<? extends T> optional);

    @Beta
    /* renamed from: or */
    public abstract T mo25760or(Supplier<? extends T> supplier);

    /* renamed from: or */
    public abstract T mo25761or(T t);

    @CheckForNull
    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(Function<? super T, V> function);

    public java.util.Optional<T> toJavaUtil() {
        return java.util.Optional.ofNullable(orNull());
    }
}

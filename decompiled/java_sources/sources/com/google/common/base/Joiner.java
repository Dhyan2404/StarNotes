package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.aof;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

@GwtCompatible
@aof
/* loaded from: classes6.dex */
public class Joiner {

    /* renamed from: a */
    public final String f33592a;

    /* loaded from: classes6.dex */
    public static final class MapJoiner {

        /* renamed from: a */
        public final Joiner f33593a;

        /* renamed from: b */
        public final String f33594b;

        public /* synthetic */ MapJoiner(Joiner joiner, String str, C5649a c5649a) {
            this(joiner, str);
        }

        @CanIgnoreReturnValue
        public <A extends Appendable> A appendTo(A a, Map<?, ?> map) throws IOException {
            return (A) appendTo((MapJoiner) a, (Iterable<? extends Map.Entry<?, ?>>) map.entrySet());
        }

        public String join(Map<?, ?> map) {
            return join(map.entrySet());
        }

        public MapJoiner useForNull(String str) {
            return new MapJoiner(this.f33593a.useForNull(str), this.f33594b);
        }

        public MapJoiner(Joiner joiner, String str) {
            this.f33593a = joiner;
            this.f33594b = (String) Preconditions.checkNotNull(str);
        }

        @CanIgnoreReturnValue
        public StringBuilder appendTo(StringBuilder sb, Map<?, ?> map) {
            return appendTo(sb, (Iterable<? extends Map.Entry<?, ?>>) map.entrySet());
        }

        @Beta
        public String join(Iterable<? extends Map.Entry<?, ?>> iterable) {
            return join(iterable.iterator());
        }

        @CanIgnoreReturnValue
        @Beta
        public <A extends Appendable> A appendTo(A a, Iterable<? extends Map.Entry<?, ?>> iterable) throws IOException {
            return (A) appendTo((MapJoiner) a, iterable.iterator());
        }

        @Beta
        public String join(Iterator<? extends Map.Entry<?, ?>> it2) {
            return appendTo(new StringBuilder(), it2).toString();
        }

        @CanIgnoreReturnValue
        @Beta
        public <A extends Appendable> A appendTo(A a, Iterator<? extends Map.Entry<?, ?>> it2) throws IOException {
            Preconditions.checkNotNull(a);
            if (it2.hasNext()) {
                Map.Entry<?, ?> next = it2.next();
                a.append(this.f33593a.mo25800c(next.getKey()));
                a.append(this.f33594b);
                a.append(this.f33593a.mo25800c(next.getValue()));
                while (it2.hasNext()) {
                    a.append(this.f33593a.f33592a);
                    Map.Entry<?, ?> next2 = it2.next();
                    a.append(this.f33593a.mo25800c(next2.getKey()));
                    a.append(this.f33594b);
                    a.append(this.f33593a.mo25800c(next2.getValue()));
                }
            }
            return a;
        }

        @CanIgnoreReturnValue
        @Beta
        public StringBuilder appendTo(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return appendTo(sb, iterable.iterator());
        }

        @CanIgnoreReturnValue
        @Beta
        public StringBuilder appendTo(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it2) {
            try {
                appendTo((MapJoiner) sb, it2);
                return sb;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: com.google.common.base.Joiner$a */
    /* loaded from: classes6.dex */
    public class C5649a extends Joiner {

        /* renamed from: b */
        public final /* synthetic */ String f33595b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5649a(Joiner joiner, String str) {
            super(joiner, null);
            this.f33595b = str;
        }

        @Override // com.google.common.base.Joiner
        /* renamed from: c */
        public CharSequence mo25800c(@CheckForNull Object obj) {
            return obj == null ? this.f33595b : Joiner.this.mo25800c(obj);
        }

        @Override // com.google.common.base.Joiner
        public Joiner skipNulls() {
            throw new UnsupportedOperationException("already specified useForNull");
        }

        @Override // com.google.common.base.Joiner
        public Joiner useForNull(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    /* renamed from: com.google.common.base.Joiner$b */
    /* loaded from: classes6.dex */
    public class C5650b extends Joiner {
        public C5650b(Joiner joiner) {
            super(joiner, null);
        }

        @Override // com.google.common.base.Joiner
        public <A extends Appendable> A appendTo(A a, Iterator<? extends Object> it2) throws IOException {
            Preconditions.checkNotNull(a, "appendable");
            Preconditions.checkNotNull(it2, "parts");
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (next != null) {
                    a.append(Joiner.this.mo25800c(next));
                    break;
                }
            }
            while (it2.hasNext()) {
                Object next2 = it2.next();
                if (next2 != null) {
                    a.append(Joiner.this.f33592a);
                    a.append(Joiner.this.mo25800c(next2));
                }
            }
            return a;
        }

        @Override // com.google.common.base.Joiner
        public Joiner useForNull(String str) {
            throw new UnsupportedOperationException("already specified skipNulls");
        }

        @Override // com.google.common.base.Joiner
        public MapJoiner withKeyValueSeparator(String str) {
            throw new UnsupportedOperationException("can't use .skipNulls() with maps");
        }
    }

    /* renamed from: com.google.common.base.Joiner$c */
    /* loaded from: classes6.dex */
    public class C5651c extends AbstractList<Object> {

        /* renamed from: e */
        public final /* synthetic */ Object[] f33598e;

        /* renamed from: f */
        public final /* synthetic */ Object f33599f;

        /* renamed from: g */
        public final /* synthetic */ Object f33600g;

        public C5651c(Object[] objArr, Object obj, Object obj2) {
            this.f33598e = objArr;
            this.f33599f = obj;
            this.f33600g = obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        @CheckForNull
        public Object get(int i) {
            return i != 0 ? i != 1 ? this.f33598e[i - 2] : this.f33600g : this.f33599f;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33598e.length + 2;
        }
    }

    public /* synthetic */ Joiner(Joiner joiner, C5649a c5649a) {
        this(joiner);
    }

    /* renamed from: b */
    public static Iterable<Object> m25797b(@CheckForNull Object obj, @CheckForNull Object obj2, Object[] objArr) {
        Preconditions.checkNotNull(objArr);
        return new C5651c(objArr, obj, obj2);
    }

    /* renamed from: on */
    public static Joiner m25799on(String str) {
        return new Joiner(str);
    }

    @CanIgnoreReturnValue
    public <A extends Appendable> A appendTo(A a, Iterable<? extends Object> iterable) throws IOException {
        return (A) appendTo((Joiner) a, iterable.iterator());
    }

    /* renamed from: c */
    public CharSequence mo25800c(@CheckForNull Object obj) {
        java.util.Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final String join(Iterable<? extends Object> iterable) {
        return join(iterable.iterator());
    }

    public Joiner skipNulls() {
        return new C5650b(this);
    }

    public Joiner useForNull(String str) {
        Preconditions.checkNotNull(str);
        return new C5649a(this, str);
    }

    public MapJoiner withKeyValueSeparator(char c) {
        return withKeyValueSeparator(String.valueOf(c));
    }

    public Joiner(String str) {
        this.f33592a = (String) Preconditions.checkNotNull(str);
    }

    /* renamed from: on */
    public static Joiner m25798on(char c) {
        return new Joiner(String.valueOf(c));
    }

    @CanIgnoreReturnValue
    public <A extends Appendable> A appendTo(A a, Iterator<? extends Object> it2) throws IOException {
        Preconditions.checkNotNull(a);
        if (it2.hasNext()) {
            a.append(mo25800c(it2.next()));
            while (it2.hasNext()) {
                a.append(this.f33592a);
                a.append(mo25800c(it2.next()));
            }
        }
        return a;
    }

    public final String join(Iterator<? extends Object> it2) {
        return appendTo(new StringBuilder(), it2).toString();
    }

    public MapJoiner withKeyValueSeparator(String str) {
        return new MapJoiner(this, str, null);
    }

    public final String join(Object[] objArr) {
        return join(Arrays.asList(objArr));
    }

    public Joiner(Joiner joiner) {
        this.f33592a = joiner.f33592a;
    }

    public final String join(@CheckForNull Object obj, @CheckForNull Object obj2, Object... objArr) {
        return join(m25797b(obj, obj2, objArr));
    }

    @CanIgnoreReturnValue
    public final <A extends Appendable> A appendTo(A a, Object[] objArr) throws IOException {
        return (A) appendTo((Joiner) a, (Iterable<? extends Object>) Arrays.asList(objArr));
    }

    @CanIgnoreReturnValue
    public final <A extends Appendable> A appendTo(A a, @CheckForNull Object obj, @CheckForNull Object obj2, Object... objArr) throws IOException {
        return (A) appendTo((Joiner) a, m25797b(obj, obj2, objArr));
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, Iterable<? extends Object> iterable) {
        return appendTo(sb, iterable.iterator());
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, Iterator<? extends Object> it2) {
        try {
            appendTo((Joiner) sb, it2);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, Object[] objArr) {
        return appendTo(sb, (Iterable<? extends Object>) Arrays.asList(objArr));
    }

    @CanIgnoreReturnValue
    public final StringBuilder appendTo(StringBuilder sb, @CheckForNull Object obj, @CheckForNull Object obj2, Object... objArr) {
        return appendTo(sb, m25797b(obj, obj2, objArr));
    }
}

package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.aof;
import com.sunia.HTREnginev2.g5e;
import com.sunia.HTREnginev2.n5e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@aof
/* loaded from: classes6.dex */
public final class Splitter {

    /* renamed from: a */
    public final CharMatcher f33614a;

    /* renamed from: b */
    public final boolean f33615b;

    /* renamed from: c */
    public final InterfaceC5667g f33616c;

    /* renamed from: d */
    public final int f33617d;

    @Beta
    /* loaded from: classes6.dex */
    public static final class MapSplitter {

        /* renamed from: c */
        public static final String f33618c = "Chunk [%s] is not a valid entry";

        /* renamed from: a */
        public final Splitter f33619a;

        /* renamed from: b */
        public final Splitter f33620b;

        public /* synthetic */ MapSplitter(Splitter splitter, Splitter splitter2, C5661a c5661a) {
            this(splitter, splitter2);
        }

        public Map<String, String> split(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : this.f33619a.split(charSequence)) {
                Iterator m25830f = this.f33620b.m25830f(str);
                Preconditions.checkArgument(m25830f.hasNext(), f33618c, str);
                String str2 = (String) m25830f.next();
                Preconditions.checkArgument(!linkedHashMap.containsKey(str2), "Duplicate key [%s] found.", str2);
                Preconditions.checkArgument(m25830f.hasNext(), f33618c, str);
                linkedHashMap.put(str2, (String) m25830f.next());
                Preconditions.checkArgument(!m25830f.hasNext(), f33618c, str);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }

        public MapSplitter(Splitter splitter, Splitter splitter2) {
            this.f33619a = splitter;
            this.f33620b = (Splitter) Preconditions.checkNotNull(splitter2);
        }
    }

    /* renamed from: com.google.common.base.Splitter$a */
    /* loaded from: classes6.dex */
    public class C5661a implements InterfaceC5667g {

        /* renamed from: a */
        public final /* synthetic */ CharMatcher f33621a;

        /* renamed from: com.google.common.base.Splitter$a$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5666f {
            public a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: e */
            public int mo25833e(int i) {
                return i + 1;
            }

            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: f */
            public int mo25834f(int i) {
                return C5661a.this.f33621a.indexIn(this.f33631g, i);
            }
        }

        public C5661a(CharMatcher charMatcher) {
            this.f33621a = charMatcher;
        }

        @Override // com.google.common.base.Splitter.InterfaceC5667g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC5666f mo25831a(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    /* renamed from: com.google.common.base.Splitter$b */
    /* loaded from: classes6.dex */
    public class C5662b implements InterfaceC5667g {

        /* renamed from: a */
        public final /* synthetic */ String f33623a;

        /* renamed from: com.google.common.base.Splitter$b$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5666f {
            public a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: e */
            public int mo25833e(int i) {
                return i + C5662b.this.f33623a.length();
            }

            /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
            
                r6 = r6 + 1;
             */
            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: f */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public int mo25834f(int r6) {
                /*
                    r5 = this;
                    com.google.common.base.Splitter$b r0 = com.google.common.base.Splitter.C5662b.this
                    java.lang.String r0 = r0.f33623a
                    int r0 = r0.length()
                    java.lang.CharSequence r1 = r5.f33631g
                    int r1 = r1.length()
                    int r1 = r1 - r0
                Lf:
                    if (r6 > r1) goto L2d
                    r2 = 0
                L12:
                    if (r2 >= r0) goto L2c
                    java.lang.CharSequence r3 = r5.f33631g
                    int r4 = r2 + r6
                    char r3 = r3.charAt(r4)
                    com.google.common.base.Splitter$b r4 = com.google.common.base.Splitter.C5662b.this
                    java.lang.String r4 = r4.f33623a
                    char r4 = r4.charAt(r2)
                    if (r3 == r4) goto L29
                    int r6 = r6 + 1
                    goto Lf
                L29:
                    int r2 = r2 + 1
                    goto L12
                L2c:
                    return r6
                L2d:
                    r5 = -1
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.Splitter.C5662b.a.mo25834f(int):int");
            }
        }

        public C5662b(String str) {
            this.f33623a = str;
        }

        @Override // com.google.common.base.Splitter.InterfaceC5667g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC5666f mo25831a(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    /* renamed from: com.google.common.base.Splitter$c */
    /* loaded from: classes6.dex */
    public class C5663c implements InterfaceC5667g {

        /* renamed from: a */
        public final /* synthetic */ n5e f33625a;

        /* renamed from: com.google.common.base.Splitter$c$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5666f {

            /* renamed from: l */
            public final /* synthetic */ g5e f33626l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(C5663c c5663c, Splitter splitter, CharSequence charSequence, g5e g5eVar) {
                super(splitter, charSequence);
                this.f33626l = g5eVar;
            }

            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: e */
            public int mo25833e(int i) {
                return this.f33626l.mo25790a();
            }

            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: f */
            public int mo25834f(int i) {
                if (this.f33626l.mo25792c(i)) {
                    return this.f33626l.mo25795f();
                }
                return -1;
            }
        }

        public C5663c(n5e n5eVar) {
            this.f33625a = n5eVar;
        }

        @Override // com.google.common.base.Splitter.InterfaceC5667g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC5666f mo25831a(Splitter splitter, CharSequence charSequence) {
            return new a(this, splitter, charSequence, this.f33625a.matcher(charSequence));
        }
    }

    /* renamed from: com.google.common.base.Splitter$d */
    /* loaded from: classes6.dex */
    public class C5664d implements InterfaceC5667g {

        /* renamed from: a */
        public final /* synthetic */ int f33627a;

        /* renamed from: com.google.common.base.Splitter$d$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5666f {
            public a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: e */
            public int mo25833e(int i) {
                return i;
            }

            @Override // com.google.common.base.Splitter.AbstractC5666f
            /* renamed from: f */
            public int mo25834f(int i) {
                int i2 = i + C5664d.this.f33627a;
                if (i2 < this.f33631g.length()) {
                    return i2;
                }
                return -1;
            }
        }

        public C5664d(int i) {
            this.f33627a = i;
        }

        @Override // com.google.common.base.Splitter.InterfaceC5667g
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC5666f mo25831a(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    /* renamed from: com.google.common.base.Splitter$e */
    /* loaded from: classes6.dex */
    public class C5665e implements Iterable<String> {

        /* renamed from: e */
        public final /* synthetic */ CharSequence f33629e;

        public C5665e(CharSequence charSequence) {
            this.f33629e = charSequence;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return Splitter.this.m25830f(this.f33629e);
        }

        public String toString() {
            Joiner m25799on = Joiner.m25799on(", ");
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            StringBuilder appendTo = m25799on.appendTo(sb, (Iterable<? extends Object>) this);
            appendTo.append(']');
            return appendTo.toString();
        }
    }

    /* renamed from: com.google.common.base.Splitter$f */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5666f extends AbstractIterator<String> {

        /* renamed from: g */
        public final CharSequence f33631g;

        /* renamed from: h */
        public final CharMatcher f33632h;

        /* renamed from: i */
        public final boolean f33633i;

        /* renamed from: j */
        public int f33634j = 0;

        /* renamed from: k */
        public int f33635k;

        public AbstractC5666f(Splitter splitter, CharSequence charSequence) {
            this.f33632h = splitter.f33614a;
            this.f33633i = splitter.f33615b;
            this.f33635k = splitter.f33617d;
            this.f33631g = charSequence;
        }

        @Override // com.google.common.base.AbstractIterator
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public String mo25762a() {
            int mo25834f;
            int i = this.f33634j;
            while (true) {
                int i2 = this.f33634j;
                if (i2 == -1) {
                    return m25763b();
                }
                mo25834f = mo25834f(i2);
                if (mo25834f == -1) {
                    mo25834f = this.f33631g.length();
                    this.f33634j = -1;
                } else {
                    this.f33634j = mo25833e(mo25834f);
                }
                int i3 = this.f33634j;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.f33634j = i4;
                    if (i4 > this.f33631g.length()) {
                        this.f33634j = -1;
                    }
                } else {
                    while (i < mo25834f && this.f33632h.matches(this.f33631g.charAt(i))) {
                        i++;
                    }
                    while (mo25834f > i && this.f33632h.matches(this.f33631g.charAt(mo25834f - 1))) {
                        mo25834f--;
                    }
                    if (!this.f33633i || i != mo25834f) {
                        break;
                    }
                    i = this.f33634j;
                }
            }
            int i5 = this.f33635k;
            if (i5 == 1) {
                mo25834f = this.f33631g.length();
                this.f33634j = -1;
                while (mo25834f > i && this.f33632h.matches(this.f33631g.charAt(mo25834f - 1))) {
                    mo25834f--;
                }
            } else {
                this.f33635k = i5 - 1;
            }
            return this.f33631g.subSequence(i, mo25834f).toString();
        }

        /* renamed from: e */
        public abstract int mo25833e(int i);

        /* renamed from: f */
        public abstract int mo25834f(int i);
    }

    /* renamed from: com.google.common.base.Splitter$g */
    /* loaded from: classes6.dex */
    public interface InterfaceC5667g {
        /* renamed from: a */
        Iterator<String> mo25831a(Splitter splitter, CharSequence charSequence);
    }

    public Splitter(InterfaceC5667g interfaceC5667g) {
        this(interfaceC5667g, false, CharMatcher.none(), Integer.MAX_VALUE);
    }

    /* renamed from: e */
    public static Splitter m25825e(n5e n5eVar) {
        Preconditions.checkArgument(!n5eVar.matcher("").mo25793d(), "The pattern may not match the empty string: %s", n5eVar);
        return new Splitter(new C5663c(n5eVar));
    }

    public static Splitter fixedLength(int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new C5664d(i));
    }

    /* renamed from: on */
    public static Splitter m25826on(char c) {
        return m25827on(CharMatcher.m25772is(c));
    }

    @GwtIncompatible
    public static Splitter onPattern(String str) {
        return m25825e(C5673a.m25859b(str));
    }

    /* renamed from: f */
    public final Iterator<String> m25830f(CharSequence charSequence) {
        return this.f33616c.mo25831a(this, charSequence);
    }

    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", i);
        return new Splitter(this.f33616c, this.f33615b, this.f33614a, i);
    }

    public Splitter omitEmptyStrings() {
        return new Splitter(this.f33616c, true, this.f33614a, this.f33617d);
    }

    public Iterable<String> split(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        return new C5665e(charSequence);
    }

    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> m25830f = m25830f(charSequence);
        ArrayList arrayList = new ArrayList();
        while (m25830f.hasNext()) {
            arrayList.add(m25830f.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Beta
    public Stream<String> splitToStream(CharSequence charSequence) {
        return StreamSupport.stream(split(charSequence).spliterator(), false);
    }

    public Splitter trimResults() {
        return trimResults(CharMatcher.whitespace());
    }

    @Beta
    public MapSplitter withKeyValueSeparator(String str) {
        return withKeyValueSeparator(m25828on(str));
    }

    public Splitter(InterfaceC5667g interfaceC5667g, boolean z, CharMatcher charMatcher, int i) {
        this.f33616c = interfaceC5667g;
        this.f33615b = z;
        this.f33614a = charMatcher;
        this.f33617d = i;
    }

    /* renamed from: on */
    public static Splitter m25827on(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new C5661a(charMatcher));
    }

    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.f33616c, this.f33615b, charMatcher, this.f33617d);
    }

    @Beta
    public MapSplitter withKeyValueSeparator(char c) {
        return withKeyValueSeparator(m25826on(c));
    }

    @Beta
    public MapSplitter withKeyValueSeparator(Splitter splitter) {
        return new MapSplitter(this, splitter, null);
    }

    /* renamed from: on */
    public static Splitter m25828on(String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        if (str.length() == 1) {
            return m25826on(str.charAt(0));
        }
        return new Splitter(new C5662b(str));
    }

    @GwtIncompatible
    /* renamed from: on */
    public static Splitter m25829on(Pattern pattern) {
        return m25825e(new JdkPattern(pattern));
    }
}

package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.aof;
import com.sunia.HTREnginev2.g5e;
import com.sunia.HTREnginev2.n5e;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@GwtIncompatible
@aof
/* loaded from: classes6.dex */
final class JdkPattern extends n5e implements Serializable {
    private static final long serialVersionUID = 0;
    private final Pattern pattern;

    /* renamed from: com.google.common.base.JdkPattern$a */
    /* loaded from: classes6.dex */
    public static final class C5648a extends g5e {

        /* renamed from: a */
        public final Matcher f33591a;

        public C5648a(Matcher matcher) {
            this.f33591a = (Matcher) Preconditions.checkNotNull(matcher);
        }

        @Override // com.sunia.HTREnginev2.g5e
        /* renamed from: a */
        public int mo25790a() {
            return this.f33591a.end();
        }

        @Override // com.sunia.HTREnginev2.g5e
        /* renamed from: b */
        public boolean mo25791b() {
            return this.f33591a.find();
        }

        @Override // com.sunia.HTREnginev2.g5e
        /* renamed from: c */
        public boolean mo25792c(int i) {
            return this.f33591a.find(i);
        }

        @Override // com.sunia.HTREnginev2.g5e
        /* renamed from: d */
        public boolean mo25793d() {
            return this.f33591a.matches();
        }

        @Override // com.sunia.HTREnginev2.g5e
        /* renamed from: e */
        public String mo25794e(String str) {
            return this.f33591a.replaceAll(str);
        }

        @Override // com.sunia.HTREnginev2.g5e
        /* renamed from: f */
        public int mo25795f() {
            return this.f33591a.start();
        }
    }

    public JdkPattern(Pattern pattern) {
        this.pattern = (Pattern) Preconditions.checkNotNull(pattern);
    }

    @Override // com.sunia.HTREnginev2.n5e
    public int flags() {
        return this.pattern.flags();
    }

    @Override // com.sunia.HTREnginev2.n5e
    public g5e matcher(CharSequence charSequence) {
        return new C5648a(this.pattern.matcher(charSequence));
    }

    @Override // com.sunia.HTREnginev2.n5e
    public String pattern() {
        return this.pattern.pattern();
    }

    @Override // com.sunia.HTREnginev2.n5e
    public String toString() {
        return this.pattern.toString();
    }
}

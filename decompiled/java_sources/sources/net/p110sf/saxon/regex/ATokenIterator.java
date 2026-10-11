package net.p110sf.saxon.regex;

import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ATokenIterator implements AtomicIterator {

    /* renamed from: e */
    public final UnicodeString f101140e;

    /* renamed from: f */
    public final REMatcher f101141f;

    /* renamed from: g */
    public StringValue f101142g;

    /* renamed from: h */
    public int f101143h = 0;

    public ATokenIterator(UnicodeString unicodeString, REMatcher rEMatcher) {
        this.f101140e = unicodeString;
        this.f101141f = rEMatcher;
    }

    /* renamed from: f */
    public final StringValue m63568f() {
        return this.f101142g;
    }

    @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
    public StringValue next() {
        int i = this.f101143h;
        if (i < 0) {
            this.f101142g = null;
            return null;
        }
        if (this.f101141f.match(this.f101140e, i)) {
            this.f101142g = new StringValue(this.f101140e.substring(this.f101143h, this.f101141f.getParenStart(0)));
            this.f101143h = this.f101141f.getParenEnd(0);
        } else {
            this.f101142g = new StringValue(this.f101140e.substring(this.f101143h));
            this.f101143h = -1;
        }
        return m63568f();
    }
}

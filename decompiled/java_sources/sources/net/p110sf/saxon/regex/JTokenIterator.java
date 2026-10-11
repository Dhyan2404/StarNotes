package net.p110sf.saxon.regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class JTokenIterator implements AtomicIterator {

    /* renamed from: e */
    public final String f101154e;

    /* renamed from: f */
    public final Pattern f101155f;

    /* renamed from: g */
    public final Matcher f101156g;

    /* renamed from: h */
    public CharSequence f101157h;

    /* renamed from: i */
    public int f101158i;

    public JTokenIterator(String str, Pattern pattern) {
        this.f101158i = 0;
        this.f101154e = str;
        this.f101155f = pattern;
        this.f101156g = pattern.matcher(str);
        this.f101158i = 0;
    }

    @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
    public StringValue next() {
        if (this.f101158i < 0) {
            this.f101157h = null;
            return null;
        }
        if (this.f101156g.find()) {
            this.f101157h = this.f101154e.substring(this.f101158i, this.f101156g.start());
            this.f101158i = this.f101156g.end();
        } else {
            String str = this.f101154e;
            this.f101157h = str.substring(this.f101158i, str.length());
            this.f101158i = -1;
        }
        return StringValue.makeStringValue(this.f101157h);
    }
}

package net.p110sf.saxon.trans;

import net.p110sf.saxon.Configuration;

/* loaded from: classes11.dex */
public class Instantiator<T> implements Maker<T> {

    /* renamed from: a */
    public final String f102284a;

    /* renamed from: b */
    public final Configuration f102285b;

    public Instantiator(String str, Configuration configuration) {
        this.f102284a = str;
        this.f102285b = configuration;
    }

    @Override // net.p110sf.saxon.trans.Maker
    public T make() throws XPathException {
        return (T) this.f102285b.getInstance(this.f102284a);
    }
}

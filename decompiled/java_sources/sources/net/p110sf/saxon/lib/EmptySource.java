package net.p110sf.saxon.lib;

import javax.xml.transform.Source;

/* loaded from: classes11.dex */
public class EmptySource implements Source {

    /* renamed from: e */
    public static final EmptySource f100495e = new EmptySource();

    public static EmptySource getInstance() {
        return f100495e;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return null;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
    }
}

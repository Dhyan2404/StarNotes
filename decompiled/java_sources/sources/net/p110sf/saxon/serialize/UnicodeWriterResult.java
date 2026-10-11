package net.p110sf.saxon.serialize;

import javax.xml.transform.Result;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class UnicodeWriterResult implements Result {

    /* renamed from: e */
    public final UnicodeWriter f101614e;

    /* renamed from: f */
    public String f101615f;

    public UnicodeWriterResult(UnicodeWriter unicodeWriter, String str) throws XPathException {
        this.f101615f = str;
        this.f101614e = unicodeWriter;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.f101615f;
    }

    public UnicodeWriter getUnicodeWriter() {
        return this.f101614e;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f101615f = str;
    }

    public String toString() {
        return super.toString();
    }
}

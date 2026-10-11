package net.p110sf.saxon.s9api;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.HashMap;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.functions.UnparsedTextFunction;
import net.p110sf.saxon.ma.json.ParseJsonFn;
import net.p110sf.saxon.p111z.IntSetPredicate;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class JsonBuilder {

    /* renamed from: a */
    public Configuration f101347a;

    /* renamed from: b */
    public boolean f101348b;

    public JsonBuilder(Configuration configuration) {
        this.f101347a = configuration;
    }

    public boolean isLiberal() {
        return this.f101348b;
    }

    public XdmValue parseJson(Reader reader) throws SaxonApiException {
        try {
            XPathContextMajor newXPathContext = new Controller(this.f101347a).newXPathContext();
            UnicodeString readFile = UnparsedTextFunction.readFile(IntSetPredicate.ALWAYS_TRUE, reader);
            HashMap hashMap = new HashMap();
            hashMap.put("liberal", BooleanValue.get(this.f101348b));
            hashMap.put("escape", BooleanValue.TRUE);
            return XdmValue.wrap(ParseJsonFn.parse(readFile.toString(), hashMap, newXPathContext));
        } catch (IOException | XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void setLiberal(boolean z) {
        this.f101348b = z;
    }

    public XdmValue parseJson(String str) throws SaxonApiException {
        return parseJson(new StringReader(str));
    }
}

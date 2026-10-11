package net.p110sf.saxon.event;

import net.p110sf.saxon.lib.StandardDiagnostics;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class NoOpenStartTagException extends XPathException {
    public NoOpenStartTagException(String str) {
        super(str);
    }

    public static NoOpenStartTagException makeNoOpenStartTagException(int i, String str, HostLanguage hostLanguage, boolean z, Location location) {
        String str2;
        String str3;
        if (z) {
            str2 = "Cannot create " + (i == 2 ? "an attribute" : "a namespace") + " node (" + str + ") whose parent is a document node";
            str3 = hostLanguage == HostLanguage.XSLT ? "XTDE0420" : "XPTY0004";
        } else {
            str2 = (i == 2 ? "An attribute" : "A namespace") + " node (" + str + ") cannot be created after a child of the containing element";
            str3 = hostLanguage == HostLanguage.XSLT ? "XTDE0410" : "XQTY0024";
        }
        if (location != null && location.getLineNumber() != -1) {
            str2 = str2 + ". Most recent element start tag was output at line " + location.getLineNumber() + " of module " + new StandardDiagnostics().abbreviateLocationURI(location.getSystemId());
        }
        NoOpenStartTagException noOpenStartTagException = new NoOpenStartTagException(str2);
        noOpenStartTagException.setErrorCode(str3);
        return noOpenStartTagException;
    }
}

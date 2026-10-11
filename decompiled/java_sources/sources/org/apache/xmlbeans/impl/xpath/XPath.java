package org.apache.xmlbeans.impl.xpath;

import java.util.Map;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlException;

/* loaded from: classes13.dex */
public class XPath {
    public static final String _DEFAULT_ELT_NS = "$xmlbeans!default_uri";
    public static final String _NS_BOUNDARY = "$xmlbeans!ns_boundary";
    private final boolean _sawDeepDot;
    final Selector _selector;

    /* loaded from: classes13.dex */
    public static final class Selector {
        final XPathStep[] _paths;

        public Selector(XPathStep[] xPathStepArr) {
            this._paths = xPathStepArr;
        }
    }

    /* loaded from: classes13.dex */
    public static class XPathCompileException extends XmlException {
        public XPathCompileException(XmlError xmlError) {
            super(xmlError.toString(), (Throwable) null, xmlError);
        }
    }

    public XPath(Selector selector, boolean z) {
        this._selector = selector;
        this._sawDeepDot = z;
    }

    public static XPath compileXPath(String str) throws XPathCompileException {
        return compileXPath(str, "$this", null);
    }

    public boolean sawDeepDot() {
        return this._sawDeepDot;
    }

    public static XPath compileXPath(String str, String str2) throws XPathCompileException {
        return compileXPath(str, str2, null);
    }

    public static XPath compileXPath(String str, Map<String, String> map) throws XPathCompileException {
        return compileXPath(str, "$this", map);
    }

    public static XPath compileXPath(String str, String str2, Map<String, String> map) throws XPathCompileException {
        return new XPathCompilationContext(map, str2).compile(str);
    }
}

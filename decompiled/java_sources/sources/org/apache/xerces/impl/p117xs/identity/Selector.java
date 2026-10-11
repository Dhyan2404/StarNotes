package org.apache.xerces.impl.p117xs.identity;

import org.apache.xerces.impl.xpath.XPath;
import org.apache.xerces.impl.xpath.XPathException;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes13.dex */
public class Selector {
    protected IdentityConstraint fIDConstraint;
    protected final IdentityConstraint fIdentityConstraint;
    protected final XPath fXPath;

    /* loaded from: classes13.dex */
    public class Matcher extends XPathMatcher {
        protected int fElementDepth;
        protected final FieldActivator fFieldActivator;
        protected final int fInitialDepth;
        protected int fMatchedDepth;

        /* renamed from: g */
        public final /* synthetic */ Selector f112951g;

        public Matcher(Selector selector, XPath xPath, FieldActivator fieldActivator, int i) {
            super(xPath);
            this.f112951g = selector;
            this.fFieldActivator = fieldActivator;
            this.fInitialDepth = i;
        }

        @Override // org.apache.xerces.impl.p117xs.identity.XPathMatcher
        public void endElement(QName qName, XSTypeDefinition xSTypeDefinition, boolean z, Object obj, short s, ShortList shortList) {
            super.endElement(qName, xSTypeDefinition, z, obj, s, shortList);
            int i = this.fElementDepth;
            this.fElementDepth = i - 1;
            if (i == this.fMatchedDepth) {
                this.fMatchedDepth = -1;
                this.fFieldActivator.endValueScopeFor(this.f112951g.fIdentityConstraint, this.fInitialDepth);
            }
        }

        public IdentityConstraint getIdentityConstraint() {
            return this.f112951g.fIdentityConstraint;
        }

        public int getInitialDepth() {
            return this.fInitialDepth;
        }

        @Override // org.apache.xerces.impl.p117xs.identity.XPathMatcher
        public void startDocumentFragment() {
            super.startDocumentFragment();
            this.fElementDepth = 0;
            this.fMatchedDepth = -1;
        }

        @Override // org.apache.xerces.impl.p117xs.identity.XPathMatcher
        public void startElement(QName qName, XMLAttributes xMLAttributes) {
            super.startElement(qName, xMLAttributes);
            this.fElementDepth++;
            if (isMatched()) {
                this.fMatchedDepth = this.fElementDepth;
                this.fFieldActivator.startValueScopeFor(this.f112951g.fIdentityConstraint, this.fInitialDepth);
                int fieldCount = this.f112951g.fIdentityConstraint.getFieldCount();
                for (int i = 0; i < fieldCount; i++) {
                    this.fFieldActivator.activateField(this.f112951g.fIdentityConstraint.getFieldAt(i), this.fInitialDepth).startElement(qName, xMLAttributes);
                }
            }
        }
    }

    /* loaded from: classes13.dex */
    public static class XPath extends org.apache.xerces.impl.xpath.XPath {
        public XPath(String str, SymbolTable symbolTable, NamespaceContext namespaceContext) throws XPathException {
            super(m70266e(str), symbolTable, namespaceContext);
            int i = 0;
            while (true) {
                XPath.LocationPath[] locationPathArr = this.fLocationPaths;
                if (i >= locationPathArr.length) {
                    return;
                }
                if (locationPathArr[i].steps[r2.length - 1].axis.type == 2) {
                    throw new XPathException(XmlErrorCodes.SELECTOR_XPATH);
                }
                i++;
            }
        }

        /* renamed from: e */
        public static String m70266e(String str) {
            StringBuffer stringBuffer = new StringBuffer(str.length() + 5);
            while (true) {
                if (!XMLChar.trim(str).startsWith("/") && !XMLChar.trim(str).startsWith(".")) {
                    stringBuffer.append("./");
                }
                int indexOf = str.indexOf(124);
                if (indexOf == -1) {
                    stringBuffer.append(str);
                    return stringBuffer.toString();
                }
                int i = indexOf + 1;
                stringBuffer.append(str.substring(0, i));
                str = str.substring(i, str.length());
            }
        }
    }

    public Selector(XPath xPath, IdentityConstraint identityConstraint) {
        this.fXPath = xPath;
        this.fIdentityConstraint = identityConstraint;
    }

    public XPathMatcher createMatcher(FieldActivator fieldActivator, int i) {
        return new Matcher(this, this.fXPath, fieldActivator, i);
    }

    public IdentityConstraint getIDConstraint() {
        return this.fIdentityConstraint;
    }

    public org.apache.xerces.impl.xpath.XPath getXPath() {
        return this.fXPath;
    }

    public String toString() {
        return this.fXPath.toString();
    }
}

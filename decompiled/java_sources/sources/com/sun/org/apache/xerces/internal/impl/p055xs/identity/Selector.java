package com.sun.org.apache.xerces.internal.impl.p055xs.identity;

import com.sun.org.apache.xerces.internal.impl.xpath.XPath;
import com.sun.org.apache.xerces.internal.impl.xpath.XPathException;
import com.sun.org.apache.xerces.internal.p056xs.ShortList;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes10.dex */
public class Selector {
    protected IdentityConstraint fIDConstraint;
    protected IdentityConstraint fIdentityConstraint;
    protected XPath fXPath;

    /* loaded from: classes10.dex */
    public class Matcher extends XPathMatcher {
        protected int fElementDepth;
        protected FieldActivator fFieldActivator;
        protected int fInitialDepth;
        protected int fMatchedDepth;

        public Matcher(XPath xPath, FieldActivator fieldActivator, int i) {
            super(xPath);
            this.fFieldActivator = fieldActivator;
            this.fInitialDepth = i;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.XPathMatcher
        public void endElement(QName qName, XSTypeDefinition xSTypeDefinition, boolean z, Object obj, short s, ShortList shortList) {
            super.endElement(qName, xSTypeDefinition, z, obj, s, shortList);
            int i = this.fElementDepth;
            this.fElementDepth = i - 1;
            if (i == this.fMatchedDepth) {
                this.fMatchedDepth = -1;
                this.fFieldActivator.endValueScopeFor(Selector.this.fIdentityConstraint, this.fInitialDepth);
            }
        }

        public IdentityConstraint getIdentityConstraint() {
            return Selector.this.fIdentityConstraint;
        }

        public int getInitialDepth() {
            return this.fInitialDepth;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.XPathMatcher
        public void startDocumentFragment() {
            super.startDocumentFragment();
            this.fElementDepth = 0;
            this.fMatchedDepth = -1;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.XPathMatcher
        public void startElement(QName qName, XMLAttributes xMLAttributes) {
            super.startElement(qName, xMLAttributes);
            this.fElementDepth++;
            if (isMatched()) {
                this.fMatchedDepth = this.fElementDepth;
                this.fFieldActivator.startValueScopeFor(Selector.this.fIdentityConstraint, this.fInitialDepth);
                int fieldCount = Selector.this.fIdentityConstraint.getFieldCount();
                for (int i = 0; i < fieldCount; i++) {
                    this.fFieldActivator.activateField(Selector.this.fIdentityConstraint.getFieldAt(i), this.fInitialDepth).startElement(qName, xMLAttributes);
                }
            }
        }
    }

    /* loaded from: classes10.dex */
    public static class XPath extends com.sun.org.apache.xerces.internal.impl.xpath.XPath {
        public XPath(String str, SymbolTable symbolTable, NamespaceContext namespaceContext) throws XPathException {
            super(normalize(str), symbolTable, namespaceContext);
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

        private static String normalize(String str) {
            StringBuffer stringBuffer = new StringBuffer(str.length() + 5);
            while (true) {
                if (!str.trim().startsWith("/") && !str.trim().startsWith(".")) {
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
        return new Matcher(this.fXPath, fieldActivator, i);
    }

    public IdentityConstraint getIDConstraint() {
        return this.fIdentityConstraint;
    }

    public com.sun.org.apache.xerces.internal.impl.xpath.XPath getXPath() {
        return this.fXPath;
    }

    public String toString() {
        return this.fXPath.toString();
    }
}

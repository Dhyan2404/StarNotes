package com.sun.org.apache.xerces.internal.impl.p055xs.identity;

import com.sun.org.apache.xerces.internal.impl.p055xs.util.ShortListImpl;
import com.sun.org.apache.xerces.internal.p056xs.ShortList;
import com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;

/* loaded from: classes10.dex */
public class Field {
    protected IdentityConstraint fIdentityConstraint;
    protected XPath fXPath;

    /* loaded from: classes10.dex */
    public class Matcher extends XPathMatcher {
        protected FieldActivator fFieldActivator;
        protected ValueStore fStore;

        public Matcher(XPath xPath, FieldActivator fieldActivator, ValueStore valueStore) {
            super(xPath);
            this.fFieldActivator = fieldActivator;
            this.fStore = valueStore;
        }

        private short convertToPrimitiveKind(short s) {
            if (s <= 20) {
                return s;
            }
            if (s <= 29) {
                return (short) 2;
            }
            if (s <= 42) {
                return (short) 4;
            }
            return s;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.XPathMatcher
        public void handleContent(XSTypeDefinition xSTypeDefinition, boolean z, Object obj, short s, ShortList shortList) {
            if (xSTypeDefinition == null || (xSTypeDefinition.getTypeCategory() == 15 && ((XSComplexTypeDefinition) xSTypeDefinition).getContentType() != 1)) {
                this.fStore.reportError("cvc-id.3", new Object[]{Field.this.fIdentityConstraint.getName(), Field.this.fIdentityConstraint.getElementName()});
            }
            this.fMatchedString = obj;
            matched(obj, s, shortList, z);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.XPathMatcher
        public void matched(Object obj, short s, ShortList shortList, boolean z) {
            super.matched(obj, s, shortList, z);
            if (z && Field.this.fIdentityConstraint.getCategory() == 1) {
                this.fStore.reportError("KeyMatchesNillable", new Object[]{Field.this.fIdentityConstraint.getElementName()});
            }
            this.fStore.addValue(Field.this, obj, convertToPrimitiveKind(s), convertToPrimitiveKind(shortList));
            this.fFieldActivator.setMayMatch(Field.this, Boolean.FALSE);
        }

        private ShortList convertToPrimitiveKind(ShortList shortList) {
            if (shortList != null) {
                int length = shortList.getLength();
                int i = 0;
                while (i < length) {
                    short item = shortList.item(i);
                    if (item != convertToPrimitiveKind(item)) {
                        break;
                    }
                    i++;
                }
                if (i != length) {
                    short[] sArr = new short[length];
                    for (int i2 = 0; i2 < i; i2++) {
                        sArr[i2] = shortList.item(i2);
                    }
                    while (i < length) {
                        sArr[i] = convertToPrimitiveKind(shortList.item(i));
                        i++;
                    }
                    return new ShortListImpl(sArr, length);
                }
            }
            return shortList;
        }
    }

    /* loaded from: classes10.dex */
    public static class XPath extends com.sun.org.apache.xerces.internal.impl.xpath.XPath {
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        
            r5 = r5 + 1;
         */
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public XPath(java.lang.String r4, com.sun.org.apache.xerces.internal.util.SymbolTable r5, com.sun.org.apache.xerces.internal.xni.NamespaceContext r6) throws com.sun.org.apache.xerces.internal.impl.xpath.XPathException {
            /*
                r3 = this;
                java.lang.String r0 = r4.trim()
                java.lang.String r1 = "/"
                boolean r0 = r0.startsWith(r1)
                if (r0 != 0) goto L2a
                java.lang.String r0 = r4.trim()
                java.lang.String r1 = "."
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L19
                goto L2a
            L19:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "./"
                r0.append(r1)
                r0.append(r4)
                java.lang.String r4 = r0.toString()
            L2a:
                r3.<init>(r4, r5, r6)
                r4 = 0
                r5 = r4
            L2f:
                com.sun.org.apache.xerces.internal.impl.xpath.XPath$LocationPath[] r6 = r3.fLocationPaths
                int r6 = r6.length
                if (r5 >= r6) goto L5b
                r6 = r4
            L35:
                com.sun.org.apache.xerces.internal.impl.xpath.XPath$LocationPath[] r0 = r3.fLocationPaths
                r0 = r0[r5]
                com.sun.org.apache.xerces.internal.impl.xpath.XPath$Step[] r0 = r0.steps
                int r1 = r0.length
                if (r6 >= r1) goto L58
                r1 = r0[r6]
                com.sun.org.apache.xerces.internal.impl.xpath.XPath$Axis r1 = r1.axis
                short r1 = r1.type
                r2 = 2
                if (r1 != r2) goto L55
                int r0 = r0.length
                int r0 = r0 + (-1)
                if (r6 < r0) goto L4d
                goto L55
            L4d:
                com.sun.org.apache.xerces.internal.impl.xpath.XPathException r3 = new com.sun.org.apache.xerces.internal.impl.xpath.XPathException
                java.lang.String r4 = "c-fields-xpaths"
                r3.<init>(r4)
                throw r3
            L55:
                int r6 = r6 + 1
                goto L35
            L58:
                int r5 = r5 + 1
                goto L2f
            L5b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xs.identity.Field.XPath.<init>(java.lang.String, com.sun.org.apache.xerces.internal.util.SymbolTable, com.sun.org.apache.xerces.internal.xni.NamespaceContext):void");
        }
    }

    public Field(XPath xPath, IdentityConstraint identityConstraint) {
        this.fXPath = xPath;
        this.fIdentityConstraint = identityConstraint;
    }

    public XPathMatcher createMatcher(FieldActivator fieldActivator, ValueStore valueStore) {
        return new Matcher(this.fXPath, fieldActivator, valueStore);
    }

    public IdentityConstraint getIdentityConstraint() {
        return this.fIdentityConstraint;
    }

    public com.sun.org.apache.xerces.internal.impl.xpath.XPath getXPath() {
        return this.fXPath;
    }

    public String toString() {
        return this.fXPath.toString();
    }
}

package org.apache.xerces.impl.p117xs.identity;

import org.apache.xerces.impl.p117xs.util.ShortListImpl;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSComplexTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.XMLChar;

/* loaded from: classes13.dex */
public class Field {
    protected final IdentityConstraint fIdentityConstraint;
    protected final XPath fXPath;

    /* loaded from: classes13.dex */
    public class Matcher extends XPathMatcher {
        protected boolean fMayMatch;
        protected final ValueStore fStore;

        /* renamed from: g */
        public final /* synthetic */ Field f112950g;

        public Matcher(Field field, XPath xPath, ValueStore valueStore) {
            super(xPath);
            this.f112950g = field;
            this.fMayMatch = true;
            this.fStore = valueStore;
        }

        /* renamed from: c */
        public final ShortList m70261c(ShortList shortList) {
            if (shortList != null) {
                int length = shortList.getLength();
                int i = 0;
                while (i < length) {
                    short item = shortList.item(i);
                    if (item != m70262d(item)) {
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
                        sArr[i] = m70262d(shortList.item(i));
                        i++;
                    }
                    return new ShortListImpl(sArr, length);
                }
            }
            return shortList;
        }

        /* renamed from: d */
        public final short m70262d(short s) {
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

        @Override // org.apache.xerces.impl.p117xs.identity.XPathMatcher
        public void handleContent(XSTypeDefinition xSTypeDefinition, boolean z, Object obj, short s, ShortList shortList) {
            if (xSTypeDefinition == null || (xSTypeDefinition.getTypeCategory() == 15 && ((XSComplexTypeDefinition) xSTypeDefinition).getContentType() != 1)) {
                this.fStore.reportError("cvc-id.3", new Object[]{this.f112950g.fIdentityConstraint.getName(), this.f112950g.fIdentityConstraint.getElementName()});
            }
            this.fMatchedString = obj;
            matched(obj, s, shortList, z);
        }

        @Override // org.apache.xerces.impl.p117xs.identity.XPathMatcher
        public void matched(Object obj, short s, ShortList shortList, boolean z) {
            super.matched(obj, s, shortList, z);
            if (z && this.f112950g.fIdentityConstraint.getCategory() == 1) {
                this.fStore.reportError("KeyMatchesNillable", new Object[]{this.f112950g.fIdentityConstraint.getElementName(), this.f112950g.fIdentityConstraint.getIdentityConstraintName()});
            }
            this.fStore.addValue(this.f112950g, this.fMayMatch, obj, m70262d(s), m70261c(shortList));
            this.fMayMatch = false;
        }
    }

    /* loaded from: classes13.dex */
    public static class XPath extends org.apache.xerces.impl.xpath.XPath {
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
        
            r5 = r5 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public XPath(java.lang.String r4, org.apache.xerces.util.SymbolTable r5, org.apache.xerces.xni.NamespaceContext r6) throws org.apache.xerces.impl.xpath.XPathException {
            /*
                r3 = this;
                java.lang.String r4 = m70263e(r4)
                r3.<init>(r4, r5, r6)
                r4 = 0
                r5 = r4
            L9:
                org.apache.xerces.impl.xpath.XPath$LocationPath[] r6 = r3.fLocationPaths
                int r6 = r6.length
                if (r5 < r6) goto Lf
                return
            Lf:
                r6 = r4
            L10:
                org.apache.xerces.impl.xpath.XPath$LocationPath[] r0 = r3.fLocationPaths
                r0 = r0[r5]
                org.apache.xerces.impl.xpath.XPath$Step[] r0 = r0.steps
                int r1 = r0.length
                if (r6 < r1) goto L1c
                int r5 = r5 + 1
                goto L9
            L1c:
                r1 = r0[r6]
                org.apache.xerces.impl.xpath.XPath$Axis r1 = r1.axis
                short r1 = r1.type
                r2 = 2
                if (r1 != r2) goto L33
                int r0 = r0.length
                int r0 = r0 + (-1)
                if (r6 < r0) goto L2b
                goto L33
            L2b:
                org.apache.xerces.impl.xpath.XPathException r3 = new org.apache.xerces.impl.xpath.XPathException
                java.lang.String r4 = "c-fields-xpaths"
                r3.<init>(r4)
                throw r3
            L33:
                int r6 = r6 + 1
                goto L10
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xs.identity.Field.XPath.<init>(java.lang.String, org.apache.xerces.util.SymbolTable, org.apache.xerces.xni.NamespaceContext):void");
        }

        /* renamed from: e */
        public static String m70263e(String str) {
            int length = str.length();
            boolean z = true;
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (z) {
                    if (XMLChar.isSpace(charAt)) {
                        continue;
                    } else if (charAt == '.' || charAt == '/') {
                        z = false;
                    } else if (charAt != '|') {
                        return m70264f(str, i, length);
                    }
                } else if (charAt == '|') {
                    z = true;
                }
            }
            return str;
        }

        /* renamed from: f */
        public static String m70264f(String str, int i, int i2) {
            StringBuffer stringBuffer = new StringBuffer(i2 + 2);
            for (int i3 = 0; i3 < i; i3++) {
                stringBuffer.append(str.charAt(i3));
            }
            stringBuffer.append("./");
            boolean z = false;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (z) {
                    if (!XMLChar.isSpace(charAt)) {
                        if (charAt != '.' && charAt != '/') {
                            if (charAt != '|') {
                                stringBuffer.append("./");
                            }
                        }
                        z = false;
                    }
                } else if (charAt == '|') {
                    z = true;
                }
                stringBuffer.append(charAt);
                i++;
            }
            return stringBuffer.toString();
        }
    }

    public Field(XPath xPath, IdentityConstraint identityConstraint) {
        this.fXPath = xPath;
        this.fIdentityConstraint = identityConstraint;
    }

    public XPathMatcher createMatcher(ValueStore valueStore) {
        return new Matcher(this, this.fXPath, valueStore);
    }

    public IdentityConstraint getIdentityConstraint() {
        return this.fIdentityConstraint;
    }

    public org.apache.xerces.impl.xpath.XPath getXPath() {
        return this.fXPath;
    }

    public String toString() {
        return this.fXPath.toString();
    }
}

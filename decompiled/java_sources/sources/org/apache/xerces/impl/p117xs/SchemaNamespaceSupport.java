package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p117xs.opti.ElementImpl;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.QName;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class SchemaNamespaceSupport extends NamespaceSupport {

    /* renamed from: a */
    public C20045a f112721a;

    /* renamed from: org.apache.xerces.impl.xs.SchemaNamespaceSupport$a */
    /* loaded from: classes13.dex */
    public static final class C20045a {

        /* renamed from: d */
        public final Element f112725d;

        /* renamed from: e */
        public final SymbolTable f112726e;

        /* renamed from: a */
        public String[] f112722a = new String[32];

        /* renamed from: b */
        public int f112723b = 0;

        /* renamed from: c */
        public boolean f112724c = false;

        /* renamed from: f */
        public final QName f112727f = new QName();

        public C20045a(Element element, SymbolTable symbolTable) {
            this.f112725d = element;
            this.f112726e = symbolTable;
        }

        /* renamed from: a */
        public final void m70134a(String str, String str2) {
            int i = this.f112723b;
            String[] strArr = this.f112722a;
            if (i == strArr.length) {
                String[] strArr2 = new String[i * 2];
                System.arraycopy(strArr, 0, strArr2, 0, i);
                this.f112722a = strArr2;
            }
            String[] strArr3 = this.f112722a;
            int i2 = this.f112723b;
            int i3 = i2 + 1;
            strArr3[i2] = str;
            this.f112723b = i3 + 1;
            strArr3[i3] = str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0046, code lost:
        
            if (r5.length() != 0) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        
            m70134a(r4, r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        
            r8 = r9.f112726e.addSymbol(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x004f, code lost:
        
            if (r5.length() != 0) goto L24;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m70135b() {
            /*
                r9 = this;
                org.w3c.dom.Element r0 = r9.f112725d
                if (r0 == 0) goto L5d
            L4:
                org.w3c.dom.Node r0 = r0.getParentNode()
                if (r0 != 0) goto Lb
                goto L5d
            Lb:
                short r1 = r0.getNodeType()
                r2 = 1
                if (r2 != r1) goto L4
                org.w3c.dom.NamedNodeMap r1 = r0.getAttributes()
                int r2 = r1.getLength()
                r3 = 0
            L1b:
                if (r3 < r2) goto L1e
                goto L4
            L1e:
                org.w3c.dom.Node r4 = r1.item(r3)
                org.w3c.dom.Attr r4 = (org.w3c.dom.Attr) r4
                java.lang.String r5 = r4.getValue()
                if (r5 != 0) goto L2c
                java.lang.String r5 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
            L2c:
                org.apache.xerces.xni.QName r6 = r9.f112727f
                r9.m70136c(r6, r4)
                org.apache.xerces.xni.QName r4 = r9.f112727f
                java.lang.String r6 = r4.uri
                java.lang.String r7 = org.apache.xerces.xni.NamespaceContext.XMLNS_URI
                if (r6 != r7) goto L5a
                java.lang.String r6 = r4.prefix
                java.lang.String r7 = org.apache.xerces.util.XMLSymbols.PREFIX_XMLNS
                r8 = 0
                if (r6 != r7) goto L49
                java.lang.String r4 = r4.localpart
                int r6 = r5.length()
                if (r6 == 0) goto L57
                goto L51
            L49:
                java.lang.String r4 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
                int r6 = r5.length()
                if (r6 == 0) goto L57
            L51:
                org.apache.xerces.util.SymbolTable r6 = r9.f112726e
                java.lang.String r8 = r6.addSymbol(r5)
            L57:
                r9.m70134a(r4, r8)
            L5a:
                int r3 = r3 + 1
                goto L1b
            L5d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.SchemaNamespaceSupport.C20045a.m70135b():void");
        }

        /* renamed from: c */
        public final void m70136c(QName qName, Node node) {
            String prefix = node.getPrefix();
            String localName = node.getLocalName();
            String nodeName = node.getNodeName();
            String namespaceURI = node.getNamespaceURI();
            qName.prefix = prefix != null ? this.f112726e.addSymbol(prefix) : XMLSymbols.EMPTY_STRING;
            qName.localpart = localName != null ? this.f112726e.addSymbol(localName) : XMLSymbols.EMPTY_STRING;
            qName.rawname = nodeName != null ? this.f112726e.addSymbol(nodeName) : XMLSymbols.EMPTY_STRING;
            qName.uri = (namespaceURI == null || namespaceURI.length() <= 0) ? null : this.f112726e.addSymbol(namespaceURI);
        }

        /* renamed from: d */
        public String m70137d(String str) {
            for (int i = 0; i < this.f112723b; i += 2) {
                String[] strArr = this.f112722a;
                if (strArr[i] == str) {
                    return strArr[i + 1];
                }
            }
            return null;
        }
    }

    public SchemaNamespaceSupport(SchemaNamespaceSupport schemaNamespaceSupport) {
        this.f112721a = null;
        this.f112721a = schemaNamespaceSupport.f112721a;
        int i = schemaNamespaceSupport.fNamespaceSize;
        this.fNamespaceSize = i;
        if (this.fNamespace.length < i) {
            this.fNamespace = new String[i];
        }
        System.arraycopy(schemaNamespaceSupport.fNamespace, 0, this.fNamespace, 0, i);
        int i2 = schemaNamespaceSupport.fCurrentContext;
        this.fCurrentContext = i2;
        if (this.fContext.length <= i2) {
            this.fContext = new int[i2 + 1];
        }
        System.arraycopy(schemaNamespaceSupport.fContext, 0, this.fContext, 0, i2 + 1);
    }

    public String[] getEffectiveLocalContext() {
        int i;
        int i2;
        if (this.fCurrentContext < 3 || (i2 = this.fNamespaceSize - (i = this.fContext[3])) <= 0) {
            return null;
        }
        String[] strArr = new String[i2];
        System.arraycopy(this.fNamespace, i, strArr, 0, i2);
        return strArr;
    }

    @Override // org.apache.xerces.util.NamespaceSupport, org.apache.xerces.xni.NamespaceContext
    public String getURI(String str) {
        C20045a c20045a;
        String uri = super.getURI(str);
        if (uri != null || (c20045a = this.f112721a) == null) {
            return uri;
        }
        if (!c20045a.f112724c) {
            c20045a.m70135b();
            this.f112721a.f112724c = true;
        }
        return (this.f112721a.f112723b <= 0 || containsPrefix(str)) ? uri : this.f112721a.m70137d(str);
    }

    public void makeGlobal() {
        if (this.fCurrentContext >= 3) {
            this.fCurrentContext = 3;
            this.fNamespaceSize = this.fContext[3];
        }
    }

    public void setEffectiveContext(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        pushContext();
        int length = this.fNamespaceSize + strArr.length;
        String[] strArr2 = this.fNamespace;
        if (strArr2.length < length) {
            String[] strArr3 = new String[length];
            System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
            this.fNamespace = strArr3;
        }
        System.arraycopy(strArr, 0, this.fNamespace, this.fNamespaceSize, strArr.length);
        this.fNamespaceSize = length;
    }

    public SchemaNamespaceSupport(Element element, SymbolTable symbolTable) {
        Document ownerDocument;
        this.f112721a = null;
        if (element == null || (element instanceof ElementImpl) || (ownerDocument = element.getOwnerDocument()) == null || element == ownerDocument.getDocumentElement()) {
            return;
        }
        this.f112721a = new C20045a(element, symbolTable);
    }
}

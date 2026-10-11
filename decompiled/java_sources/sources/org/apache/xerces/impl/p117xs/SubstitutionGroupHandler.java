package org.apache.xerces.impl.p117xs;

import java.util.Hashtable;
import java.util.Vector;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class SubstitutionGroupHandler {

    /* renamed from: d */
    public static final XSElementDecl[] f112728d = new XSElementDecl[0];

    /* renamed from: e */
    public static final C20046a[] f112729e = new C20046a[0];

    /* renamed from: a */
    public final XSElementDeclHelper f112730a;

    /* renamed from: b */
    public Hashtable f112731b = new Hashtable();

    /* renamed from: c */
    public Hashtable f112732c = new Hashtable();

    /* renamed from: org.apache.xerces.impl.xs.SubstitutionGroupHandler$a */
    /* loaded from: classes13.dex */
    public static final class C20046a {

        /* renamed from: a */
        public XSElementDecl f112733a;

        /* renamed from: b */
        public short f112734b;

        /* renamed from: c */
        public short f112735c;

        public C20046a() {
        }

        public C20046a(XSElementDecl xSElementDecl, short s, short s2) {
            this.f112733a = xSElementDecl;
            this.f112734b = s;
            this.f112735c = s2;
        }
    }

    public SubstitutionGroupHandler(XSElementDeclHelper xSElementDeclHelper) {
        this.f112730a = xSElementDeclHelper;
    }

    /* renamed from: a */
    public final boolean m70138a(XSTypeDefinition xSTypeDefinition, XSTypeDefinition xSTypeDefinition2, C20046a c20046a) {
        short s = 0;
        short s2 = 0;
        while (xSTypeDefinition != xSTypeDefinition2) {
            XSComplexTypeDecl xSComplexTypeDecl = SchemaGrammar.fAnyType;
            if (xSTypeDefinition == xSComplexTypeDecl) {
                break;
            }
            s = (short) (xSTypeDefinition.getTypeCategory() == 15 ? s | ((XSComplexTypeDecl) xSTypeDefinition).f112879h : s | 2);
            xSTypeDefinition = xSTypeDefinition.getBaseType();
            if (xSTypeDefinition == null) {
                xSTypeDefinition = xSComplexTypeDecl;
            }
            if (xSTypeDefinition.getTypeCategory() == 15) {
                s2 = (short) (s2 | ((XSComplexTypeDecl) xSTypeDefinition).f112881j);
            }
        }
        if (xSTypeDefinition != xSTypeDefinition2 || (s & s2) != 0) {
            return false;
        }
        c20046a.f112734b = s;
        c20046a.f112735c = s2;
        return true;
    }

    public void addSubstitutionGroup(XSElementDecl[] xSElementDeclArr) {
        for (int length = xSElementDeclArr.length - 1; length >= 0; length--) {
            XSElementDecl xSElementDecl = xSElementDeclArr[length];
            XSElementDecl xSElementDecl2 = xSElementDecl.fSubGroup;
            Vector vector = (Vector) this.f112731b.get(xSElementDecl2);
            if (vector == null) {
                vector = new Vector();
                this.f112731b.put(xSElementDecl2, vector);
            }
            vector.addElement(xSElementDecl);
        }
    }

    /* renamed from: b */
    public final C20046a[] m70139b(XSElementDecl xSElementDecl, C20046a c20046a) {
        Object obj = this.f112731b.get(xSElementDecl);
        if (obj == null) {
            Hashtable hashtable = this.f112731b;
            C20046a[] c20046aArr = f112729e;
            hashtable.put(xSElementDecl, c20046aArr);
            return c20046aArr;
        }
        if (obj instanceof C20046a[]) {
            return (C20046a[]) obj;
        }
        Vector vector = (Vector) obj;
        Vector vector2 = new Vector();
        for (int size = vector.size() - 1; size >= 0; size--) {
            XSElementDecl xSElementDecl2 = (XSElementDecl) vector.elementAt(size);
            if (m70138a(xSElementDecl2.fType, xSElementDecl.fType, c20046a)) {
                short s = c20046a.f112734b;
                short s2 = c20046a.f112735c;
                vector2.addElement(new C20046a(xSElementDecl2, s, s2));
                C20046a[] m70139b = m70139b(xSElementDecl2, c20046a);
                for (int length = m70139b.length - 1; length >= 0; length--) {
                    C20046a c20046a2 = m70139b[length];
                    short s3 = (short) (c20046a2.f112734b | s);
                    short s4 = (short) (c20046a2.f112735c | s2);
                    if ((s3 & s4) == 0) {
                        vector2.addElement(new C20046a(c20046a2.f112733a, s3, s4));
                    }
                }
            }
        }
        C20046a[] c20046aArr2 = new C20046a[vector2.size()];
        for (int size2 = vector2.size() - 1; size2 >= 0; size2--) {
            c20046aArr2[size2] = (C20046a) vector2.elementAt(size2);
        }
        this.f112731b.put(xSElementDecl, c20046aArr2);
        return c20046aArr2;
    }

    /* renamed from: c */
    public final boolean m70140c(XSTypeDefinition xSTypeDefinition, XSTypeDefinition xSTypeDefinition2, short s) {
        XSTypeDefinition xSTypeDefinition3 = xSTypeDefinition;
        short s2 = s;
        short s3 = 0;
        while (xSTypeDefinition3 != xSTypeDefinition2) {
            XSComplexTypeDecl xSComplexTypeDecl = SchemaGrammar.fAnyType;
            if (xSTypeDefinition3 == xSComplexTypeDecl) {
                break;
            }
            s3 = (short) (xSTypeDefinition3.getTypeCategory() == 15 ? s3 | ((XSComplexTypeDecl) xSTypeDefinition3).f112879h : s3 | 2);
            xSTypeDefinition3 = xSTypeDefinition3.getBaseType();
            if (xSTypeDefinition3 == null) {
                xSTypeDefinition3 = xSComplexTypeDecl;
            }
            if (xSTypeDefinition3.getTypeCategory() == 15) {
                s2 = (short) (s2 | ((XSComplexTypeDecl) xSTypeDefinition3).f112881j);
            }
        }
        if (xSTypeDefinition3 == xSTypeDefinition2) {
            return (s3 & s2) == 0;
        }
        if (xSTypeDefinition2.getTypeCategory() == 16) {
            XSSimpleTypeDefinition xSSimpleTypeDefinition = (XSSimpleTypeDefinition) xSTypeDefinition2;
            if (xSSimpleTypeDefinition.getVariety() == 3) {
                XSObjectList memberTypes = xSSimpleTypeDefinition.getMemberTypes();
                int length = memberTypes.getLength();
                for (int i = 0; i < length; i++) {
                    if (m70140c(xSTypeDefinition, (XSTypeDefinition) memberTypes.item(i), s)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public XSElementDecl getMatchingElemDecl(QName qName, XSElementDecl xSElementDecl) {
        XSElementDecl globalElementDecl;
        if (qName.localpart == xSElementDecl.fName && qName.uri == xSElementDecl.fTargetNamespace) {
            return xSElementDecl;
        }
        if (xSElementDecl.fScope == 1 && (xSElementDecl.fBlock & 4) == 0 && (globalElementDecl = this.f112730a.getGlobalElementDecl(qName)) != null && substitutionGroupOK(globalElementDecl, xSElementDecl, xSElementDecl.fBlock)) {
            return globalElementDecl;
        }
        return null;
    }

    public XSElementDecl[] getSubstitutionGroup(XSElementDecl xSElementDecl) {
        Object obj = this.f112732c.get(xSElementDecl);
        if (obj != null) {
            return (XSElementDecl[]) obj;
        }
        if ((xSElementDecl.fBlock & 4) != 0) {
            Hashtable hashtable = this.f112732c;
            XSElementDecl[] xSElementDeclArr = f112728d;
            hashtable.put(xSElementDecl, xSElementDeclArr);
            return xSElementDeclArr;
        }
        C20046a[] m70139b = m70139b(xSElementDecl, new C20046a());
        int length = m70139b.length;
        XSElementDecl[] xSElementDeclArr2 = new XSElementDecl[length];
        int i = 0;
        for (C20046a c20046a : m70139b) {
            if ((xSElementDecl.fBlock & c20046a.f112734b) == 0) {
                xSElementDeclArr2[i] = c20046a.f112733a;
                i++;
            }
        }
        if (i < length) {
            XSElementDecl[] xSElementDeclArr3 = new XSElementDecl[i];
            System.arraycopy(xSElementDeclArr2, 0, xSElementDeclArr3, 0, i);
            xSElementDeclArr2 = xSElementDeclArr3;
        }
        this.f112732c.put(xSElementDecl, xSElementDeclArr2);
        return xSElementDeclArr2;
    }

    public boolean inSubstitutionGroup(XSElementDecl xSElementDecl, XSElementDecl xSElementDecl2) {
        return substitutionGroupOK(xSElementDecl, xSElementDecl2, xSElementDecl2.fBlock);
    }

    public void reset() {
        this.f112731b.clear();
        this.f112732c.clear();
    }

    public boolean substitutionGroupOK(XSElementDecl xSElementDecl, XSElementDecl xSElementDecl2, short s) {
        if (xSElementDecl == xSElementDecl2) {
            return true;
        }
        if ((s & 4) != 0) {
            return false;
        }
        XSElementDecl xSElementDecl3 = xSElementDecl.fSubGroup;
        while (xSElementDecl3 != null && xSElementDecl3 != xSElementDecl2) {
            xSElementDecl3 = xSElementDecl3.fSubGroup;
        }
        if (xSElementDecl3 == null) {
            return false;
        }
        return m70140c(xSElementDecl.fType, xSElementDecl2.fType, s);
    }
}

package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.tmo;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;

/* renamed from: org.apache.xerces.impl.xs.traversers.f */
/* loaded from: classes13.dex */
public class C20061f extends AbstractC20056a {

    /* renamed from: o */
    public boolean f113229o;

    public C20061f(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        this.f113229o = false;
    }

    /* renamed from: q */
    public final boolean m70469q(String str, String str2) {
        if (str2 != SchemaSymbols.URI_SCHEMAFORSCHEMA) {
            return false;
        }
        if (SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(str) != null) {
            this.f113229o = true;
        }
        return this.f113229o;
    }

    /* renamed from: r */
    public final XSSimpleType m70470r(String str, String str2, short s) {
        XSSimpleType xSSimpleType = (XSSimpleType) SchemaGrammar.SG_SchemaNS.getTypeDefinition("string");
        if (s == 2) {
            return this.f113216a.f113151Z.createTypeRestriction(str, str2, (short) 0, xSSimpleType, null);
        }
        if (s == 8) {
            return this.f113216a.f113151Z.createTypeUnion(str, str2, (short) 0, new XSSimpleType[]{xSSimpleType}, null);
        }
        if (s != 16) {
            return null;
        }
        return this.f113216a.f113151Z.createTypeList(str, str2, (short) 0, xSSimpleType, null);
    }

    /* renamed from: s */
    public final XSSimpleType m70471s(Element element, String str, QName qName, short s, tmo tmoVar) {
        XSTypeDefinition xSTypeDefinition;
        if (qName == null || (xSTypeDefinition = (XSTypeDefinition) this.f113216a.getGlobalDecl(tmoVar, 7, qName, element)) == null) {
            return null;
        }
        if (xSTypeDefinition.getTypeCategory() != 16) {
            m70451j(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$ATOMIC_NOT_SIMPLE, new Object[]{qName.rawname, str}, element);
            return null;
        }
        if (xSTypeDefinition == SchemaGrammar.fAnySimpleType && s == 2) {
            if (m70469q(str, tmoVar.f85508h)) {
                return null;
            }
            m70451j(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$ATOMIC_NOT_SIMPLE, new Object[]{qName.rawname, str}, element);
            return null;
        }
        if ((xSTypeDefinition.getFinal() & s) == 0) {
            return (XSSimpleType) xSTypeDefinition;
        }
        if (s == 2) {
            m70451j(XmlErrorCodes.SIMPLE_TYPE_PROPERTIES$RESTRICTION_FINAL, new Object[]{str, qName.rawname}, element);
        } else if (s == 16) {
            m70451j("cos-st-restricts.2.3.1.1", new Object[]{qName.rawname, str}, element);
        } else if (s == 8) {
            m70451j("cos-st-restricts.3.3.1.1", new Object[]{qName.rawname, str}, element);
        }
        return null;
    }

    /* renamed from: t */
    public final String m70472t(Element element) {
        StringBuffer stringBuffer = new StringBuffer("#AnonType_");
        while (true) {
            element = DOMUtil.getParent(element);
            if (element == null || element == DOMUtil.getRoot(DOMUtil.getDocument(element))) {
                break;
            }
            stringBuffer.append(element.getAttribute(SchemaSymbols.ATT_NAME));
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x026b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0151 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0291 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r1v37, types: [org.apache.xerces.impl.dv.SchemaDVFactory] */
    /* JADX WARN: Type inference failed for: r28v0, types: [org.apache.xerces.impl.xs.traversers.f, org.apache.xerces.impl.xs.traversers.a] */
    /* JADX WARN: Type inference failed for: r6v21, types: [org.apache.xerces.xs.XSObjectList] */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.xerces.impl.p115dv.XSSimpleType m70473u(java.lang.String r29, org.w3c.dom.Element r30, java.lang.Object[] r31, com.sunia.HTREnginev2.tmo r32, org.apache.xerces.impl.p117xs.SchemaGrammar r33) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.C20061f.m70473u(java.lang.String, org.w3c.dom.Element, java.lang.Object[], com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar):org.apache.xerces.impl.dv.XSSimpleType");
    }

    /* renamed from: v */
    public final boolean m70474v(XSSimpleType xSSimpleType) {
        if (xSSimpleType.getVariety() == 2) {
            return true;
        }
        if (xSSimpleType.getVariety() == 3) {
            XSObjectList memberTypes = xSSimpleType.getMemberTypes();
            for (int i = 0; i < memberTypes.getLength(); i++) {
                if (((XSSimpleType) memberTypes.item(i)).getVariety() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: w */
    public XSSimpleType m70475w(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, true, tmoVar);
        int i = XSAttributeChecker.ATTIDX_NAME;
        String str = (String) checkAttributes[i];
        if (str == null) {
            checkAttributes[i] = AbstractC20056a.f113209h;
        }
        XSSimpleType m70477y = m70477y(element, checkAttributes, tmoVar, schemaGrammar);
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        if (str == null) {
            m70451j("s4s-att-must-appear", new Object[]{SchemaSymbols.ELT_SIMPLETYPE, SchemaSymbols.ATT_NAME}, element);
            m70477y = null;
        }
        if (m70477y != null) {
            if (schemaGrammar.getGlobalTypeDecl(m70477y.getName()) == null) {
                schemaGrammar.addGlobalSimpleTypeDecl(m70477y);
            }
            String schemaDocument2SystemId = this.f113216a.schemaDocument2SystemId(tmoVar);
            XSTypeDefinition globalTypeDecl = schemaGrammar.getGlobalTypeDecl(m70477y.getName(), schemaDocument2SystemId);
            if (globalTypeDecl == null) {
                schemaGrammar.addGlobalSimpleTypeDecl(m70477y, schemaDocument2SystemId);
            }
            XSDHandler xSDHandler = this.f113216a;
            if (xSDHandler.f113133H) {
                if (globalTypeDecl != null && (globalTypeDecl instanceof XSSimpleType)) {
                    m70477y = (XSSimpleType) globalTypeDecl;
                }
                xSDHandler.m70411m(m70477y);
            }
        }
        return m70477y;
    }

    /* renamed from: x */
    public XSSimpleType m70476x(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        XSSimpleType m70473u = m70473u(m70472t(element), element, checkAttributes, tmoVar, schemaGrammar);
        if (m70473u instanceof XSSimpleTypeDecl) {
            ((XSSimpleTypeDecl) m70473u).setAnonymous(true);
        }
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return m70473u;
    }

    /* renamed from: y */
    public final XSSimpleType m70477y(Element element, Object[] objArr, tmo tmoVar, SchemaGrammar schemaGrammar) {
        return m70473u((String) objArr[XSAttributeChecker.ATTIDX_NAME], element, objArr, tmoVar, schemaGrammar);
    }
}

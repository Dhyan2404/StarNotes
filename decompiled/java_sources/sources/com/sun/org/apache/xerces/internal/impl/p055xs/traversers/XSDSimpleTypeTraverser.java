package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.SchemaDVFactoryImpl;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.XSSimpleTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDSimpleTypeTraverser extends XSDAbstractTraverser {
    private boolean fIsBuiltIn;
    private final SchemaDVFactory schemaFactory;

    public XSDSimpleTypeTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        SchemaDVFactory schemaDVFactory = SchemaDVFactory.getInstance();
        this.schemaFactory = schemaDVFactory;
        this.fIsBuiltIn = false;
        if (schemaDVFactory instanceof SchemaDVFactoryImpl) {
            ((SchemaDVFactoryImpl) schemaDVFactory).setDeclPool(xSDHandler.fDeclPool);
        }
    }

    private final boolean checkBuiltIn(String str, String str2) {
        if (str2 != SchemaSymbols.URI_SCHEMAFORSCHEMA) {
            return false;
        }
        if (SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(str) != null) {
            this.fIsBuiltIn = true;
        }
        return this.fIsBuiltIn;
    }

    private XSSimpleType errorType(String str, String str2, short s) {
        if (s == 2) {
            return this.schemaFactory.createTypeRestriction(str, str2, (short) 0, SchemaGrammar.fAnySimpleType, null);
        }
        if (s == 8) {
            return this.schemaFactory.createTypeUnion(str, str2, (short) 0, new XSSimpleType[]{SchemaGrammar.fAnySimpleType}, null);
        }
        if (s != 16) {
            return null;
        }
        return this.schemaFactory.createTypeList(str, str2, (short) 0, SchemaGrammar.fAnySimpleType, null);
    }

    private XSSimpleType findDTValidator(Element element, String str, QName qName, short s, XSDocumentInfo xSDocumentInfo) {
        if (qName == null) {
            return null;
        }
        XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) this.fSchemaHandler.getGlobalDecl(xSDocumentInfo, 7, qName, element);
        if (xSTypeDefinition != null) {
            if (xSTypeDefinition.getTypeCategory() != 16 || (xSTypeDefinition == SchemaGrammar.fAnySimpleType && s == 2)) {
                XSSimpleType xSSimpleType = SchemaGrammar.fAnySimpleType;
                if (xSTypeDefinition == xSSimpleType && checkBuiltIn(str, xSDocumentInfo.fTargetNamespace)) {
                    return null;
                }
                reportSchemaError(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$ATOMIC_NOT_SIMPLE, new Object[]{qName.rawname, str}, element);
                return xSSimpleType;
            }
            if ((xSTypeDefinition.getFinal() & s) != 0) {
                if (s == 2) {
                    reportSchemaError(XmlErrorCodes.SIMPLE_TYPE_PROPERTIES$RESTRICTION_FINAL, new Object[]{str, qName.rawname}, element);
                } else if (s == 16) {
                    reportSchemaError("cos-st-restricts.2.3.1.1", new Object[]{qName.rawname, str}, element);
                } else if (s == 8) {
                    reportSchemaError("cos-st-restricts.3.3.1.1", new Object[]{qName.rawname, str}, element);
                }
            }
        }
        return (XSSimpleType) xSTypeDefinition;
    }

    private String genAnonTypeName(Element element) {
        StringBuffer stringBuffer = new StringBuffer("#AnonType_");
        for (Element parent = DOMUtil.getParent(element); parent != null && parent != DOMUtil.getRoot(DOMUtil.getDocument(parent)); parent = DOMUtil.getParent(parent)) {
            stringBuffer.append(parent.getAttribute(SchemaSymbols.ATT_NAME));
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0340 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x034a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0264 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0155 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x029a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02b9  */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v36, types: [com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType] */
    /* JADX WARN: Type inference failed for: r1v71 */
    /* JADX WARN: Type inference failed for: r1v72 */
    /* JADX WARN: Type inference failed for: r1v73 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType getSimpleType(java.lang.String r27, org.w3c.dom.Element r28, java.lang.Object[] r29, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r30, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r31) {
        /*
            Method dump skipped, instructions count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDSimpleTypeTraverser.getSimpleType(java.lang.String, org.w3c.dom.Element, java.lang.Object[], com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar):com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType");
    }

    private boolean isListDatatype(XSSimpleType xSSimpleType) {
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

    private XSSimpleType traverseSimpleTypeDecl(Element element, Object[] objArr, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        return getSimpleType((String) objArr[XSAttributeChecker.ATTIDX_NAME], element, objArr, xSDocumentInfo, schemaGrammar);
    }

    public XSSimpleType traverseGlobal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, true, xSDocumentInfo);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        XSSimpleType traverseSimpleTypeDecl = traverseSimpleTypeDecl(element, checkAttributes, xSDocumentInfo, schemaGrammar);
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        if (str == null) {
            reportSchemaError("s4s-att-must-appear", new Object[]{SchemaSymbols.ELT_SIMPLETYPE, SchemaSymbols.ATT_NAME}, element);
            traverseSimpleTypeDecl = null;
        }
        if (traverseSimpleTypeDecl != null) {
            schemaGrammar.addGlobalTypeDecl(traverseSimpleTypeDecl);
        }
        return traverseSimpleTypeDecl;
    }

    public XSSimpleType traverseLocal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        XSSimpleType simpleType = getSimpleType(genAnonTypeName(element), element, checkAttributes, xSDocumentInfo, schemaGrammar);
        if (simpleType instanceof XSSimpleTypeDecl) {
            ((XSSimpleTypeDecl) simpleType).setAnonymous(true);
        }
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return simpleType;
    }
}

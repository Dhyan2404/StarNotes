package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p053dv.XSFacets;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAnnotationImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeGroupDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeUseImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSWildcardDecl;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationState;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.util.Vector;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public abstract class XSDAbstractTraverser {
    protected static final int CHILD_OF_GROUP = 4;
    protected static final int GROUP_REF_WITH_ALL = 2;
    protected static final int NOT_ALL_CONTEXT = 0;
    protected static final String NO_NAME = "(no name)";
    protected static final int PROCESSING_ALL_EL = 1;
    protected static final int PROCESSING_ALL_GP = 8;
    private static final XSSimpleType fQNameDV = (XSSimpleType) SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("QName");
    protected XSAttributeChecker fAttrChecker;
    protected XSDHandler fSchemaHandler;
    protected SymbolTable fSymbolTable = null;
    protected boolean fValidateAnnotations = false;
    ValidationState fValidationState = new ValidationState();
    private StringBuffer fPattern = new StringBuffer();
    private final XSFacets xsFacets = new XSFacets();

    /* loaded from: classes10.dex */
    public class FacetInfo {
        short fFixedFacets;
        short fPresentFacets;
        XSFacets facetdata;
        Element nodeAfterFacets;

        public FacetInfo() {
        }
    }

    public XSDAbstractTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        this.fSchemaHandler = null;
        this.fAttrChecker = null;
        this.fSchemaHandler = xSDHandler;
        this.fAttrChecker = xSAttributeChecker;
    }

    private boolean containsQName(XSSimpleType xSSimpleType) {
        if (xSSimpleType.getVariety() == 1) {
            short primitiveKind = xSSimpleType.getPrimitiveKind();
            return primitiveKind == 18 || primitiveKind == 20;
        }
        if (xSSimpleType.getVariety() == 2) {
            return containsQName((XSSimpleType) xSSimpleType.getItemType());
        }
        if (xSSimpleType.getVariety() == 3) {
            XSObjectList memberTypes = xSSimpleType.getMemberTypes();
            for (int i = 0; i < memberTypes.getLength(); i++) {
                if (containsQName((XSSimpleType) memberTypes.item(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    private static String processAttValue(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                stringBuffer.append(SerializerConstants.ENTITY_QUOT);
            } else if (charAt == '>') {
                stringBuffer.append("&gt;");
            } else if (charAt == '&') {
                stringBuffer.append("&amp;");
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public void checkNotationType(String str, XSTypeDefinition xSTypeDefinition, Element element) {
        if (xSTypeDefinition.getTypeCategory() == 16) {
            XSSimpleType xSSimpleType = (XSSimpleType) xSTypeDefinition;
            if (xSSimpleType.getVariety() == 1 && xSSimpleType.getPrimitiveKind() == 20 && (xSSimpleType.getDefinedFacets() & 2048) == 0) {
                reportSchemaError(XmlErrorCodes.DATATYPE_ENUM_NOTATION, new Object[]{xSTypeDefinition.getName(), str, DOMUtil.getLocalName(element)}, element);
            }
        }
    }

    public XSParticleDecl checkOccurrences(XSParticleDecl xSParticleDecl, String str, Element element, int i, long j) {
        int i2 = xSParticleDecl.fMinOccurs;
        int i3 = xSParticleDecl.fMaxOccurs;
        int i4 = 1;
        boolean z = (j & ((long) (1 << XSAttributeChecker.ATTIDX_MINOCCURS))) != 0;
        boolean z2 = (j & ((long) (1 << XSAttributeChecker.ATTIDX_MAXOCCURS))) != 0;
        boolean z3 = (i & 1) != 0;
        boolean z4 = (i & 8) != 0;
        boolean z5 = (i & 2) != 0;
        if ((i & 4) != 0) {
            if (!z) {
                reportSchemaError("s4s-att-not-allowed", new Object[]{str, "minOccurs"}, element);
                i2 = 1;
            }
            if (!z2) {
                reportSchemaError("s4s-att-not-allowed", new Object[]{str, "maxOccurs"}, element);
                i3 = 1;
            }
        }
        if (i2 == 0 && i3 == 0) {
            xSParticleDecl.fType = (short) 0;
            return null;
        }
        if (z3) {
            if (i3 != 1) {
                reportSchemaError(XmlErrorCodes.ALL_GROUP_LIMITED$CHILD_PARTICLES_MAX_LTE_1, new Object[]{new Integer(i3), ((XSElementDecl) xSParticleDecl.fValue).getName()}, element);
            }
            i4 = i3;
        } else {
            if ((z4 || z5) && i3 != 1) {
                reportSchemaError("cos-all-limited.1.2", null, element);
            }
            i4 = i3;
        }
        xSParticleDecl.fMaxOccurs = i4;
        return xSParticleDecl;
    }

    public void reportSchemaError(String str, Object[] objArr, Element element) {
        this.fSchemaHandler.reportSchemaError(str, objArr, element);
    }

    public void reset(SymbolTable symbolTable, boolean z) {
        this.fSymbolTable = symbolTable;
        this.fValidateAnnotations = z;
        this.fValidationState.setExtraChecking(false);
        this.fValidationState.setSymbolTable(symbolTable);
    }

    public XSAnnotationImpl traverseAnnotationDecl(Element element, Object[] objArr, boolean z, XSDocumentInfo xSDocumentInfo) {
        String data;
        String substring;
        String substring2;
        this.fAttrChecker.returnAttrArray(this.fAttrChecker.checkAttributes(element, z, xSDocumentInfo), xSDocumentInfo);
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement != null) {
            data = null;
            do {
                String localName = DOMUtil.getLocalName(firstChildElement);
                if (localName.equals(SchemaSymbols.ELT_APPINFO) || localName.equals(SchemaSymbols.ELT_DOCUMENTATION)) {
                    Node firstChild = firstChildElement.getFirstChild();
                    if (firstChild != null && firstChild.getNodeType() == 3) {
                        data = ((Text) firstChild).getData();
                    }
                } else {
                    reportSchemaError(XmlErrorCodes.SCHEMA_ANNOTATION, new Object[]{localName}, firstChildElement);
                }
                this.fAttrChecker.returnAttrArray(this.fAttrChecker.checkAttributes(firstChildElement, true, xSDocumentInfo), xSDocumentInfo);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            } while (firstChildElement != null);
        } else {
            Node firstChild2 = element.getFirstChild();
            data = (firstChild2 == null || firstChild2.getNodeType() != 3) ? null : ((Text) firstChild2).getData();
        }
        if (data == null) {
            return null;
        }
        SchemaGrammar grammar = this.fSchemaHandler.getGrammar(xSDocumentInfo.fTargetNamespace);
        Vector vector = (Vector) objArr[XSAttributeChecker.ATTIDX_NONSCHEMA];
        if (vector == null || vector.isEmpty()) {
            if (this.fValidateAnnotations) {
                xSDocumentInfo.addAnnotation(new XSAnnotationInfo(data, element));
            }
            return new XSAnnotationImpl(data, grammar);
        }
        StringBuffer stringBuffer = new StringBuffer(64);
        stringBuffer.append(" ");
        int i = 0;
        while (i < vector.size()) {
            int i2 = i + 1;
            String str = (String) vector.elementAt(i);
            int indexOf = str.indexOf(58);
            if (indexOf == -1) {
                substring2 = str;
                substring = "";
            } else {
                substring = str.substring(0, indexOf);
                substring2 = str.substring(indexOf + 1);
            }
            if (element.getAttributeNS(xSDocumentInfo.fNamespaceSupport.getURI(substring.intern()), substring2).equals("")) {
                stringBuffer.append(str);
                stringBuffer.append("=\"");
                i = i2 + 1;
                stringBuffer.append(processAttValue((String) vector.elementAt(i2)));
                stringBuffer.append("\" ");
            } else {
                i = i2 + 1;
            }
        }
        StringBuffer stringBuffer2 = new StringBuffer(data.length() + stringBuffer.length());
        String str2 = SchemaSymbols.ELT_ANNOTATION;
        int indexOf2 = data.indexOf(str2);
        if (indexOf2 == -1) {
            return null;
        }
        int length = indexOf2 + str2.length();
        stringBuffer2.append(data.substring(0, length));
        stringBuffer2.append(stringBuffer.toString());
        stringBuffer2.append(data.substring(length, data.length()));
        String stringBuffer3 = stringBuffer2.toString();
        if (this.fValidateAnnotations) {
            xSDocumentInfo.addAnnotation(new XSAnnotationInfo(stringBuffer3, element));
        }
        return new XSAnnotationImpl(stringBuffer3, grammar);
    }

    public Element traverseAttrsAndAttrGrps(Element element, XSAttributeGroupDecl xSAttributeGroupDecl, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar, XSComplexTypeDecl xSComplexTypeDecl) {
        XSAttributeGroupDecl traverseLocal;
        String str;
        Element element2 = element;
        while (true) {
            String str2 = "src-attribute_group.2";
            String str3 = "src-ct.4";
            if (element2 == null) {
                break;
            }
            String localName = DOMUtil.getLocalName(element2);
            boolean equals = localName.equals(SchemaSymbols.ELT_ATTRIBUTE);
            String str4 = XmlErrorCodes.ATTR_GROUP_PROPERTIES$TWO_IDS;
            String str5 = XmlErrorCodes.ATTR_GROUP_PROPERTIES$2;
            if (!equals) {
                if (!localName.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP) || (traverseLocal = this.fSchemaHandler.fAttributeGroupTraverser.traverseLocal(element2, xSDocumentInfo, schemaGrammar)) == null) {
                    break;
                }
                XSObjectList attributeUses = traverseLocal.getAttributeUses();
                int length = attributeUses.getLength();
                int i = 0;
                while (i < length) {
                    String str6 = str2;
                    XSAttributeUseImpl xSAttributeUseImpl = (XSAttributeUseImpl) attributeUses.item(i);
                    String str7 = str3;
                    XSObjectList xSObjectList = attributeUses;
                    if (xSAttributeGroupDecl.getAttributeUse(xSAttributeUseImpl.fAttrDecl.getNamespace(), xSAttributeUseImpl.fAttrDecl.getName()) == null) {
                        String addAttributeUse = xSAttributeGroupDecl.addAttributeUse(xSAttributeUseImpl);
                        if (addAttributeUse != null) {
                            str = str4;
                            reportSchemaError(xSComplexTypeDecl == null ? str4 : "ct-props-correct.5", new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), xSAttributeUseImpl.fAttrDecl.getName(), addAttributeUse}, element2);
                        } else {
                            str = str4;
                        }
                    } else {
                        str = str4;
                        reportSchemaError(xSComplexTypeDecl == null ? XmlErrorCodes.ATTR_GROUP_PROPERTIES$2 : XmlErrorCodes.COMPLEX_TYPE_PROPERTIES$DUPLICATE_ATTRIBUTE, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), xSAttributeUseImpl.fAttrDecl.getName()}, element2);
                    }
                    i++;
                    str2 = str6;
                    str3 = str7;
                    attributeUses = xSObjectList;
                    str4 = str;
                }
                String str8 = str2;
                String str9 = str3;
                XSWildcardDecl xSWildcardDecl = traverseLocal.fAttributeWC;
                if (xSWildcardDecl != null) {
                    XSWildcardDecl xSWildcardDecl2 = xSAttributeGroupDecl.fAttributeWC;
                    if (xSWildcardDecl2 == null) {
                        xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
                    } else {
                        XSWildcardDecl performIntersectionWith = xSWildcardDecl2.performIntersectionWith(xSWildcardDecl, xSWildcardDecl2.fProcessContents);
                        xSAttributeGroupDecl.fAttributeWC = performIntersectionWith;
                        if (performIntersectionWith == null) {
                            reportSchemaError(xSComplexTypeDecl == null ? str8 : str9, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName()}, element2);
                        }
                    }
                }
                element2 = DOMUtil.getNextSiblingElement(element2);
            } else {
                XSAttributeUseImpl traverseLocal2 = this.fSchemaHandler.fAttributeTraverser.traverseLocal(element2, xSDocumentInfo, schemaGrammar, xSComplexTypeDecl);
                if (traverseLocal2 == null) {
                    break;
                }
                if (xSAttributeGroupDecl.getAttributeUse(traverseLocal2.fAttrDecl.getNamespace(), traverseLocal2.fAttrDecl.getName()) == null) {
                    String addAttributeUse2 = xSAttributeGroupDecl.addAttributeUse(traverseLocal2);
                    if (addAttributeUse2 != null) {
                        if (xSComplexTypeDecl != null) {
                            str4 = "ct-props-correct.5";
                        }
                        reportSchemaError(str4, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), traverseLocal2.fAttrDecl.getName(), addAttributeUse2}, element2);
                    }
                } else {
                    if (xSComplexTypeDecl != null) {
                        str5 = XmlErrorCodes.COMPLEX_TYPE_PROPERTIES$DUPLICATE_ATTRIBUTE;
                    }
                    reportSchemaError(str5, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), traverseLocal2.fAttrDecl.getName()}, element2);
                }
                element2 = DOMUtil.getNextSiblingElement(element2);
            }
        }
        if (element2 == null || !DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_ANYATTRIBUTE)) {
            return element2;
        }
        XSWildcardDecl traverseAnyAttribute = this.fSchemaHandler.fWildCardTraverser.traverseAnyAttribute(element2, xSDocumentInfo, schemaGrammar);
        XSWildcardDecl xSWildcardDecl3 = xSAttributeGroupDecl.fAttributeWC;
        if (xSWildcardDecl3 == null) {
            xSAttributeGroupDecl.fAttributeWC = traverseAnyAttribute;
        } else {
            XSWildcardDecl performIntersectionWith2 = traverseAnyAttribute.performIntersectionWith(xSWildcardDecl3, traverseAnyAttribute.fProcessContents);
            xSAttributeGroupDecl.fAttributeWC = performIntersectionWith2;
            if (performIntersectionWith2 == null) {
                reportSchemaError(xSComplexTypeDecl == null ? "src-attribute_group.2" : "src-ct.4", new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName()}, element2);
            }
        }
        return DOMUtil.getNextSiblingElement(element2);
    }

    /* JADX WARN: Removed duplicated region for block: B:153:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0330  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDAbstractTraverser.FacetInfo traverseFacets(org.w3c.dom.Element r33, com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType r34, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r35) {
        /*
            Method dump skipped, instructions count: 1254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDAbstractTraverser.traverseFacets(org.w3c.dom.Element, com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo):com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDAbstractTraverser$FacetInfo");
    }

    public XSAnnotationImpl traverseSyntheticAnnotation(Element element, String str, Object[] objArr, boolean z, XSDocumentInfo xSDocumentInfo) {
        String substring;
        SchemaGrammar grammar = this.fSchemaHandler.getGrammar(xSDocumentInfo.fTargetNamespace);
        Vector vector = (Vector) objArr[XSAttributeChecker.ATTIDX_NONSCHEMA];
        if (vector == null || vector.isEmpty()) {
            if (this.fValidateAnnotations) {
                xSDocumentInfo.addAnnotation(new XSAnnotationInfo(str, element));
            }
            return new XSAnnotationImpl(str, grammar);
        }
        StringBuffer stringBuffer = new StringBuffer(64);
        stringBuffer.append(" ");
        int i = 0;
        while (i < vector.size()) {
            int i2 = i + 1;
            String str2 = (String) vector.elementAt(i);
            int indexOf = str2.indexOf(58);
            if (indexOf == -1) {
                substring = "";
            } else {
                substring = str2.substring(0, indexOf);
                str2.substring(indexOf + 1);
            }
            xSDocumentInfo.fNamespaceSupport.getURI(substring.intern());
            stringBuffer.append(str2);
            stringBuffer.append("=\"");
            i = i2 + 1;
            stringBuffer.append(processAttValue((String) vector.elementAt(i2)));
            stringBuffer.append("\" ");
        }
        StringBuffer stringBuffer2 = new StringBuffer(str.length() + stringBuffer.length());
        String str3 = SchemaSymbols.ELT_ANNOTATION;
        int indexOf2 = str.indexOf(str3);
        if (indexOf2 == -1) {
            return null;
        }
        int length = indexOf2 + str3.length();
        stringBuffer2.append(str.substring(0, length));
        stringBuffer2.append(stringBuffer.toString());
        stringBuffer2.append(str.substring(length, str.length()));
        String stringBuffer3 = stringBuffer2.toString();
        if (this.fValidateAnnotations) {
            xSDocumentInfo.addAnnotation(new XSAnnotationInfo(stringBuffer3, element));
        }
        return new XSAnnotationImpl(stringBuffer3, grammar);
    }
}

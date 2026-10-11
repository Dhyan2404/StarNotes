package org.apache.xmlbeans.impl.inst2xsd;

import com.onyx.android.sdk.base.common.CommonConstant;
import com.sunia.HTREnginev2.jvl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlDate;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDuration;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlTime;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.common.XmlWhitespace;
import org.apache.xmlbeans.impl.inst2xsd.util.Attribute;
import org.apache.xmlbeans.impl.inst2xsd.util.Element;
import org.apache.xmlbeans.impl.inst2xsd.util.Type;
import org.apache.xmlbeans.impl.inst2xsd.util.TypeSystemHolder;
import org.apache.xmlbeans.impl.util.XsTypeConverter;
import org.apache.xmlbeans.impl.values.JavaGDateHolderEx;
import org.apache.xmlbeans.impl.values.JavaGDurationHolderEx;
import org.apache.xmlbeans.impl.values.JavaQNameHolder;
import org.apache.xmlbeans.impl.values.JavaUriHolder;

/* loaded from: classes13.dex */
public class RussianDollStrategy implements XsdGenStrategy {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final String _xsi = "http://www.w3.org/2001/XMLSchema-instance";
    static final QName _xsiNil = new QName("http://www.w3.org/2001/XMLSchema-instance", "nil", "xsi");
    private final SCTValidationContext _validationContext = new SCTValidationContext();

    /* loaded from: classes13.dex */
    public static class SCTValidationContext implements ValidationContext {
        protected boolean valid = true;

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str) {
            this.valid = false;
        }

        public boolean isValid() {
            return this.valid;
        }

        public void resetToValid() {
            this.valid = true;
        }

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str, Object[] objArr) {
            this.valid = false;
        }
    }

    public Element addGlobalElement(Element element, TypeSystemHolder typeSystemHolder, Inst2XsdOptions inst2XsdOptions) {
        Element globalElement = typeSystemHolder.getGlobalElement(element.getName());
        if (globalElement == null) {
            typeSystemHolder.addGlobalElement(element);
            return element;
        }
        combineTypes(globalElement.getType(), element.getType(), inst2XsdOptions);
        combineElementComments(globalElement, element);
        return globalElement;
    }

    public void checkIfAttributeReferenceIsNeeded(Attribute attribute, String str, TypeSystemHolder typeSystemHolder) {
        if (attribute.getName().getNamespaceURI().equals("") || attribute.getName().getNamespaceURI().equals(str)) {
            return;
        }
        Attribute attribute2 = new Attribute();
        attribute2.setGlobal(true);
        attribute2.setName(attribute.getName());
        attribute2.setType(attribute.getType());
        typeSystemHolder.addGlobalAttribute(attribute2);
        attribute.setRef(attribute2);
    }

    public void checkIfElementReferenceIsNeeded(Element element, String str, TypeSystemHolder typeSystemHolder, Inst2XsdOptions inst2XsdOptions) {
        if (element.getName().getNamespaceURI().equals(str)) {
            return;
        }
        Element element2 = new Element();
        element2.setGlobal(true);
        element2.setName(element.getName());
        element2.setType(element.getType());
        if (element.isNillable()) {
            element2.setNillable(true);
            element.setNillable(false);
        }
        element.setRef(addGlobalElement(element2, typeSystemHolder, inst2XsdOptions));
    }

    public void checkIfReferenceToGlobalTypeIsNeeded(Element element, TypeSystemHolder typeSystemHolder, Inst2XsdOptions inst2XsdOptions) {
    }

    public void combineAttributesOfTypes(Type type, Type type2) {
        for (int i = 0; i < type2.getAttributes().size(); i++) {
            Attribute attribute = type2.getAttributes().get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= type.getAttributes().size()) {
                    type.addAttribute(attribute);
                    break;
                }
                Attribute attribute2 = type.getAttributes().get(i2);
                if (attribute2.getName().equals(attribute.getName())) {
                    attribute2.getType().setName(combineToMoreGeneralSimpleType(attribute2.getType().getName(), attribute.getType().getName()));
                    break;
                }
                i2++;
            }
        }
        for (int i3 = 0; i3 < type.getAttributes().size(); i3++) {
            Attribute attribute3 = type.getAttributes().get(i3);
            for (int i4 = 0; i4 < type2.getAttributes().size(); i4++) {
                type2.getAttributes().get(i4).getName().equals(attribute3.getName());
            }
            attribute3.setOptional(true);
        }
    }

    public void combineElementComments(Element element, Element element2) {
        if (element2.getComment() == null || element2.getComment().length() <= 0) {
            return;
        }
        if (element.getComment() == null) {
            element.setComment(element2.getComment());
            return;
        }
        element.setComment(element.getComment() + element2.getComment());
    }

    public void combineElementsOfTypes(Type type, Type type2, Inst2XsdOptions inst2XsdOptions) {
        boolean z = (type.getTopParticleForComplexOrMixedContent() == 1 && type2.getTopParticleForComplexOrMixedContent() == 1) ? false : true;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; !z && i4 < type.getElements().size(); i4++) {
            Element element = type.getElements().get(i4);
            int i5 = i;
            while (true) {
                if (i5 >= type2.getElements().size()) {
                    break;
                }
                if (element.getName().equals(type2.getElements().get(i5).getName())) {
                    i2 = i5;
                    break;
                }
                i5++;
            }
            if (i2 < i) {
                arrayList.add(element);
                element.setMinOccurs(0);
            } else {
                int i6 = i;
                while (true) {
                    if (i6 >= i2) {
                        break;
                    }
                    Element element2 = type2.getElements().get(i6);
                    for (int i7 = i4 + 1; i7 < type.getElements().size(); i7++) {
                        if (element2.getName().equals(type.getElements().get(i7).getName())) {
                            i3 = i7;
                            break;
                        }
                    }
                    i6++;
                }
                if (i3 < i4) {
                    while (i < i2) {
                        Element element3 = type2.getElements().get(i);
                        arrayList.add(element3);
                        element3.setMinOccurs(0);
                        i++;
                    }
                    arrayList.add(element);
                    Element element4 = type2.getElements().get(i2);
                    if (element4.getMinOccurs() <= 0) {
                        element.setMinOccurs(0);
                    }
                    if (element4.getMaxOccurs() == -1) {
                        element.setMaxOccurs(-1);
                    }
                    combineTypes(element.getType(), element4.getType(), inst2XsdOptions);
                    combineElementComments(element, element4);
                    i = i2 + 1;
                } else {
                    z = true;
                }
            }
        }
        while (i < type2.getElements().size()) {
            Element element5 = type2.getElements().get(i);
            arrayList.add(element5);
            element5.setMinOccurs(0);
            i++;
        }
        if (!z) {
            type.setElements(arrayList);
            return;
        }
        type.setTopParticleForComplexOrMixedContent(2);
        for (int i8 = 0; i8 < type2.getElements().size(); i8++) {
            Element element6 = type2.getElements().get(i8);
            for (int i9 = 0; i9 < type.getElements().size(); i9++) {
                Element element7 = type.getElements().get(i9);
                element7.setMinOccurs(1);
                element7.setMaxOccurs(1);
                if (element7 != element6) {
                    if (element7.getName().equals(element6.getName())) {
                        combineTypes(element7.getType(), element6.getType(), inst2XsdOptions);
                        combineElementComments(element7, element6);
                    }
                }
            }
            type.addElement(element6);
            element6.setMinOccurs(1);
            element6.setMaxOccurs(1);
        }
    }

    public void combineSimpleTypes(Type type, Type type2, Inst2XsdOptions inst2XsdOptions) {
        type.setName(combineToMoreGeneralSimpleType(type.getName(), type2.getName()));
        if (inst2XsdOptions.isUseEnumerations()) {
            type.addAllEnumerationsFrom(type2);
            if (type.getEnumerationValues().size() > inst2XsdOptions.getUseEnumerations()) {
                type.closeEnumeration();
            }
        }
    }

    public QName combineToMoreGeneralSimpleType(QName qName, QName qName2) {
        if (qName.equals(qName2)) {
            return qName;
        }
        SchemaType schemaType = XmlShort.type;
        if (qName2.equals(schemaType.getName()) && qName.equals(XmlByte.type.getName())) {
            return qName2;
        }
        if (qName.equals(schemaType.getName()) && qName2.equals(XmlByte.type.getName())) {
            return qName;
        }
        SchemaType schemaType2 = XmlInt.type;
        if (qName2.equals(schemaType2.getName()) && (qName.equals(schemaType.getName()) || qName.equals(XmlByte.type.getName()))) {
            return qName2;
        }
        if (qName.equals(schemaType2.getName()) && (qName2.equals(schemaType.getName()) || qName2.equals(XmlByte.type.getName()))) {
            return qName;
        }
        SchemaType schemaType3 = XmlLong.type;
        if (qName2.equals(schemaType3.getName()) && (qName.equals(schemaType2.getName()) || qName.equals(schemaType.getName()) || qName.equals(XmlByte.type.getName()))) {
            return qName2;
        }
        if (qName.equals(schemaType3.getName()) && (qName2.equals(schemaType2.getName()) || qName2.equals(schemaType.getName()) || qName2.equals(XmlByte.type.getName()))) {
            return qName;
        }
        SchemaType schemaType4 = XmlInteger.type;
        if (qName2.equals(schemaType4.getName()) && (qName.equals(schemaType3.getName()) || qName.equals(schemaType2.getName()) || qName.equals(schemaType.getName()) || qName.equals(XmlByte.type.getName()))) {
            return qName2;
        }
        if (qName.equals(schemaType4.getName()) && (qName2.equals(schemaType3.getName()) || qName2.equals(schemaType2.getName()) || qName2.equals(schemaType.getName()) || qName2.equals(XmlByte.type.getName()))) {
            return qName;
        }
        SchemaType schemaType5 = XmlFloat.type;
        return (qName2.equals(schemaType5.getName()) && (qName.equals(schemaType4.getName()) || qName.equals(schemaType3.getName()) || qName.equals(schemaType2.getName()) || qName.equals(schemaType.getName()) || qName.equals(XmlByte.type.getName()))) ? qName2 : (qName.equals(schemaType5.getName()) && (qName2.equals(schemaType4.getName()) || qName2.equals(schemaType3.getName()) || qName2.equals(schemaType2.getName()) || qName2.equals(schemaType.getName()) || qName2.equals(XmlByte.type.getName()))) ? qName : XmlString.type.getName();
    }

    public void combineTypes(Type type, Type type2, Inst2XsdOptions inst2XsdOptions) {
        if (type == type2) {
            return;
        }
        if (type.isGlobal() && type2.isGlobal() && type.getName().equals(type2.getName())) {
            return;
        }
        if (type.getContentType() == 1 && type2.getContentType() == 1) {
            combineSimpleTypes(type, type2, inst2XsdOptions);
            return;
        }
        if ((type.getContentType() == 1 || type.getContentType() == 2) && (type2.getContentType() == 1 || type2.getContentType() == 2)) {
            QName name = type.isComplexType() ? type.getExtensionType().getName() : type.getName();
            QName name2 = type2.isComplexType() ? type2.getExtensionType().getName() : type2.getName();
            type.setContentType(2);
            QName combineToMoreGeneralSimpleType = combineToMoreGeneralSimpleType(name, name2);
            if (type.isComplexType()) {
                type.setExtensionType(Type.createNamedType(combineToMoreGeneralSimpleType, 1));
            } else {
                type.setName(combineToMoreGeneralSimpleType);
            }
            combineAttributesOfTypes(type, type2);
            return;
        }
        if (type.getContentType() == 3 && type2.getContentType() == 3) {
            combineAttributesOfTypes(type, type2);
            combineElementsOfTypes(type, type2, inst2XsdOptions);
            return;
        }
        if (type.getContentType() == 1 || type.getContentType() == 2 || type2.getContentType() == 1 || type2.getContentType() == 2) {
            type.setContentType(4);
            combineAttributesOfTypes(type, type2);
            combineElementsOfTypes(type, type2, inst2XsdOptions);
        } else {
            if ((type.getContentType() != 1 && type.getContentType() != 2 && type.getContentType() != 3 && type.getContentType() != 4) || (type2.getContentType() != 1 && type2.getContentType() != 2 && type2.getContentType() != 3 && type2.getContentType() != 4)) {
                throw new IllegalArgumentException("Unknown content type.");
            }
            type.setContentType(4);
            combineAttributesOfTypes(type, type2);
            combineElementsOfTypes(type, type2, inst2XsdOptions);
        }
    }

    public Attribute processAttribute(XmlCursor xmlCursor, Inst2XsdOptions inst2XsdOptions, String str, TypeSystemHolder typeSystemHolder) {
        Attribute attribute = new Attribute();
        attribute.setName(xmlCursor.getName());
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            newCursor.toParent();
            Type createNamedType = Type.createNamedType(processSimpleContentType(xmlCursor.getTextValue(), inst2XsdOptions, newCursor), 1);
            newCursor.close();
            attribute.setType(createNamedType);
            checkIfAttributeReferenceIsNeeded(attribute, str, typeSystemHolder);
            return attribute;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void processAttributesInComplexType(Type type, List<Attribute> list) {
        Iterator<Attribute> it2 = list.iterator();
        while (it2.hasNext()) {
            type.addAttribute(it2.next());
        }
    }

    @Override // org.apache.xmlbeans.impl.inst2xsd.XsdGenStrategy
    public void processDoc(XmlObject[] xmlObjectArr, Inst2XsdOptions inst2XsdOptions, TypeSystemHolder typeSystemHolder) {
        for (XmlObject xmlObject : xmlObjectArr) {
            XmlCursor newCursor = xmlObject.newCursor();
            try {
                StringBuilder sb = new StringBuilder();
                while (!newCursor.isStart()) {
                    newCursor.toNextToken();
                    if (newCursor.isComment()) {
                        sb.append(newCursor.getTextValue());
                    } else if (newCursor.isEnddoc()) {
                        newCursor.close();
                        return;
                    }
                }
                Element processElement = processElement(newCursor, sb.toString(), inst2XsdOptions, typeSystemHolder);
                processElement.setGlobal(true);
                addGlobalElement(processElement, typeSystemHolder, inst2XsdOptions);
                newCursor.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (newCursor != null) {
                        try {
                            newCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    public Element processElement(XmlCursor xmlCursor, String str, Inst2XsdOptions inst2XsdOptions, TypeSystemHolder typeSystemHolder) {
        String str2 = str;
        Element element = new Element();
        element.setName(xmlCursor.getName());
        element.setGlobal(false);
        Type createUnnamedType = Type.createUnnamedType(1);
        element.setType(createUnnamedType);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            switch (xmlCursor.toNextToken().intValue()) {
                case 0:
                case 2:
                case 4:
                    String collapse = XmlWhitespace.collapse(sb.toString(), 3);
                    if (str2 == null) {
                        str2 = sb2.length() == 0 ? null : sb2.toString();
                    } else if (sb2.length() != 0) {
                        str2 = sb2.insert(0, str2).toString();
                    }
                    element.setComment(str2);
                    if (arrayList.size() > 0) {
                        if (collapse.length() > 0) {
                            createUnnamedType.setContentType(4);
                        } else {
                            createUnnamedType.setContentType(3);
                        }
                        processElementsInComplexType(createUnnamedType, arrayList, element.getName().getNamespaceURI(), typeSystemHolder, inst2XsdOptions);
                        processAttributesInComplexType(createUnnamedType, arrayList2);
                    } else {
                        XmlCursor newCursor = xmlCursor.newCursor();
                        try {
                            newCursor.toParent();
                            if (arrayList2.size() > 0) {
                                createUnnamedType.setContentType(2);
                                createUnnamedType.setExtensionType(Type.createNamedType(processSimpleContentType(sb.toString(), inst2XsdOptions, newCursor), 1));
                                processAttributesInComplexType(createUnnamedType, arrayList2);
                            } else {
                                createUnnamedType.setContentType(1);
                                createUnnamedType.setName(processSimpleContentType(sb.toString(), inst2XsdOptions, newCursor));
                                if (XmlString.type.getName().equals(createUnnamedType.getName())) {
                                    collapse = sb.toString();
                                }
                                createUnnamedType.addEnumerationValue(collapse, newCursor);
                            }
                            newCursor.close();
                        } finally {
                        }
                    }
                    checkIfReferenceToGlobalTypeIsNeeded(element, typeSystemHolder, inst2XsdOptions);
                    return element;
                case 1:
                    throw new IllegalStateException();
                case 3:
                    arrayList.add(processElement(xmlCursor, sb2.toString(), inst2XsdOptions, typeSystemHolder));
                    sb2.delete(0, sb2.length());
                    break;
                case 5:
                    sb.append(xmlCursor.getChars());
                    break;
                case 6:
                    QName name = xmlCursor.getName();
                    QName qName = _xsiNil;
                    if (!qName.getNamespaceURI().equals(name.getNamespaceURI())) {
                        arrayList2.add(processAttribute(xmlCursor, inst2XsdOptions, element.getName().getNamespaceURI(), typeSystemHolder));
                        break;
                    } else if (!qName.equals(name)) {
                        break;
                    } else {
                        element.setNillable(true);
                        break;
                    }
                case 7:
                case 9:
                    break;
                case 8:
                    sb2.append(xmlCursor.getTextValue());
                    break;
                default:
                    throw new IllegalStateException("Unknown TokenType.");
            }
        }
    }

    public void processElementsInComplexType(Type type, List<Element> list, String str, TypeSystemHolder typeSystemHolder, Inst2XsdOptions inst2XsdOptions) {
        HashMap hashMap = new HashMap();
        Element element = null;
        for (Element element2 : list) {
            if (element == null) {
                checkIfElementReferenceIsNeeded(element2, str, typeSystemHolder, inst2XsdOptions);
                type.addElement(element2);
                hashMap.put(element2.getName(), element2);
            } else if (element.getName() == element2.getName()) {
                combineTypes(element.getType(), element2.getType(), inst2XsdOptions);
                combineElementComments(element, element2);
                element.setMinOccurs(0);
                element.setMaxOccurs(-1);
            } else if (((Element) hashMap.get(element2.getName())) == null) {
                checkIfElementReferenceIsNeeded(element2, str, typeSystemHolder, inst2XsdOptions);
                type.addElement(element2);
                hashMap.put(element2.getName(), element2);
            } else {
                combineTypes(element.getType(), element2.getType(), inst2XsdOptions);
                combineElementComments(element, element2);
                type.setTopParticleForComplexOrMixedContent(2);
            }
            element = element2;
        }
    }

    public QName processSimpleContentType(String str, Inst2XsdOptions inst2XsdOptions, XmlCursor xmlCursor) {
        if (inst2XsdOptions.getSimpleContentTypes() == 2) {
            return XmlString.type.getName();
        }
        if (inst2XsdOptions.getSimpleContentTypes() != 1) {
            throw new IllegalArgumentException("Unknown value for Inst2XsdOptions.getSimpleContentTypes() :" + inst2XsdOptions.getSimpleContentTypes());
        }
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                XsTypeConverter.lexByte(str);
                                return XmlByte.type.getName();
                            } catch (Exception unused) {
                                XsTypeConverter.lexShort(str);
                                return XmlShort.type.getName();
                            }
                        } catch (Exception unused2) {
                            XsTypeConverter.lexInteger(str);
                            return XmlInteger.type.getName();
                        }
                    } catch (Exception unused3) {
                        XsTypeConverter.lexInt(str);
                        return XmlInt.type.getName();
                    }
                } catch (Exception unused4) {
                    XsTypeConverter.lexFloat(str);
                    return XmlFloat.type.getName();
                }
            } catch (Exception unused5) {
                XsTypeConverter.lexLong(str);
                return XmlLong.type.getName();
            }
        } catch (Exception unused6) {
            SchemaType schemaType = XmlDate.type;
            JavaGDateHolderEx.validateLexical(str, schemaType, this._validationContext);
            if (this._validationContext.isValid()) {
                return schemaType.getName();
            }
            this._validationContext.resetToValid();
            SchemaType schemaType2 = XmlDateTime.type;
            JavaGDateHolderEx.validateLexical(str, schemaType2, this._validationContext);
            if (this._validationContext.isValid()) {
                return schemaType2.getName();
            }
            this._validationContext.resetToValid();
            SchemaType schemaType3 = XmlTime.type;
            JavaGDateHolderEx.validateLexical(str, schemaType3, this._validationContext);
            if (this._validationContext.isValid()) {
                return schemaType3.getName();
            }
            this._validationContext.resetToValid();
            SchemaType schemaType4 = XmlDuration.type;
            JavaGDurationHolderEx.validateLexical(str, schemaType4, this._validationContext);
            if (this._validationContext.isValid()) {
                return schemaType4.getName();
            }
            this._validationContext.resetToValid();
            if (str.startsWith(CommonConstant.SCHEME_HTTP) || str.startsWith("www.")) {
                JavaUriHolder.validateLexical(str, this._validationContext);
                if (this._validationContext.isValid()) {
                    return XmlAnyURI.type.getName();
                }
                this._validationContext.resetToValid();
            }
            int indexOf = str.indexOf(58);
            if (indexOf >= 0 && indexOf == str.lastIndexOf(58) && indexOf + 1 < str.length()) {
                SCTValidationContext sCTValidationContext = this._validationContext;
                xmlCursor.getClass();
                JavaQNameHolder.validateLexical(str, sCTValidationContext, new jvl(xmlCursor));
                if (this._validationContext.isValid()) {
                    return XmlQName.type.getName();
                }
                this._validationContext.resetToValid();
            }
            return XmlString.type.getName();
        }
    }
}

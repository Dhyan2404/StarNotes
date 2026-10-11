package org.apache.xmlbeans.impl.inst2xsd.util;

import java.math.BigInteger;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Attribute;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExplicitGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.FormChoice;
import org.apache.xmlbeans.impl.p119xb.xsdschema.LocalElement;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NoFixedFacet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.RestrictionDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleExtensionType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelAttribute;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelComplexType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelElement;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public class TypeSystemHolder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    Map<QName, Element> _globalElements = new LinkedHashMap();
    Map<QName, Attribute> _globalAttributes = new LinkedHashMap();
    Map<QName, Type> _globalTypes = new LinkedHashMap();

    private void fillUpAttributesInComplexTypesComplexContent(Type type, ComplexType complexType, String str) {
        for (int i = 0; i < type.getAttributes().size(); i++) {
            fillUpLocalAttribute(type.getAttributes().get(i), complexType.addNewAttribute(), str);
        }
    }

    private void fillUpAttributesInComplexTypesSimpleContent(Type type, SimpleExtensionType simpleExtensionType, String str) {
        for (int i = 0; i < type.getAttributes().size(); i++) {
            fillUpLocalAttribute(type.getAttributes().get(i), simpleExtensionType.addNewAttribute(), str);
        }
    }

    private static void fillUpElementDocumentation(org.apache.xmlbeans.impl.p119xb.xsdschema.Element element, String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        element.addNewAnnotation().addNewDocumentation().set(XmlString.Factory.newValue(str));
    }

    private void fillUpEnumeration(Type type, org.apache.xmlbeans.impl.p119xb.xsdschema.Element element) {
        RestrictionDocument.Restriction addNewRestriction = element.addNewSimpleType().addNewRestriction();
        addNewRestriction.setBase(type.getName());
        int i = 0;
        if (!type.isQNameEnumeration()) {
            while (i < type.getEnumerationValues().size()) {
                addNewRestriction.addNewEnumeration().setValue(XmlString.Factory.newValue(type.getEnumerationValues().get(i)));
                i++;
            }
            return;
        }
        while (i < type.getEnumerationQNames().size()) {
            QName qName = type.getEnumerationQNames().get(i);
            XmlObjectFactory<XmlQName> xmlObjectFactory = XmlQName.Factory;
            xmlObjectFactory.newValue(qName);
            NoFixedFacet addNewEnumeration = addNewRestriction.addNewEnumeration();
            XmlCursor newCursor = addNewEnumeration.newCursor();
            try {
                String prefixForNamespace = newCursor.prefixForNamespace(qName.getNamespaceURI());
                newCursor.close();
                addNewEnumeration.setValue(xmlObjectFactory.newValue(new QName(qName.getNamespaceURI(), qName.getLocalPart(), prefixForNamespace)));
                i++;
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

    private void fillUpGlobalAttribute(Attribute attribute, SchemaDocument schemaDocument, String str) {
        TopLevelAttribute addNewAttribute = getTopLevelSchemaElement(schemaDocument, str).addNewAttribute();
        addNewAttribute.setName(attribute.getName().getLocalPart());
        Type type = attribute.getType();
        if (type.getContentType() != 1) {
            throw new IllegalStateException();
        }
        addNewAttribute.setType(type.getName());
    }

    private void fillUpGlobalElement(Element element, SchemaDocument schemaDocument, String str) {
        TopLevelElement addNewElement = getTopLevelSchemaElement(schemaDocument, str).addNewElement();
        addNewElement.setName(element.getName().getLocalPart());
        if (element.isNillable()) {
            addNewElement.setNillable(element.isNillable());
        }
        fillUpElementDocumentation(addNewElement, element.getComment());
        fillUpTypeOnElement(element.getType(), addNewElement, str);
    }

    private void fillUpGlobalType(Type type, SchemaDocument schemaDocument, String str) {
        TopLevelComplexType addNewComplexType = getTopLevelSchemaElement(schemaDocument, str).addNewComplexType();
        addNewComplexType.setName(type.getName().getLocalPart());
        fillUpContentForComplexType(type, addNewComplexType, str);
    }

    private void fillUpTypeOnElement(Type type, org.apache.xmlbeans.impl.p119xb.xsdschema.Element element, String str) {
        if (type.isGlobal()) {
            element.setType(type.getName());
            return;
        }
        if (type.getContentType() != 1) {
            fillUpContentForComplexType(type, element.addNewComplexType(), str);
        } else if (type.isEnumeration()) {
            fillUpEnumeration(type, element);
        } else {
            element.setType(type.getName());
        }
    }

    private static SchemaDocument getSchemaDocumentForTNS(Map<String, SchemaDocument> map, String str) {
        SchemaDocument schemaDocument = map.get(str);
        if (schemaDocument != null) {
            return schemaDocument;
        }
        SchemaDocument newInstance = SchemaDocument.Factory.newInstance();
        map.put(str, newInstance);
        return newInstance;
    }

    private static SchemaDocument.Schema getTopLevelSchemaElement(SchemaDocument schemaDocument, String str) {
        SchemaDocument.Schema schema = schemaDocument.getSchema();
        if (schema == null) {
            schema = schemaDocument.addNewSchema();
            schema.setAttributeFormDefault(FormChoice.Enum.forString("unqualified"));
            schema.setElementFormDefault(FormChoice.Enum.forString("qualified"));
            if (!str.equals("")) {
                schema.setTargetNamespace(str);
            }
        }
        return schema;
    }

    public void addGlobalAttribute(Attribute attribute) {
        this._globalAttributes.put(attribute.getName(), attribute);
    }

    public void addGlobalElement(Element element) {
        this._globalElements.put(element.getName(), element);
    }

    public void addGlobalType(Type type) {
        this._globalTypes.put(type.getName(), type);
    }

    public void fillUpContentForComplexType(Type type, ComplexType complexType, String str) {
        ExplicitGroup addNewChoice;
        if (type.getContentType() == 2) {
            SimpleExtensionType addNewExtension = complexType.addNewSimpleContent().addNewExtension();
            addNewExtension.setBase(type.getExtensionType().getName());
            fillUpAttributesInComplexTypesSimpleContent(type, addNewExtension, str);
            return;
        }
        if (type.getContentType() == 4) {
            complexType.setMixed(true);
        }
        if (type.getContentType() == 5) {
            addNewChoice = null;
        } else if (type.getTopParticleForComplexOrMixedContent() == 1) {
            addNewChoice = complexType.addNewSequence();
        } else {
            if (type.getTopParticleForComplexOrMixedContent() != 2) {
                throw new IllegalStateException("Unknown particle type in complex and mixed content");
            }
            addNewChoice = complexType.addNewChoice();
            addNewChoice.setMaxOccurs("unbounded");
            addNewChoice.setMinOccurs(new BigInteger("0"));
        }
        for (int i = 0; i < type.getElements().size(); i++) {
            fillUpLocalElement(type.getElements().get(i), addNewChoice.addNewElement(), str);
        }
        fillUpAttributesInComplexTypesComplexContent(type, complexType, str);
    }

    public void fillUpLocalAttribute(Attribute attribute, org.apache.xmlbeans.impl.p119xb.xsdschema.Attribute attribute2, String str) {
        if (attribute.isRef()) {
            attribute2.setRef(attribute.getRef().getName());
            return;
        }
        attribute2.setType(attribute.getType().getName());
        attribute2.setName(attribute.getName().getLocalPart());
        if (attribute.isOptional()) {
            attribute2.setUse(Attribute.Use.OPTIONAL);
        }
    }

    public void fillUpLocalElement(Element element, LocalElement localElement, String str) {
        fillUpElementDocumentation(localElement, element.getComment());
        if (element.isRef()) {
            localElement.setRef(element.getName());
        } else {
            fillUpTypeOnElement(element.getType(), localElement, str);
            localElement.setName(element.getName().getLocalPart());
        }
        if (element.getMaxOccurs() == -1) {
            localElement.setMaxOccurs("unbounded");
        }
        if (element.getMinOccurs() != 1) {
            localElement.setMinOccurs(new BigInteger("" + element.getMinOccurs()));
        }
        if (element.isNillable()) {
            localElement.setNillable(element.isNillable());
        }
    }

    public Attribute getGlobalAttribute(QName qName) {
        return this._globalAttributes.get(qName);
    }

    public Attribute[] getGlobalAttributes() {
        Collection<Attribute> values = this._globalAttributes.values();
        return (Attribute[]) values.toArray(new Attribute[values.size()]);
    }

    public Element getGlobalElement(QName qName) {
        return this._globalElements.get(qName);
    }

    public Element[] getGlobalElements() {
        Collection<Element> values = this._globalElements.values();
        return (Element[]) values.toArray(new Element[values.size()]);
    }

    public Type getGlobalType(QName qName) {
        return this._globalTypes.get(qName);
    }

    public Type[] getGlobalTypes() {
        Collection<Type> values = this._globalTypes.values();
        return (Type[]) values.toArray(new Type[values.size()]);
    }

    public SchemaDocument[] getSchemaDocuments() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (QName qName : this._globalElements.keySet()) {
            String namespaceURI = qName.getNamespaceURI();
            fillUpGlobalElement(this._globalElements.get(qName), getSchemaDocumentForTNS(linkedHashMap, namespaceURI), namespaceURI);
        }
        for (QName qName2 : this._globalAttributes.keySet()) {
            String namespaceURI2 = qName2.getNamespaceURI();
            fillUpGlobalAttribute(this._globalAttributes.get(qName2), getSchemaDocumentForTNS(linkedHashMap, namespaceURI2), namespaceURI2);
        }
        for (QName qName3 : this._globalTypes.keySet()) {
            String namespaceURI3 = qName3.getNamespaceURI();
            fillUpGlobalType(this._globalTypes.get(qName3), getSchemaDocumentForTNS(linkedHashMap, namespaceURI3), namespaceURI3);
        }
        Collection values = linkedHashMap.values();
        return (SchemaDocument[]) values.toArray(new SchemaDocument[values.size()]);
    }

    public String toString() {
        return "TypeSystemHolder{\n\n_globalElements=" + this._globalElements + "\n\n_globalAttributes=" + this._globalAttributes + "\n\n_globalTypes=" + this._globalTypes + "\n}";
    }
}

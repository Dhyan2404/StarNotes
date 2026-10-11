package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SelectorDocument;
import org.apache.xmlbeans.impl.values.JavaStringHolderEx;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class SelectorDocumentImpl extends XmlComplexContentImpl implements SelectorDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", IStyleSheet.CLASS_SELECTOR)};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class SelectorImpl extends AnnotatedImpl implements SelectorDocument.Selector {
        private static final QName[] PROPERTY_QNAME = {new QName("", "xpath")};
        private static final long serialVersionUID = 1;

        /* loaded from: classes13.dex */
        public static class XpathImpl extends JavaStringHolderEx implements SelectorDocument.Selector.Xpath {
            private static final long serialVersionUID = 1;

            public XpathImpl(SchemaType schemaType) {
                super(schemaType, false);
            }

            public XpathImpl(SchemaType schemaType, boolean z) {
                super(schemaType, z);
            }
        }

        public SelectorImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.SelectorDocument.Selector
        public String getXpath() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.SelectorDocument.Selector
        public void setXpath(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.SelectorDocument.Selector
        public SelectorDocument.Selector.Xpath xgetXpath() {
            SelectorDocument.Selector.Xpath xpath;
            synchronized (monitor()) {
                check_orphaned();
                xpath = (SelectorDocument.Selector.Xpath) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            }
            return xpath;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.SelectorDocument.Selector
        public void xsetXpath(SelectorDocument.Selector.Xpath xpath) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SelectorDocument.Selector.Xpath xpath2 = (SelectorDocument.Selector.Xpath) typeStore.find_attribute_user(qNameArr[0]);
                if (xpath2 == null) {
                    xpath2 = (SelectorDocument.Selector.Xpath) get_store().add_attribute_user(qNameArr[0]);
                }
                xpath2.set(xpath);
            }
        }
    }

    public SelectorDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SelectorDocument
    public SelectorDocument.Selector addNewSelector() {
        SelectorDocument.Selector selector;
        synchronized (monitor()) {
            check_orphaned();
            selector = (SelectorDocument.Selector) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return selector;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SelectorDocument
    public SelectorDocument.Selector getSelector() {
        SelectorDocument.Selector selector;
        synchronized (monitor()) {
            check_orphaned();
            selector = (SelectorDocument.Selector) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (selector == null) {
                selector = null;
            }
        }
        return selector;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SelectorDocument
    public void setSelector(SelectorDocument.Selector selector) {
        generatedSetterHelperImpl(selector, PROPERTY_QNAME[0], 0, (short) 1);
    }
}

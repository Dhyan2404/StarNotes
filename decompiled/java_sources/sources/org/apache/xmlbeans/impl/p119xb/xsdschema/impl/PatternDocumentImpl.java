package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.PatternDocument;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class PatternDocumentImpl extends XmlComplexContentImpl implements PatternDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "pattern")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class PatternImpl extends NoFixedFacetImpl implements PatternDocument.Pattern {
        private static final long serialVersionUID = 1;

        public PatternImpl(SchemaType schemaType) {
            super(schemaType);
        }
    }

    public PatternDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.PatternDocument
    public PatternDocument.Pattern addNewPattern() {
        PatternDocument.Pattern pattern;
        synchronized (monitor()) {
            check_orphaned();
            pattern = (PatternDocument.Pattern) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return pattern;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.PatternDocument
    public PatternDocument.Pattern getPattern() {
        PatternDocument.Pattern pattern;
        synchronized (monitor()) {
            check_orphaned();
            pattern = (PatternDocument.Pattern) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (pattern == null) {
                pattern = null;
            }
        }
        return pattern;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.PatternDocument
    public void setPattern(PatternDocument.Pattern pattern) {
        generatedSetterHelperImpl(pattern, PROPERTY_QNAME[0], 0, (short) 1);
    }
}

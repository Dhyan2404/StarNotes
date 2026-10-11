package org.apache.xmlbeans.impl.schema;

import org.apache.xmlbeans.SchemaTypeSystem;
import org.apache.xmlbeans.XmlOptions;

/* loaded from: classes13.dex */
public class DocumentFactory<T> extends AbstractDocumentFactory<T> {
    public DocumentFactory(SchemaTypeSystem schemaTypeSystem, String str) {
        super(schemaTypeSystem, str);
    }

    @Override // org.apache.xmlbeans.impl.schema.ElementFactory
    public T newInstance() {
        return (T) getTypeLoader().newInstance(getType(), null);
    }

    @Override // org.apache.xmlbeans.impl.schema.ElementFactory
    public T newInstance(XmlOptions xmlOptions) {
        return (T) getTypeLoader().newInstance(getType(), xmlOptions);
    }
}

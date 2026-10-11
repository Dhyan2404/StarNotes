package org.apache.xmlbeans;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaComponent;

/* loaded from: classes13.dex */
public interface SchemaAttributeGroup extends SchemaComponent, SchemaAnnotated {

    /* loaded from: classes13.dex */
    public static final class Ref extends SchemaComponent.Ref {
        public Ref(SchemaAttributeGroup schemaAttributeGroup) {
            super(schemaAttributeGroup);
        }

        public final SchemaAttributeGroup get() {
            return (SchemaAttributeGroup) getComponent();
        }

        @Override // org.apache.xmlbeans.SchemaComponent.Ref
        public final int getComponentType() {
            return 4;
        }

        public Ref(SchemaTypeSystem schemaTypeSystem, String str) {
            super(schemaTypeSystem, str);
        }
    }

    @Override // org.apache.xmlbeans.SchemaComponent
    int getComponentType();

    @Override // org.apache.xmlbeans.SchemaComponent
    QName getName();

    Object getUserData();
}

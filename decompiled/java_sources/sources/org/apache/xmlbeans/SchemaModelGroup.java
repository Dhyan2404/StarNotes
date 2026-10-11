package org.apache.xmlbeans;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaComponent;

/* loaded from: classes13.dex */
public interface SchemaModelGroup extends SchemaComponent, SchemaAnnotated {

    /* loaded from: classes13.dex */
    public static final class Ref extends SchemaComponent.Ref {
        public Ref(SchemaModelGroup schemaModelGroup) {
            super(schemaModelGroup);
        }

        public final SchemaModelGroup get() {
            return (SchemaModelGroup) getComponent();
        }

        @Override // org.apache.xmlbeans.SchemaComponent.Ref
        public final int getComponentType() {
            return 6;
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

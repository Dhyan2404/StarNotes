package org.apache.xmlbeans;

import org.apache.xmlbeans.SchemaComponent;

/* loaded from: classes13.dex */
public interface SchemaGlobalAttribute extends SchemaLocalAttribute, SchemaComponent {

    /* loaded from: classes13.dex */
    public static final class Ref extends SchemaComponent.Ref {
        public Ref(SchemaGlobalAttribute schemaGlobalAttribute) {
            super(schemaGlobalAttribute);
        }

        public final SchemaGlobalAttribute get() {
            return (SchemaGlobalAttribute) getComponent();
        }

        @Override // org.apache.xmlbeans.SchemaComponent.Ref
        public final int getComponentType() {
            return 3;
        }

        public Ref(SchemaTypeSystem schemaTypeSystem, String str) {
            super(schemaTypeSystem, str);
        }
    }

    Ref getRef();
}

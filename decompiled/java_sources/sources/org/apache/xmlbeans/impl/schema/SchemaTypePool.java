package org.apache.xmlbeans.impl.schema;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.BiConsumer;
import org.apache.xmlbeans.SchemaAttributeGroup;
import org.apache.xmlbeans.SchemaComponent;
import org.apache.xmlbeans.SchemaGlobalAttribute;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaIdentityConstraint;
import org.apache.xmlbeans.SchemaModelGroup;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoaderException;
import org.apache.xmlbeans.impl.common.NameUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class SchemaTypePool {
    private boolean _started;
    private final SchemaTypeSystemImpl typeSystem;
    private final Map<String, SchemaComponent.Ref> _handlesToRefs = new LinkedHashMap();
    private final Map<SchemaComponent, String> _componentsToHandles = new LinkedHashMap();

    public SchemaTypePool(SchemaTypeSystemImpl schemaTypeSystemImpl) {
        this.typeSystem = schemaTypeSystemImpl;
    }

    private String addUniqueHandle(SchemaComponent schemaComponent, String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        int i = 2;
        String str2 = lowerCase;
        while (this._handlesToRefs.containsKey(str2)) {
            str2 = lowerCase + i;
            i++;
        }
        this._handlesToRefs.put(str2, schemaComponent.getComponentRef());
        this._componentsToHandles.put(schemaComponent, str2);
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$writeHandlePool$0(XsbReader xsbReader, SchemaComponent schemaComponent, String str) {
        xsbReader.writeString(str);
        xsbReader.writeShort(fileTypeFromComponentType(schemaComponent.getComponentType()));
    }

    public int fileTypeFromComponentType(int i) {
        if (i == 0) {
            return 2;
        }
        if (i == 1) {
            return 3;
        }
        if (i == 3) {
            return 4;
        }
        if (i == 4) {
            return 7;
        }
        if (i == 5) {
            return 8;
        }
        if (i == 6) {
            return 6;
        }
        throw new IllegalStateException("Unexpected component type");
    }

    public String handleForAttribute(SchemaGlobalAttribute schemaGlobalAttribute) {
        if (schemaGlobalAttribute == null) {
            return null;
        }
        if (schemaGlobalAttribute.getTypeSystem() != this.typeSystem) {
            throw new IllegalArgumentException("Cannot supply handles for types from another type system");
        }
        String str = this._componentsToHandles.get(schemaGlobalAttribute);
        if (str != null) {
            return str;
        }
        return addUniqueHandle(schemaGlobalAttribute, NameUtil.upperCamelCase(schemaGlobalAttribute.getName().getLocalPart()) + "Attribute");
    }

    public String handleForAttributeGroup(SchemaAttributeGroup schemaAttributeGroup) {
        if (schemaAttributeGroup == null) {
            return null;
        }
        if (schemaAttributeGroup.getTypeSystem() != this.typeSystem) {
            throw new IllegalArgumentException("Cannot supply handles for types from another type system");
        }
        String str = this._componentsToHandles.get(schemaAttributeGroup);
        if (str != null) {
            return str;
        }
        return addUniqueHandle(schemaAttributeGroup, NameUtil.upperCamelCase(schemaAttributeGroup.getName().getLocalPart()) + "AttributeGroup");
    }

    public String handleForComponent(SchemaComponent schemaComponent) {
        if (schemaComponent == null) {
            return null;
        }
        if (schemaComponent.getTypeSystem() != this.typeSystem) {
            throw new IllegalArgumentException("Cannot supply handles for types from another type system");
        }
        if (schemaComponent instanceof SchemaType) {
            return handleForType((SchemaType) schemaComponent);
        }
        if (schemaComponent instanceof SchemaGlobalElement) {
            return handleForElement((SchemaGlobalElement) schemaComponent);
        }
        if (schemaComponent instanceof SchemaGlobalAttribute) {
            return handleForAttribute((SchemaGlobalAttribute) schemaComponent);
        }
        if (schemaComponent instanceof SchemaModelGroup) {
            return handleForModelGroup((SchemaModelGroup) schemaComponent);
        }
        if (schemaComponent instanceof SchemaAttributeGroup) {
            return handleForAttributeGroup((SchemaAttributeGroup) schemaComponent);
        }
        if (schemaComponent instanceof SchemaIdentityConstraint) {
            return handleForIdentityConstraint((SchemaIdentityConstraint) schemaComponent);
        }
        throw new IllegalStateException("Component type cannot have a handle");
    }

    public String handleForElement(SchemaGlobalElement schemaGlobalElement) {
        if (schemaGlobalElement == null) {
            return null;
        }
        if (schemaGlobalElement.getTypeSystem() != this.typeSystem) {
            throw new IllegalArgumentException("Cannot supply handles for types from another type system");
        }
        String str = this._componentsToHandles.get(schemaGlobalElement);
        if (str != null) {
            return str;
        }
        return addUniqueHandle(schemaGlobalElement, NameUtil.upperCamelCase(schemaGlobalElement.getName().getLocalPart()) + "Element");
    }

    public String handleForIdentityConstraint(SchemaIdentityConstraint schemaIdentityConstraint) {
        if (schemaIdentityConstraint == null) {
            return null;
        }
        if (schemaIdentityConstraint.getTypeSystem() != this.typeSystem) {
            throw new IllegalArgumentException("Cannot supply handles for types from another type system");
        }
        String str = this._componentsToHandles.get(schemaIdentityConstraint);
        if (str != null) {
            return str;
        }
        return addUniqueHandle(schemaIdentityConstraint, NameUtil.upperCamelCase(schemaIdentityConstraint.getName().getLocalPart()) + "IdentityConstraint");
    }

    public String handleForModelGroup(SchemaModelGroup schemaModelGroup) {
        if (schemaModelGroup == null) {
            return null;
        }
        if (schemaModelGroup.getTypeSystem() != this.typeSystem) {
            throw new IllegalArgumentException("Cannot supply handles for types from another type system");
        }
        String str = this._componentsToHandles.get(schemaModelGroup);
        if (str != null) {
            return str;
        }
        return addUniqueHandle(schemaModelGroup, NameUtil.upperCamelCase(schemaModelGroup.getName().getLocalPart()) + "ModelGroup");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String handleForType(org.apache.xmlbeans.SchemaType r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L4
            r5 = 0
            return r5
        L4:
            org.apache.xmlbeans.SchemaTypeSystem r0 = r6.getTypeSystem()
            org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl r1 = r5.typeSystem
            if (r0 != r1) goto Lab
            java.util.Map<org.apache.xmlbeans.SchemaComponent, java.lang.String> r0 = r5._componentsToHandles
            java.lang.Object r0 = r0.get(r6)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 != 0) goto Laa
            javax.xml.namespace.QName r0 = r6.getName()
            if (r0 != 0) goto L54
            boolean r1 = r6.isDocumentType()
            if (r1 == 0) goto L29
            javax.xml.namespace.QName r0 = r6.getDocumentElementName()
            java.lang.String r1 = "Doc"
            goto L56
        L29:
            boolean r1 = r6.isAttributeType()
            if (r1 == 0) goto L36
            javax.xml.namespace.QName r0 = r6.getAttributeTypeAttributeName()
            java.lang.String r1 = "AttrType"
            goto L56
        L36:
            org.apache.xmlbeans.SchemaField r1 = r6.getContainerField()
            if (r1 == 0) goto L54
            org.apache.xmlbeans.SchemaField r0 = r6.getContainerField()
            javax.xml.namespace.QName r0 = r0.getName()
            org.apache.xmlbeans.SchemaField r1 = r6.getContainerField()
            boolean r1 = r1.isAttribute()
            if (r1 == 0) goto L51
            java.lang.String r1 = "Attr"
            goto L56
        L51:
            java.lang.String r1 = "Elem"
            goto L56
        L54:
            java.lang.String r1 = ""
        L56:
            java.lang.String r2 = r6.toString()
            int r2 = r2.hashCode()
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 | r3
            java.lang.String r2 = java.lang.Integer.toHexString(r2)
            r3 = 4
            java.lang.String r2 = r2.substring(r3)
            java.util.Locale r3 = java.util.Locale.ROOT
            java.lang.String r2 = r2.toUpperCase(r3)
            java.lang.String r3 = "Type"
            if (r0 != 0) goto L89
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Anon"
            r0.append(r1)
            r0.append(r2)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            goto La6
        L89:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = r0.getLocalPart()
            java.lang.String r0 = org.apache.xmlbeans.impl.common.NameUtil.upperCamelCase(r0)
            r4.append(r0)
            r4.append(r2)
            r4.append(r1)
            r4.append(r3)
            java.lang.String r0 = r4.toString()
        La6:
            java.lang.String r0 = r5.addUniqueHandle(r6, r0)
        Laa:
            return r0
        Lab:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Cannot supply handles for types from another type system"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.SchemaTypePool.handleForType(org.apache.xmlbeans.SchemaType):java.lang.String");
    }

    public void readHandlePool(XsbReader xsbReader) {
        SchemaComponent.Ref ref;
        if (this._handlesToRefs.size() != 0 || this._started) {
            throw new IllegalStateException("Nonempty handle set before read");
        }
        int readShort = xsbReader.readShort();
        for (int i = 0; i < readShort; i++) {
            String readString = xsbReader.readString();
            int readShort2 = xsbReader.readShort();
            if (readShort2 == 2) {
                ref = new SchemaType.Ref(this.typeSystem, readString);
            } else if (readShort2 == 3) {
                ref = new SchemaGlobalElement.Ref(this.typeSystem, readString);
            } else if (readShort2 == 4) {
                ref = new SchemaGlobalAttribute.Ref(this.typeSystem, readString);
            } else if (readShort2 == 6) {
                ref = new SchemaModelGroup.Ref(this.typeSystem, readString);
            } else if (readShort2 == 7) {
                ref = new SchemaAttributeGroup.Ref(this.typeSystem, readString);
            } else {
                if (readShort2 != 8) {
                    throw new SchemaTypeLoaderException("Schema index has an unrecognized entry of type " + readShort2, this.typeSystem.getName(), readString, 5);
                }
                ref = new SchemaIdentityConstraint.Ref(this.typeSystem, readString);
            }
            this._handlesToRefs.put(readString, ref);
        }
    }

    public SchemaComponent.Ref refForHandle(String str) {
        if (str == null) {
            return null;
        }
        return this._handlesToRefs.get(str);
    }

    public void startWriteMode() {
        this._started = true;
        this._componentsToHandles.clear();
        for (String str : this._handlesToRefs.keySet()) {
            this._componentsToHandles.put(this._handlesToRefs.get(str).getComponent(), str);
        }
    }

    public void writeHandlePool(final XsbReader xsbReader) {
        xsbReader.writeShort(this._componentsToHandles.size());
        this._componentsToHandles.forEach(new BiConsumer() { // from class: org.apache.xmlbeans.impl.schema.a
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                SchemaTypePool.this.lambda$writeHandlePool$0(xsbReader, (SchemaComponent) obj, (String) obj2);
            }
        });
    }
}

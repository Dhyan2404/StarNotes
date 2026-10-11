package org.apache.xmlbeans.impl.schema;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;

/* loaded from: classes13.dex */
public class XmlValueRef {
    Object _initVal;
    XmlAnySimpleType _obj;
    SchemaType.Ref _typeref;

    public XmlValueRef(XmlAnySimpleType xmlAnySimpleType) {
        if (xmlAnySimpleType != null) {
            this._obj = xmlAnySimpleType;
            return;
        }
        throw new IllegalArgumentException();
    }

    public synchronized XmlAnySimpleType get() {
        if (this._obj == null) {
            SchemaType schemaType = this._typeref.get();
            if (schemaType.getSimpleVariety() != 3) {
                this._obj = schemaType.newValue(this._initVal);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it2 = ((List) this._initVal).iterator();
                while (it2.hasNext()) {
                    arrayList.add(((XmlValueRef) it2.next()).get());
                }
                this._obj = schemaType.newValue(arrayList);
            }
        }
        return this._obj;
    }

    public XmlValueRef(SchemaType.Ref ref, Object obj) {
        if (ref != null) {
            this._typeref = ref;
            this._initVal = obj;
            return;
        }
        throw new IllegalArgumentException();
    }
}

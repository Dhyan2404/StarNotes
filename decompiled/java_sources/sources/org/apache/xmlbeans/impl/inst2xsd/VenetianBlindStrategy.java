package org.apache.xmlbeans.impl.inst2xsd;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.inst2xsd.util.Element;
import org.apache.xmlbeans.impl.inst2xsd.util.Type;
import org.apache.xmlbeans.impl.inst2xsd.util.TypeSystemHolder;

/* loaded from: classes13.dex */
public class VenetianBlindStrategy extends RussianDollStrategy implements XsdGenStrategy {
    private boolean compatibleTypes(Type type, Type type2) {
        return true;
    }

    @Override // org.apache.xmlbeans.impl.inst2xsd.RussianDollStrategy
    public void checkIfReferenceToGlobalTypeIsNeeded(Element element, TypeSystemHolder typeSystemHolder, Inst2XsdOptions inst2XsdOptions) {
        Type type = element.getType();
        QName name = element.getName();
        if (type.isGlobal() || !type.isComplexType()) {
            return;
        }
        int i = 0;
        while (true) {
            String namespaceURI = name.getNamespaceURI();
            StringBuilder sb = new StringBuilder();
            sb.append(name.getLocalPart());
            sb.append("Type");
            String str = "";
            if (i != 0) {
                str = "" + i;
            }
            sb.append(str);
            type.setName(new QName(namespaceURI, sb.toString()));
            Type globalType = typeSystemHolder.getGlobalType(type.getName());
            if (globalType == null) {
                type.setGlobal(true);
                typeSystemHolder.addGlobalType(type);
                return;
            } else {
                if (compatibleTypes(globalType, type)) {
                    combineTypes(globalType, type, inst2XsdOptions);
                    element.setType(globalType);
                    return;
                }
                i++;
            }
        }
    }
}

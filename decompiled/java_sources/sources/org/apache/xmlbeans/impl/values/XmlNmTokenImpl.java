package org.apache.xmlbeans.impl.values;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlNMTOKEN;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.common.XMLChar;

/* loaded from: classes13.dex */
public class XmlNmTokenImpl extends JavaStringHolderEx implements XmlNMTOKEN {
    public XmlNmTokenImpl() {
        super(XmlNMTOKEN.type, false);
    }

    public static void validateLexical(String str, ValidationContext validationContext) {
        if (XMLChar.isValidNmtoken(str)) {
            return;
        }
        validationContext.invalid("NMTOKEN", new Object[]{str});
    }

    public XmlNmTokenImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}

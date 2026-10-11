package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTRules extends XmlObject {
    public static final DocumentFactory<CTRules> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRules> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrulesa884type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNumericRule addNewRule();

    CTNumericRule getRuleArray(int i);

    CTNumericRule[] getRuleArray();

    List<CTNumericRule> getRuleList();

    CTNumericRule insertNewRule(int i);

    void removeRule(int i);

    void setRuleArray(int i, CTNumericRule cTNumericRule);

    void setRuleArray(CTNumericRule[] cTNumericRuleArr);

    int sizeOfRuleArray();
}

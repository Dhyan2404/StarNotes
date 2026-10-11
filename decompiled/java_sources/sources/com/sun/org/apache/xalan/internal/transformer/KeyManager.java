package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class KeyManager {
    private transient Vector m_key_tables = null;

    public XNodeSet getNodeSetDTMByKey(XPathContext xPathContext, int i, QName qName, XMLString xMLString, PrefixResolver prefixResolver) throws TransformerException {
        ElemTemplateElement elemTemplateElement = (ElemTemplateElement) prefixResolver;
        XNodeSet xNodeSet = null;
        if (elemTemplateElement == null || elemTemplateElement.getStylesheetRoot().getKeysComposed() == null) {
            return null;
        }
        Vector vector = this.m_key_tables;
        boolean z = false;
        if (vector != null) {
            int size = vector.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                KeyTable keyTable = (KeyTable) this.m_key_tables.elementAt(i2);
                if (keyTable.getKeyTableName().equals(qName) && i == keyTable.getDocKey() && (xNodeSet = keyTable.getNodeSetDTMByKey(qName, xMLString)) != null) {
                    z = true;
                    break;
                }
                i2++;
            }
        } else {
            this.m_key_tables = new Vector(4);
        }
        if (xNodeSet != null || z) {
            return xNodeSet;
        }
        KeyTable keyTable2 = new KeyTable(i, prefixResolver, qName, elemTemplateElement.getStylesheetRoot().getKeysComposed(), xPathContext);
        this.m_key_tables.addElement(keyTable2);
        return i == keyTable2.getDocKey() ? keyTable2.getNodeSetDTMByKey(qName, xMLString) : xNodeSet;
    }
}

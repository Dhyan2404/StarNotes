package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemUse extends ElemTemplateElement {
    static final long serialVersionUID = 5830057200289299736L;
    private QName[] m_attributeSetsNames = null;

    public void applyAttrSets(TransformerImpl transformerImpl, StylesheetRoot stylesheetRoot) throws TransformerException {
        applyAttrSets(transformerImpl, stylesheetRoot, this.m_attributeSetsNames);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (this.m_attributeSetsNames != null) {
            applyAttrSets(transformerImpl, getStylesheetRoot(), this.m_attributeSetsNames);
        }
    }

    public QName[] getUseAttributeSets() {
        return this.m_attributeSetsNames;
    }

    public void setUseAttributeSets(Vector vector) {
        int size = vector.size();
        this.m_attributeSetsNames = new QName[size];
        for (int i = 0; i < size; i++) {
            this.m_attributeSetsNames[i] = (QName) vector.elementAt(i);
        }
    }

    private void applyAttrSets(TransformerImpl transformerImpl, StylesheetRoot stylesheetRoot, QName[] qNameArr) throws TransformerException {
        if (qNameArr != null) {
            for (QName qName : qNameArr) {
                Vector attributeSetComposed = stylesheetRoot.getAttributeSetComposed(qName);
                if (attributeSetComposed == null) {
                    throw new TransformerException(XSLMessages.createMessage("ER_NO_ATTRIB_SET", new Object[]{qName}), this);
                }
                for (int size = attributeSetComposed.size() - 1; size >= 0; size--) {
                    ((ElemAttributeSet) attributeSetComposed.elementAt(size)).execute(transformerImpl);
                }
            }
        }
    }

    public void setUseAttributeSets(QName[] qNameArr) {
        this.m_attributeSetsNames = qNameArr;
    }
}

package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xml.internal.utils.ObjectStack;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class StackGuard {
    private int m_recursionLimit = -1;
    TransformerImpl m_transformer;

    public StackGuard(TransformerImpl transformerImpl) {
        this.m_transformer = transformerImpl;
    }

    private ElemTemplate getNextMatchOrNamedTemplate(int i) {
        ObjectStack currentTemplateElements = this.m_transformer.getCurrentTemplateElements();
        while (i >= 0) {
            ElemTemplateElement elemTemplateElement = (ElemTemplateElement) currentTemplateElements.elementAt(i);
            if (elemTemplateElement != null && elemTemplateElement.getXSLToken() == 19) {
                return (ElemTemplate) elemTemplateElement;
            }
            i--;
        }
        return null;
    }

    public void checkForInfinateLoop() throws TransformerException {
        ElemTemplate nextMatchOrNamedTemplate;
        int currentTemplateElementsCount = this.m_transformer.getCurrentTemplateElementsCount();
        int i = this.m_recursionLimit;
        if (currentTemplateElementsCount >= i && i > 0) {
            for (int i2 = currentTemplateElementsCount - 1; i2 >= this.m_recursionLimit && (nextMatchOrNamedTemplate = getNextMatchOrNamedTemplate(i2)) != null; i2--) {
                int countLikeTemplates = countLikeTemplates(nextMatchOrNamedTemplate, i2);
                if (countLikeTemplates >= this.m_recursionLimit) {
                    String createMessage = XSLMessages.createMessage(nextMatchOrNamedTemplate.getName() != null ? "nameIs" : "matchPatternIs", null);
                    Object[] objArr = new Object[3];
                    objArr[0] = new Integer(countLikeTemplates);
                    objArr[1] = createMessage;
                    objArr[2] = nextMatchOrNamedTemplate.getName() != null ? nextMatchOrNamedTemplate.getName().toString() : nextMatchOrNamedTemplate.getMatch().getPatternString();
                    throw new TransformerException(XSLMessages.createMessage("recursionTooDeep", objArr));
                }
            }
        }
    }

    public int countLikeTemplates(ElemTemplate elemTemplate, int i) {
        ObjectStack currentTemplateElements = this.m_transformer.getCurrentTemplateElements();
        int i2 = 1;
        for (int i3 = i - 1; i3 >= 0; i3--) {
            if (((ElemTemplateElement) currentTemplateElements.elementAt(i3)) == elemTemplate) {
                i2++;
            }
        }
        return i2;
    }

    public int getRecursionLimit() {
        return this.m_recursionLimit;
    }

    public void setRecursionLimit(int i) {
        this.m_recursionLimit = i;
    }
}

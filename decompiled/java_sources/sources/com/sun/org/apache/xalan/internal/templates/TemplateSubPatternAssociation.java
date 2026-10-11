package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.patterns.StepPattern;
import java.io.Serializable;
import javax.xml.transform.TransformerException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class TemplateSubPatternAssociation implements Serializable, Cloneable {
    static final long serialVersionUID = -8902606755229903350L;
    private TemplateSubPatternAssociation m_next = null;
    private String m_pattern;
    StepPattern m_stepPattern;
    private String m_targetString;
    private ElemTemplate m_template;
    private boolean m_wild;

    public TemplateSubPatternAssociation(ElemTemplate elemTemplate, StepPattern stepPattern, String str) {
        this.m_pattern = str;
        this.m_template = elemTemplate;
        this.m_stepPattern = stepPattern;
        String targetString = stepPattern.getTargetString();
        this.m_targetString = targetString;
        this.m_wild = targetString.equals("*");
    }

    private boolean matchModes(QName qName, QName qName2) {
        return (qName == null && qName2 == null) || !(qName == null || qName2 == null || !qName.equals(qName2));
    }

    public Object clone() throws CloneNotSupportedException {
        TemplateSubPatternAssociation templateSubPatternAssociation = (TemplateSubPatternAssociation) super.clone();
        templateSubPatternAssociation.m_next = null;
        return templateSubPatternAssociation;
    }

    public int getDocOrderPos() {
        return this.m_template.getUid();
    }

    public final int getImportLevel() {
        return this.m_template.getStylesheetComposed().getImportCountComposed();
    }

    public final TemplateSubPatternAssociation getNext() {
        return this.m_next;
    }

    public final String getPattern() {
        return this.m_pattern;
    }

    public final StepPattern getStepPattern() {
        return this.m_stepPattern;
    }

    public final String getTargetString() {
        return this.m_targetString;
    }

    public final ElemTemplate getTemplate() {
        return this.m_template;
    }

    public final boolean isWild() {
        return this.m_wild;
    }

    public boolean matchMode(QName qName) {
        return matchModes(qName, this.m_template.getMode());
    }

    public boolean matches(XPathContext xPathContext, int i, QName qName) throws TransformerException {
        return Double.NEGATIVE_INFINITY != this.m_stepPattern.getMatchScore(xPathContext, i) && matchModes(qName, this.m_template.getMode());
    }

    public void setNext(TemplateSubPatternAssociation templateSubPatternAssociation) {
        this.m_next = templateSubPatternAssociation;
    }

    public void setTargetString(String str) {
        this.m_targetString = str;
    }
}

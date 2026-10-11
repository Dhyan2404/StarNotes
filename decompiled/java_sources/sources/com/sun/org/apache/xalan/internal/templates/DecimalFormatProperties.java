package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.QName;
import java.text.DecimalFormatSymbols;

/* loaded from: classes10.dex */
public class DecimalFormatProperties extends ElemTemplateElement {
    static final long serialVersionUID = -6559409339256269446L;
    DecimalFormatSymbols m_dfs;
    private QName m_qname = null;

    public DecimalFormatProperties(int i) {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
        this.m_dfs = decimalFormatSymbols;
        decimalFormatSymbols.setInfinity("Infinity");
        this.m_dfs.setNaN("NaN");
        this.m_docOrderNumber = i;
    }

    public DecimalFormatSymbols getDecimalFormatSymbols() {
        return this.m_dfs;
    }

    public char getDecimalSeparator() {
        return this.m_dfs.getDecimalSeparator();
    }

    public char getDigit() {
        return this.m_dfs.getDigit();
    }

    public char getGroupingSeparator() {
        return this.m_dfs.getGroupingSeparator();
    }

    public String getInfinity() {
        return this.m_dfs.getInfinity();
    }

    public char getMinusSign() {
        return this.m_dfs.getMinusSign();
    }

    public String getNaN() {
        return this.m_dfs.getNaN();
    }

    public QName getName() {
        QName qName = this.m_qname;
        return qName == null ? new QName("") : qName;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_DECIMALFORMAT_STRING;
    }

    public char getPatternSeparator() {
        return this.m_dfs.getPatternSeparator();
    }

    public char getPerMille() {
        return this.m_dfs.getPerMill();
    }

    public char getPercent() {
        return this.m_dfs.getPercent();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 83;
    }

    public char getZeroDigit() {
        return this.m_dfs.getZeroDigit();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) {
        stylesheetRoot.recomposeDecimalFormats(this);
    }

    public void setDecimalSeparator(char c) {
        this.m_dfs.setDecimalSeparator(c);
    }

    public void setDigit(char c) {
        this.m_dfs.setDigit(c);
    }

    public void setGroupingSeparator(char c) {
        this.m_dfs.setGroupingSeparator(c);
    }

    public void setInfinity(String str) {
        this.m_dfs.setInfinity(str);
    }

    public void setMinusSign(char c) {
        this.m_dfs.setMinusSign(c);
    }

    public void setNaN(String str) {
        this.m_dfs.setNaN(str);
    }

    public void setName(QName qName) {
        this.m_qname = qName;
    }

    public void setPatternSeparator(char c) {
        this.m_dfs.setPatternSeparator(c);
    }

    public void setPerMille(char c) {
        this.m_dfs.setPerMill(c);
    }

    public void setPercent(char c) {
        this.m_dfs.setPercent(c);
    }

    public void setZeroDigit(char c) {
        this.m_dfs.setZeroDigit(c);
    }
}

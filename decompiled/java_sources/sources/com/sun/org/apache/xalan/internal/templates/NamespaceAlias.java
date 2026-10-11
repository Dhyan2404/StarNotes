package com.sun.org.apache.xalan.internal.templates;

/* loaded from: classes10.dex */
public class NamespaceAlias extends ElemTemplateElement {
    static final long serialVersionUID = 456173966637810718L;
    private String m_ResultNamespace;
    private String m_ResultPrefix;
    private String m_StylesheetNamespace;
    private String m_StylesheetPrefix;

    public NamespaceAlias(int i) {
        this.m_docOrderNumber = i;
    }

    public String getResultNamespace() {
        return this.m_ResultNamespace;
    }

    public String getResultPrefix() {
        return this.m_ResultPrefix;
    }

    public String getStylesheetNamespace() {
        return this.m_StylesheetNamespace;
    }

    public String getStylesheetPrefix() {
        return this.m_StylesheetPrefix;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) {
        stylesheetRoot.recomposeNamespaceAliases(this);
    }

    public void setResultNamespace(String str) {
        this.m_ResultNamespace = str;
    }

    public void setResultPrefix(String str) {
        this.m_ResultPrefix = str;
    }

    public void setStylesheetNamespace(String str) {
        this.m_StylesheetNamespace = str;
    }

    public void setStylesheetPrefix(String str) {
        this.m_StylesheetPrefix = str;
    }
}

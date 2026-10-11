package com.sun.org.apache.xalan.internal.templates;

/* loaded from: classes10.dex */
public class ElemExtensionScript extends ElemTemplateElement {
    static final long serialVersionUID = -6995978265966057744L;
    private String m_lang = null;
    private String m_src = null;

    public String getLang() {
        return this.m_lang;
    }

    public String getSrc() {
        return this.m_src;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 86;
    }

    public void setLang(String str) {
        this.m_lang = str;
    }

    public void setSrc(String str) {
        this.m_src = str;
    }
}

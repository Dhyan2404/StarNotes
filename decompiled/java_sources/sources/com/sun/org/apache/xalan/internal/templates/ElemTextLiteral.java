package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemTextLiteral extends ElemTemplateElement {
    static final long serialVersionUID = -7872620006767660088L;
    private char[] m_ch;
    private boolean m_disableOutputEscaping = false;
    private boolean m_preserveSpace;
    private String m_str;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        try {
            try {
                SerializationHandler resultTreeHandler = transformerImpl.getResultTreeHandler();
                if (transformerImpl.getDebug()) {
                    resultTreeHandler.flushPending();
                    transformerImpl.getTraceManager().fireTraceEvent(this);
                }
                if (this.m_disableOutputEscaping) {
                    resultTreeHandler.processingInstruction(Result.PI_DISABLE_OUTPUT_ESCAPING, "");
                }
                char[] cArr = this.m_ch;
                resultTreeHandler.characters(cArr, 0, cArr.length);
                if (this.m_disableOutputEscaping) {
                    resultTreeHandler.processingInstruction(Result.PI_ENABLE_OUTPUT_ESCAPING, "");
                }
                if (transformerImpl.getDebug()) {
                    try {
                        transformerImpl.getResultTreeHandler().flushPending();
                        transformerImpl.getTraceManager().fireTraceEndEvent(this);
                    } catch (SAXException e) {
                        throw new TransformerException(e);
                    }
                }
            } catch (SAXException e2) {
                throw new TransformerException(e2);
            }
        } catch (Throwable th) {
            if (transformerImpl.getDebug()) {
                try {
                    transformerImpl.getResultTreeHandler().flushPending();
                    transformerImpl.getTraceManager().fireTraceEndEvent(this);
                } catch (SAXException e3) {
                    throw new TransformerException(e3);
                }
            }
            throw th;
        }
    }

    public char[] getChars() {
        return this.m_ch;
    }

    public boolean getDisableOutputEscaping() {
        return this.m_disableOutputEscaping;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "#Text";
    }

    @Override // com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public synchronized String getNodeValue() {
        if (this.m_str == null) {
            this.m_str = new String(this.m_ch);
        }
        return this.m_str;
    }

    public boolean getPreserveSpace() {
        return this.m_preserveSpace;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 78;
    }

    public void setChars(char[] cArr) {
        this.m_ch = cArr;
    }

    public void setDisableOutputEscaping(boolean z) {
        this.m_disableOutputEscaping = z;
    }

    public void setPreserveSpace(boolean z) {
        this.m_preserveSpace = z;
    }
}

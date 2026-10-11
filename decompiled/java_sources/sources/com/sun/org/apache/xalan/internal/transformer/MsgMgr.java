package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class MsgMgr {
    private TransformerImpl m_transformer;

    public MsgMgr(TransformerImpl transformerImpl) {
        this.m_transformer = transformerImpl;
    }

    public void error(SourceLocator sourceLocator, String str) throws TransformerException {
        error(sourceLocator, null, null, str, null);
    }

    public void message(SourceLocator sourceLocator, String str, boolean z) throws TransformerException {
        ErrorListener errorListener = this.m_transformer.getErrorListener();
        if (errorListener != null) {
            errorListener.warning(new TransformerException(str, sourceLocator));
        } else {
            if (z) {
                throw new TransformerException(str, sourceLocator);
            }
            System.out.println(str);
        }
    }

    public void warn(SourceLocator sourceLocator, String str) throws TransformerException {
        warn(sourceLocator, null, null, str, null);
    }

    public void error(SourceLocator sourceLocator, String str, Object[] objArr) throws TransformerException {
        error(sourceLocator, null, null, str, objArr);
    }

    public void warn(SourceLocator sourceLocator, String str, Object[] objArr) throws TransformerException {
        warn(sourceLocator, null, null, str, objArr);
    }

    public void error(SourceLocator sourceLocator, String str, Exception exc) throws TransformerException {
        error(sourceLocator, str, (Object[]) null, exc);
    }

    public void warn(SourceLocator sourceLocator, Node node, Node node2, String str) throws TransformerException {
        warn(sourceLocator, node, node2, str, null);
    }

    public void error(SourceLocator sourceLocator, String str, Object[] objArr, Exception exc) throws TransformerException {
        String createMessage = XSLMessages.createMessage(str, objArr);
        ErrorListener errorListener = this.m_transformer.getErrorListener();
        if (errorListener != null) {
            errorListener.fatalError(new TransformerException(createMessage, sourceLocator));
            return;
        }
        throw new TransformerException(createMessage, sourceLocator);
    }

    public void warn(SourceLocator sourceLocator, Node node, Node node2, String str, Object[] objArr) throws TransformerException {
        String createWarning = XSLMessages.createWarning(str, objArr);
        ErrorListener errorListener = this.m_transformer.getErrorListener();
        if (errorListener != null) {
            errorListener.warning(new TransformerException(createWarning, sourceLocator));
        } else {
            System.out.println(createWarning);
        }
    }

    public void error(SourceLocator sourceLocator, Node node, Node node2, String str) throws TransformerException {
        error(sourceLocator, node, node2, str, null);
    }

    public void error(SourceLocator sourceLocator, Node node, Node node2, String str, Object[] objArr) throws TransformerException {
        String createMessage = XSLMessages.createMessage(str, objArr);
        ErrorListener errorListener = this.m_transformer.getErrorListener();
        if (errorListener != null) {
            errorListener.fatalError(new TransformerException(createMessage, sourceLocator));
            return;
        }
        throw new TransformerException(createMessage, sourceLocator);
    }
}

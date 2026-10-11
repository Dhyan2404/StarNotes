package com.sun.org.apache.xalan.internal.trace;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.lang.reflect.Method;
import java.util.TooManyListenersException;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class TraceManager {
    private Vector m_traceListeners = null;
    private TransformerImpl m_transformer;

    public TraceManager(TransformerImpl transformerImpl) {
        this.m_transformer = transformerImpl;
    }

    private Node getDOMNodeFromDTM(int i) {
        DTM dtm = this.m_transformer.getXPathContext().getDTM(i);
        if (dtm == null) {
            return null;
        }
        return dtm.getNode(i);
    }

    public void addTraceListener(TraceListener traceListener) throws TooManyListenersException {
        this.m_transformer.setDebug(true);
        if (this.m_traceListeners == null) {
            this.m_traceListeners = new Vector();
        }
        this.m_traceListeners.addElement(traceListener);
    }

    public void fireExtensionEndEvent(Method method, Object obj, Object[] objArr) {
        ExtensionEvent extensionEvent = new ExtensionEvent(this.m_transformer, method, obj, objArr);
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                TraceListener traceListener = (TraceListener) this.m_traceListeners.elementAt(i);
                if (traceListener instanceof TraceListenerEx3) {
                    ((TraceListenerEx3) traceListener).extensionEnd(extensionEvent);
                }
            }
        }
    }

    public void fireExtensionEvent(Method method, Object obj, Object[] objArr) {
        ExtensionEvent extensionEvent = new ExtensionEvent(this.m_transformer, method, obj, objArr);
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                TraceListener traceListener = (TraceListener) this.m_traceListeners.elementAt(i);
                if (traceListener instanceof TraceListenerEx3) {
                    ((TraceListenerEx3) traceListener).extension(extensionEvent);
                }
            }
        }
    }

    public void fireGenerateEvent(GenerateEvent generateEvent) {
        Vector vector = this.m_traceListeners;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                ((TraceListener) this.m_traceListeners.elementAt(i)).generated(generateEvent);
            }
        }
    }

    public void fireSelectedEndEvent(int i, ElemTemplateElement elemTemplateElement, String str, XPath xPath, XObject xObject) throws TransformerException {
        if (hasTraceListeners()) {
            fireSelectedEndEvent(new EndSelectionEvent(this.m_transformer, getDOMNodeFromDTM(i), elemTemplateElement, str, xPath, xObject));
        }
    }

    public void fireSelectedEvent(int i, ElemTemplateElement elemTemplateElement, String str, XPath xPath, XObject xObject) throws TransformerException {
        if (hasTraceListeners()) {
            fireSelectedEvent(new SelectionEvent(this.m_transformer, getDOMNodeFromDTM(i), elemTemplateElement, str, xPath, xObject));
        }
    }

    public void fireTraceEndEvent(ElemTemplateElement elemTemplateElement) {
        if (hasTraceListeners()) {
            Node dOMNodeFromDTM = getDOMNodeFromDTM(this.m_transformer.getXPathContext().getCurrentNode());
            TransformerImpl transformerImpl = this.m_transformer;
            fireTraceEndEvent(new TracerEvent(transformerImpl, dOMNodeFromDTM, transformerImpl.getMode(), elemTemplateElement));
        }
    }

    public void fireTraceEvent(ElemTemplateElement elemTemplateElement) {
        if (hasTraceListeners()) {
            Node dOMNodeFromDTM = getDOMNodeFromDTM(this.m_transformer.getXPathContext().getCurrentNode());
            TransformerImpl transformerImpl = this.m_transformer;
            fireTraceEvent(new TracerEvent(transformerImpl, dOMNodeFromDTM, transformerImpl.getMode(), elemTemplateElement));
        }
    }

    public boolean hasTraceListeners() {
        return this.m_traceListeners != null;
    }

    public void removeTraceListener(TraceListener traceListener) {
        Vector vector = this.m_traceListeners;
        if (vector != null) {
            vector.removeElement(traceListener);
            if (this.m_traceListeners.size() == 0) {
                this.m_traceListeners = null;
            }
        }
    }

    public void fireSelectedEndEvent(EndSelectionEvent endSelectionEvent) throws TransformerException {
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                TraceListener traceListener = (TraceListener) this.m_traceListeners.elementAt(i);
                if (traceListener instanceof TraceListenerEx) {
                    ((TraceListenerEx) traceListener).selectEnd(endSelectionEvent);
                }
            }
        }
    }

    public void fireSelectedEvent(SelectionEvent selectionEvent) throws TransformerException {
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                ((TraceListener) this.m_traceListeners.elementAt(i)).selected(selectionEvent);
            }
        }
    }

    public void fireTraceEndEvent(TracerEvent tracerEvent) {
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                TraceListener traceListener = (TraceListener) this.m_traceListeners.elementAt(i);
                if (traceListener instanceof TraceListenerEx2) {
                    ((TraceListenerEx2) traceListener).traceEnd(tracerEvent);
                }
            }
        }
    }

    public void fireTraceEvent(TracerEvent tracerEvent) {
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                ((TraceListener) this.m_traceListeners.elementAt(i)).trace(tracerEvent);
            }
        }
    }

    public void fireExtensionEndEvent(ExtensionEvent extensionEvent) {
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                TraceListener traceListener = (TraceListener) this.m_traceListeners.elementAt(i);
                if (traceListener instanceof TraceListenerEx3) {
                    ((TraceListenerEx3) traceListener).extensionEnd(extensionEvent);
                }
            }
        }
    }

    public void fireExtensionEvent(ExtensionEvent extensionEvent) {
        if (hasTraceListeners()) {
            int size = this.m_traceListeners.size();
            for (int i = 0; i < size; i++) {
                TraceListener traceListener = (TraceListener) this.m_traceListeners.elementAt(i);
                if (traceListener instanceof TraceListenerEx3) {
                    ((TraceListenerEx3) traceListener).extension(extensionEvent);
                }
            }
        }
    }
}

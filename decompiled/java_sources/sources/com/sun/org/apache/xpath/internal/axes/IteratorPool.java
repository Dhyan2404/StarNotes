package com.sun.org.apache.xpath.internal.axes;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import java.io.Serializable;
import java.util.Vector;

/* loaded from: classes10.dex */
public class IteratorPool implements Serializable {
    static final long serialVersionUID = -460927331149566998L;
    private final Vector m_freeStack = new Vector();
    private final DTMIterator m_orig;

    public IteratorPool(DTMIterator dTMIterator) {
        this.m_orig = dTMIterator;
    }

    public synchronized void freeInstance(DTMIterator dTMIterator) {
        this.m_freeStack.addElement(dTMIterator);
    }

    public synchronized DTMIterator getInstance() {
        if (this.m_freeStack.isEmpty()) {
            try {
                return (DTMIterator) this.m_orig.clone();
            } catch (Exception e) {
                throw new WrappedRuntimeException(e);
            }
        }
        DTMIterator dTMIterator = (DTMIterator) this.m_freeStack.lastElement();
        this.m_freeStack.setSize(r1.size() - 1);
        return dTMIterator;
    }

    public synchronized DTMIterator getInstanceOrThrow() throws CloneNotSupportedException {
        if (this.m_freeStack.isEmpty()) {
            return (DTMIterator) this.m_orig.clone();
        }
        DTMIterator dTMIterator = (DTMIterator) this.m_freeStack.lastElement();
        this.m_freeStack.setSize(r1.size() - 1);
        return dTMIterator;
    }
}

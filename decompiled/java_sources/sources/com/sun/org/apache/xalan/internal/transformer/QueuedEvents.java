package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xml.internal.serializer.Serializer;
import com.sun.org.apache.xml.internal.utils.MutableAttrListImpl;
import java.util.Vector;

/* loaded from: classes10.dex */
public abstract class QueuedEvents {
    protected String m_localName;
    protected String m_name;
    private Serializer m_serializer;
    protected String m_url;
    protected int m_eventCount = 0;
    public boolean m_docPending = false;
    protected boolean m_docEnded = false;
    public boolean m_elemIsPending = false;
    public boolean m_elemIsEnded = false;
    protected MutableAttrListImpl m_attributes = new MutableAttrListImpl();
    protected boolean m_nsDeclsHaveBeenAdded = false;
    protected Vector m_namespaces = null;

    public Serializer getSerializer() {
        return this.m_serializer;
    }

    public void popEvent() {
        this.m_elemIsPending = false;
        this.m_attributes.clear();
        this.m_nsDeclsHaveBeenAdded = false;
        this.m_name = null;
        this.m_url = null;
        this.m_localName = null;
        this.m_namespaces = null;
        this.m_eventCount--;
    }

    public void pushDocumentEvent() {
        this.m_docPending = true;
        this.m_eventCount++;
    }

    public void reInitEvents() {
    }

    public void reset() {
        pushDocumentEvent();
        reInitEvents();
    }

    public void setSerializer(Serializer serializer) {
        this.m_serializer = serializer;
    }
}

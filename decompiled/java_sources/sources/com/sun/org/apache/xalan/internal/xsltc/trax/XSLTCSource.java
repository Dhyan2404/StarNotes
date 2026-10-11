package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.StripFilter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.dom.DOMWSFilter;
import com.sun.org.apache.xalan.internal.xsltc.dom.SAXImpl;
import com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager;
import com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class XSLTCSource implements Source {
    private ThreadLocal _dom;
    private Source _source;
    private String _systemId;

    public XSLTCSource(String str) {
        this._systemId = null;
        this._source = null;
        this._dom = new ThreadLocal();
        this._systemId = str;
    }

    public DOM getDOM(XSLTCDTMManager xSLTCDTMManager, AbstractTranslet abstractTranslet) throws SAXException {
        SAXImpl sAXImpl = (SAXImpl) this._dom.get();
        if (sAXImpl == null) {
            Source source = this._source;
            if (source == null) {
                String str = this._systemId;
                if (str == null || str.length() <= 0) {
                    throw new SAXException(new ErrorMsg(ErrorMsg.XSLTC_SOURCE_ERR).toString());
                }
                source = new StreamSource(this._systemId);
            }
            Source source2 = source;
            DOMWSFilter dOMWSFilter = (abstractTranslet == null || !(abstractTranslet instanceof StripFilter)) ? null : new DOMWSFilter(abstractTranslet);
            boolean hasIdCall = abstractTranslet != null ? abstractTranslet.hasIdCall() : false;
            if (xSLTCDTMManager == null) {
                xSLTCDTMManager = XSLTCDTMManager.newInstance();
            }
            sAXImpl = (SAXImpl) xSLTCDTMManager.getDTM(source2, true, dOMWSFilter, false, false, hasIdCall);
            String systemId = getSystemId();
            if (systemId != null) {
                sAXImpl.setDocumentURI(systemId);
            }
            this._dom.set(sAXImpl);
        } else if (xSLTCDTMManager != null) {
            sAXImpl.migrateTo(xSLTCDTMManager);
        }
        return sAXImpl;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        Source source = this._source;
        return source != null ? source.getSystemId() : this._systemId;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this._systemId = str;
        Source source = this._source;
        if (source != null) {
            source.setSystemId(str);
        }
    }

    public XSLTCSource(Source source) {
        this._systemId = null;
        this._source = null;
        this._dom = new ThreadLocal();
        this._source = source;
    }
}

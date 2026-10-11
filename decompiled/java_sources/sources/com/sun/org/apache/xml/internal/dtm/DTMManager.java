package com.sun.org.apache.xml.internal.dtm;

import com.sun.org.apache.xml.internal.dtm.ObjectFactory;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.XMLStringFactory;
import javax.xml.transform.Source;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public abstract class DTMManager {
    public static final int IDENT_DTM_DEFAULT = -65536;
    public static final int IDENT_DTM_NODE_BITS = 16;
    public static final int IDENT_MAX_DTMS = 65536;
    public static final int IDENT_NODE_DEFAULT = 65535;
    private static boolean debug = false;
    private static String defaultClassName = "com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault";
    private static final String defaultPropName = "com.sun.org.apache.xml.internal.dtm.DTMManager";
    protected XMLStringFactory m_xsf = null;
    public boolean m_incremental = false;
    public boolean m_source_location = false;

    static {
        try {
            debug = System.getProperty("dtm.debug") != null;
        } catch (SecurityException unused) {
        }
    }

    public static DTMManager newInstance(XMLStringFactory xMLStringFactory) throws DTMConfigurationException {
        try {
            DTMManager dTMManager = (DTMManager) ObjectFactory.createObject(defaultPropName, defaultClassName);
            if (dTMManager == null) {
                throw new DTMConfigurationException(XMLMessages.createXMLMessage("ER_NO_DEFAULT_IMPL", null));
            }
            dTMManager.setXMLStringFactory(xMLStringFactory);
            return dTMManager;
        } catch (ObjectFactory.ConfigurationError e) {
            throw new DTMConfigurationException(XMLMessages.createXMLMessage("ER_NO_DEFAULT_IMPL", null), e.getException());
        }
    }

    public abstract DTMIterator createDTMIterator(int i);

    public abstract DTMIterator createDTMIterator(int i, DTMFilter dTMFilter, boolean z);

    public abstract DTMIterator createDTMIterator(Object obj, int i);

    public abstract DTMIterator createDTMIterator(String str, PrefixResolver prefixResolver);

    public abstract DTM createDocumentFragment();

    public abstract DTM getDTM(int i);

    public abstract DTM getDTM(Source source, boolean z, DTMWSFilter dTMWSFilter, boolean z2, boolean z3);

    public abstract int getDTMHandleFromNode(Node node);

    public abstract int getDTMIdentity(DTM dtm);

    public int getDTMIdentityMask() {
        return -65536;
    }

    public boolean getIncremental() {
        return this.m_incremental;
    }

    public int getNodeIdentityMask() {
        return 65535;
    }

    public boolean getSource_location() {
        return this.m_source_location;
    }

    public XMLStringFactory getXMLStringFactory() {
        return this.m_xsf;
    }

    public abstract boolean release(DTM dtm, boolean z);

    public void setIncremental(boolean z) {
        this.m_incremental = z;
    }

    public void setSource_location(boolean z) {
        this.m_source_location = z;
    }

    public void setXMLStringFactory(XMLStringFactory xMLStringFactory) {
        this.m_xsf = xMLStringFactory;
    }
}

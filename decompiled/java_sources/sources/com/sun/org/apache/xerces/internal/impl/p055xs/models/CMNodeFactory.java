package com.sun.org.apache.xerces.internal.impl.p055xs.models;

import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;

/* loaded from: classes10.dex */
public class CMNodeFactory {
    private static final boolean DEBUG = false;
    private static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    private static final int MULTIPLICITY = 1;
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private XMLErrorReporter fErrorReporter;
    private int maxNodeLimit;
    private int nodeCount = 0;
    private SecurityManager fSecurityManager = null;

    public CMNode getCMBinOpNode(int i, CMNode cMNode, CMNode cMNode2) {
        return new XSCMBinOp(i, cMNode, cMNode2);
    }

    public CMNode getCMLeafNode(int i, Object obj, int i2, int i3) {
        return new XSCMLeaf(i, obj, i2, i3);
    }

    public CMNode getCMUniOpNode(int i, CMNode cMNode) {
        return new XSCMUniOp(i, cMNode);
    }

    public void nodeCountCheck() {
        if (this.fSecurityManager != null) {
            int i = this.nodeCount;
            this.nodeCount = i + 1;
            int i2 = this.maxNodeLimit;
            if (i > i2) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", Constants.MAX_OCCUR_LIMIT, new Object[]{new Integer(i2)}, (short) 2);
                this.nodeCount = 0;
            }
        }
    }

    public void reset(XMLComponentManager xMLComponentManager) {
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            SecurityManager securityManager = (SecurityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
            this.fSecurityManager = securityManager;
            if (securityManager != null) {
                this.maxNodeLimit = securityManager.getMaxOccurNodeLimit() * 1;
            }
        } catch (XMLConfigurationException unused) {
            this.fSecurityManager = null;
        }
    }

    public void resetNodeCount() {
        this.nodeCount = 0;
    }

    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 16 && str.endsWith("security-manager")) {
                SecurityManager securityManager = (SecurityManager) obj;
                this.fSecurityManager = securityManager;
                this.maxNodeLimit = securityManager != null ? securityManager.getMaxOccurNodeLimit() * 1 : 0;
            } else if (length == 23 && str.endsWith("internal/error-reporter")) {
                this.fErrorReporter = (XMLErrorReporter) obj;
            }
        }
    }
}

package org.apache.xerces.impl.p117xs.models;

import com.sun.org.apache.xerces.internal.impl.Constants;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;

/* loaded from: classes13.dex */
public class CMNodeFactory {

    /* renamed from: e */
    public static final String f112963e = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: f */
    public static final String f112964f = "http://apache.org/xml/properties/security-manager";

    /* renamed from: g */
    public static final boolean f112965g = false;

    /* renamed from: h */
    public static final int f112966h = 1;

    /* renamed from: b */
    public int f112968b;

    /* renamed from: c */
    public XMLErrorReporter f112969c;

    /* renamed from: a */
    public int f112967a = 0;

    /* renamed from: d */
    public SecurityManager f112970d = null;

    public CMNode getCMBinOpNode(int i, CMNode cMNode, CMNode cMNode2) {
        nodeCountCheck();
        return new XSCMBinOp(i, cMNode, cMNode2);
    }

    public CMNode getCMLeafNode(int i, Object obj, int i2, int i3) {
        nodeCountCheck();
        return new XSCMLeaf(i, obj, i2, i3);
    }

    public CMNode getCMRepeatingLeafNode(int i, Object obj, int i2, int i3, int i4, int i5) {
        nodeCountCheck();
        return new XSCMRepeatingLeaf(i, obj, i2, i3, i4, i5);
    }

    public CMNode getCMUniOpNode(int i, CMNode cMNode) {
        nodeCountCheck();
        return new XSCMUniOp(i, cMNode);
    }

    public void nodeCountCheck() {
        if (this.f112970d != null) {
            int i = this.f112967a;
            this.f112967a = i + 1;
            int i2 = this.f112968b;
            if (i > i2) {
                this.f112969c.reportError("http://www.w3.org/TR/xml-schema-1", Constants.MAX_OCCUR_LIMIT, new Object[]{new Integer(i2)}, (short) 2);
                this.f112967a = 0;
            }
        }
    }

    public void reset() {
        SecurityManager securityManager = this.f112970d;
        if (securityManager != null) {
            this.f112968b = securityManager.getMaxOccurNodeLimit() * 1;
        }
    }

    public void resetNodeCount() {
        this.f112967a = 0;
    }

    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 16 && str.endsWith("security-manager")) {
                SecurityManager securityManager = (SecurityManager) obj;
                this.f112970d = securityManager;
                this.f112968b = securityManager != null ? securityManager.getMaxOccurNodeLimit() * 1 : 0;
            } else if (length == 23 && str.endsWith("internal/error-reporter")) {
                this.f112969c = (XMLErrorReporter) obj;
            }
        }
    }

    public void reset(XMLComponentManager xMLComponentManager) {
        this.f112969c = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            this.f112970d = (SecurityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
            reset();
        } catch (XMLConfigurationException unused) {
            this.f112970d = null;
        }
    }
}

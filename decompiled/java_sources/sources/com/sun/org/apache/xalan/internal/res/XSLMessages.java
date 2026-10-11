package com.sun.org.apache.xalan.internal.res;

import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.util.ListResourceBundle;

/* loaded from: classes10.dex */
public class XSLMessages extends XPATHMessages {
    private static ListResourceBundle XSLTBundle = null;
    private static final String XSLT_ERROR_RESOURCES = "com.sun.org.apache.xalan.internal.res.XSLTErrorResources";

    public static final String createMessage(String str, Object[] objArr) {
        if (XSLTBundle == null) {
            XSLTBundle = XMLMessages.loadResourceBundle("com.sun.org.apache.xalan.internal.res.XSLTErrorResources");
        }
        ListResourceBundle listResourceBundle = XSLTBundle;
        return listResourceBundle != null ? XMLMessages.createMsg(listResourceBundle, str, objArr) : "Could not load any resource bundles.";
    }

    public static final String createWarning(String str, Object[] objArr) {
        if (XSLTBundle == null) {
            XSLTBundle = XMLMessages.loadResourceBundle("com.sun.org.apache.xalan.internal.res.XSLTErrorResources");
        }
        ListResourceBundle listResourceBundle = XSLTBundle;
        return listResourceBundle != null ? XMLMessages.createMsg(listResourceBundle, str, objArr) : "Could not load any resource bundles.";
    }
}

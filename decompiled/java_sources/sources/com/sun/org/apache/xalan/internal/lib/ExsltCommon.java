package com.sun.org.apache.xalan.internal.lib;

import com.sun.org.apache.xalan.internal.extensions.ExpressionContext;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeIterator;
import com.sun.org.apache.xpath.internal.NodeSet;
import com.sun.org.apache.xpath.internal.axes.RTFIterator;

/* loaded from: classes10.dex */
public class ExsltCommon {
    public static NodeSet nodeSet(ExpressionContext expressionContext, Object obj) {
        return Extensions.nodeset(expressionContext, obj);
    }

    public static String objectType(Object obj) {
        return obj instanceof String ? "string" : obj instanceof Boolean ? "boolean" : obj instanceof Number ? "number" : obj instanceof DTMNodeIterator ? ((DTMNodeIterator) obj).getDTMIterator() instanceof RTFIterator ? "RTF" : "node-set" : "unknown";
    }
}

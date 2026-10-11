package com.sun.org.apache.xalan.internal.lib;

import com.sun.org.apache.xpath.internal.NodeSet;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class ExsltMath extends ExsltBase {

    /* renamed from: E */
    private static String f64092E = "2.71828182845904523536028747135266249775724709369996";
    private static String LN10 = "2.302585092994046";
    private static String LN2 = "0.69314718055994530941723212145817656807550013436025";
    private static String LOG2E = "1.4426950408889633";

    /* renamed from: PI */
    private static String f64093PI = "3.1415926535897932384626433832795028841971693993751";
    private static String SQRRT2 = "1.41421356237309504880168872420969807856967187537694";
    private static String SQRT1_2 = "0.7071067811865476";

    public static double abs(double d) {
        return Math.abs(d);
    }

    public static double acos(double d) {
        return Math.acos(d);
    }

    public static double asin(double d) {
        return Math.asin(d);
    }

    public static double atan(double d) {
        return Math.atan(d);
    }

    public static double atan2(double d, double d2) {
        return Math.atan2(d, d2);
    }

    public static double constant(String str, double d) {
        String str2 = str.equals("PI") ? f64093PI : str.equals("E") ? f64092E : str.equals("SQRRT2") ? SQRRT2 : str.equals("LN2") ? LN2 : str.equals("LN10") ? LN10 : str.equals("LOG2E") ? LOG2E : str.equals("SQRT1_2") ? SQRT1_2 : null;
        if (str2 == null) {
            return Double.NaN;
        }
        int intValue = new Double(d).intValue();
        if (intValue <= str2.length()) {
            str2 = str2.substring(0, intValue);
        }
        return new Double(str2).doubleValue();
    }

    public static double cos(double d) {
        return Math.cos(d);
    }

    public static double exp(double d) {
        return Math.exp(d);
    }

    public static NodeList highest(NodeList nodeList) {
        double max = max(nodeList);
        NodeSet nodeSet = new NodeSet();
        nodeSet.setShouldCacheNodes(true);
        if (Double.isNaN(max)) {
            return nodeSet;
        }
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            if (ExsltBase.toNumber(item) == max) {
                nodeSet.addElement(item);
            }
        }
        return nodeSet;
    }

    public static double log(double d) {
        return Math.log(d);
    }

    public static NodeList lowest(NodeList nodeList) {
        double min = min(nodeList);
        NodeSet nodeSet = new NodeSet();
        nodeSet.setShouldCacheNodes(true);
        if (Double.isNaN(min)) {
            return nodeSet;
        }
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            if (ExsltBase.toNumber(item) == min) {
                nodeSet.addElement(item);
            }
        }
        return nodeSet;
    }

    public static double max(NodeList nodeList) {
        if (nodeList == null || nodeList.getLength() == 0) {
            return Double.NaN;
        }
        double d = -1.7976931348623157E308d;
        for (int i = 0; i < nodeList.getLength(); i++) {
            double number = ExsltBase.toNumber(nodeList.item(i));
            if (Double.isNaN(number)) {
                return Double.NaN;
            }
            if (number > d) {
                d = number;
            }
        }
        return d;
    }

    public static double min(NodeList nodeList) {
        if (nodeList == null || nodeList.getLength() == 0) {
            return Double.NaN;
        }
        double d = Double.MAX_VALUE;
        for (int i = 0; i < nodeList.getLength(); i++) {
            double number = ExsltBase.toNumber(nodeList.item(i));
            if (Double.isNaN(number)) {
                return Double.NaN;
            }
            if (number < d) {
                d = number;
            }
        }
        return d;
    }

    public static double power(double d, double d2) {
        return Math.pow(d, d2);
    }

    public static double random() {
        return Math.random();
    }

    public static double sin(double d) {
        return Math.sin(d);
    }

    public static double sqrt(double d) {
        return Math.sqrt(d);
    }

    public static double tan(double d) {
        return Math.tan(d);
    }
}

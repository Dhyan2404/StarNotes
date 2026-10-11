package com.sun.org.apache.xpath.internal.objects;

import com.sun.org.apache.xml.internal.utils.XMLString;

/* loaded from: classes10.dex */
abstract class Comparator {
    public abstract boolean compareNumbers(double d, double d2);

    public abstract boolean compareStrings(XMLString xMLString, XMLString xMLString2);
}

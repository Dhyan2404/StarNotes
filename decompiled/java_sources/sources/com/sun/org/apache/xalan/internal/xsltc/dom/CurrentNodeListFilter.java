package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;

/* loaded from: classes10.dex */
public interface CurrentNodeListFilter {
    boolean test(int i, int i2, int i3, int i4, AbstractTranslet abstractTranslet, DTMAxisIterator dTMAxisIterator);
}

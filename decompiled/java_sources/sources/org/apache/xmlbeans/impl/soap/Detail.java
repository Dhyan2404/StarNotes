package org.apache.xmlbeans.impl.soap;

import java.util.Iterator;

/* loaded from: classes13.dex */
public interface Detail extends SOAPFaultElement {
    DetailEntry addDetailEntry(Name name) throws SOAPException;

    Iterator<DetailEntry> getDetailEntries();
}

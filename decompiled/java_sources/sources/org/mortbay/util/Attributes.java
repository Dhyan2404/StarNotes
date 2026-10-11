package org.mortbay.util;

import java.util.Enumeration;

/* loaded from: classes13.dex */
public interface Attributes {
    void clearAttributes();

    Object getAttribute(String str);

    Enumeration getAttributeNames();

    void removeAttribute(String str);

    void setAttribute(String str, Object obj);
}

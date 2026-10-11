package org.apache.wml;

import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public interface WMLElement extends Element {
    String getClassName();

    String getId();

    void setClassName(String str);

    void setId(String str);
}

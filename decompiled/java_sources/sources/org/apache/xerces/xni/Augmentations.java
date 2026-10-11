package org.apache.xerces.xni;

import java.util.Enumeration;

/* loaded from: classes13.dex */
public interface Augmentations {
    Object getItem(String str);

    Enumeration keys();

    Object putItem(String str, Object obj);

    void removeAllItems();

    Object removeItem(String str);
}

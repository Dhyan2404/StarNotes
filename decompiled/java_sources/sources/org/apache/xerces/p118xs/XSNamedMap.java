package org.apache.xerces.p118xs;

import java.util.Map;

/* loaded from: classes13.dex */
public interface XSNamedMap extends Map {
    int getLength();

    XSObject item(int i);

    XSObject itemByName(String str, String str2);
}

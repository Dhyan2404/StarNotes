package org.apache.xmlbeans;

import java.io.InputStream;

/* loaded from: classes13.dex */
public interface ResourceLoader {
    void close();

    InputStream getResourceAsStream(String str);
}

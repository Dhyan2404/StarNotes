package org.apache.xerces.util;

import java.io.InputStream;
import java.io.Reader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public final class HTTPInputSource extends XMLInputSource {
    protected boolean fFollowRedirects;
    protected Map fHTTPRequestProperties;

    public HTTPInputSource(String str, String str2, String str3) {
        super(str, str2, str3);
        this.fFollowRedirects = true;
        this.fHTTPRequestProperties = new HashMap();
    }

    public boolean getFollowHTTPRedirects() {
        return this.fFollowRedirects;
    }

    public Iterator getHTTPRequestProperties() {
        return this.fHTTPRequestProperties.entrySet().iterator();
    }

    public String getHTTPRequestProperty(String str) {
        return (String) this.fHTTPRequestProperties.get(str);
    }

    public void setFollowHTTPRedirects(boolean z) {
        this.fFollowRedirects = z;
    }

    public void setHTTPRequestProperty(String str, String str2) {
        Map map = this.fHTTPRequestProperties;
        if (str2 != null) {
            map.put(str, str2);
        } else {
            map.remove(str);
        }
    }

    public HTTPInputSource(String str, String str2, String str3, InputStream inputStream, String str4) {
        super(str, str2, str3, inputStream, str4);
        this.fFollowRedirects = true;
        this.fHTTPRequestProperties = new HashMap();
    }

    public HTTPInputSource(String str, String str2, String str3, Reader reader, String str4) {
        super(str, str2, str3, reader, str4);
        this.fFollowRedirects = true;
        this.fHTTPRequestProperties = new HashMap();
    }

    public HTTPInputSource(XMLResourceIdentifier xMLResourceIdentifier) {
        super(xMLResourceIdentifier);
        this.fFollowRedirects = true;
        this.fHTTPRequestProperties = new HashMap();
    }
}

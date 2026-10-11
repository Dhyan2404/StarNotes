package com.sun.org.apache.xml.internal.resolver.helpers;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes10.dex */
public abstract class FileURL {
    public static URL makeURL(String str) throws MalformedURLException {
        return new File(str).toURL();
    }
}

package org.xmlresolver;

import java.io.InputStream;
import java.net.URI;

/* loaded from: classes16.dex */
public abstract class ResolvedResource {
    public abstract String getContentType();

    public abstract InputStream getInputStream();

    public abstract URI getLocalURI();

    public abstract URI getResolvedURI();
}

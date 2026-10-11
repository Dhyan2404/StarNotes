package org.xmlresolver.sources;

import java.io.InputStream;
import java.net.URI;
import org.xml.sax.InputSource;

/* loaded from: classes16.dex */
public class ResolverInputSource extends InputSource {
    public final URI resolvedURI;

    public ResolverInputSource(URI uri, InputStream inputStream) {
        super(inputStream);
        this.resolvedURI = uri;
    }
}

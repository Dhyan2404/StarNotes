package org.xmlresolver.sources;

import java.net.URI;
import javax.xml.transform.sax.SAXSource;
import org.xml.sax.InputSource;

/* loaded from: classes16.dex */
public class ResolverSAXSource extends SAXSource {
    public final URI resolvedURI;

    public ResolverSAXSource(URI uri, InputSource inputSource) {
        super(inputSource);
        this.resolvedURI = uri;
    }
}

package org.xmlresolver;

import java.io.InputStream;
import java.net.URI;

/* loaded from: classes16.dex */
public class ResolvedResourceImpl extends ResolvedResource {

    /* renamed from: a */
    public final URI f116086a;

    /* renamed from: b */
    public final URI f116087b;

    /* renamed from: c */
    public final InputStream f116088c;

    /* renamed from: d */
    public final String f116089d;

    public ResolvedResourceImpl(URI uri, URI uri2, InputStream inputStream, String str) {
        this.f116086a = uri;
        this.f116087b = uri2;
        this.f116088c = inputStream;
        this.f116089d = str;
    }

    @Override // org.xmlresolver.ResolvedResource
    public String getContentType() {
        return this.f116089d;
    }

    @Override // org.xmlresolver.ResolvedResource
    public InputStream getInputStream() {
        return this.f116088c;
    }

    @Override // org.xmlresolver.ResolvedResource
    public URI getLocalURI() {
        return this.f116087b;
    }

    @Override // org.xmlresolver.ResolvedResource
    public URI getResolvedURI() {
        return this.f116086a;
    }
}

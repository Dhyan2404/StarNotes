package org.xmlresolver.sources;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import org.w3c.dom.ls.LSInput;
import org.xmlresolver.ResolvedResource;
import org.xmlresolver.Resource;

/* loaded from: classes16.dex */
public class ResolverLSInput implements LSInput {

    /* renamed from: a */
    public final String f116206a;

    /* renamed from: b */
    public final String f116207b;

    /* renamed from: c */
    public final InputStream f116208c;

    /* renamed from: d */
    public final URI f116209d;
    public final URI resolvedURI;

    public ResolverLSInput(Resource resource, String str, String str2) {
        this.resolvedURI = resource.localUri();
        this.f116208c = resource.body();
        this.f116206a = str;
        this.f116207b = str2;
        this.f116209d = resource.uri();
    }

    @Override // org.w3c.dom.ls.LSInput
    public String getBaseURI() {
        return this.f116209d.toString();
    }

    @Override // org.w3c.dom.ls.LSInput
    public InputStream getByteStream() {
        return this.f116208c;
    }

    @Override // org.w3c.dom.ls.LSInput
    public boolean getCertifiedText() {
        return false;
    }

    @Override // org.w3c.dom.ls.LSInput
    public Reader getCharacterStream() {
        return new InputStreamReader(this.f116208c);
    }

    @Override // org.w3c.dom.ls.LSInput
    public String getEncoding() {
        return null;
    }

    @Override // org.w3c.dom.ls.LSInput
    public String getPublicId() {
        return this.f116206a;
    }

    @Override // org.w3c.dom.ls.LSInput
    public String getStringData() {
        return null;
    }

    @Override // org.w3c.dom.ls.LSInput
    public String getSystemId() {
        return this.f116207b;
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setBaseURI(String str) {
        throw new UnsupportedOperationException("Can't set base URI on resolver LSInput");
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setByteStream(InputStream inputStream) {
        throw new UnsupportedOperationException("Can't set byte stream on resolver LSInput");
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setCertifiedText(boolean z) {
        throw new UnsupportedOperationException("Can't set certified text on resolver LSInput");
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setCharacterStream(Reader reader) {
        throw new UnsupportedOperationException("Can't set character stream on resolver LSInput");
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setEncoding(String str) {
        throw new UnsupportedOperationException("Can't set encoding on resolver LSInput");
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setPublicId(String str) {
        throw new UnsupportedOperationException("Can't set public ID on resolver LSInput");
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setStringData(String str) {
        throw new UnsupportedOperationException("Can't set string data on resolver LSInput");
    }

    @Override // org.w3c.dom.ls.LSInput
    public void setSystemId(String str) {
        throw new UnsupportedOperationException("Can't set system ID on resolver LSInput");
    }

    public ResolverLSInput(ResolvedResource resolvedResource, String str) {
        this.resolvedURI = resolvedResource.getLocalURI();
        this.f116208c = resolvedResource.getInputStream();
        this.f116207b = resolvedResource.getResolvedURI().toString();
        this.f116206a = str;
        this.f116209d = resolvedResource.getResolvedURI();
    }
}

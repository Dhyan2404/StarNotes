package net.p110sf.saxon.lib;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;

/* loaded from: classes11.dex */
public interface RelativeURIResolver extends URIResolver {
    Source dereference(String str) throws TransformerException;

    default Source dereference(String str, String str2) throws TransformerException {
        return dereference(str);
    }

    String makeAbsolute(String str, String str2) throws TransformerException;

    @Override // javax.xml.transform.URIResolver
    Source resolve(String str, String str2) throws TransformerException;

    default Source resolve(String str, String str2, String str3) throws TransformerException {
        return resolve(str, str2);
    }
}

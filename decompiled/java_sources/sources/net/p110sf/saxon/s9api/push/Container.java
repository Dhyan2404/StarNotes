package net.p110sf.saxon.s9api.push;

import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SaxonApiException;

/* loaded from: classes11.dex */
public interface Container {
    void close() throws SaxonApiException;

    Container comment(CharSequence charSequence) throws SaxonApiException;

    Element element(String str) throws SaxonApiException;

    Element element(QName qName) throws SaxonApiException;

    Container processingInstruction(String str, CharSequence charSequence) throws SaxonApiException;

    void setDefaultNamespace(String str);

    Container text(CharSequence charSequence) throws SaxonApiException;
}

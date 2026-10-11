package net.p110sf.saxon.s9api.push;

import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SaxonApiException;

/* loaded from: classes11.dex */
public interface Element extends Container {
    Element attribute(String str, String str2) throws SaxonApiException;

    Element attribute(QName qName, String str) throws SaxonApiException;

    @Override // net.p110sf.saxon.s9api.push.Container
    Element comment(CharSequence charSequence) throws SaxonApiException;

    Element namespace(String str, String str2) throws SaxonApiException;

    @Override // net.p110sf.saxon.s9api.push.Container
    Element processingInstruction(String str, CharSequence charSequence) throws SaxonApiException;

    @Override // net.p110sf.saxon.s9api.push.Container
    Element text(CharSequence charSequence) throws SaxonApiException;
}

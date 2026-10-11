package net.p110sf.saxon.s9api.push;

import net.p110sf.saxon.s9api.SaxonApiException;

/* loaded from: classes11.dex */
public interface Document extends Container {
    @Override // net.p110sf.saxon.s9api.push.Container
    Document comment(CharSequence charSequence) throws SaxonApiException;

    @Override // net.p110sf.saxon.s9api.push.Container
    Document processingInstruction(String str, CharSequence charSequence) throws SaxonApiException;

    @Override // net.p110sf.saxon.s9api.push.Container
    Document text(CharSequence charSequence) throws SaxonApiException;
}

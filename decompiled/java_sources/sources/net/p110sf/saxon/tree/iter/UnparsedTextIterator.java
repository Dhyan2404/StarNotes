package net.p110sf.saxon.tree.iter;

import java.io.LineNumberReader;
import java.net.URI;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class UnparsedTextIterator extends TextLinesIterator {

    /* renamed from: h */
    public XPathContext f102469h;

    /* renamed from: i */
    public String f102470i;

    public UnparsedTextIterator(URI uri, XPathContext xPathContext, String str, Location location) throws XPathException {
        this.f102470i = null;
        this.reader = new LineNumberReader(xPathContext.getController().getUnparsedTextURIResolver().resolve(uri, str, xPathContext.getConfiguration()));
        this.uri = uri;
        this.f102469h = xPathContext;
        this.checker = xPathContext.getConfiguration().getValidCharacterChecker();
        this.f102470i = str;
        this.location = location;
    }

    public UnparsedTextIterator(LineNumberReader lineNumberReader, URI uri, XPathContext xPathContext, String str) throws XPathException {
        this.f102470i = null;
        this.reader = lineNumberReader;
        this.uri = uri;
        this.f102469h = xPathContext;
        this.checker = xPathContext.getConfiguration().getValidCharacterChecker();
        this.f102470i = str;
        this.location = null;
    }
}

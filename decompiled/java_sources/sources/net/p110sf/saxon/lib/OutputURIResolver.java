package net.p110sf.saxon.lib;

import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;

/* loaded from: classes11.dex */
public interface OutputURIResolver {
    void close(Result result) throws TransformerException;

    OutputURIResolver newInstance();

    Result resolve(String str, String str2) throws TransformerException;
}

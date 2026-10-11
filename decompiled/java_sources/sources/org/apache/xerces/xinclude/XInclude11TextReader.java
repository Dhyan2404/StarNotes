package org.apache.xerces.xinclude;

import java.io.IOException;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XInclude11TextReader extends XIncludeTextReader {
    public XInclude11TextReader(XMLInputSource xMLInputSource, XIncludeHandler xIncludeHandler, int i) throws IOException {
        super(xMLInputSource, xIncludeHandler, i);
    }

    @Override // org.apache.xerces.xinclude.XIncludeTextReader
    public boolean isValid(int i) {
        return XML11Char.isXML11Valid(i);
    }
}

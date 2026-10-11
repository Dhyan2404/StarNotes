package org.apache.xml.serialize;

import java.io.IOException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public interface DOMSerializer {
    void serialize(Document document) throws IOException;

    void serialize(DocumentFragment documentFragment) throws IOException;

    void serialize(Element element) throws IOException;
}

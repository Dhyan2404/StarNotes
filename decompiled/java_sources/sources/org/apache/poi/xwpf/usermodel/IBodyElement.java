package org.apache.poi.xwpf.usermodel;

import java.io.Closeable;
import org.apache.poi.ooxml.POIXMLDocumentPart;

/* loaded from: classes13.dex */
public interface IBodyElement extends Closeable {
    IBody getBody();

    BodyElementType getElementType();

    POIXMLDocumentPart getPart();

    BodyType getPartType();

    void readDocument();
}

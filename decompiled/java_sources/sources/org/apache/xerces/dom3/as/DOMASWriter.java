package org.apache.xerces.dom3.as;

import java.io.OutputStream;
import org.w3c.dom.ls.LSSerializer;

/* loaded from: classes13.dex */
public interface DOMASWriter extends LSSerializer {
    void writeASModel(OutputStream outputStream, ASModel aSModel) throws Exception;
}

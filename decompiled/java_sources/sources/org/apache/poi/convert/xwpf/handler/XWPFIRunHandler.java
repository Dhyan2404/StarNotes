package org.apache.poi.convert.xwpf.handler;

import java.io.Closeable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.convert.htmlgen.RunHandler;

/* loaded from: classes12.dex */
abstract class XWPFIRunHandler implements RunHandler, Closeable {
    Logger LOG = LogManager.getLogger(getClass());
    XWPFContext context;

    public XWPFIRunHandler(XWPFContext xWPFContext) {
        this.context = xWPFContext;
    }

    public void close() {
    }
}

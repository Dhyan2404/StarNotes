package org.apache.poi.convert.xwpf.handler;

import java.io.Closeable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.convert.htmlgen.ConverterHandler;
import org.apache.poi.p114wp.usermodel.IPicture;
import org.apache.poi.style.TextRunStyles;
import org.apache.poi.xwpf.usermodel.IRunPart;
import org.apache.poi.xwpf.usermodel.XWPFBreak;
import org.apache.poi.xwpf.usermodel.XWPFCTText;
import org.apache.poi.xwpf.usermodel.XWPFEmpty;
import org.apache.poi.xwpf.usermodel.XWPFFldChar;
import org.apache.poi.xwpf.usermodel.XWPFFtnEdnRef;
import org.apache.poi.xwpf.usermodel.XWPFRuby;
import org.jsoup.nodes.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public abstract class XWPFRunPartHandler implements ConverterHandler, Closeable {
    Logger LOG = LogManager.getLogger(getClass());
    XWPFContext context;

    public XWPFRunPartHandler(XWPFContext xWPFContext) {
        this.context = xWPFContext;
    }

    public static XWPFRunPartHandler handleRunPart(XWPFContext xWPFContext, IRunPart iRunPart, Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
        XWPFRunPartHandler xWPFUnknownPartHandler;
        if (iRunPart instanceof XWPFFldChar) {
            xWPFUnknownPartHandler = new XWPFFldCharHandler(xWPFContext, (XWPFFldChar) iRunPart);
        } else if (iRunPart instanceof XWPFCTText) {
            xWPFUnknownPartHandler = new XWPFCTTextHandler(xWPFContext, (XWPFCTText) iRunPart);
        } else if (iRunPart instanceof XWPFRuby) {
            xWPFUnknownPartHandler = new XWPFRubyHandler(xWPFContext, (XWPFRuby) iRunPart);
        } else if (iRunPart instanceof XWPFBreak) {
            xWPFUnknownPartHandler = new XWPFBreakHandler(xWPFContext, (XWPFBreak) iRunPart);
        } else if (iRunPart instanceof XWPFEmpty) {
            xWPFUnknownPartHandler = new XWPFEmptyHandler(xWPFContext, (XWPFEmpty) iRunPart);
        } else if (iRunPart instanceof XWPFFtnEdnRef) {
            xWPFUnknownPartHandler = new XWPFFtnEdnRefHandler(xWPFContext, (XWPFFtnEdnRef) iRunPart);
        } else if (iRunPart instanceof IPicture) {
            xWPFUnknownPartHandler = new XWPFPictureHandler(xWPFContext, (IPicture) iRunPart);
        } else {
            xWPFUnknownPartHandler = new XWPFUnknownPartHandler(xWPFContext, iRunPart);
        }
        xWPFUnknownPartHandler.handleRunPart(element, textRunStyles, i, i2, i3);
        xWPFUnknownPartHandler.close();
        return xWPFUnknownPartHandler;
    }

    public void close() {
    }

    public abstract void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3);
}

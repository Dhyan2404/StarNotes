package org.apache.poi.convert.xwpf.handler;

import java.util.Iterator;
import org.apache.poi.xwpf.usermodel.IBodyElement;
import org.apache.poi.xwpf.usermodel.IRunElement;
import org.apache.poi.xwpf.usermodel.XWPFBookmarkRun;
import org.apache.poi.xwpf.usermodel.XWPFCommentRun;
import org.apache.poi.xwpf.usermodel.XWPFMarkupRun;
import org.apache.poi.xwpf.usermodel.XWPFMathRun;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFSDT;
import org.jsoup.nodes.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class XWPFMarkupHandler extends XWPFIRunHandler {
    private XWPFMarkupRun markupRun;

    public XWPFMarkupHandler(XWPFContext xWPFContext, XWPFMarkupRun xWPFMarkupRun) {
        super(xWPFContext);
        this.markupRun = xWPFMarkupRun;
    }

    private void handleBookmark(XWPFBookmarkRun xWPFBookmarkRun, Element element) {
        this.context.getDocumentFacade().createBookmark(xWPFBookmarkRun.getName()).appendTo(element);
    }

    private void handleComment(XWPFCommentRun xWPFCommentRun, Element element, int i) {
        Element appendTo = this.context.getDocumentFacade().createHyperlink("#comment_" + this.markupRun.getID()).attr("id", "back_comment_" + this.markupRun.getID()).appendTo(element);
        int size = xWPFCommentRun.getIruns().size();
        int i2 = i + 1;
        Iterator<IRunElement> it2 = xWPFCommentRun.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            IRunElement next = it2.next();
            if (next instanceof XWPFSDT) {
                XWPFBodyElementHandler.handleBodyElement(this.context, (IBodyElement) next, appendTo, i3, size, i2);
            } else if (next instanceof XWPFRun) {
                XWPFRunHandler.handleRun(this.context, (XWPFRun) next, appendTo, i3, size, i2);
            } else if (next instanceof XWPFMarkupRun) {
                this.LOG.atError().log("Nested XWPFMarkupRun:{}/{}, depth:{}", Integer.valueOf(i3), Integer.valueOf(size), Integer.valueOf(i2));
                handleRun(this.context, (XWPFMarkupRun) next, appendTo, i3, size, i2);
            } else if (next instanceof XWPFMathRun) {
                XWPFMathHandler.handleRun(this.context, (XWPFMathRun) next, appendTo, i3, size, i2);
            } else {
                this.LOG.atError().log("Unknown comment run :{}, {}/{}, depth:{}", next.getClass().getName(), Integer.valueOf(i3), Integer.valueOf(size), Integer.valueOf(i2));
            }
            i3++;
        }
    }

    public static XWPFMarkupHandler handleRun(XWPFContext xWPFContext, XWPFMarkupRun xWPFMarkupRun, Element element, int i, int i2, int i3) {
        XWPFMarkupHandler xWPFMarkupHandler = new XWPFMarkupHandler(xWPFContext, xWPFMarkupRun);
        xWPFMarkupHandler.handleRun(element, i, i2, i3);
        return xWPFMarkupHandler;
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFIRunHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // org.apache.poi.convert.htmlgen.RunHandler
    public void handleRun(Element element, int i, int i2, int i3) {
        XWPFMarkupRun xWPFMarkupRun = this.markupRun;
        if (xWPFMarkupRun instanceof XWPFCommentRun) {
            handleComment((XWPFCommentRun) xWPFMarkupRun, element, i3);
        } else {
            handleBookmark((XWPFBookmarkRun) xWPFMarkupRun, element);
        }
    }
}

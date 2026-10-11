package org.apache.poi.convert.xwpf.handler;

import org.apache.poi.common.MathUtils;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.latex.Latex;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.LatexPicture;
import org.apache.poi.xwpf.usermodel.XWPFMathRun;
import org.jsoup.nodes.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class XWPFMathHandler extends XWPFIRunHandler {
    private XWPFMathRun mathRun;

    public XWPFMathHandler(XWPFContext xWPFContext, XWPFMathRun xWPFMathRun) {
        super(xWPFContext);
        this.mathRun = xWPFMathRun;
    }

    private void appendLatexElement(Element element, String str, int i) {
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        Element createSpan = documentFacade.createSpan();
        documentFacade.addStyleClass(createSpan, "latex", "font-size:" + i + "px;");
        createSpan.appendTo(element).text(str);
    }

    public static void handleRun(XWPFContext xWPFContext, XWPFMathRun xWPFMathRun, Element element, int i, int i2, int i3) {
        new XWPFMathHandler(xWPFContext, xWPFMathRun).handleRun(element, i, i2, i3);
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFIRunHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // org.apache.poi.convert.htmlgen.RunHandler
    public void handleRun(Element element, int i, int i2, int i3) {
        String mathString = this.mathRun.getMathString();
        int pointsToPixel = Units.pointsToPixel(MathUtils.getSizeFromOMML(mathString));
        String omml2LaTeX = MathUtils.omml2LaTeX(mathString);
        if (WordToHtmlUtils.isNull(this.context.getPicturesManager())) {
            appendLatexElement(element, omml2LaTeX, pointsToPixel);
        } else {
            new XWPFPictureHandler(this.context, new LatexPicture(new Latex(omml2LaTeX, pointsToPixel))).handleRunPart(element, null, i, i2, i3);
        }
    }
}

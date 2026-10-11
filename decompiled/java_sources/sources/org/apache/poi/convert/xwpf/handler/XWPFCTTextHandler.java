package org.apache.poi.convert.xwpf.handler;

import com.sunia.HTREnginev2.o6o;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.style.LineHeight;
import org.apache.poi.style.TextRunStyles;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.XWPFCTText;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFCTTextHandler extends XWPFRunPartHandler {
    private XWPFCTText ctText;
    private static final Pattern PATTERN_HYPERLINK_LOCAL = Pattern.compile("^[ \\t\\r\\n]*HYPERLINK \\\\l ([^ ]*)[ \\t\\r\\n]*$");
    private static final Pattern PATTERN_HYPERLINK_EXTERNAL = Pattern.compile("^[ \\t\\r\\n]*HYPERLINK \"(.*)\".*$");
    private static final Pattern PATTERN_PAGEREF = Pattern.compile("^[ \\t\\r\\n]*PAGEREF ([^ ]*)[ \\t\\r\\n\\\\h]*$");
    private static final Pattern PATTERN_REF = Pattern.compile("^[ \\t\\r\\n]*REF ([^ ]*)[ \\t\\r\\n]*\\\\h ([^ ]*)[ \\t\\r\\n]*$");
    private static final Pattern PATTERN_TOC = Pattern.compile("^[ \\t\\r\\n]*TOC \\\\o \"(.*)\".*$");
    private static final Pattern PATTERN_RUBY = Pattern.compile("^[ \\t\\r\\n]*EQ \\\\\\* jc0 \\\\\\* \"Font:(.*)\" \\\\\\* hps20 \\\\o \\\\ad\\(\\\\s \\\\up \\d*\\((.*)\\),([^ ]*).*\\)$");

    public XWPFCTTextHandler(XWPFContext xWPFContext, XWPFCTText xWPFCTText) {
        super(xWPFContext);
        this.ctText = xWPFCTText;
    }

    private String getLineHeightStyle(TextRunStyles textRunStyles, FontGroup fontGroup) {
        LineHeight lineHeight = textRunStyles.getLineHeight();
        if (WordToHtmlUtils.isNull(lineHeight)) {
            lineHeight = this.context.getLineHeight();
        }
        return lineHeight.toStyle(this.context.getFontHeight(textRunStyles.getFontFamily(fontGroup), textRunStyles.getFontSize(fontGroup).getNumberValue()));
    }

    private boolean handleInstrHyperlink(Matcher matcher, Element element, boolean z) {
        Element createHyperlink;
        if (!matcher.matches()) {
            return false;
        }
        if (!StringUtils.isEquals(element.tagName(), "a")) {
            if (z) {
                createHyperlink = this.context.getDocumentFacade().createHyperlink("#" + matcher.group(1));
            } else {
                createHyperlink = this.context.getDocumentFacade().createHyperlink(matcher.group(1));
            }
            element.appendChild(createHyperlink);
            this.context.fldContainer = createHyperlink;
        }
        return true;
    }

    private boolean handleInstrRuby(Matcher matcher, Element element) {
        if (!matcher.matches()) {
            return false;
        }
        Element createRuby = this.context.getDocumentFacade().createRuby();
        element.appendChild(createRuby);
        createRuby.attr(o6o.f79398h, matcher.group(1));
        createRuby.text(matcher.group(3));
        Element createRt = this.context.getDocumentFacade().createRt();
        createRuby.appendChild(createRt);
        createRt.text(matcher.group(2));
        return true;
    }

    private void handleInstrText(Element element) {
        String text = this.ctText.getText();
        if (StringUtils.isNullOrEmpty(text)) {
            return;
        }
        Matcher matcher = PATTERN_HYPERLINK_EXTERNAL.matcher(text);
        if (handleInstrHyperlink(matcher, element, false)) {
            return;
        }
        matcher.usePattern(PATTERN_HYPERLINK_LOCAL);
        if (handleInstrHyperlink(matcher, element, true)) {
            return;
        }
        matcher.usePattern(PATTERN_PAGEREF);
        if (handleInstrHyperlink(matcher, element, true)) {
            return;
        }
        matcher.usePattern(PATTERN_REF);
        if (handleInstrHyperlink(matcher, element, true)) {
            return;
        }
        matcher.usePattern(PATTERN_RUBY);
        if (handleInstrRuby(matcher, element)) {
            return;
        }
        matcher.usePattern(PATTERN_TOC);
        if (matcher.matches()) {
            return;
        }
        this.LOG.atError().log("Unknown instr text {}", text);
    }

    private void handleTextImpl(Element element, TextRunStyles textRunStyles) {
        textRunStyles.increaseTextChildSize();
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        Element createSpan = documentFacade.createSpan();
        element.appendChild(createSpan);
        String text = this.ctText.getText();
        createSpan.appendChild(documentFacade.createText(text));
        FontGroup fontGroupFirst = FontGroup.getFontGroupFirst(text);
        documentFacade.addStyleClass(createSpan, "s", textRunStyles.toStyle(fontGroupFirst));
        documentFacade.addStyleClass(createSpan, "l", getLineHeightStyle(textRunStyles, fontGroupFirst));
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.ctText);
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
        if (this.ctText.isDelete()) {
            this.LOG.atWarn().log("deleted content {}", this.ctText.getText());
        } else if (this.ctText.isInstr() && this.context.isInFldChar()) {
            handleInstrText(element);
        } else {
            handleTextImpl(element, textRunStyles);
        }
    }
}

package org.apache.poi.convert.xwpf.handler;

import java.util.Iterator;
import java.util.List;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.style.TextRunStyles;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.XWPFFtnEdnRef;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFFtnEdnRefHandler extends XWPFRunPartHandler {
    private XWPFFtnEdnRef ftnEdnRef;

    public XWPFFtnEdnRefHandler(XWPFContext xWPFContext, XWPFFtnEdnRef xWPFFtnEdnRef) {
        super(xWPFContext);
        this.ftnEdnRef = xWPFFtnEdnRef;
    }

    private Element createNoteUnorderedList(String str) {
        return this.context.getDocumentFacade().createUnorderedList().appendTo(this.context.noteContainer).attr("id", str);
    }

    private Element getNoteUnorderedList() {
        String str = this.ftnEdnRef.isFootnote() ? Constants.ID_FOOT_NOTE : Constants.ID_END_NOTE;
        if (!WordToHtmlUtils.isNull(this.context.noteContainer)) {
            Element elementById = this.context.noteContainer.getElementById(str);
            return WordToHtmlUtils.isNull(elementById) ? createNoteUnorderedList(str) : elementById;
        }
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        this.context.noteContainer = documentFacade.createBlock();
        this.context.noteContainer.attr("id", "note");
        documentFacade.addStyleClass(this.context.noteContainer, "note", "font-size:smaller;display:none;");
        return createNoteUnorderedList(str);
    }

    private void handleNoteImpl(String str, int i) {
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        Element appendTo = documentFacade.createListItem().appendTo(getNoteUnorderedList());
        Element createHyperlink = documentFacade.createHyperlink("#back_" + str);
        createHyperlink.attr("id", str);
        createHyperlink.text(String.valueOf(i));
        appendTo.appendChild(createHyperlink);
        appendTo.appendChild(documentFacade.createText(" "));
        this.ftnEdnRef.readDocument();
        List<String> textList = this.ftnEdnRef.getTextList();
        if (textList.isEmpty()) {
            return;
        }
        if (textList.size() == 1) {
            documentFacade.createSpan().appendTo(appendTo).text(textList.get(0));
            return;
        }
        Element createUnorderedList = documentFacade.createUnorderedList();
        appendTo.appendChild(createUnorderedList);
        Iterator<String> it2 = textList.iterator();
        while (it2.hasNext()) {
            documentFacade.createSpan().appendTo(documentFacade.createListItem().appendTo(createUnorderedList)).text(it2.next());
        }
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.ftnEdnRef);
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        String id = this.ftnEdnRef.getId();
        int referenceId = this.ftnEdnRef.getReferenceId() + 1;
        documentFacade.addStyleClass(documentFacade.createHyperlink("#" + id).attr("id", "back_" + id).appendTo(element).text(String.valueOf(referenceId)), "note_index", "vertical-align:super;font-size:smaller;");
        handleNoteImpl(id, referenceId);
    }
}

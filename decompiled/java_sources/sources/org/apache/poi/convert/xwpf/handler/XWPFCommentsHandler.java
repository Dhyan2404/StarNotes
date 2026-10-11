package org.apache.poi.convert.xwpf.handler;

import androidx.core.app.NotificationCompat;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.convert.htmlgen.ConverterHandler;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.CollectionUtils;
import org.apache.poi.xwpf.usermodel.XWPFComment;
import org.jsoup.nodes.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class XWPFCommentsHandler implements ConverterHandler {
    private XWPFContext context;

    public XWPFCommentsHandler(XWPFContext xWPFContext) {
        this.context = xWPFContext;
    }

    public void handComments() {
        XWPFComment[] comments = this.context.document.getComments();
        if (CollectionUtils.isNullOrEmpty(comments)) {
            return;
        }
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        Element attr = documentFacade.createBlock().attr("id", "comment");
        this.context.commentContainer = attr;
        documentFacade.addStyleClass(attr, "note", "font-size:smaller;display:none;");
        Element appendTo = documentFacade.createUnorderedList().appendTo(attr);
        int i = 1;
        for (XWPFComment xWPFComment : comments) {
            Element appendTo2 = documentFacade.createListItem().appendTo(appendTo);
            Element createHyperlink = documentFacade.createHyperlink("#back_comment_" + xWPFComment.getId());
            WordToHtmlUtils.addClass(createHyperlink, Constants.ID_FOOT_NOTE);
            createHyperlink.attr("id", "comment_" + xWPFComment.getId()).text(String.valueOf(i));
            appendTo2.appendChild(createHyperlink);
            appendTo2.appendChild(documentFacade.createText(" "));
            xWPFComment.readDocument();
            documentFacade.createSpan().attr(NotificationCompat.CarExtender.f4973i, xWPFComment.getAuthor()).appendTo(appendTo2).text(xWPFComment.getText());
            CloseUtils.close(xWPFComment);
            i++;
        }
    }
}

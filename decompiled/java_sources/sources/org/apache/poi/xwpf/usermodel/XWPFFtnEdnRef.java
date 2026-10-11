package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.util.StringUtils;

/* loaded from: classes13.dex */
public class XWPFFtnEdnRef implements IRunPart {
    private XWPFAbstractFootnoteEndnote footEndNote;
    private int referenceId;

    public XWPFFtnEdnRef(XWPFAbstractFootnoteEndnote xWPFAbstractFootnoteEndnote, int i) {
        this.footEndNote = xWPFAbstractFootnoteEndnote;
        this.referenceId = i;
    }

    private String getIBodyElementText(IBodyElement iBodyElement) {
        return iBodyElement instanceof XWPFParagraph ? ((XWPFParagraph) iBodyElement).getText() : iBodyElement instanceof XWPFTable ? ((XWPFTable) iBodyElement).getText() : iBodyElement instanceof XWPFSDT ? ((XWPFSDT) iBodyElement).getContent().getText() : "";
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public String getId() {
        if (this.footEndNote instanceof XWPFFootnote) {
            return "footnote_" + this.footEndNote.getId();
        }
        return "endnote_" + this.footEndNote.getId();
    }

    public int getReferenceId() {
        return this.referenceId;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        StringBuilder sb = new StringBuilder();
        for (String str : getTextList()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public List<String> getTextList() {
        ArrayList arrayList = new ArrayList();
        List<IBodyElement> bodyElements = this.footEndNote.getBodyElements();
        if (bodyElements != null && !bodyElements.isEmpty()) {
            Iterator<IBodyElement> it2 = bodyElements.iterator();
            while (it2.hasNext()) {
                String iBodyElementText = getIBodyElementText(it2.next());
                if (!StringUtils.isNullOrEmpty(iBodyElementText)) {
                    arrayList.add(iBodyElementText);
                }
            }
        }
        return arrayList;
    }

    public boolean isFootnote() {
        return this.footEndNote instanceof XWPFFootnote;
    }

    public void readDocument() {
        this.footEndNote.readDocument();
    }
}

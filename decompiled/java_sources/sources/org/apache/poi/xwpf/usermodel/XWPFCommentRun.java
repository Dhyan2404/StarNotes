package org.apache.poi.xwpf.usermodel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.common.XmlBeanUtils;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;

/* loaded from: classes13.dex */
public class XWPFCommentRun extends XWPFMarkupRun implements Iterable<IRunElement> {
    private List<IRunElement> iruns;

    public XWPFCommentRun(CTMarkupRange cTMarkupRange) {
        super(cTMarkupRange);
        this.iruns = new ArrayList();
        XmlBeanUtils.freeMemory(cTMarkupRange);
    }

    public List<IRunElement> getIruns() {
        return this.iruns;
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFMarkupRun
    public String getText() {
        StringBuilder sb = new StringBuilder(64);
        for (IRunElement iRunElement : this.iruns) {
            if (iRunElement instanceof XWPFSDT) {
                sb.append(((XWPFSDT) iRunElement).getContent().getText());
            } else {
                sb.append(iRunElement);
            }
        }
        return sb.toString();
    }

    @Override // java.lang.Iterable
    public Iterator<IRunElement> iterator() {
        return this.iruns.iterator();
    }

    public String toString() {
        return "XWPFCommentRun{id='" + getID() + Chars.QUOTE + "text='" + getText() + Chars.QUOTE + '}';
    }
}

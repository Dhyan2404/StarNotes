package org.apache.poi.xwpf.usermodel;

import org.apache.logging.log4j.util.Chars;
import org.apache.poi.common.XmlBeanUtils;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBookmark;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;

/* loaded from: classes13.dex */
public class XWPFBookmarkRun extends XWPFMarkupRun {
    private String name;

    public XWPFBookmarkRun(CTMarkupRange cTMarkupRange) {
        super(cTMarkupRange);
        if (cTMarkupRange instanceof CTBookmark) {
            this.name = ((CTBookmark) cTMarkupRange).getName();
        }
        XmlBeanUtils.freeMemory(cTMarkupRange);
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return "XWPFBookmarkRun{id='" + getID() + Chars.QUOTE + "name='" + this.name + Chars.QUOTE + '}';
    }
}

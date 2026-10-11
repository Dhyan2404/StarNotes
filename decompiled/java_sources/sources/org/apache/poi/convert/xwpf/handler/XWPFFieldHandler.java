package org.apache.poi.convert.xwpf.handler;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.IRunBody;
import org.apache.poi.xwpf.usermodel.XWPFFieldRun;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;

/* loaded from: classes12.dex */
public class XWPFFieldHandler extends XWPFIRunHandler implements Closeable {
    private XWPFFieldRun fieldRun;
    private List<XWPFRun> runList;

    public XWPFFieldHandler(XWPFContext xWPFContext, XWPFFieldRun xWPFFieldRun) {
        super(xWPFContext);
        ArrayList arrayList = new ArrayList();
        this.runList = arrayList;
        this.fieldRun = xWPFFieldRun;
        arrayList.add(xWPFFieldRun);
        IRunBody parent = xWPFFieldRun.getParent();
        for (CTR ctr : xWPFFieldRun.getCTField().getRArray()) {
            this.runList.add(new XWPFRun(ctr, parent));
        }
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFIRunHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.fieldRun);
        XmlBeanUtils.freeMemory(this.fieldRun.getCTField());
    }

    @Override // org.apache.poi.convert.htmlgen.RunHandler
    public void handleRun(Element element, int i, int i2, int i3) {
        int i4 = i3 + 1;
        int size = this.runList.size();
        Iterator<XWPFRun> it2 = this.runList.iterator();
        int i5 = 0;
        while (it2.hasNext()) {
            XWPFRunHandler.handleRun(this.context, it2.next(), element, i5, size, i4);
            i5++;
        }
    }
}

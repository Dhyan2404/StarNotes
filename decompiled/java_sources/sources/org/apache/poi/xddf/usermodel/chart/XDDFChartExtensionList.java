package org.apache.poi.xddf.usermodel.chart;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;

/* loaded from: classes13.dex */
public class XDDFChartExtensionList {
    private CTExtensionList list;

    public XDDFChartExtensionList() {
        this(CTExtensionList.Factory.newInstance());
    }

    @Internal
    public CTExtensionList getXmlObject() {
        return this.list;
    }

    @Internal
    public XDDFChartExtensionList(CTExtensionList cTExtensionList) {
        this.list = cTExtensionList;
    }
}

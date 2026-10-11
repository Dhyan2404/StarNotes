package org.apache.poi.convert.htmlgen;

import java.io.Closeable;
import java.util.Map;
import org.apache.poi.style.UnitValue;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
public interface TableCellHandler<T> extends ConverterHandler, Closeable {
    void handleTableCell(Map<Integer, Element> map, UnitValue[] unitValueArr, Element element, int i, int i2, int i3);
}

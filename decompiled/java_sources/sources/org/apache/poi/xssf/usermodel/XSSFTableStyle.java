package org.apache.poi.xssf.usermodel;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.DifferentialStyleProvider;
import org.apache.poi.ss.usermodel.TableStyle;
import org.apache.poi.ss.usermodel.TableStyleType;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDxf;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDxfs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableStyle;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableStyleElement;

/* loaded from: classes13.dex */
public class XSSFTableStyle implements TableStyle {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFTableStyle.class);
    private final Map<TableStyleType, DifferentialStyleProvider> elementMap = new EnumMap(TableStyleType.class);
    private final int index;
    private final String name;

    public XSSFTableStyle(int i, CTDxfs cTDxfs, CTTableStyle cTTableStyle, IndexedColorMap indexedColorMap) {
        XSSFDxfStyleProvider xSSFDxfStyleProvider;
        this.name = cTTableStyle.getName();
        this.index = i;
        ArrayList arrayList = new ArrayList();
        XmlCursor newCursor = cTDxfs.newCursor();
        try {
            newCursor.selectPath("declare namespace x='http://schemas.openxmlformats.org/spreadsheetml/2006/main' .//x:dxf | .//dxf");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                String nodeName = object.getDomNode().getParentNode().getNodeName();
                if (nodeName.equals("mc:Fallback") || nodeName.equals("x:dxfs") || nodeName.contentEquals("dxfs")) {
                    try {
                        CTDxf parse = object instanceof CTDxf ? (CTDxf) object : CTDxf.Factory.parse(object.newXMLStreamReader(), new XmlOptions().setDocumentType(CTDxf.type));
                        if (parse != null) {
                            arrayList.add(parse);
                        }
                    } catch (XmlException e) {
                        LOG.atWarn().withThrowable(e).log("Error parsing XSSFTableStyle");
                    }
                }
            }
            newCursor.close();
            for (CTTableStyleElement cTTableStyleElement : cTTableStyle.getTableStyleElementList()) {
                TableStyleType valueOf = TableStyleType.valueOf(cTTableStyleElement.getType().toString());
                if (cTTableStyleElement.isSetDxfId()) {
                    CTDxf cTDxf = (CTDxf) arrayList.get((int) cTTableStyleElement.getDxfId());
                    int size = cTTableStyleElement.isSetSize() ? (int) cTTableStyleElement.getSize() : 0;
                    if (cTDxf != null) {
                        xSSFDxfStyleProvider = new XSSFDxfStyleProvider(cTDxf, size, indexedColorMap);
                        this.elementMap.put(valueOf, xSSFDxfStyleProvider);
                    }
                }
                xSSFDxfStyleProvider = null;
                this.elementMap.put(valueOf, xSSFDxfStyleProvider);
            }
        } finally {
        }
    }

    @Override // org.apache.poi.ss.usermodel.TableStyle
    public int getIndex() {
        return this.index;
    }

    @Override // org.apache.poi.ss.usermodel.TableStyle
    public String getName() {
        return this.name;
    }

    @Override // org.apache.poi.ss.usermodel.TableStyle
    public DifferentialStyleProvider getStyle(TableStyleType tableStyleType) {
        return this.elementMap.get(tableStyleType);
    }

    @Override // org.apache.poi.ss.usermodel.TableStyle
    public boolean isBuiltin() {
        return false;
    }
}

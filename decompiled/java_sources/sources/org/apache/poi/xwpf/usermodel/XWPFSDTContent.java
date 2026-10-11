package org.apache.poi.xwpf.usermodel;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;

/* loaded from: classes13.dex */
public class XWPFSDTContent implements ISDTContent, Closeable {
    private CTSdtContentBlock block;
    private final List<ISDTContents> bodyElements = new ArrayList();
    private boolean initialized;
    private IRunBody parent;
    private IBody part;
    private CTSdtContentRow sdtContentRow;
    private CTSdtContentRun sdtRun;

    public XWPFSDTContent(CTSdtContentRun cTSdtContentRun, IBody iBody, IRunBody iRunBody) {
        this.sdtRun = cTSdtContentRun;
        this.part = iBody;
        this.parent = iRunBody;
    }

    private void appendParagraph(XWPFParagraph xWPFParagraph, StringBuilder sb) {
        Iterator<XWPFRun> it2 = xWPFParagraph.getRuns().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
        }
    }

    private void appendTable(XWPFTable xWPFTable, StringBuilder sb) {
        Iterator<XWPFTableRow> it2 = xWPFTable.getRows().iterator();
        while (it2.hasNext()) {
            List<ICell> tableICells = it2.next().getTableICells();
            for (int i = 0; i < tableICells.size(); i++) {
                ICell iCell = tableICells.get(i);
                if (iCell instanceof XWPFTableCell) {
                    sb.append(((XWPFTableCell) iCell).getTextRecursively());
                } else if (iCell instanceof XWPFSDTCell) {
                    sb.append(((XWPFSDTCell) iCell).getContent().getText());
                }
                if (i < tableICells.size() - 1) {
                    sb.append("\t");
                }
            }
            sb.append('\n');
        }
    }

    private void readCTSdtContentBlock(CTSdtContentBlock cTSdtContentBlock) {
        if (cTSdtContentBlock == null) {
            return;
        }
        XmlCursor newCursor = cTSdtContentBlock.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTP) {
                    this.bodyElements.add(new XWPFParagraph((CTP) object, this.part));
                } else if (object instanceof CTTbl) {
                    this.bodyElements.add(new XWPFTable((CTTbl) object, this.part));
                } else if (object instanceof CTSdtBlock) {
                    this.bodyElements.add(new XWPFSDT((CTSdtBlock) object, this.part));
                } else if (object instanceof CTR) {
                    this.bodyElements.add(new XWPFRun((CTR) object, this.parent));
                }
            }
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void readCTSdtContentRow(CTSdtContentRow cTSdtContentRow) {
        if (cTSdtContentRow == null) {
            return;
        }
        XmlCursor newCursor = cTSdtContentRow.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTSdtRow) {
                    this.bodyElements.add(new XWPFSDT((CTSdtRow) object, this.part));
                } else {
                    boolean z = object instanceof CTRow;
                }
            }
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void readCTSdtContentRun(CTSdtContentRun cTSdtContentRun) {
        if (cTSdtContentRun == null) {
            return;
        }
        XmlCursor newCursor = cTSdtContentRun.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTR) {
                    this.bodyElements.add(new XWPFRun((CTR) object, this.parent));
                } else if (object instanceof CTSdtRun) {
                    this.bodyElements.add(new XWPFSDT((CTSdtRun) object, this.part));
                }
            }
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.sdtRun);
        XmlBeanUtils.freeMemory(this.block);
        XmlBeanUtils.freeMemory(this.sdtContentRow);
        this.sdtRun = null;
        this.block = null;
        this.sdtContentRow = null;
        for (ISDTContents iSDTContents : this.bodyElements) {
            if (iSDTContents instanceof Closeable) {
                XmlBeanUtils.close((Closeable) iSDTContents);
            }
        }
        this.bodyElements.clear();
    }

    public List<ISDTContents> getBodyElements() {
        return Collections.unmodifiableList(this.bodyElements);
    }

    @Override // org.apache.poi.xwpf.usermodel.ISDTContent
    public String getText() {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i = 0; i < this.bodyElements.size(); i++) {
            ISDTContents iSDTContents = this.bodyElements.get(i);
            if (iSDTContents instanceof XWPFParagraph) {
                appendParagraph((XWPFParagraph) iSDTContents, sb);
            } else if (iSDTContents instanceof XWPFTable) {
                appendTable((XWPFTable) iSDTContents, sb);
            } else if (iSDTContents instanceof XWPFSDT) {
                sb.append(((XWPFSDT) iSDTContents).getContent().getText());
            } else {
                if (iSDTContents instanceof XWPFRun) {
                    sb.append(iSDTContents);
                    z = false;
                }
                if (z && i < this.bodyElements.size() - 1) {
                    sb.append("\n");
                }
            }
            z = true;
            if (z) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public void readDocument() {
        if (!XmlBeanUtils.parseDocument() || this.initialized) {
            return;
        }
        this.initialized = true;
        readCTSdtContentRun(this.sdtRun);
        readCTSdtContentBlock(this.block);
        readCTSdtContentRow(this.sdtContentRow);
    }

    @Override // org.apache.poi.xwpf.usermodel.ISDTContent
    public String toString() {
        return getText();
    }

    public XWPFSDTContent(CTSdtContentBlock cTSdtContentBlock, IBody iBody, IRunBody iRunBody) {
        this.block = cTSdtContentBlock;
        this.part = iBody;
        this.parent = iRunBody;
    }

    public XWPFSDTContent(CTSdtContentRow cTSdtContentRow, IBody iBody, IRunBody iRunBody) {
        this.sdtContentRow = cTSdtContentRow;
        this.part = iBody;
        this.parent = iRunBody;
    }
}

package org.apache.poi.hssf.usermodel;

import androidx.core.net.MailTo;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.hssf.record.HyperlinkRecord;
import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public class HSSFHyperlink implements Hyperlink, Duplicatable {
    protected final HyperlinkType link_type;
    protected final HyperlinkRecord record;

    /* renamed from: org.apache.poi.hssf.usermodel.HSSFHyperlink$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195391 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType;

        static {
            int[] iArr = new int[HyperlinkType.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType = iArr;
            try {
                iArr[HyperlinkType.URL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.FILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Internal(since = "3.15 beta 3")
    public HSSFHyperlink(HyperlinkType hyperlinkType) {
        this.link_type = hyperlinkType;
        HyperlinkRecord hyperlinkRecord = new HyperlinkRecord();
        this.record = hyperlinkRecord;
        int i = C195391.$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[hyperlinkType.ordinal()];
        if (i == 1 || i == 2) {
            hyperlinkRecord.newUrlLink();
            return;
        }
        if (i == 3) {
            hyperlinkRecord.newFileLink();
        } else {
            if (i == 4) {
                hyperlinkRecord.newDocumentLink();
                return;
            }
            throw new IllegalArgumentException("Invalid type: " + hyperlinkType);
        }
    }

    private static HyperlinkType getType(HyperlinkRecord hyperlinkRecord) {
        if (hyperlinkRecord.isFileLink()) {
            return HyperlinkType.FILE;
        }
        if (hyperlinkRecord.isDocumentLink()) {
            return HyperlinkType.DOCUMENT;
        }
        if (hyperlinkRecord.getAddress() != null && hyperlinkRecord.getAddress().startsWith(MailTo.MAILTO_SCHEME)) {
            return HyperlinkType.EMAIL;
        }
        return HyperlinkType.URL;
    }

    @Override // org.apache.poi.common.Duplicatable
    public Duplicatable copy() {
        return new HSSFHyperlink(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HSSFHyperlink) && this.record == ((HSSFHyperlink) obj).record;
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public String getAddress() {
        return this.record.getAddress();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getFirstColumn() {
        return this.record.getFirstColumn();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getFirstRow() {
        return this.record.getFirstRow();
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public String getLabel() {
        return this.record.getLabel();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getLastColumn() {
        return this.record.getLastColumn();
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public int getLastRow() {
        return this.record.getLastRow();
    }

    public String getShortFilename() {
        return this.record.getShortFilename();
    }

    public String getTextMark() {
        return this.record.getTextMark();
    }

    public int hashCode() {
        return this.record.hashCode();
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public void setAddress(String str) {
        this.record.setAddress(str);
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setFirstColumn(int i) {
        this.record.setFirstColumn((short) i);
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setFirstRow(int i) {
        this.record.setFirstRow(i);
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public void setLabel(String str) {
        this.record.setLabel(str);
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setLastColumn(int i) {
        this.record.setLastColumn((short) i);
    }

    @Override // org.apache.poi.ss.usermodel.Hyperlink
    public void setLastRow(int i) {
        this.record.setLastRow(i);
    }

    public void setShortFilename(String str) {
        this.record.setShortFilename(str);
    }

    public void setTextMark(String str) {
        this.record.setTextMark(str);
    }

    public HSSFHyperlink(HyperlinkRecord hyperlinkRecord) {
        this.record = hyperlinkRecord;
        this.link_type = getType(hyperlinkRecord);
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public HyperlinkType getType() {
        return this.link_type;
    }

    public HSSFHyperlink(Hyperlink hyperlink) {
        if (hyperlink instanceof HSSFHyperlink) {
            HyperlinkRecord copy = ((HSSFHyperlink) hyperlink).record.copy();
            this.record = copy;
            this.link_type = getType(copy);
        } else {
            this.link_type = hyperlink.getType();
            this.record = new HyperlinkRecord();
            setFirstRow(hyperlink.getFirstRow());
            setFirstColumn(hyperlink.getFirstColumn());
            setLastRow(hyperlink.getLastRow());
            setLastColumn(hyperlink.getLastColumn());
        }
    }
}

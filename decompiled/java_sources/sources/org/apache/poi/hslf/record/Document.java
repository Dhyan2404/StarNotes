package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;

/* loaded from: classes12.dex */
public final class Document extends PositionDependentRecordContainer {
    private static long _type = 1000;
    private byte[] _header;
    private DocumentAtom documentAtom;
    private Environment environment;
    private ExObjList exObjList;
    private PPDrawingGroup ppDrawing;
    private SlideListWithText[] slwts;

    public Document(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        Record[] findChildRecords = Record.findChildRecords(bArr, i3, i2 - 8);
        this._children = findChildRecords;
        int i4 = 0;
        Record record = findChildRecords[0];
        if (!(record instanceof DocumentAtom)) {
            throw new IllegalStateException("The first child of a Document must be a DocumentAtom");
        }
        this.documentAtom = (DocumentAtom) record;
        int i5 = 1;
        int i6 = 1;
        int i7 = 0;
        while (true) {
            Record[] recordArr = this._children;
            if (i6 >= recordArr.length) {
                break;
            }
            Record record2 = recordArr[i6];
            i7 = record2 instanceof SlideListWithText ? i7 + 1 : i7;
            if (record2 instanceof Environment) {
                this.environment = (Environment) record2;
            }
            if (record2 instanceof PPDrawingGroup) {
                this.ppDrawing = (PPDrawingGroup) record2;
            }
            if (record2 instanceof ExObjList) {
                this.exObjList = (ExObjList) record2;
            }
            i6++;
        }
        if (i7 == 0) {
            Record.LOG.atWarn().log("No SlideListWithText's found - there should normally be at least one!");
        }
        if (i7 > 3) {
            Record.LOG.atWarn().log("Found {} SlideListWithTexts - normally there should only be three!", Unbox.box(i7));
        }
        this.slwts = new SlideListWithText[i7];
        while (true) {
            Record[] recordArr2 = this._children;
            if (i5 >= recordArr2.length) {
                return;
            }
            Record record3 = recordArr2[i5];
            if (record3 instanceof SlideListWithText) {
                this.slwts[i4] = (SlideListWithText) record3;
                i4++;
            }
            i5++;
        }
    }

    public void addSlideListWithText(SlideListWithText slideListWithText) {
        Record record = this._children[r0.length - 1];
        if (record.getRecordType() == RecordTypes.RoundTripCustomTableStyles12.typeID) {
            record = this._children[r0.length - 2];
        }
        if (record.getRecordType() != RecordTypes.EndDocument.typeID) {
            throw new IllegalStateException("The last child record of a Document should be EndDocument, but it was " + record);
        }
        addChildBefore(slideListWithText, record);
        SlideListWithText[] slideListWithTextArr = this.slwts;
        int length = slideListWithTextArr.length + 1;
        SlideListWithText[] slideListWithTextArr2 = new SlideListWithText[length];
        System.arraycopy(slideListWithTextArr, 0, slideListWithTextArr2, 0, slideListWithTextArr.length);
        slideListWithTextArr2[length - 1] = slideListWithText;
        this.slwts = slideListWithTextArr2;
    }

    public DocumentAtom getDocumentAtom() {
        return this.documentAtom;
    }

    public Environment getEnvironment() {
        return this.environment;
    }

    public ExObjList getExObjList(boolean z) {
        if (this.exObjList == null && z) {
            ExObjList exObjList = new ExObjList();
            this.exObjList = exObjList;
            addChildAfter(exObjList, getDocumentAtom());
        }
        return this.exObjList;
    }

    public SlideListWithText getMasterSlideListWithText() {
        for (SlideListWithText slideListWithText : this.slwts) {
            if (slideListWithText.getInstance() == 1) {
                return slideListWithText;
            }
        }
        return null;
    }

    public SlideListWithText getNotesSlideListWithText() {
        for (SlideListWithText slideListWithText : this.slwts) {
            if (slideListWithText.getInstance() == 2) {
                return slideListWithText;
            }
        }
        return null;
    }

    public PPDrawingGroup getPPDrawingGroup() {
        return this.ppDrawing;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public SlideListWithText[] getSlideListWithTexts() {
        return this.slwts;
    }

    public SlideListWithText getSlideSlideListWithText() {
        for (SlideListWithText slideListWithText : this.slwts) {
            if (slideListWithText.getInstance() == 0) {
                return slideListWithText;
            }
        }
        return null;
    }

    public void removeSlideListWithText(SlideListWithText slideListWithText) {
        ArrayList arrayList = new ArrayList();
        for (SlideListWithText slideListWithText2 : this.slwts) {
            if (slideListWithText2 != slideListWithText) {
                arrayList.add(slideListWithText2);
            } else {
                removeChild(slideListWithText);
            }
        }
        this.slwts = (SlideListWithText[]) arrayList.toArray(new SlideListWithText[0]);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }
}

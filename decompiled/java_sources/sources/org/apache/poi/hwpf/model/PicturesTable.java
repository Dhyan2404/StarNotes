package org.apache.poi.hwpf.model;

import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherBlipRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class PicturesTable {
    static final int BLOCK_TYPE_OFFSET = 14;
    private static final Logger LOG = LogManager.getLogger((Class<?>) PicturesTable.class);
    static final int MM_MODE_TYPE_OFFSET = 6;
    static final int TYPE_HORIZONTAL_LINE = 14;
    static final int TYPE_IMAGE = 8;
    static final int TYPE_IMAGE_PASTED_FROM_CLIPBOARD = 10;
    static final int TYPE_IMAGE_PASTED_FROM_CLIPBOARD_WORD2000 = 2;
    static final int TYPE_IMAGE_WORD2000 = 0;
    private final byte[] _dataStream;

    @Deprecated
    private OfficeArtContent _dgg;
    private final HWPFDocument _document;

    @Deprecated
    private FSPATable _fspa;
    private final byte[] _mainStream;

    @Deprecated
    public PicturesTable(HWPFDocument hWPFDocument, byte[] bArr, byte[] bArr2, FSPATable fSPATable, OfficeArtContent officeArtContent) {
        this._document = hWPFDocument;
        this._dataStream = bArr;
        this._mainStream = bArr2;
        this._fspa = fSPATable;
        this._dgg = officeArtContent;
    }

    private static short getBlockType(byte[] bArr, int i) {
        return LittleEndian.getShort(bArr, i + 14);
    }

    private static short getMmMode(byte[] bArr, int i) {
        return LittleEndian.getShort(bArr, i + 6);
    }

    private boolean isBlockContainsHorizontalLine(int i) {
        return getBlockType(this._dataStream, i) == 14 && getMmMode(this._dataStream, i) == 100;
    }

    private boolean isBlockContainsImage(int i) {
        return isPictureRecognized(getBlockType(this._dataStream, i), getMmMode(this._dataStream, i));
    }

    private boolean isPictureRecognized(short s, short s2) {
        return s == 8 || s == 10 || (s == 0 && s2 == 100) || (s == 2 && s2 == 100);
    }

    private void searchForPictures(List<EscherRecord> list, List<Picture> list2) {
        for (EscherRecord escherRecord : list) {
            if (escherRecord instanceof EscherBSERecord) {
                EscherBSERecord escherBSERecord = (EscherBSERecord) escherRecord;
                EscherBlipRecord blipRecord = escherBSERecord.getBlipRecord();
                if (blipRecord != null) {
                    list2.add(new Picture(blipRecord));
                } else if (escherBSERecord.getOffset() > 0) {
                    try {
                        EscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
                        EscherRecord createRecord = defaultEscherRecordFactory.createRecord(this._mainStream, escherBSERecord.getOffset());
                        if (createRecord instanceof EscherBlipRecord) {
                            createRecord.fillFields(this._mainStream, escherBSERecord.getOffset(), defaultEscherRecordFactory);
                            list2.add(new Picture((EscherBlipRecord) createRecord));
                        }
                    } catch (Exception e) {
                        LOG.atWarn().withThrowable(e).log("Unable to load picture from BLIP record at offset #{}", Unbox.box(escherBSERecord.getOffset()));
                    }
                }
            }
        }
    }

    public Picture extractPicture(CharacterRun characterRun, boolean z) {
        if (hasPicture(characterRun)) {
            return new Picture(characterRun.getPicOffset(), this._dataStream, z);
        }
        return null;
    }

    public List<Picture> getAllPictures() {
        Picture extractPicture;
        ArrayList arrayList = new ArrayList();
        Range overallRange = this._document.getOverallRange();
        for (int i = 0; i < overallRange.numCharacterRuns(); i++) {
            CharacterRun characterRun = overallRange.getCharacterRun(i);
            if (characterRun != null && (extractPicture = extractPicture(characterRun, false)) != null) {
                arrayList.add(extractPicture);
            }
        }
        EscherContainerRecord bStoreContainer = this._dgg.getBStoreContainer();
        if (bStoreContainer != null) {
            searchForPictures(bStoreContainer.getChildRecords(), arrayList);
        }
        return arrayList;
    }

    public boolean hasEscherPicture(CharacterRun characterRun) {
        return (!characterRun.isSpecialCharacter() || characterRun.isObj() || characterRun.isOle2() || characterRun.isData() || !characterRun.text().startsWith("\b")) ? false : true;
    }

    public boolean hasHorizontalLine(CharacterRun characterRun) {
        if (characterRun.isSpecialCharacter() && "\u0001".equals(characterRun.text())) {
            return isBlockContainsHorizontalLine(characterRun.getPicOffset());
        }
        return false;
    }

    public boolean hasPicture(CharacterRun characterRun) {
        if (characterRun == null || !characterRun.isSpecialCharacter() || characterRun.isObj() || characterRun.isOle2() || characterRun.isData() || (!"\u0001".equals(characterRun.text()) && !"\u0001\u0015".equals(characterRun.text()))) {
            return false;
        }
        return isBlockContainsImage(characterRun.getPicOffset());
    }

    public PicturesTable(HWPFDocument hWPFDocument, byte[] bArr, byte[] bArr2) {
        this._document = hWPFDocument;
        this._dataStream = bArr;
        this._mainStream = bArr2;
    }
}

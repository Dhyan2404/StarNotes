package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.TxMasterStyleAtom;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianOutputStream;

/* loaded from: classes12.dex */
public final class TxMasterStyleAtom extends RecordAtom {
    public static final int MAX_INDENT = 5;
    private byte[] _data;
    private final byte[] _header;
    private List<TextPropCollection> charStyles;
    private List<TextPropCollection> paragraphStyles;
    private static final Logger LOG = LogManager.getLogger((Class<?>) TxMasterStyleAtom.class);
    private static final long _type = RecordTypes.TxMasterStyleAtom.typeID;

    public TxMasterStyleAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._data = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
        try {
            init();
        } catch (Exception e) {
            LOG.atWarn().withThrowable(e).log("Exception when reading available styles");
        }
    }

    public List<TextPropCollection> getCharacterStyles() {
        return this.charStyles;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("paragraphStyles", new Supplier() { // from class: com.sunia.HTREnginev2.qon
            @Override // java.util.function.Supplier
            public final Object get() {
                return TxMasterStyleAtom.this.getParagraphStyles();
            }
        }, "charStyles", new Supplier() { // from class: com.sunia.HTREnginev2.ron
            @Override // java.util.function.Supplier
            public final Object get() {
                return TxMasterStyleAtom.this.getCharacterStyles();
            }
        });
    }

    public List<TextPropCollection> getParagraphStyles() {
        return this.paragraphStyles;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public int getTextType() {
        return LittleEndian.getShort(this._header, 0) >> 4;
    }

    public void init() {
        int textType = getTextType();
        short s = LittleEndian.getShort(this._data, 0);
        this.paragraphStyles = new ArrayList(s);
        this.charStyles = new ArrayList(s);
        int i = 2;
        for (short s2 = 0; s2 < s; s2 = (short) (s2 + 1)) {
            TextPropCollection textPropCollection = new TextPropCollection(0, TextPropCollection.TextPropType.paragraph);
            if (textType >= TextShape.TextPlaceholder.CENTER_BODY.nativeId) {
                textPropCollection.setIndentLevel(LittleEndian.getShort(this._data, i));
                i += 2;
            } else {
                textPropCollection.setIndentLevel((short) -1);
            }
            int i2 = LittleEndian.getInt(this._data, i);
            int i3 = i + 4;
            int buildTextPropList = i3 + textPropCollection.buildTextPropList(i2, this._data, i3);
            this.paragraphStyles.add(textPropCollection);
            int i4 = LittleEndian.getInt(this._data, buildTextPropList);
            int i5 = buildTextPropList + 4;
            TextPropCollection textPropCollection2 = new TextPropCollection(0, TextPropCollection.TextPropType.character);
            i = i5 + textPropCollection2.buildTextPropList(i4, this._data, i5);
            this.charStyles.add(textPropCollection2);
        }
    }

    public void updateStyles() {
        int textType = getTextType();
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            LittleEndianOutputStream littleEndianOutputStream = new LittleEndianOutputStream(unsynchronizedByteArrayOutputStream);
            int size = this.paragraphStyles.size();
            littleEndianOutputStream.writeShort(size);
            for (int i = 0; i < size; i++) {
                TextPropCollection copy = this.paragraphStyles.get(i).copy();
                TextPropCollection copy2 = this.charStyles.get(i).copy();
                if (textType >= TextShape.TextPlaceholder.CENTER_BODY.nativeId) {
                    littleEndianOutputStream.writeShort(copy.getIndentLevel());
                }
                copy.setIndentLevel((short) -1);
                copy.writeOut(unsynchronizedByteArrayOutputStream, true);
                copy2.writeOut(unsynchronizedByteArrayOutputStream, true);
            }
            this._data = unsynchronizedByteArrayOutputStream.toByteArray();
            littleEndianOutputStream.close();
            LittleEndian.putInt(this._header, 4, this._data.length);
        } catch (IOException e) {
            throw new HSLFException("error in updating master style properties", e);
        }
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }
}

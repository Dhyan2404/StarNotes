package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.StyleTextPropAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class StyleTextPropAtom extends RecordAtom {
    public static final long _type = RecordTypes.StyleTextPropAtom.typeID;
    private final byte[] _header;
    private List<TextPropCollection> charStyles;
    private boolean initialised;
    private List<TextPropCollection> paragraphStyles;
    private byte[] rawContents;
    private byte[] reserved;

    public StyleTextPropAtom(byte[] bArr, int i, int i2) {
        if (i2 < 18) {
            if (bArr.length - i < 18) {
                throw new HSLFException("Not enough data to form a StyleTextPropAtom (min size 18 bytes long) - found " + (bArr.length - i));
            }
            i2 = 18;
        }
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.rawContents = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
        this.reserved = new byte[0];
        this.paragraphStyles = new ArrayList();
        this.charStyles = new ArrayList();
    }

    private int checkTextLength(int i, int i2, int i3) {
        int i4 = i3 + 1;
        if (i + i2 <= i4) {
            return i;
        }
        Record.LOG.atWarn().log("Style length of {} at {} larger than stated size of {}, truncating", Unbox.box(i), Unbox.box(i2), Unbox.box(i3));
        return i4 - i2;
    }

    private int getCharactersCovered(List<TextPropCollection> list) {
        return list.stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.j3n
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((TextPropCollection) obj).getCharactersCovered();
            }
        }).sum();
    }

    private void updateRawContents() throws IOException {
        if (this.initialised) {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                Iterator<TextPropCollection> it2 = this.paragraphStyles.iterator();
                while (it2.hasNext()) {
                    it2.next().writeOut(unsynchronizedByteArrayOutputStream);
                }
                Iterator<TextPropCollection> it3 = this.charStyles.iterator();
                while (it3.hasNext()) {
                    it3.next().writeOut(unsynchronizedByteArrayOutputStream);
                }
                this.rawContents = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        unsynchronizedByteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        LittleEndian.putInt(this._header, 4, this.rawContents.length + this.reserved.length);
    }

    public TextPropCollection addCharacterTextPropCollection(int i) {
        TextPropCollection textPropCollection = new TextPropCollection(i, TextPropCollection.TextPropType.character);
        this.charStyles.add(textPropCollection);
        return textPropCollection;
    }

    public TextPropCollection addParagraphTextPropCollection(int i) {
        TextPropCollection textPropCollection = new TextPropCollection(i, TextPropCollection.TextPropType.paragraph);
        this.paragraphStyles.add(textPropCollection);
        return textPropCollection;
    }

    public void clearStyles() {
        this.paragraphStyles.clear();
        this.charStyles.clear();
        this.reserved = new byte[0];
        this.initialised = true;
    }

    public List<TextPropCollection> getCharacterStyles() {
        return this.charStyles;
    }

    public int getCharacterTextLengthCovered() {
        return getCharactersCovered(this.charStyles);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        if (this.initialised) {
            return GenericRecordUtil.getGenericProperties("paragraphStyles", new Supplier() { // from class: com.sunia.HTREnginev2.k3n
                @Override // java.util.function.Supplier
                public final Object get() {
                    return StyleTextPropAtom.this.getParagraphStyles();
                }
            }, "characterStyles", new Supplier() { // from class: com.sunia.HTREnginev2.l3n
                @Override // java.util.function.Supplier
                public final Object get() {
                    return StyleTextPropAtom.this.getCharacterStyles();
                }
            });
        }
        return null;
    }

    public List<TextPropCollection> getParagraphStyles() {
        return this.paragraphStyles;
    }

    public int getParagraphTextLengthCovered() {
        return getCharactersCovered(this.paragraphStyles);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public void setCharacterStyles(List<TextPropCollection> list) {
        this.charStyles = list;
    }

    public void setParagraphStyles(List<TextPropCollection> list) {
        this.paragraphStyles = list;
    }

    public void setParentTextSize(int i) {
        byte[] bArr;
        byte[] bArr2;
        int i2;
        int i3;
        if (this.initialised) {
            return;
        }
        this.paragraphStyles.clear();
        this.charStyles.clear();
        int i4 = 0;
        int i5 = i;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            bArr = this.rawContents;
            if (i6 >= bArr.length || i7 >= i5) {
                break;
            }
            int checkTextLength = checkTextLength(LittleEndian.getInt(bArr, i6), i7, i);
            i7 += checkTextLength;
            int i8 = i6 + 4;
            short s = LittleEndian.getShort(this.rawContents, i8);
            int i9 = i8 + 2;
            int i10 = LittleEndian.getInt(this.rawContents, i9);
            int i11 = i9 + 4;
            TextPropCollection textPropCollection = new TextPropCollection(checkTextLength, TextPropCollection.TextPropType.paragraph);
            textPropCollection.setIndentLevel(s);
            i6 = i11 + textPropCollection.buildTextPropList(i10, this.rawContents, i11);
            this.paragraphStyles.add(textPropCollection);
            if (i6 < this.rawContents.length && i7 == i) {
                i5++;
            }
        }
        if (bArr.length > 0 && i7 != (i3 = i + 1)) {
            Record.LOG.atWarn().log("Problem reading paragraph style runs: textHandled = {}, text.size+1 = {}", Unbox.box(i7), Unbox.box(i3));
        }
        int i12 = i;
        while (true) {
            bArr2 = this.rawContents;
            if (i6 >= bArr2.length || i4 >= i12) {
                break;
            }
            int checkTextLength2 = checkTextLength(LittleEndian.getInt(bArr2, i6), i4, i);
            i4 += checkTextLength2;
            int i13 = i6 + 4;
            int i14 = LittleEndian.getInt(this.rawContents, i13);
            int i15 = i13 + 4;
            TextPropCollection textPropCollection2 = new TextPropCollection(checkTextLength2, TextPropCollection.TextPropType.character);
            i6 = i15 + textPropCollection2.buildTextPropList(i14, this.rawContents, i15);
            this.charStyles.add(textPropCollection2);
            if (i6 < this.rawContents.length && i4 == i) {
                i12++;
            }
        }
        if (bArr2.length > 0 && i4 != (i2 = i + 1)) {
            Record.LOG.atWarn().log("Problem reading character style runs: textHandled = {}, text.size+1 = {}", Unbox.box(i4), Unbox.box(i2));
        }
        byte[] bArr3 = this.rawContents;
        if (i6 < bArr3.length) {
            this.reserved = IOUtils.safelyClone(bArr3, i6, bArr3.length - i6, bArr3.length);
        }
        this.initialised = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("StyleTextPropAtom:\n");
        if (this.initialised) {
            sb.append("Paragraph properties\n");
            Iterator<TextPropCollection> it2 = getParagraphStyles().iterator();
            while (it2.hasNext()) {
                sb.append(it2.next());
            }
            sb.append("Character properties\n");
            Iterator<TextPropCollection> it3 = getCharacterStyles().iterator();
            while (it3.hasNext()) {
                sb.append(it3.next());
            }
            sb.append("Reserved bytes\n");
            sb.append(HexDump.dump(this.reserved, 0L, 0));
        } else {
            sb.append("Uninitialised, dumping Raw Style Data\n");
        }
        sb.append("  original byte stream \n");
        byte[] safelyAllocate = IOUtils.safelyAllocate(this.rawContents.length + this.reserved.length, RecordAtom.getMaxRecordLength());
        byte[] bArr = this.rawContents;
        System.arraycopy(bArr, 0, safelyAllocate, 0, bArr.length);
        byte[] bArr2 = this.reserved;
        System.arraycopy(bArr2, 0, safelyAllocate, this.rawContents.length, bArr2.length);
        sb.append(HexDump.dump(safelyAllocate, 0L, 0));
        return sb.toString();
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        updateRawContents();
        outputStream.write(this._header);
        outputStream.write(this.rawContents);
        outputStream.write(this.reserved);
    }

    public void addCharacterTextPropCollection(TextPropCollection textPropCollection) {
        this.charStyles.add(textPropCollection);
    }

    public void addParagraphTextPropCollection(TextPropCollection textPropCollection) {
        this.paragraphStyles.add(textPropCollection);
    }

    public StyleTextPropAtom(int i) {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this.rawContents = new byte[0];
        this.reserved = new byte[0];
        LittleEndian.putInt(bArr, 2, (short) _type);
        LittleEndian.putInt(bArr, 4, 10);
        this.paragraphStyles = new ArrayList();
        this.charStyles = new ArrayList();
        addParagraphTextPropCollection(i);
        addCharacterTextPropCollection(i);
        this.initialised = true;
        try {
            updateRawContents();
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }
}

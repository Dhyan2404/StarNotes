package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.InteractiveInfoAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class InteractiveInfoAtom extends RecordAtom {
    public static final byte ACTION_CUSTOMSHOW = 7;
    public static final byte ACTION_HYPERLINK = 4;
    public static final byte ACTION_JUMP = 3;
    public static final byte ACTION_MACRO = 1;
    public static final byte ACTION_MEDIA = 6;
    public static final byte ACTION_NONE = 0;
    public static final byte ACTION_OLE = 5;
    public static final byte ACTION_RUNPROGRAM = 2;
    private static final int[] FLAGS_MASKS = {1, 2, 4, 8};
    private static final String[] FLAGS_NAMES = {"ANIMATED", "STOP_SOUND", "CUSTOM_SHOW_RETURN", "VISITED"};
    public static final byte JUMP_ENDSHOW = 6;
    public static final byte JUMP_FIRSTSLIDE = 3;
    public static final byte JUMP_LASTSLIDE = 4;
    public static final byte JUMP_LASTSLIDEVIEWED = 5;
    public static final byte JUMP_NEXTSLIDE = 1;
    public static final byte JUMP_NONE = 0;
    public static final byte JUMP_PREVIOUSSLIDE = 2;
    public static final byte LINK_CustomShow = 6;
    public static final byte LINK_FirstSlide = 2;
    public static final byte LINK_LastSlide = 3;
    public static final byte LINK_NULL = -1;
    public static final byte LINK_NextSlide = 0;
    public static final byte LINK_OtherFile = 10;
    public static final byte LINK_OtherPresentation = 9;
    public static final byte LINK_PreviousSlide = 1;
    public static final byte LINK_SlideNumber = 7;
    public static final byte LINK_Url = 8;
    private final byte[] _data;
    private final byte[] _header;

    /* loaded from: classes12.dex */
    public enum Action {
        NONE,
        MACRO,
        RUN_PROGRAM,
        JUMP,
        HYPERLINK,
        OLE,
        MEDIA,
        CUSTOM_SHOW
    }

    /* loaded from: classes12.dex */
    public enum Jump {
        NONE,
        NEXT_SLIDE,
        PREVIOUS_SLIDE,
        FIRST_SLIDE,
        LAST_SLIDE,
        LAST_SLIDE_VIEWED,
        END_SHOW
    }

    /* loaded from: classes12.dex */
    public enum Link {
        NEXT_SLIDE,
        PREVIOUS_SLIDE,
        FIRST_SLIDE,
        LAST_SLIDE,
        CUSTOM_SHOW,
        SLIDE_NUMBER,
        URL,
        OTHER_PRESENTATION,
        OTHER_FILE,
        NULL
    }

    public InteractiveInfoAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        byte[] bArr2 = new byte[16];
        this._data = bArr2;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(bArr, 4, bArr2.length);
    }

    public byte getAction() {
        return this._data[8];
    }

    public byte getFlags() {
        return this._data[11];
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("hyperlinkID", new Supplier() { // from class: com.sunia.HTREnginev2.poi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(InteractiveInfoAtom.this.getHyperlinkID());
            }
        }, "soundRef", new Supplier() { // from class: com.sunia.HTREnginev2.qoi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(InteractiveInfoAtom.this.getSoundRef());
            }
        }, "action", GenericRecordUtil.safeEnum(Action.values(), new Supplier() { // from class: com.sunia.HTREnginev2.roi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(InteractiveInfoAtom.this.getAction());
            }
        }), "jump", GenericRecordUtil.safeEnum(Jump.values(), new Supplier() { // from class: com.sunia.HTREnginev2.soi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(InteractiveInfoAtom.this.getJump());
            }
        }), "hyperlinkType", GenericRecordUtil.safeEnum(Link.values(), new Supplier() { // from class: com.sunia.HTREnginev2.toi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(InteractiveInfoAtom.this.getHyperlinkType());
            }
        }, Link.NULL), "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.uoi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(InteractiveInfoAtom.this.getFlags());
            }
        }, FLAGS_MASKS, FLAGS_NAMES));
    }

    public int getHyperlinkID() {
        return LittleEndian.getInt(this._data, 4);
    }

    public byte getHyperlinkType() {
        return this._data[12];
    }

    public byte getJump() {
        return this._data[10];
    }

    public byte getOleVerb() {
        return this._data[9];
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.InteractiveInfoAtom.typeID;
    }

    public int getSoundRef() {
        return LittleEndian.getInt(this._data, 0);
    }

    public void setAction(byte b) {
        this._data[8] = b;
    }

    public void setFlags(byte b) {
        this._data[11] = b;
    }

    public void setHyperlinkID(int i) {
        LittleEndian.putInt(this._data, 4, i);
    }

    public void setHyperlinkType(byte b) {
        this._data[12] = b;
    }

    public void setJump(byte b) {
        this._data[10] = b;
    }

    public void setOleVerb(byte b) {
        this._data[9] = b;
    }

    public void setSoundRef(int i) {
        LittleEndian.putInt(this._data, 0, i);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public InteractiveInfoAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        byte[] safelyClone = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
        this._data = safelyClone;
        if (safelyClone.length >= 16) {
            return;
        }
        throw new IllegalArgumentException("The length of the data for a InteractiveInfoAtom must be at least 16 bytes, but was only " + safelyClone.length);
    }
}

package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.SSSlideInfoAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class SSSlideInfoAtom extends RecordAtom {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int AUTO_ADVANCE_BIT = 1024;
    public static final int CURSOR_VISIBLE_BIT = 4096;
    public static final int HIDDEN_BIT = 4;
    public static final int LOOP_SOUND_BIT = 64;
    public static final int MANUAL_ADVANCE_BIT = 1;
    public static final int SOUND_BIT = 16;
    public static final int STOP_SOUND_BIT = 256;
    private short _effectDirection;
    private short _effectTransitionFlags;
    private short _effectType;
    private final byte[] _header;
    private int _slideTime;
    private int _soundIdRef;
    private short _speed;
    private final byte[] _unused;
    private static final int[] EFFECT_MASKS = {1, 4, 16, 64, 256, 1024, 4096};
    private static final String[] EFFECT_NAMES = {"MANUAL_ADVANCE", "HIDDEN", "SOUND", "LOOP_SOUND", "STOP_SOUND", "AUTO_ADVANCE", "CURSOR_VISIBLE"};
    private static final long _type = RecordTypes.SSSlideInfoAtom.typeID;

    public SSSlideInfoAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putShort(bArr, 0, (short) 0);
        LittleEndian.putShort(bArr, 2, (short) _type);
        LittleEndian.putShort(bArr, 4, (short) 16);
        LittleEndian.putShort(bArr, 6, (short) 0);
        this._unused = new byte[3];
    }

    public short getEffectDirection() {
        return this._effectDirection;
    }

    public boolean getEffectTransitionFlagByBit(int i) {
        return (this._effectTransitionFlags & i) != 0;
    }

    public short getEffectTransitionFlags() {
        return this._effectTransitionFlags;
    }

    public short getEffectType() {
        return this._effectType;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("effectTransitionFlags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.yzl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SSSlideInfoAtom.this.getEffectTransitionFlags());
            }
        }, EFFECT_MASKS, EFFECT_NAMES), "slideTime", new Supplier() { // from class: com.sunia.HTREnginev2.zzl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SSSlideInfoAtom.this.getSlideTime());
            }
        }, "soundIdRef", new Supplier() { // from class: com.sunia.HTREnginev2.a0m
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SSSlideInfoAtom.this.getSoundIdRef());
            }
        }, "effectDirection", new Supplier() { // from class: com.sunia.HTREnginev2.b0m
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SSSlideInfoAtom.this.getEffectDirection());
            }
        }, "effectType", new Supplier() { // from class: com.sunia.HTREnginev2.c0m
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SSSlideInfoAtom.this.getEffectType());
            }
        }, "speed", new Supplier() { // from class: com.sunia.HTREnginev2.d0m
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SSSlideInfoAtom.this.getSpeed());
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public int getSlideTime() {
        return this._slideTime;
    }

    public int getSoundIdRef() {
        return this._soundIdRef;
    }

    public short getSpeed() {
        return this._speed;
    }

    public void setEffectDirection(short s) {
        this._effectDirection = s;
    }

    public void setEffectTransitionFlagByBit(int i, boolean z) {
        if (z) {
            this._effectTransitionFlags = (short) (i | this._effectTransitionFlags);
        } else {
            this._effectTransitionFlags = (short) ((i ^ 65535) & this._effectTransitionFlags);
        }
    }

    public void setEffectTransitionFlags(short s) {
        this._effectTransitionFlags = s;
    }

    public void setEffectType(short s) {
        this._effectType = s;
    }

    public void setSlideTime(int i) {
        this._slideTime = i;
    }

    public void setSoundIdRef(int i) {
        this._soundIdRef = i;
    }

    public void setSpeed(short s) {
        this._speed = s;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        Record.writeLittleEndian(this._slideTime, outputStream);
        Record.writeLittleEndian(this._soundIdRef, outputStream);
        byte[] bArr = new byte[1];
        LittleEndian.putUByte(bArr, 0, this._effectDirection);
        outputStream.write(bArr);
        LittleEndian.putUByte(bArr, 0, this._effectType);
        outputStream.write(bArr);
        Record.writeLittleEndian(this._effectTransitionFlags, outputStream);
        LittleEndian.putUByte(bArr, 0, this._speed);
        outputStream.write(bArr);
        outputStream.write(this._unused);
    }

    public SSSlideInfoAtom(byte[] bArr, int i, int i2) {
        i2 = i2 != 24 ? 24 : i2;
        int i3 = i + i2;
        if (bArr.length >= i3) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i + 8);
            this._header = copyOfRange;
            int length = i + copyOfRange.length;
            if (LittleEndian.getShort(copyOfRange, 0) != 0) {
                Record.LOG.atDebug().log("Invalid data for SSSlideInfoAtom at offset 0: " + ((int) LittleEndian.getShort(copyOfRange, 0)));
            }
            if (LittleEndian.getShort(copyOfRange, 2) != RecordTypes.SSSlideInfoAtom.typeID) {
                Record.LOG.atDebug().log("Invalid data for SSSlideInfoAtom at offset 2: " + ((int) LittleEndian.getShort(copyOfRange, 2)));
            }
            if (LittleEndian.getShort(copyOfRange, 4) != 16) {
                Record.LOG.atDebug().log("Invalid data for SSSlideInfoAtom at offset 4: " + ((int) LittleEndian.getShort(copyOfRange, 4)));
            }
            if (LittleEndian.getShort(copyOfRange, 6) == 0) {
                Record.LOG.atDebug().log("Invalid data for SSSlideInfoAtom at offset 6: " + ((int) LittleEndian.getShort(copyOfRange, 6)));
            }
            int i4 = LittleEndian.getInt(bArr, length);
            this._slideTime = i4;
            if (i4 < 0 || i4 > 86399000) {
                Record.LOG.atDebug().log("Invalid data for SSSlideInfoAtom - invalid slideTime: " + this._slideTime);
            }
            int i5 = length + 4;
            this._soundIdRef = LittleEndian.getInt(bArr, i5);
            int i6 = i5 + 4;
            this._effectDirection = LittleEndian.getUByte(bArr, i6);
            int i7 = i6 + 1;
            this._effectType = LittleEndian.getUByte(bArr, i7);
            int i8 = i7 + 1;
            this._effectTransitionFlags = LittleEndian.getShort(bArr, i8);
            int i9 = i8 + 2;
            this._speed = LittleEndian.getUByte(bArr, i9);
            int i10 = i9 + 1;
            this._unused = Arrays.copyOfRange(bArr, i10, i10 + 3);
            return;
        }
        throw new IllegalArgumentException("Need at least " + i3 + " bytes with offset " + i + ", length " + i2 + " and array-size " + bArr.length);
    }
}

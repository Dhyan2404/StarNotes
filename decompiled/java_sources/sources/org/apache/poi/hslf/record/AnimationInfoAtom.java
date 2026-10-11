package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.AnimationInfoAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class AnimationInfoAtom extends RecordAtom {
    public static final int AnimateBg = 16384;
    public static final int Automatic = 4;
    private static final int[] FLAGS_MASKS = {1, 4, 16, 64, 256, 1024, 4096, 16384};
    private static final String[] FLAGS_NAMES = {"REVERSE", "AUTOMATIC", "SOUND", "STOP_SOUND", "PLAY", "SYNCHRONOUS", "HIDE", "ANIMATE_BG"};
    public static final int Hide = 4096;
    public static final int Play = 256;
    public static final int Reverse = 1;
    public static final int Sound = 16;
    public static final int StopSound = 64;
    public static final int Synchronous = 1024;
    private final byte[] _header;
    private final byte[] _recdata;

    public AnimationInfoAtom() {
        byte[] bArr = new byte[28];
        this._recdata = bArr;
        byte[] bArr2 = new byte[8];
        this._header = bArr2;
        LittleEndian.putShort(bArr2, 0, (short) 1);
        LittleEndian.putShort(bArr2, 2, (short) getRecordType());
        LittleEndian.putInt(bArr2, 4, bArr.length);
    }

    public int getDelayTime() {
        return LittleEndian.getInt(this._recdata, 12);
    }

    public int getDimColor() {
        return LittleEndian.getInt(this._recdata, 0);
    }

    public boolean getFlag(int i) {
        return (getMask() & i) != 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("dimColor", new Supplier() { // from class: com.sunia.HTREnginev2.ya
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AnimationInfoAtom.this.getDimColor());
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.za
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AnimationInfoAtom.this.getMask());
            }
        }, FLAGS_MASKS, FLAGS_NAMES), "soundIdRef", new Supplier() { // from class: com.sunia.HTREnginev2.ab
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AnimationInfoAtom.this.getSoundIdRef());
            }
        }, "delayTime", new Supplier() { // from class: com.sunia.HTREnginev2.bb
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AnimationInfoAtom.this.getDelayTime());
            }
        }, "orderID", new Supplier() { // from class: com.sunia.HTREnginev2.cb
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AnimationInfoAtom.this.getOrderID());
            }
        }, "slideCount", new Supplier() { // from class: com.sunia.HTREnginev2.db
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AnimationInfoAtom.this.getSlideCount());
            }
        });
    }

    public int getMask() {
        return LittleEndian.getInt(this._recdata, 4);
    }

    public int getOrderID() {
        return LittleEndian.getInt(this._recdata, 16);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.AnimationInfoAtom.typeID;
    }

    public int getSlideCount() {
        return LittleEndian.getInt(this._recdata, 18);
    }

    public int getSoundIdRef() {
        return LittleEndian.getInt(this._recdata, 8);
    }

    public void setDelayTime(int i) {
        LittleEndian.putInt(this._recdata, 12, i);
    }

    public void setDimColor(int i) {
        LittleEndian.putInt(this._recdata, 0, i);
    }

    public void setFlag(int i, boolean z) {
        int mask = getMask();
        setMask(z ? i | mask : (~i) & mask);
    }

    public void setMask(int i) {
        LittleEndian.putInt(this._recdata, 4, i);
    }

    public void setOrderID(int i) {
        LittleEndian.putInt(this._recdata, 16, i);
    }

    public void setSlideCount(int i) {
        LittleEndian.putInt(this._recdata, 18, i);
    }

    public void setSoundIdRef(int i) {
        LittleEndian.putInt(this._recdata, 8, i);
    }

    public String toString() {
        int mask = getMask();
        return "AnimationInfoAtom\n\tDimColor: " + getDimColor() + "\n\tMask: " + mask + ", 0x" + Integer.toHexString(mask) + "\n\t  Reverse: " + getFlag(1) + "\n\t  Automatic: " + getFlag(4) + "\n\t  Sound: " + getFlag(16) + "\n\t  StopSound: " + getFlag(64) + "\n\t  Play: " + getFlag(256) + "\n\t  Synchronous: " + getFlag(1024) + "\n\t  Hide: " + getFlag(4096) + "\n\t  AnimateBg: " + getFlag(16384) + "\n\tSoundIdRef: " + getSoundIdRef() + "\n\tDelayTime: " + getDelayTime() + "\n\tOrderID: " + getOrderID() + "\n\tSlideCount: " + getSlideCount() + "\n";
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._recdata);
    }

    public AnimationInfoAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._recdata = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }
}

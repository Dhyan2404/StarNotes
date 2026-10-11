package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.ColorSchemeAtom;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class ColorSchemeAtom extends RecordAtom {
    private static final long _type = 2032;
    private final byte[] _header;
    private int accentAndFollowingHyperlinkColourRGB;
    private int accentAndHyperlinkColourRGB;
    private int accentColourRGB;
    private int backgroundColourRGB;
    private int fillsColourRGB;
    private int shadowsColourRGB;
    private int textAndLinesColourRGB;
    private int titleTextColourRGB;

    public ColorSchemeAtom(byte[] bArr, int i, int i2) {
        if (i2 < 40 && bArr.length - i < 40) {
            throw new HSLFException("Not enough data to form a ColorSchemeAtom (always 40 bytes long) - found " + (bArr.length - i));
        }
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.backgroundColourRGB = LittleEndian.getInt(bArr, i3);
        this.textAndLinesColourRGB = LittleEndian.getInt(bArr, i3 + 4);
        this.shadowsColourRGB = LittleEndian.getInt(bArr, i3 + 8);
        this.titleTextColourRGB = LittleEndian.getInt(bArr, i3 + 12);
        this.fillsColourRGB = LittleEndian.getInt(bArr, i3 + 16);
        this.accentColourRGB = LittleEndian.getInt(bArr, i3 + 20);
        this.accentAndHyperlinkColourRGB = LittleEndian.getInt(bArr, i3 + 24);
        this.accentAndFollowingHyperlinkColourRGB = LittleEndian.getInt(bArr, i3 + 28);
    }

    public static int joinRGB(byte b, byte b2, byte b3) {
        return joinRGB(new byte[]{b, b2, b3});
    }

    public static byte[] splitRGB(int i) {
        byte[] bArr = new byte[3];
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            Record.writeLittleEndian(i, unsynchronizedByteArrayOutputStream);
            System.arraycopy(unsynchronizedByteArrayOutputStream.toByteArray(), 0, bArr, 0, 3);
            return bArr;
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    public int getAccentAndFollowingHyperlinkColourRGB() {
        return this.accentAndFollowingHyperlinkColourRGB;
    }

    public int getAccentAndHyperlinkColourRGB() {
        return this.accentAndHyperlinkColourRGB;
    }

    public int getAccentColourRGB() {
        return this.accentColourRGB;
    }

    public int getBackgroundColourRGB() {
        return this.backgroundColourRGB;
    }

    public int getColor(int i) {
        return new int[]{this.backgroundColourRGB, this.textAndLinesColourRGB, this.shadowsColourRGB, this.titleTextColourRGB, this.fillsColourRGB, this.accentColourRGB, this.accentAndHyperlinkColourRGB, this.accentAndFollowingHyperlinkColourRGB}[i];
    }

    public int getFillsColourRGB() {
        return this.fillsColourRGB;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("backgroundColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.l2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getBackgroundColourRGB());
            }
        });
        linkedHashMap.put("textAndLinesColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.m2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getTextAndLinesColourRGB());
            }
        });
        linkedHashMap.put("shadowsColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.n2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getShadowsColourRGB());
            }
        });
        linkedHashMap.put("titleTextColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.o2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getTitleTextColourRGB());
            }
        });
        linkedHashMap.put("fillsColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.p2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getFillsColourRGB());
            }
        });
        linkedHashMap.put("accentColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.q2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getAccentColourRGB());
            }
        });
        linkedHashMap.put("accentAndHyperlinkColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.r2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getAccentAndHyperlinkColourRGB());
            }
        });
        linkedHashMap.put("accentAndFollowingHyperlinkColourRGB", new Supplier() { // from class: com.sunia.HTREnginev2.s2e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColorSchemeAtom.this.getAccentAndFollowingHyperlinkColourRGB());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public int getShadowsColourRGB() {
        return this.shadowsColourRGB;
    }

    public int getTextAndLinesColourRGB() {
        return this.textAndLinesColourRGB;
    }

    public int getTitleTextColourRGB() {
        return this.titleTextColourRGB;
    }

    public void setAccentAndFollowingHyperlinkColourRGB(int i) {
        this.accentAndFollowingHyperlinkColourRGB = i;
    }

    public void setAccentAndHyperlinkColourRGB(int i) {
        this.accentAndHyperlinkColourRGB = i;
    }

    public void setAccentColourRGB(int i) {
        this.accentColourRGB = i;
    }

    public void setBackgroundColourRGB(int i) {
        this.backgroundColourRGB = i;
    }

    public void setFillsColourRGB(int i) {
        this.fillsColourRGB = i;
    }

    public void setShadowsColourRGB(int i) {
        this.shadowsColourRGB = i;
    }

    public void setTextAndLinesColourRGB(int i) {
        this.textAndLinesColourRGB = i;
    }

    public void setTitleTextColourRGB(int i) {
        this.titleTextColourRGB = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        Record.writeLittleEndian(this.backgroundColourRGB, outputStream);
        Record.writeLittleEndian(this.textAndLinesColourRGB, outputStream);
        Record.writeLittleEndian(this.shadowsColourRGB, outputStream);
        Record.writeLittleEndian(this.titleTextColourRGB, outputStream);
        Record.writeLittleEndian(this.fillsColourRGB, outputStream);
        Record.writeLittleEndian(this.accentColourRGB, outputStream);
        Record.writeLittleEndian(this.accentAndHyperlinkColourRGB, outputStream);
        Record.writeLittleEndian(this.accentAndFollowingHyperlinkColourRGB, outputStream);
    }

    public static int joinRGB(byte[] bArr) {
        if (bArr.length == 3) {
            byte[] bArr2 = new byte[4];
            System.arraycopy(bArr, 0, bArr2, 0, 3);
            bArr2[3] = 0;
            return LittleEndian.getInt(bArr2, 0);
        }
        throw new HSLFException("joinRGB accepts a byte array of 3 values, but got one of " + bArr.length + " values!");
    }

    public ColorSchemeAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 16);
        LittleEndian.putUShort(bArr, 2, 2032);
        LittleEndian.putInt(bArr, 4, 32);
        this.backgroundColourRGB = 16777215;
        this.textAndLinesColourRGB = 0;
        this.shadowsColourRGB = 8421504;
        this.titleTextColourRGB = 0;
        this.fillsColourRGB = 10079232;
        this.accentColourRGB = 13382451;
        this.accentAndHyperlinkColourRGB = 16764108;
        this.accentAndFollowingHyperlinkColourRGB = 11711154;
    }
}

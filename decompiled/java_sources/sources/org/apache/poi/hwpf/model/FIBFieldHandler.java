package org.apache.poi.hwpf.model;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class FIBFieldHandler {
    public static final int AUTOSAVESOURCE = 35;
    public static final int BKDEDN = 68;
    public static final int BKDFTN = 66;
    public static final int BKDMOTHER = 64;
    public static final int CLX = 33;
    public static final int CMDS = 24;
    public static final int DGGINFO = 50;
    public static final int DOCUNDO = 77;
    public static final int DOP = 31;
    private static final int FIELD_SIZE = 8;
    public static final int FORMFLDSTTBS = 45;
    public static final int GRPXSTATNOWNERS = 36;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) FIBFieldHandler.class);
    public static final int MODIFIED = 87;
    public static final int PGDEDN = 67;
    public static final int PGDFTN = 65;
    public static final int PGDMOTHER = 63;
    public static final int PLCASUMY = 89;
    public static final int PLCDOAHDR = 39;
    public static final int PLCFANDREF = 4;
    public static final int PLCFANDTXT = 5;
    public static final int PLCFATNBKF = 42;
    public static final int PLCFATNBKL = 43;
    public static final int PLCFBKF = 22;
    public static final int PLCFBKL = 23;
    public static final int PLCFBTECHPX = 12;
    public static final int PLCFBTELVC = 86;
    public static final int PLCFBTEPAPX = 13;
    public static final int PLCFDOAMOM = 38;
    public static final int PLCFENDREF = 46;
    public static final int PLCFENDTXT = 47;
    public static final int PLCFFLDATN = 19;
    public static final int PLCFFLDEDN = 48;
    public static final int PLCFFLDFTN = 18;
    public static final int PLCFFLDHDR = 17;
    public static final int PLCFFLDHDRTXBX = 59;
    public static final int PLCFFLDMCR = 20;
    public static final int PLCFFLDMOM = 16;
    public static final int PLCFFLDTXBX = 57;
    public static final int PLCFFNDREF = 2;
    public static final int PLCFFNDTXT = 3;
    public static final int PLCFGLSY = 10;
    public static final int PLCFGRAM = 90;
    public static final int PLCFHDD = 11;
    public static final int PLCFHDRTXBXTXT = 58;

    @Deprecated
    public static final int PLCFLST = 73;
    public static final int PLCFLVC = 88;
    public static final int PLCFPAD = 7;
    public static final int PLCFPGDEDN = 49;
    public static final int PLCFPGDFTN = 34;
    public static final int PLCFPHE = 8;
    public static final int PLCFSEA = 14;
    public static final int PLCFSED = 6;
    public static final int PLCFSPL = 55;
    public static final int PLCFTXBXBKD = 75;
    public static final int PLCFTXBXHDRBKD = 76;
    public static final int PLCFTXBXTXT = 56;
    public static final int PLCFWKB = 54;
    public static final int PLCMCR = 25;
    public static final int PLCOCX = 85;
    public static final int PLCSPAHDR = 41;
    public static final int PLCSPAMOM = 40;
    public static final int PLCUPCRGBUSE = 81;
    public static final int PLCUPCUSP = 82;
    public static final int PLFLFO = 74;
    public static final int PLFLST = 73;
    public static final int PLGOSL = 84;
    public static final int PMS = 44;
    public static final int PRDRVR = 27;
    public static final int PRENVLAND = 29;
    public static final int PRENVPORT = 28;
    public static final int RGBUSE = 78;
    public static final int ROUTESLIP = 70;
    public static final int STSHF = 1;
    public static final int STSHFORIG = 0;
    public static final int STTBAUTOCAPTION = 53;
    public static final int STTBCAPTION = 52;
    public static final int STTBFASSOC = 32;
    public static final int STTBFATNBKMK = 37;
    public static final int STTBFBKMK = 21;
    public static final int STTBFFFN = 15;
    public static final int STTBFINTFLD = 69;
    public static final int STTBFMCR = 26;
    public static final int STTBFNM = 72;
    public static final int STTBFRMARK = 51;
    public static final int STTBFUSSR = 92;
    public static final int STTBGLSY = 9;
    public static final int STTBGLSYSTYLE = 83;
    public static final int STTBLISTNAMES = 91;
    public static final int STTBSAVEDBY = 71;
    public static final int STTBTTMBD = 61;
    public static final int STWUSER = 60;
    public static final int UNUSED = 62;
    public static final int USKF = 80;
    public static final int USP = 79;
    public static final int WSS = 30;
    private int[] _fields;
    private Map<Integer, UnhandledDataStructure> _unknownMap = new HashMap();

    public FIBFieldHandler(byte[] bArr, int i, int i2, byte[] bArr2, HashSet<Integer> hashSet, boolean z) {
        this._fields = new int[i2 * 2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = (i3 * 8) + i;
            int i5 = LittleEndian.getInt(bArr, i4);
            int i6 = LittleEndian.getInt(bArr, i4 + 4);
            if ((hashSet.contains(Integer.valueOf(i3)) ^ z) && i6 > 0) {
                if (i5 + i6 > bArr2.length) {
                    LOGGER.atWarn().log("Unhandled data structure points to outside the buffer. offset = {}, length = {}, buffer length = {}", Unbox.box(i5), Unbox.box(i6), Unbox.box(bArr2.length));
                } else {
                    this._unknownMap.put(Integer.valueOf(i3), new UnhandledDataStructure(bArr2, i5, i6));
                }
            }
            int[] iArr = this._fields;
            int i7 = i3 * 2;
            iArr[i7] = i5;
            iArr[i7 + 1] = i6;
        }
    }

    private static String leftPad(String str, int i, char c) {
        if (str.length() >= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i - str.length(); i2++) {
            sb.append(c);
        }
        sb.append(str);
        return sb.toString();
    }

    public void clearFields() {
        Arrays.fill(this._fields, 0);
    }

    public int getFieldOffset(int i) {
        return this._fields[i * 2];
    }

    public int getFieldSize(int i) {
        return this._fields[(i * 2) + 1];
    }

    public int getFieldsCount() {
        return this._fields.length / 2;
    }

    public void setFieldOffset(int i, int i2) {
        this._fields[i * 2] = i2;
    }

    public void setFieldSize(int i, int i2) {
        this._fields[(i * 2) + 1] = i2;
    }

    public int sizeInBytes() {
        return this._fields.length * 4;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[FIBFieldHandler]:\n");
        sb.append("\tFields:\n");
        sb.append("\t");
        sb.append(leftPad(SsManifestParser.C4932c.f26641g, 8, ' '));
        sb.append(leftPad("FIB offset", 15, ' '));
        sb.append(leftPad("Offset", 8, ' '));
        sb.append(leftPad("Size", 8, ' '));
        sb.append('\n');
        for (int i = 0; i < this._fields.length / 2; i++) {
            sb.append('\t');
            sb.append(leftPad(Integer.toString(i), 8, ' '));
            int i2 = (i * 4 * 2) + 154;
            sb.append(leftPad(Integer.toString(i2), 6, ' '));
            sb.append("   0x");
            sb.append(leftPad(Integer.toHexString(i2), 4, '0'));
            sb.append(leftPad(Integer.toString(getFieldOffset(i)), 8, ' '));
            sb.append(leftPad(Integer.toString(getFieldSize(i)), 8, ' '));
            UnhandledDataStructure unhandledDataStructure = this._unknownMap.get(Integer.valueOf(i));
            if (unhandledDataStructure != null) {
                sb.append(" => Unknown structure of size ");
                sb.append(unhandledDataStructure.getBuf().length);
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    public void writeTo(byte[] bArr, int i, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        int i2;
        for (int i3 = 0; i3 < this._fields.length / 2; i3++) {
            UnhandledDataStructure unhandledDataStructure = this._unknownMap.get(Integer.valueOf(i3));
            if (unhandledDataStructure != null) {
                int i4 = i3 * 2;
                this._fields[i4] = byteArrayOutputStream.size();
                LittleEndian.putInt(bArr, i, byteArrayOutputStream.size());
                i2 = i + 4;
                byte[] buf = unhandledDataStructure.getBuf();
                byteArrayOutputStream.write(buf);
                this._fields[i4 + 1] = buf.length;
                LittleEndian.putInt(bArr, i2, buf.length);
            } else {
                int i5 = i3 * 2;
                LittleEndian.putInt(bArr, i, this._fields[i5]);
                i2 = i + 4;
                LittleEndian.putInt(bArr, i2, this._fields[i5 + 1]);
            }
            i = i2 + 4;
        }
    }
}

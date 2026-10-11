package org.apache.poi.hpbf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.charset.Charset;
import org.apache.commons.text.AlphabetConverter;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class HPBFDumper {

    /* renamed from: fs */
    private POIFSFileSystem f111373fs;

    public HPBFDumper(POIFSFileSystem pOIFSFileSystem) {
        this.f111373fs = pOIFSFileSystem;
    }

    private String dumpBytes(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i3 + i];
            if (i4 < 0) {
                i4 += 256;
            }
            String hexString = Integer.toHexString(i4);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
            sb.append(' ');
        }
        return sb.toString();
    }

    private void dumpEscherStream(byte[] bArr) {
        EscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
        int length = bArr.length;
        while (length > 0) {
            EscherRecord createRecord = defaultEscherRecordFactory.createRecord(bArr, 0);
            createRecord.fillFields(bArr, 0, defaultEscherRecordFactory);
            length -= createRecord.getRecordSize();
            System.out.println(createRecord);
        }
    }

    private static byte[] getData(DirectoryNode directoryNode, String str) throws IOException {
        DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream(str);
        byte[] byteArray = IOUtils.toByteArray(createDocumentInputStream);
        createDocumentInputStream.close();
        return byteArray;
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 1) {
            System.err.println("Use:");
            System.err.println("  HPBFDumper <filename>");
            System.exit(1);
        }
        HPBFDumper hPBFDumper = new HPBFDumper(new POIFSFileSystem(new File(strArr[0])));
        System.out.println("Dumping " + strArr[0]);
        hPBFDumper.dumpContents();
        hPBFDumper.dumpEnvelope();
        hPBFDumper.dumpEscher();
        hPBFDumper.dump001CompObj(hPBFDumper.f111373fs.getRoot());
        hPBFDumper.dumpQuill();
    }

    public void dump001CompObj(DirectoryNode directoryNode) {
    }

    public void dumpCONTENTSguessed(DirectoryNode directoryNode) throws IOException {
        byte[] bArr;
        byte[] bArr2;
        byte[] data = getData(directoryNode, "CONTENTS");
        System.out.println();
        System.out.println("CONTENTS - " + data.length + " bytes long:");
        String[] strArr = new String[20];
        String[] strArr2 = new String[20];
        int[] iArr = new int[20];
        int[] iArr2 = new int[20];
        int[] iArr3 = new int[20];
        int[] iArr4 = new int[20];
        int[] iArr5 = new int[20];
        int i = 0;
        for (int i2 = 20; i < i2; i2 = 20) {
            int i3 = (i * 24) + 32;
            if (data[i3] == 24 && data[i3 + 1] == 0) {
                Charset charset = LocaleUtil.CHARSET_1252;
                strArr[i] = new String(data, i3 + 2, 4, charset);
                iArr[i] = LittleEndian.getUShort(data, i3 + 6);
                iArr2[i] = LittleEndian.getUShort(data, i3 + 8);
                iArr3[i] = LittleEndian.getUShort(data, i3 + 10);
                strArr2[i] = new String(data, i3 + 12, 4, charset);
                iArr4[i] = (int) LittleEndian.getUInt(data, i3 + 16);
                iArr5[i] = (int) LittleEndian.getUInt(data, i3 + 20);
            }
            i++;
        }
        String fromUnicodeLE = StringUtil.getFromUnicodeLE(data, iArr4[0], iArr5[0] / 2);
        int i4 = 0;
        while (i4 < 20) {
            String num = Integer.toString(i4);
            if (i4 < 10) {
                num = "0" + i4;
            }
            System.out.print(num + " ");
            if (strArr[i4] == null) {
                System.out.println("(not present)");
                bArr2 = data;
            } else {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("\t");
                bArr2 = data;
                sb.append(strArr[i4]);
                sb.append(" ");
                sb.append(iArr[i4]);
                sb.append(" ");
                sb.append(iArr2[i4]);
                sb.append(" ");
                sb.append(iArr3[i4]);
                printStream.println(sb.toString());
                System.out.println("\t" + strArr2[i4] + " from: " + Integer.toHexString(iArr4[i4]) + " (" + iArr4[i4] + "), len: " + Integer.toHexString(iArr5[i4]) + " (" + iArr5[i4] + MotionUtils.f31762d);
            }
            i4++;
            data = bArr2;
        }
        byte[] bArr3 = data;
        System.out.println();
        System.out.println("TEXT:");
        System.out.println(fromUnicodeLE);
        System.out.println();
        int i5 = 0;
        while (i5 < 20) {
            if (strArr[i5] == null) {
                bArr = bArr3;
            } else {
                int i6 = iArr4[i5];
                System.out.println(strArr[i5] + AlphabetConverter.f109940d + strArr2[i5] + " @ " + Integer.toHexString(i6) + " (" + i6 + MotionUtils.f31762d);
                PrintStream printStream2 = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\t");
                bArr = bArr3;
                sb2.append(dumpBytes(bArr, i6, 4));
                printStream2.println(sb2.toString());
                System.out.println("\t" + dumpBytes(bArr, i6 + 4, 4));
                System.out.println("\t" + dumpBytes(bArr, i6 + 8, 4));
                System.out.println("\t(etc)");
            }
            i5++;
            bArr3 = bArr;
        }
    }

    public void dumpCONTENTSraw(DirectoryNode directoryNode) throws IOException {
        byte[] data = getData(directoryNode, "CONTENTS");
        System.out.println();
        System.out.println("CONTENTS - " + data.length + " bytes long:");
        System.out.println(new String(data, 0, 8, LocaleUtil.CHARSET_1252) + dumpBytes(data, 8, 24));
        int i = 32;
        boolean z = true;
        while (i < 512) {
            if (z) {
                System.out.println(dumpBytes(data, i, 2));
                i += 2;
            }
            String str = new String(data, i, 4, LocaleUtil.CHARSET_1252);
            int i2 = z ? 6 : 8;
            System.out.println(str + " " + dumpBytes(data, i + 4, i2));
            i += i2 + 4;
            z ^= true;
        }
        int i3 = -1;
        for (int i4 = 512; i4 < data.length - 2 && i3 == -1; i4++) {
            if (data[i4] == 0 && data[i4 + 1] == 0 && data[i4 + 2] == 0) {
                i3 = i4;
            }
        }
        if (i3 > 0) {
            System.out.println();
            System.out.println(StringUtil.getFromUnicodeLE(data, 512, (i3 - 512) / 2));
        }
    }

    public void dumpContents() throws IOException {
        byte[] data = getData(this.f111373fs.getRoot(), "Contents");
        System.out.println();
        System.out.println("Contents - " + data.length + " bytes long:");
    }

    public void dumpEnvelope() throws IOException {
        byte[] data = getData(this.f111373fs.getRoot(), "Envelope");
        System.out.println();
        System.out.println("Envelope - " + data.length + " bytes long:");
    }

    public void dumpEscher() throws IOException {
        DirectoryNode directoryNode = (DirectoryNode) this.f111373fs.getRoot().getEntry("Escher");
        dumpEscherStm(directoryNode);
        dumpEscherDelayStm(directoryNode);
    }

    public void dumpEscherDelayStm(DirectoryNode directoryNode) throws IOException {
        byte[] data = getData(directoryNode, "EscherDelayStm");
        System.out.println();
        System.out.println("EscherDelayStm - " + data.length + " bytes long:");
        if (data.length > 0) {
            dumpEscherStream(data);
        }
    }

    public void dumpEscherStm(DirectoryNode directoryNode) throws IOException {
        byte[] data = getData(directoryNode, "EscherStm");
        System.out.println();
        System.out.println("EscherStm - " + data.length + " bytes long:");
        if (data.length > 0) {
            dumpEscherStream(data);
        }
    }

    public void dumpQuill() throws IOException {
        DirectoryNode directoryNode = (DirectoryNode) ((DirectoryNode) this.f111373fs.getRoot().getEntry("Quill")).getEntry("QuillSub");
        dump001CompObj(directoryNode);
        dumpCONTENTSraw(directoryNode);
        dumpCONTENTSguessed(directoryNode);
    }

    public HPBFDumper(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }
}

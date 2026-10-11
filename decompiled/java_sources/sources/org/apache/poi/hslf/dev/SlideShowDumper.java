package org.apache.poi.hslf.dev;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Locale;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.hslf.record.HSLFEscherRecordFactory;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class SlideShowDumper {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static int MAX_RECORD_LENGTH = 100000;
    private boolean basicEscher;
    private boolean ddfEscher;
    private byte[] docstream;
    private PrintStream out;

    public SlideShowDumper(POIFSFileSystem pOIFSFileSystem, PrintStream printStream) throws IOException {
        DocumentInputStream createDocumentInputStream = pOIFSFileSystem.createDocumentInputStream(HSLFSlideShow.POWERPOINT_DOCUMENT);
        this.docstream = IOUtils.toByteArray(createDocumentInputStream);
        createDocumentInputStream.close();
        this.out = printStream;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length == 0) {
            System.err.println("Usage: SlideShowDumper [-escher|-basicescher] <filename>");
            return;
        }
        String str = strArr[0];
        if (strArr.length > 1) {
            str = strArr[1];
        }
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(new File(str));
        try {
            SlideShowDumper slideShowDumper = new SlideShowDumper(pOIFSFileSystem, System.out);
            if (strArr.length > 1) {
                if (strArr[0].equalsIgnoreCase("-escher")) {
                    slideShowDumper.setDDFEscher(true);
                } else {
                    slideShowDumper.setBasicEscher(true);
                }
            }
            slideShowDumper.printDump();
            pOIFSFileSystem.close();
        } finally {
        }
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public void printDump() throws IOException {
        walkTree(0, 0, this.docstream.length);
    }

    public void setBasicEscher(boolean z) {
        this.basicEscher = z;
        this.ddfEscher = !z;
    }

    public void setDDFEscher(boolean z) {
        this.ddfEscher = z;
        this.basicEscher = !z;
    }

    public void walkEscherBasic(int i, int i2, int i3) throws IOException {
        String str;
        if (i3 < 8) {
            return;
        }
        if (i == 0) {
            str = "%1$s";
        } else {
            str = "%1$" + i + "s";
        }
        long uShort = LittleEndian.getUShort(this.docstream, i2 + 2);
        long uInt = LittleEndian.getUInt(this.docstream, i2 + 4);
        PrintStream printStream = this.out;
        Locale locale = Locale.ROOT;
        printStream.printf(locale, (str + "At position %2$d ($2$04x): type is %3$d (%3$04x), len is %4$d (%4$04x)") + "%n", "", Integer.valueOf(i2), Long.valueOf(uShort), Long.valueOf(uInt));
        String name = RecordTypes.forTypeID((short) ((int) uShort)).name();
        this.out.printf(locale, str + "%2$s%n", "That's an Escher Record: ", name);
        if (uShort == 61453) {
            HexDump.dump(this.docstream, 0L, this.out, i2 + 8, 8);
            HexDump.dump(this.docstream, 0L, this.out, i2 + 20, 8);
            this.out.println();
        }
        this.out.println();
        if (uShort == 61443 || uShort == 61444) {
            walkEscherBasic(i + 3, i2 + 8, (int) uInt);
        }
        if (uInt < i3) {
            int i4 = (int) uInt;
            walkEscherBasic(i, i2 + i4 + 8, (i3 - i4) - 8);
        }
    }

    public void walkEscherDDF(int i, int i2, int i3) {
        String str;
        byte[] bArr;
        EscherRecordFactory escherRecordFactory;
        int i4;
        int i5;
        if (i3 < 8) {
            return;
        }
        if (i == 0) {
            str = "%1$s";
        } else {
            str = "%1$" + i + "s";
        }
        byte[] safelyClone = IOUtils.safelyClone(this.docstream, i2, i3, MAX_RECORD_LENGTH);
        EscherRecordFactory hSLFEscherRecordFactory = new HSLFEscherRecordFactory();
        EscherRecord createRecord = hSLFEscherRecordFactory.createRecord(safelyClone, 0);
        createRecord.fillFields(safelyClone, 0, hSLFEscherRecordFactory);
        long uShort = LittleEndian.getUShort(safelyClone, 2);
        long uShort2 = LittleEndian.getUShort(safelyClone, 4);
        int recordSize = createRecord.getRecordSize();
        PrintStream printStream = this.out;
        Locale locale = Locale.ROOT;
        long j = uShort2 + 8;
        printStream.printf(locale, (str + "At position %2$d (%2$04x): type is %3$d (%3$04x), len is %4$d (%4$04x) (%5$d) - record claims %6$d") + "%n", "", Integer.valueOf(i2), Long.valueOf(uShort), Long.valueOf(uShort2), Long.valueOf(j), Integer.valueOf(recordSize));
        if (recordSize == 8) {
            bArr = safelyClone;
            escherRecordFactory = hSLFEscherRecordFactory;
        } else if (recordSize != j) {
            bArr = safelyClone;
            escherRecordFactory = hSLFEscherRecordFactory;
            this.out.printf(locale, str + "** Atom length of %2d (%3d) doesn't match record length of %4d%n", Long.valueOf(uShort2), Long.valueOf(j), Integer.valueOf(recordSize));
        } else {
            bArr = safelyClone;
            escherRecordFactory = hSLFEscherRecordFactory;
        }
        String replace = createRecord.toString().replace("\n", String.format(locale, "\n" + str, ""));
        this.out.printf(locale, str + "%2$s%n", "", replace);
        if (createRecord instanceof EscherContainerRecord) {
            walkEscherDDF(i + 3, i2 + 8, (int) uShort2);
        }
        if (uShort == 61451) {
            i4 = 8;
            recordSize = ((int) uShort2) + 8;
        } else {
            i4 = 8;
        }
        if (uShort == 61453) {
            recordSize = ((int) uShort2) + 8;
            createRecord.fillFields(bArr, 0, escherRecordFactory);
            if (!(createRecord instanceof EscherTextboxRecord)) {
                this.out.printf(locale, str + "%2$s%n", "", "** Really a msofbtClientTextbox !");
            }
            i5 = 8;
        } else {
            i5 = i4;
        }
        if (recordSize == i5 && uShort2 > 8) {
            walkEscherDDF(i + 3, i2 + 8, (int) uShort2);
        }
        int intExact = Math.toIntExact(i2 + uShort2) + 8;
        int intExact2 = Math.toIntExact(i3 - uShort2) - 8;
        if (intExact2 >= 8) {
            walkEscherDDF(i, intExact, intExact2);
        }
    }

    public void walkTree(int i, int i2, int i3) throws IOException {
        String str;
        int i4 = i2 + i3;
        if (i == 0) {
            str = "%1$s";
        } else {
            str = "%1$" + i + "s";
        }
        int i5 = i2;
        while (i5 <= i4 - 8) {
            long uShort = LittleEndian.getUShort(this.docstream, i5 + 2);
            long uInt = LittleEndian.getUInt(this.docstream, i5 + 4);
            byte b = this.docstream[i5];
            PrintStream printStream = this.out;
            Locale locale = Locale.ROOT;
            int i6 = i4;
            printStream.printf(locale, (str + "At position %2$d (%2$04x): type is %3$d (%3$04x), len is %4$d (%4$04x)") + "%n", "", Integer.valueOf(i5), Long.valueOf(uShort), Long.valueOf(uInt));
            String name = RecordTypes.forTypeID((short) ((int) uShort)).name();
            int i7 = i5 + 8;
            this.out.printf(locale, str + "That's a %2$s%n", "", name);
            int i8 = b & 15;
            if (uShort == 5003 && b == 0) {
                i8 = 15;
            }
            this.out.println();
            if (uShort != 0 && i8 == 15) {
                if (uShort != 1035 && uShort != 1036) {
                    walkTree(i + 2, i7, (int) uInt);
                } else if (this.ddfEscher) {
                    walkEscherDDF(i + 3, i7 + 8, ((int) uInt) - 8);
                } else if (this.basicEscher) {
                    walkEscherBasic(i + 3, i7 + 8, ((int) uInt) - 8);
                }
            }
            i5 = i7 + ((int) uInt);
            i4 = i6;
        }
    }
}

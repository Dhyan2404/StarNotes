package org.apache.poi.hslf.dev;

import java.io.IOException;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.Locale;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.commons.text.AlphabetConverter;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.hslf.record.HSLFEscherRecordFactory;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.StyleTextPropAtom;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;
import org.apache.poi.util.HexDump;

/* loaded from: classes12.dex */
public final class SlideShowRecordDumper {
    static final String tabs = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
    private final HSLFSlideShowImpl doc;
    private final boolean optEscher;
    private final boolean optVerbose;

    /* renamed from: ps */
    private final PrintStream f111377ps;

    public SlideShowRecordDumper(PrintStream printStream, String str, boolean z, boolean z2) throws IOException {
        this.f111377ps = printStream;
        this.optVerbose = z;
        this.optEscher = z2;
        this.doc = new HSLFSlideShowImpl(str);
    }

    public static void main(String[] strArr) throws IOException {
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (i < strArr.length && strArr[i].charAt(0) == '-') {
            if (strArr[i].equals("-escher")) {
                z2 = true;
            } else {
                if (!strArr[i].equals("-verbose")) {
                    printUsage();
                    return;
                }
                z = true;
            }
            i++;
        }
        if (i != strArr.length - 1) {
            printUsage();
            return;
        }
        SlideShowRecordDumper slideShowRecordDumper = new SlideShowRecordDumper(System.out, strArr[i], z, z2);
        slideShowRecordDumper.printDump();
        slideShowRecordDumper.doc.close();
    }

    private void printEscherContainerRecord(EscherContainerRecord escherContainerRecord, int i) {
        int i2 = 0;
        String substring = tabs.substring(0, i);
        this.f111377ps.println(substring + escherContainerRecord.getClass().getName() + " (" + escherContainerRecord.getRecordName() + "):");
        PrintStream printStream = this.f111377ps;
        StringBuilder sb = new StringBuilder();
        sb.append(substring);
        sb.append("  isContainer: ");
        sb.append(escherContainerRecord.isContainerRecord());
        printStream.println(sb.toString());
        this.f111377ps.println(substring + "  options: 0x" + HexDump.toHex(escherContainerRecord.getOptions()));
        this.f111377ps.println(substring + "  recordId: 0x" + HexDump.toHex(escherContainerRecord.getRecordId()));
        this.f111377ps.println(substring + "  numchildren: " + escherContainerRecord.getChildCount());
        this.f111377ps.println(substring + "  children: ");
        Iterator<EscherRecord> it2 = escherContainerRecord.iterator();
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            this.f111377ps.println(substring + "   Child " + i2 + ":");
            printEscherRecord(next, i + 1);
            i2++;
        }
    }

    private void printEscherTextBox(EscherTextboxRecord escherTextboxRecord, int i) {
        String text;
        String substring = tabs.substring(0, i);
        this.f111377ps.println(substring + "EscherTextboxRecord:");
        Record record = null;
        for (Record record2 : new EscherTextboxWrapper(escherTextboxRecord).getChildRecords()) {
            if (record2 instanceof StyleTextPropAtom) {
                if (record instanceof TextCharsAtom) {
                    text = ((TextCharsAtom) record).getText();
                } else if (record instanceof TextBytesAtom) {
                    text = ((TextBytesAtom) record).getText();
                } else {
                    this.f111377ps.println(substring + "Error! Couldn't find preceding TextAtom for style");
                }
                ((StyleTextPropAtom) record2).setParentTextSize(text.length());
            }
            this.f111377ps.println(substring + record2);
            record = record2;
        }
    }

    public static void printUsage() {
        System.err.println("Usage: SlideShowRecordDumper [-escher] [-verbose] <filename>");
        System.err.println("Valid Options:");
        System.err.println("-escher\t\t: dump contents of escher records");
        System.err.println("-verbose\t: dump binary contents of each record");
    }

    public int getDiskLen(Record record) throws IOException {
        if (record == null) {
            return 0;
        }
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        record.writeOut(unsynchronizedByteArrayOutputStream);
        return unsynchronizedByteArrayOutputStream.size();
    }

    public String getPrintableRecordContents(Record record) throws IOException {
        if (record == null) {
            return "<<null>>";
        }
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        record.writeOut(unsynchronizedByteArrayOutputStream);
        return HexDump.dump(unsynchronizedByteArrayOutputStream.toByteArray(), 0L, 0);
    }

    public String makeHex(int i, int i2) {
        StringBuilder sb = new StringBuilder(Integer.toHexString(i).toUpperCase(Locale.ROOT));
        while (sb.length() < i2) {
            sb.insert(0, "0");
        }
        return sb.toString();
    }

    public void printDump() throws IOException {
        walkTree(0, 0, this.doc.getRecords(), 0);
    }

    public void printEscherRecord(EscherRecord escherRecord, int i) {
        if (escherRecord instanceof EscherContainerRecord) {
            printEscherContainerRecord((EscherContainerRecord) escherRecord, i);
        } else if (escherRecord instanceof EscherTextboxRecord) {
            printEscherTextBox((EscherTextboxRecord) escherRecord, i);
        } else {
            this.f111377ps.print(tabs.substring(0, i));
            this.f111377ps.println(escherRecord);
        }
    }

    public String reverseHex(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 1;
        if ((str.length() & 1) == 1) {
            sb.append(0);
        } else {
            i = 0;
        }
        for (char c : str.toCharArray()) {
            if (i > 0 && (i & 1) == 0) {
                sb.append(' ');
            }
            sb.append(c);
            i++;
        }
        return sb.toString();
    }

    public void walkTree(int i, int i2, Record[] recordArr, int i3) throws IOException {
        boolean z;
        Record[] recordArr2 = recordArr;
        boolean z2 = false;
        String substring = tabs.substring(0, i3);
        int length = recordArr2.length;
        int i4 = i2;
        int i5 = 0;
        while (i5 < length) {
            Record record = recordArr2[i5];
            if (record == null) {
                this.f111377ps.println(substring + "At position " + i4 + " (" + makeHex(i4, 6) + "):");
                PrintStream printStream = this.f111377ps;
                StringBuilder sb = new StringBuilder();
                sb.append(substring);
                sb.append("Warning! Null record found.");
                printStream.println(sb.toString());
                z = z2;
            } else {
                int diskLen = getDiskLen(record);
                String makeHex = makeHex((int) record.getRecordType(), 4);
                String reverseHex = reverseHex(makeHex);
                String cls = record.getClass().toString();
                if (cls.startsWith("class ")) {
                    cls = cls.substring(6);
                }
                if (cls.startsWith("org.apache.poi.hslf.record.")) {
                    cls = cls.substring(27);
                }
                this.f111377ps.println(substring + "At position " + i4 + " (" + makeHex(i4, 6) + "):");
                PrintStream printStream2 = this.f111377ps;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(substring);
                sb2.append(" Record is of type ");
                sb2.append(cls);
                printStream2.println(sb2.toString());
                this.f111377ps.println(substring + " Type is " + record.getRecordType() + " (" + makeHex + AlphabetConverter.f109940d + reverseHex + " )");
                PrintStream printStream3 = this.f111377ps;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(substring);
                sb3.append(" Len is ");
                int i6 = diskLen + (-8);
                sb3.append(i6);
                sb3.append(" (");
                sb3.append(makeHex(i6, 8));
                sb3.append("), on disk len is ");
                sb3.append(diskLen);
                printStream3.println(sb3.toString());
                if (this.optEscher && cls.equals("PPDrawing")) {
                    EscherRecordFactory hSLFEscherRecordFactory = new HSLFEscherRecordFactory();
                    UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                    record.writeOut(unsynchronizedByteArrayOutputStream);
                    byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                    z = false;
                    EscherRecord createRecord = hSLFEscherRecordFactory.createRecord(byteArray, 0);
                    createRecord.fillFields(byteArray, 0, hSLFEscherRecordFactory);
                    printEscherRecord(createRecord, i3 + 1);
                } else {
                    z = false;
                    if (this.optVerbose && record.getChildRecords() == null) {
                        String printableRecordContents = getPrintableRecordContents(record);
                        this.f111377ps.println(substring + printableRecordContents);
                    }
                }
                this.f111377ps.println();
                if (record.getChildRecords() != null) {
                    walkTree(i + 3, i4 + 8, record.getChildRecords(), i3 + 1);
                }
                i4 += diskLen;
            }
            i5++;
            recordArr2 = recordArr;
            z2 = z;
        }
    }
}

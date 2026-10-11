package org.apache.poi.hpbf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.hpbf.HPBFDocument;
import org.apache.poi.hpbf.model.QuillContents;
import org.apache.poi.hpbf.model.qcbits.QCBit;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.HexDump;

/* loaded from: classes12.dex */
public final class PLCDumper {
    private HPBFDocument doc;

    /* renamed from: qc */
    private QuillContents f111374qc;

    public PLCDumper(HPBFDocument hPBFDocument) {
        this.doc = hPBFDocument;
        this.f111374qc = hPBFDocument.getQuillContents();
    }

    private void dumpBit(QCBit qCBit, int i) {
        System.out.println();
        System.out.println("Dumping " + qCBit.getBitType() + " bit at " + i);
        System.out.println("  Is a " + qCBit.getThingType() + ", number is " + qCBit.getOptA());
        System.out.println("  Starts at " + qCBit.getDataOffset() + " (0x" + Integer.toHexString(qCBit.getDataOffset()) + MotionUtils.f31762d);
        System.out.println("  Runs for  " + qCBit.getLength() + " (0x" + Integer.toHexString(qCBit.getLength()) + MotionUtils.f31762d);
        System.out.println(HexDump.dump(qCBit.getData(), 0L, 0));
    }

    private void dumpPLC() {
        QCBit[] bits = this.f111374qc.getBits();
        for (int i = 0; i < bits.length; i++) {
            QCBit qCBit = bits[i];
            if (qCBit != null && qCBit.getBitType().equals("PLC ")) {
                dumpBit(bits[i], i);
            }
        }
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 1) {
            System.err.println("Use:");
            System.err.println("  PLCDumper <filename>");
            System.exit(1);
        }
        FileInputStream fileInputStream = new FileInputStream(strArr[0]);
        try {
            PLCDumper pLCDumper = new PLCDumper(fileInputStream);
            System.out.println("Dumping " + strArr[0]);
            pLCDumper.dumpPLC();
            fileInputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public PLCDumper(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(new HPBFDocument(pOIFSFileSystem));
    }

    public PLCDumper(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }
}

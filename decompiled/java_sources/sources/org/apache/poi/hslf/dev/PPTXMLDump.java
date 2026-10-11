package org.apache.poi.hslf.dev;

import androidx.appcompat.widget.ActivityChooserModel;
import com.alibaba.fastjson2.JSONB;
import com.bumptech.glide.load.engine.GlideException;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.io.output.StringBuilderWriter;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PPTXMLDump {
    private static final int HEADER_SIZE = 8;
    private static final String PICTURES_ENTRY = "Pictures";
    private static final int PICT_HEADER_SIZE = 25;
    private final byte[] docstream;
    private final boolean hexHeader = true;
    private Writer out;
    private final byte[] pictstream;

    /* renamed from: CR */
    private static final String f111376CR = System.getProperty("line.separator");
    private static final byte[] hexval = {48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70};

    public PPTXMLDump(File file) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, true);
        try {
            this.docstream = readEntry(pOIFSFileSystem, HSLFSlideShow.POWERPOINT_DOCUMENT);
            this.pictstream = readEntry(pOIFSFileSystem, PICTURES_ENTRY);
            pOIFSFileSystem.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pOIFSFileSystem.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private String getPictureType(byte[] bArr) {
        int uShort = LittleEndian.getUShort(bArr, 0);
        return uShort != 8544 ? uShort != 18080 ? uShort != 28160 ? "unknown" : "png" : "jpeg" : "wmf";
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            System.out.println("Usage: PPTXMLDump (options) pptfile\nWhere options include:\n    -f     write output to <pptfile>.xml file in the current directory");
            return;
        }
        boolean z = false;
        for (String str : strArr) {
            if (!str.startsWith("-")) {
                File file = new File(str);
                PPTXMLDump pPTXMLDump = new PPTXMLDump(file);
                System.out.println("Dumping " + str);
                if (z) {
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file.getName() + ActivityChooserModel.f1436y), StandardCharsets.UTF_8);
                    pPTXMLDump.dump(outputStreamWriter);
                    outputStreamWriter.close();
                } else {
                    StringBuilderWriter stringBuilderWriter = new StringBuilderWriter(1024);
                    pPTXMLDump.dump(stringBuilderWriter);
                    System.out.println(stringBuilderWriter);
                }
            } else if ("-f".equals(str)) {
                z = true;
            }
        }
    }

    private static byte[] readEntry(POIFSFileSystem pOIFSFileSystem, String str) throws IOException {
        DirectoryNode root = pOIFSFileSystem.getRoot();
        if (!root.hasEntry(str)) {
            return null;
        }
        DocumentInputStream createDocumentInputStream = root.createDocumentInputStream(str);
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                IOUtils.copy(createDocumentInputStream, unsynchronizedByteArrayOutputStream);
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                if (createDocumentInputStream != null) {
                    createDocumentInputStream.close();
                }
                return byteArray;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (createDocumentInputStream != null) {
                    try {
                        createDocumentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private static void write(Writer writer, String str, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            writer.write(GlideException.C1935a.f14609h);
        }
        writer.write(str);
    }

    public void dump(Writer writer) throws IOException {
        this.out = writer;
        StringBuilder sb = new StringBuilder();
        sb.append("<Presentation>");
        String str = f111376CR;
        sb.append(str);
        write(writer, sb.toString(), 0);
        if (this.pictstream != null) {
            write(this.out, "<Pictures>" + str, 1);
            dumpPictures(this.pictstream, 1);
            write(this.out, "</Pictures>" + str, 1);
        }
        write(this.out, "<PowerPointDocument>" + str, 1);
        byte[] bArr = this.docstream;
        if (bArr != null) {
            dump(bArr, 0, bArr.length, 2);
        }
        write(this.out, "</PowerPointDocument>" + str, 1);
        write(this.out, "</Presentation>", 0);
    }

    public void dumpPictures(byte[] bArr, int i) throws IOException {
        int i2 = 0;
        int i3 = i;
        while (i2 < bArr.length && bArr.length - i2 >= 25) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i2, i2 + 25);
            int i4 = LittleEndian.getInt(copyOfRange, 4) - 17;
            if (i4 < 0) {
                return;
            }
            int i5 = i2 + i4 + 25;
            int i6 = i3 + 1;
            Writer writer = this.out;
            StringBuilder sb = new StringBuilder();
            sb.append("<picture size=\"");
            sb.append(i4);
            sb.append("\" type=\"");
            sb.append(getPictureType(copyOfRange));
            sb.append("\">");
            String str = f111376CR;
            sb.append(str);
            write(writer, sb.toString(), i6);
            int i7 = i6 + 1;
            write(this.out, "<header>" + str, i7);
            dump(this.out, copyOfRange, 0, copyOfRange.length, i7, true);
            write(this.out, "</header>" + str, i7);
            write(this.out, "<imgdata>" + str, i7);
            dump(this.out, bArr, 0, Math.min(i4, 100), i7, true);
            write(this.out, "</imgdata>" + str, i7);
            int i8 = i7 + (-1);
            write(this.out, "</picture>" + str, i8);
            i3 = i8 + (-1);
            i2 = i5;
        }
    }

    public void dump(byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4 = i;
        int i5 = i3;
        while (i4 <= (i + i2) - 8 && i4 >= 0) {
            int uShort = LittleEndian.getUShort(bArr, i4);
            int i6 = i4 + 2;
            int uShort2 = LittleEndian.getUShort(bArr, i6);
            int i7 = i6 + 2;
            int uInt = (int) LittleEndian.getUInt(bArr, i7);
            int i8 = i7 + 4;
            String name = RecordTypes.forTypeID(uShort2).name();
            Writer writer = this.out;
            StringBuilder sb = new StringBuilder();
            sb.append("<");
            sb.append(name);
            sb.append(" info=\"");
            sb.append(uShort);
            sb.append("\" type=\"");
            sb.append(uShort2);
            sb.append("\" size=\"");
            sb.append(uInt);
            sb.append("\" offset=\"");
            int i9 = i8 - 8;
            sb.append(i9);
            sb.append("\"");
            write(writer, sb.toString(), i5);
            this.out.write(" header=\"");
            dump(this.out, bArr, i9, 8, 0, false);
            this.out.write("\"");
            Writer writer2 = this.out;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(">");
            String str = f111376CR;
            sb2.append(str);
            writer2.write(sb2.toString());
            int i10 = i5 + 1;
            if ((uShort & 15) == 15) {
                dump(bArr, i8, uInt, i10);
            } else {
                dump(this.out, bArr, i8, Math.min(uInt, bArr.length - i8), i10, true);
            }
            i5 = i10 - 1;
            write(this.out, XMLStreamWriterImpl.OPEN_END_TAG + name + ">" + str, i5);
            i4 = i8 + uInt;
        }
    }

    private static void dump(Writer writer, byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        for (int i4 = 0; i4 < i3; i4++) {
            writer.write(GlideException.C1935a.f14609h);
        }
        int i5 = i;
        while (true) {
            int i6 = i + i2;
            if (i5 >= i6) {
                break;
            }
            byte b = bArr[i5];
            byte[] bArr2 = hexval;
            writer.write((char) bArr2[(b & JSONB.Constants.BC_INT32_NUM_MIN) >> 4]);
            writer.write((char) bArr2[(b & 15) >> 0]);
            writer.write(32);
            int i7 = i5 + 1;
            if ((i7 - i) % 25 == 0 && i5 != i6 - 1) {
                writer.write(f111376CR);
                for (int i8 = 0; i8 < i3; i8++) {
                    writer.write(GlideException.C1935a.f14609h);
                }
            }
            i5 = i7;
        }
        if (!z || i2 <= 0) {
            return;
        }
        writer.write(f111376CR);
    }
}

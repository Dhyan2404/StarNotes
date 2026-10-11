package org.apache.poi.hslf.extractor;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.hslf.record.CString;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.hslf.usermodel.HSLFTextParagraph;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class QuickButCruddyTextExtractor {

    /* renamed from: fs */
    private POIFSFileSystem f111378fs;

    /* renamed from: is */
    private InputStream f111379is;
    private final byte[] pptContents;

    public QuickButCruddyTextExtractor(String str) throws IOException {
        this(new POIFSFileSystem(new File(str)));
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Usage:");
            System.err.println("\tQuickButCruddyTextExtractor <file>");
            System.exit(1);
        }
        QuickButCruddyTextExtractor quickButCruddyTextExtractor = new QuickButCruddyTextExtractor(strArr[0]);
        System.out.println(quickButCruddyTextExtractor.getTextAsString());
        quickButCruddyTextExtractor.close();
    }

    public void close() throws IOException {
        InputStream inputStream = this.f111379is;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f111378fs = null;
    }

    public int findTextRecords(int i, List<String> list) {
        int uInt = (int) LittleEndian.getUInt(this.pptContents, i + 4);
        byte[] bArr = this.pptContents;
        if ((bArr[i] & 15) == 15) {
            return i + 8;
        }
        int uShort = LittleEndian.getUShort(bArr, i + 2);
        if (uShort == RecordTypes.TextBytesAtom.typeID) {
            list.add(HSLFTextParagraph.toExternalString(((TextBytesAtom) Record.createRecordForType(uShort, this.pptContents, i, uInt + 8)).getText(), -1));
        }
        if (uShort == RecordTypes.TextCharsAtom.typeID) {
            list.add(HSLFTextParagraph.toExternalString(((TextCharsAtom) Record.createRecordForType(uShort, this.pptContents, i, uInt + 8)).getText(), -1));
        }
        if (uShort == RecordTypes.CString.typeID) {
            String text = ((CString) Record.createRecordForType(uShort, this.pptContents, i, uInt + 8)).getText();
            if (!"___PPT10".equals(text) && !"Default Design".equals(text)) {
                list.add(text);
            }
        }
        int i2 = i + 8 + uInt;
        if (i2 > this.pptContents.length - 8) {
            return -1;
        }
        return i2;
    }

    public String getTextAsString() {
        StringBuilder sb = new StringBuilder();
        for (String str : getTextAsVector()) {
            sb.append(str);
            if (!str.endsWith("\n")) {
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    public List<String> getTextAsVector() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i != -1) {
            i = findTextRecords(i, arrayList);
        }
        return arrayList;
    }

    public QuickButCruddyTextExtractor(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
        this.f111379is = inputStream;
    }

    public QuickButCruddyTextExtractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this.f111378fs = pOIFSFileSystem;
        DocumentInputStream createDocumentInputStream = pOIFSFileSystem.createDocumentInputStream(HSLFSlideShow.POWERPOINT_DOCUMENT);
        this.pptContents = IOUtils.toByteArray(createDocumentInputStream);
        createDocumentInputStream.close();
    }
}

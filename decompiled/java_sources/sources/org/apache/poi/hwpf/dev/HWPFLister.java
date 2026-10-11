package org.apache.poi.hwpf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hssf.record.EscherAggregate;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.HWPFOldDocument;
import org.apache.poi.hwpf.OldWordFileFormatException;
import org.apache.poi.hwpf.model.CHPX;
import org.apache.poi.hwpf.model.FieldsDocumentPart;
import org.apache.poi.hwpf.model.PAPFormattedDiskPage;
import org.apache.poi.hwpf.model.PAPX;
import org.apache.poi.hwpf.model.PlexOfCps;
import org.apache.poi.hwpf.model.StyleDescription;
import org.apache.poi.hwpf.model.TextPiece;
import org.apache.poi.hwpf.sprm.SprmIterator;
import org.apache.poi.hwpf.sprm.SprmOperation;
import org.apache.poi.hwpf.usermodel.Bookmark;
import org.apache.poi.hwpf.usermodel.Bookmarks;
import org.apache.poi.hwpf.usermodel.Field;
import org.apache.poi.hwpf.usermodel.OfficeDrawing;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class HWPFLister {
    private final HWPFDocumentCore _doc;
    private LinkedHashMap<Integer, String> paragraphs;

    public HWPFLister(HWPFDocumentCore hWPFDocumentCore) {
        this._doc = hWPFDocumentCore;
        buildParagraphs();
    }

    private void buildParagraphs() {
        this.paragraphs = new LinkedHashMap<>();
        StringBuilder sb = new StringBuilder();
        String documentText = this._doc.getDocumentText();
        for (int i = 0; i < documentText.length(); i++) {
            char charAt = documentText.charAt(i);
            sb.append(charAt);
            if (charAt == '\r' || charAt == 7 || charAt == '\f') {
                this.paragraphs.put(Integer.valueOf(i), sb.toString());
                sb.setLength(0);
            }
        }
    }

    private void dumpBookmarks() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (!(hWPFDocumentCore instanceof HWPFDocument)) {
            System.out.println("Word 95 not supported so far");
            return;
        }
        Bookmarks bookmarks = ((HWPFDocument) hWPFDocumentCore).getBookmarks();
        for (int i = 0; i < bookmarks.getBookmarksCount(); i++) {
            Bookmark bookmark = bookmarks.getBookmark(i);
            System.out.println(IteratorUtils.f104923a + bookmark.getStart() + "; " + bookmark.getEnd() + "): " + bookmark.getName());
        }
    }

    private void dumpDop() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFDocument) {
            System.out.println(((HWPFDocument) hWPFDocumentCore).getDocProperties());
        } else {
            System.out.println("Word 95 not supported so far");
        }
    }

    private void dumpEscher() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFOldDocument) {
            System.out.println("Word 95 not supported so far");
        } else {
            System.out.println(((HWPFDocument) hWPFDocumentCore).getOfficeArtContent());
        }
    }

    private void dumpFields() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (!(hWPFDocumentCore instanceof HWPFDocument)) {
            System.out.println("Word 95 not supported so far");
            return;
        }
        HWPFDocument hWPFDocument = (HWPFDocument) hWPFDocumentCore;
        for (FieldsDocumentPart fieldsDocumentPart : FieldsDocumentPart.values()) {
            System.out.println("=== Document part: " + fieldsDocumentPart + " ===");
            Iterator<Field> it2 = hWPFDocument.getFields().getFields(fieldsDocumentPart).iterator();
            while (it2.hasNext()) {
                System.out.println(it2.next());
            }
        }
    }

    private void dumpOfficeDrawings() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (!(hWPFDocumentCore instanceof HWPFDocument)) {
            System.out.println("Word 95 not supported so far");
            return;
        }
        HWPFDocument hWPFDocument = (HWPFDocument) hWPFDocumentCore;
        if (hWPFDocument.getOfficeDrawingsHeaders() != null) {
            System.out.println("=== Document part: HEADER ===");
            Iterator<OfficeDrawing> it2 = hWPFDocument.getOfficeDrawingsHeaders().getOfficeDrawings().iterator();
            while (it2.hasNext()) {
                System.out.println(it2.next());
            }
        }
        if (hWPFDocument.getOfficeDrawingsHeaders() != null) {
            System.out.println("=== Document part: MAIN ===");
            Iterator<OfficeDrawing> it3 = hWPFDocument.getOfficeDrawingsMain().getOfficeDrawings().iterator();
            while (it3.hasNext()) {
                System.out.println(it3.next());
            }
        }
    }

    private void dumpPictures() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFOldDocument) {
            System.out.println("Word 95 not supported so far");
            return;
        }
        Iterator<Picture> it2 = ((HWPFDocument) hWPFDocumentCore).getPicturesTable().getAllPictures().iterator();
        while (it2.hasNext()) {
            System.out.println(it2.next());
        }
    }

    private void dumpSprms(SprmIterator sprmIterator, String str) {
        while (sprmIterator.hasNext()) {
            SprmOperation next = sprmIterator.next();
            System.out.println(str + next);
        }
    }

    private void dumpStyles() {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFOldDocument) {
            System.out.println("Word 95 not supported so far");
            return;
        }
        HWPFDocument hWPFDocument = (HWPFDocument) hWPFDocumentCore;
        for (int i = 0; i < hWPFDocument.getStyleSheet().numStyles(); i++) {
            StyleDescription styleDescription = hWPFDocument.getStyleSheet().getStyleDescription(i);
            if (styleDescription != null) {
                System.out.println("=== Style #" + i + " '" + styleDescription.getName() + "' ===");
                System.out.println(styleDescription);
                if (styleDescription.getPAPX() != null) {
                    dumpSprms(new SprmIterator(styleDescription.getPAPX(), 2), "Style's PAP SPRM: ");
                }
                if (styleDescription.getCHPX() != null) {
                    dumpSprms(new SprmIterator(styleDescription.getCHPX(), 0), "Style's CHP SPRM: ");
                }
            }
        }
    }

    private static HWPFDocumentCore loadDoc(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            HWPFDocumentCore loadDoc = loadDoc(fileInputStream);
            fileInputStream.close();
            return loadDoc;
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

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            System.err.println("Use:");
            System.err.println("\tHWPFLister <filename>\n\t\t[--dop]\n\t\t[--textPieces] [--textPiecesText]\n\t\t[--chpx] [--chpxProperties] [--chpxSprms]\n\t\t[--papx] [--papxProperties] [--papxSprms]\n\t\t[--paragraphs] [--paragraphsText]\n\t\t[--bookmarks]\n\t\t[--escher]\n\t\t[--fields]\n\t\t[--pictures]\n\t\t[--officeDrawings]\n\t\t[--styles]\n\t\t[--writereadback]\n");
            System.exit(1);
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        for (String str : Arrays.asList(strArr).subList(1, strArr.length)) {
            if ("--dop".equals(str)) {
                z2 = true;
            }
            if ("--textPieces".equals(str)) {
                z3 = true;
            }
            if ("--textPiecesText".equals(str)) {
                z4 = true;
            }
            if ("--chpx".equals(str)) {
                z5 = true;
            }
            if ("--chpxProperties".equals(str)) {
                z6 = true;
            }
            if ("--chpxSprms".equals(str)) {
                z7 = true;
            }
            if ("--paragraphs".equals(str)) {
                z11 = true;
            }
            if ("--paragraphsText".equals(str)) {
                z12 = true;
            }
            if ("--papx".equals(str)) {
                z8 = true;
            }
            if ("--papxProperties".equals(str)) {
                z9 = true;
            }
            if ("--papxSprms".equals(str)) {
                z10 = true;
            }
            if ("--bookmarks".equals(str)) {
                z13 = true;
            }
            if ("--escher".equals(str)) {
                z14 = true;
            }
            if ("--fields".equals(str)) {
                z15 = true;
            }
            if ("--pictures".equals(str)) {
                z17 = true;
            }
            if ("--officeDrawings".equals(str)) {
                z16 = true;
            }
            if ("--styles".equals(str)) {
                z18 = true;
            }
            if ("--writereadback".equals(str)) {
                z = true;
            }
        }
        HWPFDocumentCore loadDoc = loadDoc(new File(strArr[0]));
        if (z) {
            loadDoc = writeOutAndReadBack(loadDoc);
        }
        Boolean bool = Boolean.TRUE;
        boolean z19 = z12;
        System.setProperty("org.apache.poi.hwpf.preserveBinTables", bool.toString());
        System.setProperty("org.apache.poi.hwpf.preserveTextTable", bool.toString());
        HWPFDocumentCore loadDoc2 = loadDoc(new File(strArr[0]));
        if (z) {
            loadDoc2 = writeOutAndReadBack(loadDoc2);
        }
        HWPFLister hWPFLister = new HWPFLister(loadDoc2);
        HWPFLister hWPFLister2 = new HWPFLister(loadDoc);
        System.out.println("== OLE streams ==");
        hWPFLister.dumpFileSystem();
        System.out.println("== FIB (original) ==");
        hWPFLister.dumpFIB();
        if (z2) {
            System.out.println("== Document properties ==");
            hWPFLister.dumpDop();
        }
        if (z3) {
            System.out.println("== Text pieces (original) ==");
            hWPFLister.dumpTextPieces(z4);
        }
        if (z5) {
            System.out.println("== CHPX (original) ==");
            hWPFLister.dumpChpx(z6, z7);
            System.out.println("== CHPX (rebuilded) ==");
            hWPFLister2.dumpChpx(z6, z7);
        }
        if (z8) {
            System.out.println("== PAPX (original) ==");
            hWPFLister.dumpPapx(z9, z10);
            System.out.println("== PAPX (rebuilded) ==");
            hWPFLister2.dumpPapx(z9, z10);
        }
        if (z11) {
            System.out.println("== Text paragraphs (original) ==");
            hWPFLister2.dumpParagraphs(true);
            System.out.println("== DOM paragraphs (rebuilded) ==");
            hWPFLister2.dumpParagraphsDom(z19);
        }
        if (z13) {
            System.out.println("== BOOKMARKS (rebuilded) ==");
            hWPFLister2.dumpBookmarks();
        }
        if (z14) {
            System.out.println("== ESCHER PROPERTIES (rebuilded) ==");
            hWPFLister2.dumpEscher();
        }
        if (z15) {
            System.out.println("== FIELDS (rebuilded) ==");
            hWPFLister2.dumpFields();
        }
        if (z16) {
            System.out.println("== OFFICE DRAWINGS (rebuilded) ==");
            hWPFLister2.dumpOfficeDrawings();
        }
        if (z17) {
            System.out.println("== PICTURES (rebuilded) ==");
            hWPFLister2.dumpPictures();
        }
        if (z18) {
            System.out.println("== STYLES (rebuilded) ==");
            hWPFLister2.dumpStyles();
        }
    }

    private static HWPFDocumentCore writeOutAndReadBack(HWPFDocumentCore hWPFDocumentCore) {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                hWPFDocumentCore.write(unsynchronizedByteArrayOutputStream);
                InputStream inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
                try {
                    HWPFDocumentCore loadDoc = loadDoc(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    unsynchronizedByteArrayOutputStream.close();
                    return loadDoc;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public void dumpChpx(boolean z, boolean z2) {
        for (CHPX chpx : this._doc.getCharacterTable().getTextRuns()) {
            System.out.println(chpx);
            if (z) {
                System.out.println(chpx.getCharacterProperties(this._doc.getStyleSheet(), EscherAggregate.ST_NIL));
            }
            if (z2) {
                SprmIterator sprmIterator = new SprmIterator(chpx.getGrpprl(), 0);
                while (sprmIterator.hasNext()) {
                    System.out.println("\t" + sprmIterator.next());
                }
            }
            String text = new Range(chpx.getStart(), chpx.getEnd(), this._doc.getOverallRange()) { // from class: org.apache.poi.hwpf.dev.HWPFLister.1
                @Override // org.apache.poi.hwpf.usermodel.Range
                public String toString() {
                    return "CHPX range (" + super.toString() + MotionUtils.f31762d;
                }
            }.text();
            StringBuilder sb = new StringBuilder();
            for (char c : text.toCharArray()) {
                if (c < 30) {
                    sb.append("\\0x");
                    sb.append(Integer.toHexString(c));
                } else {
                    sb.append(c);
                }
            }
            System.out.println(sb);
        }
    }

    public void dumpFIB() {
        System.out.println(this._doc.getFileInformationBlock());
    }

    public void dumpFileSystem() {
        System.out.println(dumpFileSystem((DirectoryEntry) this._doc.getDirectory()));
    }

    public void dumpPapx(boolean z, boolean z2) {
        if (this._doc instanceof HWPFDocument) {
            System.out.println("binary PAP pages ");
            HWPFDocumentCore hWPFDocumentCore = this._doc;
            HWPFDocument hWPFDocument = (HWPFDocument) hWPFDocumentCore;
            byte[] mainStream = hWPFDocumentCore.getMainStream();
            PlexOfCps plexOfCps = new PlexOfCps(hWPFDocument.getTableStream(), hWPFDocument.getFileInformationBlock().getFcPlcfbtePapx(), hWPFDocument.getFileInformationBlock().getLcbPlcfbtePapx(), 4);
            ArrayList<PAPX> arrayList = new ArrayList();
            int length = plexOfCps.length();
            for (int i = 0; i < length; i++) {
                PAPFormattedDiskPage pAPFormattedDiskPage = new PAPFormattedDiskPage(mainStream, hWPFDocument.getDataStream(), LittleEndian.getInt(plexOfCps.getProperty(i).getBytes()) * 512, hWPFDocument.getTextTable());
                System.out.println("* PFKP: " + pAPFormattedDiskPage);
                for (PAPX papx : pAPFormattedDiskPage.getPAPXs()) {
                    System.out.println("** " + papx);
                    arrayList.add(papx);
                    if (papx != null && z2) {
                        dumpSprms(new SprmIterator(papx.getGrpprl(), 2), "*** ");
                    }
                }
            }
            Collections.sort(arrayList);
            System.out.println("* Sorted by END");
            for (PAPX papx2 : arrayList) {
                System.out.println("** " + papx2);
                if (papx2 != null && z2) {
                    dumpSprms(new SprmIterator(papx2.getGrpprl(), 2), "*** ");
                }
            }
        }
        Iterator<PAPX> it2 = this._doc.getParagraphTable().getParagraphs().iterator();
        while (it2.hasNext()) {
            PAPX next = it2.next();
            System.out.println(next);
            if (z) {
                System.out.println(Paragraph.newParagraph(this._doc.getOverallRange(), next).getProps());
            }
            dumpSprms(new SprmIterator(next.getGrpprl(), 2), "\t");
        }
    }

    public void dumpParagraphs(boolean z) {
        for (Map.Entry<Integer, String> entry : this.paragraphs.entrySet()) {
            Integer key = entry.getKey();
            System.out.println("[...; " + (key.intValue() + 1) + "): " + entry.getValue());
            if (z) {
                Iterator<PAPX> it2 = this._doc.getParagraphTable().getParagraphs().iterator();
                boolean z2 = false;
                while (it2.hasNext()) {
                    PAPX next = it2.next();
                    if (next.getStart() <= key.intValue() && key.intValue() < next.getEnd()) {
                        System.out.println("* " + next);
                        dumpSprms(new SprmIterator(next.getGrpprl(), 2), "** ");
                        z2 = true;
                    }
                }
                if (!z2) {
                    System.out.println("* NO PAPX ASSOTIATED WITH PARAGRAPH!");
                }
            }
        }
    }

    public void dumpParagraphsDom(boolean z) {
        Range overallRange = this._doc.getOverallRange();
        for (int i = 0; i < overallRange.numParagraphs(); i++) {
            Paragraph paragraph = overallRange.getParagraph(i);
            System.out.println(i + ":\t" + paragraph);
            if (z) {
                System.out.println(paragraph.text());
            }
        }
    }

    public void dumpTextPieces(boolean z) {
        for (TextPiece textPiece : this._doc.getTextTable().getTextPieces()) {
            System.out.println(textPiece);
            if (z) {
                System.out.println("\t" + ((Object) textPiece.getStringBuilder()));
            }
        }
    }

    private String dumpFileSystem(DirectoryEntry directoryEntry) {
        StringBuilder sb = new StringBuilder();
        sb.append("+ ");
        sb.append(directoryEntry.getName());
        Iterator<Entry> entries = directoryEntry.getEntries();
        while (entries.hasNext()) {
            sb.append(("\n" + dumpFileSystem(entries.next())).replace("\n", "\n+---"));
        }
        sb.append("\n");
        return sb.toString();
    }

    private static HWPFDocumentCore loadDoc(InputStream inputStream) throws IOException {
        POIFSFileSystem verifyAndBuildPOIFS = HWPFDocumentCore.verifyAndBuildPOIFS(inputStream);
        try {
            return new HWPFDocument(verifyAndBuildPOIFS);
        } catch (OldWordFileFormatException unused) {
            return new HWPFOldDocument(verifyAndBuildPOIFS);
        }
    }

    private String dumpFileSystem(Entry entry) {
        if (entry instanceof DirectoryEntry) {
            return dumpFileSystem((DirectoryEntry) entry);
        }
        return entry.getName();
    }
}

package org.apache.poi.hpsf;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class PropertySetFactory {
    public static PropertySet create(DirectoryEntry directoryEntry, String str) throws FileNotFoundException, NoPropertySetStreamException, IOException, UnsupportedEncodingException {
        DocumentInputStream createDocumentInputStream = ((DirectoryNode) directoryEntry).createDocumentInputStream(str);
        try {
            PropertySet create = create(createDocumentInputStream);
            if (createDocumentInputStream != null) {
                createDocumentInputStream.close();
            }
            return create;
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

    public static DocumentSummaryInformation newDocumentSummaryInformation() {
        return new DocumentSummaryInformation();
    }

    public static SummaryInformation newSummaryInformation() {
        return new SummaryInformation();
    }

    public static PropertySet create(InputStream inputStream) throws NoPropertySetStreamException, IOException {
        inputStream.mark(45);
        LittleEndianInputStream littleEndianInputStream = new LittleEndianInputStream(inputStream);
        int readUShort = littleEndianInputStream.readUShort();
        int readUShort2 = littleEndianInputStream.readUShort();
        littleEndianInputStream.readUInt();
        byte[] bArr = new byte[16];
        littleEndianInputStream.readFully(bArr);
        int readUInt = (int) littleEndianInputStream.readUInt();
        if (readUShort == 65534 && readUShort2 == 0 && readUInt >= 0) {
            if (readUInt > 0) {
                littleEndianInputStream.readFully(bArr);
            }
            inputStream.reset();
            ClassID classID = new ClassID(bArr, 0);
            if (readUInt > 0 && PropertySet.matchesSummary(classID, SummaryInformation.FORMAT_ID)) {
                return new SummaryInformation(inputStream);
            }
            if (readUInt > 0 && PropertySet.matchesSummary(classID, DocumentSummaryInformation.FORMAT_ID)) {
                return new DocumentSummaryInformation(inputStream);
            }
            return new PropertySet(inputStream);
        }
        throw new NoPropertySetStreamException("ByteOrder: " + readUShort + ", format: " + readUShort2 + ", sectionCount: " + readUInt);
    }
}

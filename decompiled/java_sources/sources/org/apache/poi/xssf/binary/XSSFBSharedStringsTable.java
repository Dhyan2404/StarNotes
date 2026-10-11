package org.apache.poi.xssf.binary;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.xssf.model.SharedStrings;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;
import org.xml.sax.SAXException;

@Internal
/* loaded from: classes13.dex */
public class XSSFBSharedStringsTable implements SharedStrings {
    private int count;
    private List<String> strings = new ArrayList();
    private int uniqueCount;

    /* renamed from: org.apache.poi.xssf.binary.XSSFBSharedStringsTable$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199481 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType;

        static {
            int[] iArr = new int[XSSFBRecordType.values().length];
            $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType = iArr;
            try {
                iArr[XSSFBRecordType.BrtSstItem.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtBeginSst.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public class SSTBinaryReader extends XSSFBParser {
        public SSTBinaryReader(InputStream inputStream) {
            super(inputStream);
        }

        @Override // org.apache.poi.xssf.binary.XSSFBParser
        public void handleRecord(int i, byte[] bArr) throws XSSFBParseException {
            int i2 = C199481.$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.lookup(i).ordinal()];
            if (i2 == 1) {
                XSSFBSharedStringsTable.this.strings.add(XSSFBRichStr.build(bArr, 0).getString());
            } else {
                if (i2 != 2) {
                    return;
                }
                XSSFBSharedStringsTable.this.count = XSSFBUtils.castToInt(LittleEndian.getUInt(bArr, 0));
                XSSFBSharedStringsTable.this.uniqueCount = XSSFBUtils.castToInt(LittleEndian.getUInt(bArr, 4));
            }
        }
    }

    public XSSFBSharedStringsTable(OPCPackage oPCPackage) throws IOException, SAXException {
        ArrayList<PackagePart> partsByContentType = oPCPackage.getPartsByContentType(XSSFBRelation.SHARED_STRINGS_BINARY.getContentType());
        if (partsByContentType.isEmpty()) {
            return;
        }
        InputStream inputStream = partsByContentType.get(0).getInputStream();
        try {
            readFrom(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void readFrom(InputStream inputStream) throws IOException {
        new SSTBinaryReader(inputStream).parse();
    }

    @Override // org.apache.poi.xssf.model.SharedStrings
    public int getCount() {
        return this.count;
    }

    @Override // org.apache.poi.xssf.model.SharedStrings
    public RichTextString getItemAt(int i) {
        return new XSSFRichTextString(this.strings.get(i));
    }

    @Override // org.apache.poi.xssf.model.SharedStrings
    public int getUniqueCount() {
        return this.uniqueCount;
    }

    public XSSFBSharedStringsTable(PackagePart packagePart) throws IOException, SAXException {
        InputStream inputStream = packagePart.getInputStream();
        try {
            readFrom(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}

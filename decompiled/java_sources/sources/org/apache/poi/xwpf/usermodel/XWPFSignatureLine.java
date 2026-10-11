package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.office.office.CTSignatureLine;
import com.microsoft.schemas.vml.CTImageData;
import javax.xml.namespace.QName;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.apache.poi.poifs.crypt.dsig.SignatureLine;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFSignatureLine;
import org.apache.xmlbeans.XmlException;

/* loaded from: classes13.dex */
public class XWPFSignatureLine extends SignatureLine {
    private static final String MS_VML_URN = "urn:schemas-microsoft-com:vml";
    private CTSignatureLine line;

    /* renamed from: org.apache.poi.xwpf.usermodel.XWPFSignatureLine$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199921 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$PictureType;

        static {
            int[] iArr = new int[PictureType.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$PictureType = iArr;
            try {
                iArr[PictureType.BMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.DIB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.EMF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.EPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.GIF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.JPEG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.PICT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.PNG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.TIFF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.WMF.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.WPG.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$PictureType[PictureType.WDP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$add$0(XWPFParagraph xWPFParagraph, byte[] bArr, PictureType pictureType) throws InvalidFormatException {
        return xWPFParagraph.getDocument().addPictureData(bArr, mapType(pictureType));
    }

    private static PictureType mapType(PictureType pictureType) throws InvalidFormatException {
        switch (C199921.$SwitchMap$org$apache$poi$common$usermodel$PictureType[pictureType.ordinal()]) {
            case 1:
                return PictureType.BMP;
            case 2:
                return PictureType.DIB;
            case 3:
                return PictureType.EMF;
            case 4:
                return PictureType.EPS;
            case 5:
                return PictureType.GIF;
            case 6:
                return PictureType.JPEG;
            case 7:
                return PictureType.PICT;
            case 8:
                return PictureType.PNG;
            case 9:
                return PictureType.TIFF;
            case 10:
                return PictureType.WMF;
            case 11:
                return PictureType.WPG;
            case 12:
                return PictureType.WDP;
            default:
                throw new InvalidFormatException("Unsupported picture format " + pictureType);
        }
    }

    public void add(final XWPFParagraph xWPFParagraph) {
        add(xWPFParagraph.createRun().getCTR().addNewPict(), new SignatureLine.AddPictureData() { // from class: com.sunia.HTREnginev2.rto
            @Override // org.apache.poi.poifs.crypt.dsig.SignatureLine.AddPictureData
            public final String addPictureData(byte[] bArr, PictureType pictureType) {
                String lambda$add$0;
                lambda$add$0 = XWPFSignatureLine.lambda$add$0(XWPFParagraph.this, bArr, pictureType);
                return lambda$add$0;
            }
        });
    }

    public void parse(XWPFDocument xWPFDocument) throws XmlException {
        CTSignatureLine cTSignatureLine = (CTSignatureLine) XPathHelper.selectProperty(xWPFDocument.getDocument(), CTSignatureLine.class, null, new QName[]{new QName(XSSFRelation.NS_WORDPROCESSINGML, "body")}, new QName[]{new QName(XSSFRelation.NS_WORDPROCESSINGML, "p")}, new QName[]{new QName(XSSFRelation.NS_WORDPROCESSINGML, "r")}, new QName[]{new QName(XSSFRelation.NS_WORDPROCESSINGML, ContentTypes.EXTENSION_PICT)}, new QName[]{new QName(MS_VML_URN, "shape")}, new QName[]{SignatureLine.QNAME_SIGNATURE_LINE});
        this.line = cTSignatureLine;
        if (cTSignatureLine != null) {
            setSignatureShape(cTSignatureLine);
            parse();
        }
    }

    @Override // org.apache.poi.poifs.crypt.dsig.SignatureLine
    public void setRelationId(CTImageData cTImageData, String str) {
        cTImageData.setId2(str);
    }
}

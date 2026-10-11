package org.apache.poi.convert.xwpf;

import java.awt.geom.Point2D;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackageAccess;
import org.apache.poi.poifs.filesystem.DocumentFactoryHelper;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.HTMLFormatException;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.poifs.filesystem.SMTPFormatException;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFPictureData;
import org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule;
import org.w3c.dom.Node;

/* loaded from: classes12.dex */
public class XWPFWordToHtmlUtils extends WordToHtmlUtils {
    public static String getColorValue(String str) {
        return getColorValue(str, null);
    }

    public static InputStream getInputStream(XWPFPictureData xWPFPictureData) {
        try {
            InputStream inputStream = xWPFPictureData.getPackagePart().getInputStream();
            if (inputStream != null && !inputStream.markSupported()) {
                return new BufferedInputStream(inputStream);
            }
            return inputStream;
        } catch (IOException unused) {
            return null;
        }
    }

    public static STLineSpacingRule.Enum getLineSpaceRule(CTSpacing cTSpacing) {
        try {
            return cTSpacing.getLineRule();
        } catch (XmlValueOutOfRangeException unused) {
            Node domNode = cTSpacing.xgetLineRule().getDomNode();
            return STLineSpacingRule.Enum.forString(domNode.getNodeValue().substring(domNode.getPrefix().length() + 1));
        }
    }

    public static PictureType getPictureType(int i) {
        PictureType findByOoxmlId = PictureType.findByOoxmlId(i);
        return findByOoxmlId == null ? PictureType.UNKNOWN : findByOoxmlId;
    }

    public static boolean isRGBColor(String str) {
        if (str == null || !(str.length() == 6 || str.length() == 8)) {
            return false;
        }
        for (char c : str.toLowerCase().toCharArray()) {
            if ((c < '0' || c > '9') && ((c < 'a' || c > 'f') && (c < 'A' || c > 'F'))) {
                return false;
            }
        }
        return true;
    }

    public static XWPFDocument loadDoc(File file, String str) throws Exception {
        FileMagic valueOf = FileMagic.valueOf(file);
        if (valueOf == FileMagic.OLE2) {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, true);
            try {
                InputStream decryptedStream = DocumentFactoryHelper.getDecryptedStream(pOIFSFileSystem.getRoot(), str);
                try {
                    XWPFDocument loadDoc = loadDoc(decryptedStream);
                    if (decryptedStream != null) {
                        decryptedStream.close();
                    }
                    pOIFSFileSystem.close();
                    return loadDoc;
                } finally {
                }
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
        } else {
            if (valueOf != FileMagic.SMTP) {
                if (valueOf != FileMagic.HTML) {
                    return new XWPFDocument(OPCPackage.open(file, PackageAccess.READ));
                }
                throw new HTMLFormatException("The supplied data appears to be in " + valueOf + " format. ");
            }
            throw new SMTPFormatException("The supplied data appears to be in " + valueOf + " format. ");
        }
    }

    public static double parseNumberValue(String str) {
        return StringUtils.isInteger(str) ? ExtUnits.dxaToPixel(Integer.parseInt(str)) : ExtUnits.dxaToPixel(ExtUnits.toDXA(str));
    }

    public static Point2D parsePoint(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(",");
        if (split.length != 2) {
            return null;
        }
        return new Point2D.Double(parseNumberValue(split[0]), parseNumberValue(split[1]));
    }

    public static boolean parseSTTrueFalse(STTrueFalse.Enum r1) {
        return WordToHtmlUtils.isNull(r1) || r1 == STTrueFalse.TRUE || r1 == STTrueFalse.f115764T;
    }

    public static String getColorValue(String str, String str2) {
        if (StringUtils.isNullOrEmpty(str)) {
            return str2;
        }
        if (!isRGBColor(str)) {
            return str;
        }
        return "#" + str;
    }

    public static PictureType getPictureType(InputStream inputStream) {
        if (inputStream == null) {
            return PictureType.UNKNOWN;
        }
        try {
            return PictureType.valueOf(FileMagic.valueOf(inputStream));
        } catch (IOException unused) {
            return PictureType.UNKNOWN;
        }
    }

    public static XWPFDocument loadDoc(InputStream inputStream) throws Exception {
        return new XWPFDocument(OPCPackage.open(inputStream));
    }
}

package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.usermodel.XSLFTheme;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBaseStyles;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorScheme;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontScheme;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeStyleSheet;
import org.openxmlformats.schemas.drawingml.x2006.main.ThemeDocument;

/* loaded from: classes13.dex */
public class XWPFTheme extends POIXMLDocumentPart {
    private CTOfficeStyleSheet _theme;

    public XWPFTheme(PackagePart packagePart) {
        super(packagePart);
    }

    private static CTColor getMapColor(String str, CTColorScheme cTColorScheme) {
        if (str == null || cTColorScheme == null) {
            return null;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1177623385:
                if (str.equals("accent1")) {
                    c = 0;
                    break;
                }
                break;
            case -1177623384:
                if (str.equals("accent2")) {
                    c = 1;
                    break;
                }
                break;
            case -1177623383:
                if (str.equals("accent3")) {
                    c = 2;
                    break;
                }
                break;
            case -1177623382:
                if (str.equals("accent4")) {
                    c = 3;
                    break;
                }
                break;
            case -1177623381:
                if (str.equals("accent5")) {
                    c = 4;
                    break;
                }
                break;
            case -1177623380:
                if (str.equals("accent6")) {
                    c = 5;
                    break;
                }
                break;
            case 99466:
                if (str.equals("dk1")) {
                    c = 6;
                    break;
                }
                break;
            case 99467:
                if (str.equals("dk2")) {
                    c = 7;
                    break;
                }
                break;
            case 107433:
                if (str.equals("lt1")) {
                    c = '\b';
                    break;
                }
                break;
            case 107434:
                if (str.equals("lt2")) {
                    c = '\t';
                    break;
                }
                break;
            case 99368034:
                if (str.equals("hlink")) {
                    c = '\n';
                    break;
                }
                break;
            case 268452191:
                if (str.equals("folHlink")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return cTColorScheme.getAccent1();
            case 1:
                return cTColorScheme.getAccent2();
            case 2:
                return cTColorScheme.getAccent3();
            case 3:
                return cTColorScheme.getAccent4();
            case 4:
                return cTColorScheme.getAccent5();
            case 5:
                return cTColorScheme.getAccent6();
            case 6:
                return cTColorScheme.getDk1();
            case 7:
                return cTColorScheme.getDk2();
            case '\b':
                return cTColorScheme.getLt1();
            case '\t':
                return cTColorScheme.getLt2();
            case '\n':
                return cTColorScheme.getHlink();
            case 11:
                return cTColorScheme.getFolHlink();
            default:
                return null;
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        if (this._theme == null) {
            throw new IOException("Unable to write out theme that was never read in!");
        }
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(XSSFRelation.NS_DRAWINGML, "theme"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this._theme.save(outputStream, xmlOptions);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Internal
    public CTColor getCTColor(String str) {
        CTBaseStyles themeElements = this._theme.getThemeElements();
        return getMapColor(str, themeElements == null ? null : themeElements.getClrScheme());
    }

    public CTFontScheme getFontScheme() {
        CTBaseStyles themeElements = this._theme.getThemeElements();
        if (themeElements == null) {
            themeElements = this._theme.addNewThemeElements();
        }
        CTFontScheme fontScheme = themeElements.getFontScheme();
        return fontScheme == null ? themeElements.addNewFontScheme() : fontScheme;
    }

    public String getMajorFont() {
        return this._theme.getThemeElements().getFontScheme().getMajorFont().getLatin().getTypeface();
    }

    public CTFontCollection getMajorFontCollection() {
        CTFontScheme fontScheme = getFontScheme();
        CTFontCollection majorFont = fontScheme.getMajorFont();
        return majorFont == null ? fontScheme.addNewMajorFont() : majorFont;
    }

    public String getMinorFont() {
        return this._theme.getThemeElements().getFontScheme().getMinorFont().getLatin().getTypeface();
    }

    public CTFontCollection getMinorFontCollection() {
        CTFontScheme fontScheme = getFontScheme();
        CTFontCollection minorFont = fontScheme.getMinorFont();
        return minorFont == null ? fontScheme.addNewMinorFont() : minorFont;
    }

    public String getName() {
        return this._theme.getName();
    }

    public void importTheme(XSLFTheme xSLFTheme) {
        this._theme = xSLFTheme.getXmlObject();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                setTheme(ThemeDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getTheme());
                if (inputStream != null) {
                    inputStream.close();
                }
            } finally {
            }
        } catch (XmlException e) {
            throw new POIXMLException("Unable to read theme", e);
        }
    }

    public void setName(String str) {
        this._theme.setName(str);
    }

    public void setTheme(CTOfficeStyleSheet cTOfficeStyleSheet) {
        this._theme = cTOfficeStyleSheet;
    }

    public XWPFTheme() {
        this._theme = CTOfficeStyleSheet.Factory.newInstance();
    }
}

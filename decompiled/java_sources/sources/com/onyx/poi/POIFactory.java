package com.onyx.poi;

import android.content.Context;
import com.onyx.common.util.JLog;
import com.onyx.tex.MathLaTeX;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.NeoLoggerContextFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.poi.BuildConfig;
import org.apache.poi.convert.AbstractConverter;
import org.apache.poi.convert.BitmapPicturesManager;
import org.apache.poi.convert.WordConvertFactory;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource;
import org.apache.poi.openxml4j.util.ZipSecureFile;
import org.apache.poi.sl.PPTFactory;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.xerces.jaxp.SAXParserFactoryImpl;

/* loaded from: classes9.dex */
public class POIFactory {

    /* renamed from: a */
    public static final String f62926a = "POIFactory";

    /* renamed from: b */
    public static Context f62927b;

    static {
        try {
            LogManager.setFactory(new NeoLoggerContextFactory());
            ZipSecureFile.setMinInflateRatio(0.001d);
            ZipInputStreamZipEntrySource.setThresholdBytesForTempFiles(1048576);
            AbstractConverter.setFontUnit(ExtUnits.UNIT_PX);
            POIXMLTypeLoader.DEFAULT_XML_OPTIONS.setLoadUseXMLReader(new SAXParserFactoryImpl().newSAXParser().getXMLReader());
        } catch (Exception e) {
            JLog.m41643e(f62926a, e);
        }
    }

    /* renamed from: a */
    public static String m52132a(Throwable th) {
        return th.getClass().getSimpleName() + IteratorUtils.f104923a + th.getMessage() + IteratorUtils.f104924b;
    }

    public static Context getContext() {
        return f62927b;
    }

    public static void init(Context context) {
        Context applicationContext = context.getApplicationContext();
        f62927b = applicationContext;
        MathLaTeX.init(applicationContext);
    }

    public static PPTFactory openPPT(String str, String str2) throws Exception {
        PPTFactory build = new PPTFactory.Builder().setFilePath(str).setPassword(str2).build();
        build.openPPT();
        return build;
    }

    public static WordConvertFactory openWord(String str, String str2, String str3) throws Exception {
        return new WordConvertFactory.Builder().setFilePath(str).setPassword(str2).setDocumentParaSize(2000).setTableIndentRatio(0.2f).setPicturesManager(new BitmapPicturesManager(str3)).build();
    }

    public static boolean printPOIThrowable(Throwable th) {
        Package r1;
        if (th == null || (r1 = th.getClass().getPackage()) == null || !r1.getName().startsWith(BuildConfig.LIBRARY_PACKAGE_NAME)) {
            return false;
        }
        JLog.m41642e(f62926a, m52132a(th), new Object[0]);
        return true;
    }

    public static void setLimitXWPFDocumentSize(int i) {
        XWPFDocument.DOCUMENT_MAX_SIZE = i;
    }

    public static WordConvertFactory openWord(String str, String str2) throws Exception {
        return new WordConvertFactory.Builder().setFilePath(str).setPassword(str2).setDocumentParaSize(2000).setTableIndentRatio(0.2f).build();
    }
}

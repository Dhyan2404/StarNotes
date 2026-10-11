package org.apache.poi.openxml4j.opc.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;
import org.apache.poi.openxml4j.exceptions.NotOfficeXmlFileException;
import org.apache.poi.openxml4j.exceptions.OLE2NotOfficeXmlFileException;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.ZipPackage;
import org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream;
import org.apache.poi.openxml4j.util.ZipSecureFile;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class ZipHelper {
    private static final String FORWARD_SLASH = "/";

    /* renamed from: org.apache.poi.openxml4j.opc.internal.ZipHelper$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195741 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic;

        static {
            int[] iArr = new int[FileMagic.values().length];
            $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic = iArr;
            try {
                iArr[FileMagic.OLE2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.XML.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private ZipHelper() {
    }

    public static ZipArchiveEntry getCorePropertiesZipEntry(ZipPackage zipPackage) {
        PackageRelationship relationship = zipPackage.getRelationshipsByType(PackageRelationshipTypes.CORE_PROPERTIES).getRelationship(0);
        if (relationship == null) {
            return null;
        }
        return new ZipArchiveEntry(relationship.getTargetURI().getPath());
    }

    public static String getOPCNameFromZipItemName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("zipItemName cannot be null");
        }
        if (str.startsWith("/")) {
            return str;
        }
        return "/" + str;
    }

    public static String getZipItemNameFromOPCName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("opcItemName cannot be null");
        }
        while (str.startsWith("/")) {
            str = str.substring(1);
        }
        return str;
    }

    public static URI getZipURIFromOPCName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("opcItemName");
        }
        while (str.startsWith("/")) {
            str = str.substring(1);
        }
        try {
            return new URI(str);
        } catch (URISyntaxException unused) {
            return null;
        }
    }

    public static ZipSecureFile openZipFile(File file) throws IOException, NotOfficeXmlFileException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    verifyZipHeader(fileInputStream);
                    fileInputStream.close();
                    return new ZipSecureFile(file);
                } finally {
                }
            } else {
                throw new IOException("File is a directory");
            }
        } else {
            throw new FileNotFoundException("File does not exist");
        }
    }

    public static ZipArchiveThresholdInputStream openZipStream(InputStream inputStream) throws IOException {
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        verifyZipHeader(prepareToCheckMagic);
        return new ZipArchiveThresholdInputStream(new ZipArchiveInputStream(prepareToCheckMagic));
    }

    private static void verifyZipHeader(InputStream inputStream) throws NotOfficeXmlFileException, IOException {
        int i = C195741.$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.valueOf(FileMagic.prepareToCheckMagic(inputStream)).ordinal()];
        if (i == 1) {
            throw new OLE2NotOfficeXmlFileException("The supplied data appears to be in the OLE2 Format. You are calling the part of POI that deals with OOXML (Office Open XML) Documents. You need to call a different part of POI to process this data (eg HSSF instead of XSSF)");
        }
        if (i == 2) {
            throw new NotOfficeXmlFileException("The supplied data appears to be a raw XML file. Formats such as Office 2003 XML are not supported");
        }
    }

    public static ZipSecureFile openZipFile(String str) throws IOException {
        return openZipFile(new File(str));
    }
}

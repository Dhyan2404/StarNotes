package org.apache.poi.ooxml.dev;

import androidx.appcompat.widget.ActivityChooserModel;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.internal.ZipHelper;
import org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream;
import org.apache.poi.openxml4j.util.ZipSecureFile;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

/* loaded from: classes12.dex */
public class OOXMLPrettyPrint {
    private static final String XML_INDENT_AMOUNT = "{http://xml.apache.org/xslt}indent-amount";
    private final DocumentBuilder documentBuilder;

    public OOXMLPrettyPrint() {
        ZipSecureFile.setMinInflateRatio(1.0E-5d);
        this.documentBuilder = DocumentHelper.newDocumentBuilder();
    }

    private void handle(ZipSecureFile zipSecureFile, ZipOutputStream zipOutputStream) throws IOException {
        Enumeration<ZipArchiveEntry> entries = zipSecureFile.getEntries();
        while (entries.hasMoreElements()) {
            ZipArchiveEntry nextElement = entries.nextElement();
            String name = nextElement.getName();
            zipOutputStream.putNextEntry(new ZipEntry(name));
            try {
                try {
                    if (!name.endsWith(ActivityChooserModel.f1436y) && !name.endsWith(PackagingURIHelper.RELATIONSHIP_PART_EXTENSION_NAME)) {
                        System.out.println("Not pretty-printing non-XML file " + name);
                        ZipArchiveThresholdInputStream inputStream = zipSecureFile.getInputStream(nextElement);
                        try {
                            IOUtils.copy(inputStream, zipOutputStream);
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            zipOutputStream.closeEntry();
                            System.out.print(".");
                        } finally {
                        }
                    }
                    Document parse = this.documentBuilder.parse(new InputSource(zipSecureFile.getInputStream(nextElement)));
                    parse.setXmlStandalone(true);
                    pretty(parse, zipOutputStream, 2);
                    zipOutputStream.closeEntry();
                    System.out.print(".");
                } catch (Throwable th) {
                    zipOutputStream.closeEntry();
                    throw th;
                }
            } catch (Exception e) {
                throw new IOException("While handling entry " + name, e);
            }
        }
    }

    private static void handleFile(File file, File file2) throws IOException {
        System.out.println("Reading zip-file " + file + " and writing pretty-printed XML to " + file2);
        try {
            ZipSecureFile openZipFile = ZipHelper.openZipFile(file);
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2)));
                try {
                    new OOXMLPrettyPrint().handle(openZipFile, zipOutputStream);
                    zipOutputStream.close();
                    if (openZipFile != null) {
                        openZipFile.close();
                    }
                } finally {
                }
            } finally {
            }
        } finally {
            System.out.println();
        }
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length <= 1 || strArr.length % 2 != 0) {
            System.err.println("Use:");
            System.err.println("\tjava OOXMLPrettyPrint [<filename> <outfilename>] ...");
            System.exit(1);
        }
        for (int i = 0; i < strArr.length; i += 2) {
            File file = new File(strArr[i]);
            if (!file.exists()) {
                System.err.println("Error, file not found!");
                System.err.println("\t" + file);
                System.exit(2);
            }
            handleFile(file, new File(strArr[i + 1]));
        }
        System.out.println("Done.");
    }

    private static void pretty(Document document, OutputStream outputStream, int i) throws TransformerException {
        Transformer newTransformer = XMLHelper.newTransformer();
        if (i > 0) {
            newTransformer.setOutputProperty("indent", "yes");
            newTransformer.setOutputProperty(XML_INDENT_AMOUNT, Integer.toString(i));
        }
        newTransformer.transform(new DOMSource(document), new StreamResult(outputStream));
    }
}

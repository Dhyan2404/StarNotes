package org.apache.poi.ooxml.extractor;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.extractor.ExtractorFactory;
import org.apache.poi.extractor.ExtractorProvider;
import org.apache.poi.extractor.POITextExtractor;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackageAccess;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.xdgf.extractor.XDGFVisioExtractor;
import org.apache.poi.xslf.extractor.XSLFExtractor;
import org.apache.poi.xslf.usermodel.XMLSlideShow;
import org.apache.poi.xslf.usermodel.XSLFRelation;
import org.apache.poi.xssf.extractor.XSSFBEventBasedExcelExtractor;
import org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor;
import org.apache.poi.xssf.extractor.XSSFExcelExtractor;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFRelation;
import org.apache.xmlbeans.XmlException;

/* loaded from: classes12.dex */
public final class POIXMLExtractorFactory implements ExtractorProvider {
    private static final String CORE_DOCUMENT_REL = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument";
    private static final String STRICT_DOCUMENT_REL = "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument";
    private static final List<XSLFRelation> SUPPORTED_XSLF_TYPES = Collections.unmodifiableList(Arrays.asList(XSLFRelation.MAIN, XSLFRelation.MACRO, XSLFRelation.MACRO_TEMPLATE, XSLFRelation.PRESENTATIONML, XSLFRelation.PRESENTATIONML_TEMPLATE, XSLFRelation.PRESENTATION_MACRO));
    private static final String VISIO_DOCUMENT_REL = "http://schemas.microsoft.com/visio/2010/relationships/document";

    public static Boolean getAllThreadsPreferEventExtractors() {
        return ExtractorFactory.getAllThreadsPreferEventExtractors();
    }

    public static boolean getPreferEventExtractor() {
        return ExtractorFactory.getPreferEventExtractor();
    }

    public static boolean getThreadPrefersEventExtractors() {
        return ExtractorFactory.getThreadPrefersEventExtractors();
    }

    public static void setAllThreadsPreferEventExtractors(Boolean bool) {
        ExtractorFactory.setAllThreadsPreferEventExtractors(bool);
    }

    public static void setThreadPrefersEventExtractors(boolean z) {
        ExtractorFactory.setThreadPrefersEventExtractors(z);
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public boolean accepts(FileMagic fileMagic) {
        return fileMagic == FileMagic.OOXML;
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(File file, String str) throws IOException {
        if (FileMagic.valueOf(file) != FileMagic.OOXML) {
            return ExtractorFactory.createExtractor(file, str);
        }
        OPCPackage oPCPackage = null;
        try {
            oPCPackage = OPCPackage.open(file.toString(), PackageAccess.READ);
            POIXMLTextExtractor create = create(oPCPackage);
            if (create == null) {
                oPCPackage.revert();
            }
            return create;
        } catch (IOException e) {
            if (oPCPackage != null) {
                oPCPackage.revert();
            }
            throw e;
        } catch (InvalidFormatException e2) {
            throw new IOException(e2);
        }
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(InputStream inputStream, String str) throws IOException {
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        if (FileMagic.valueOf(prepareToCheckMagic) != FileMagic.OOXML) {
            return ExtractorFactory.createExtractor(prepareToCheckMagic, str);
        }
        OPCPackage oPCPackage = null;
        try {
            oPCPackage = OPCPackage.open(prepareToCheckMagic);
            POIXMLTextExtractor create = create(oPCPackage);
            if (create == null) {
                oPCPackage.revert();
            }
            return create;
        } catch (IOException e) {
            if (oPCPackage != null) {
                oPCPackage.revert();
            }
            throw e;
        } catch (RuntimeException e2) {
            if (oPCPackage != null) {
                oPCPackage.revert();
            }
            throw new IOException(e2);
        } catch (InvalidFormatException e3) {
            throw new IOException(e3);
        }
    }

    public POIXMLTextExtractor create(OPCPackage oPCPackage) throws IOException {
        try {
            PackageRelationshipCollection relationshipsByType = oPCPackage.getRelationshipsByType("http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument");
            if (relationshipsByType.isEmpty()) {
                relationshipsByType = oPCPackage.getRelationshipsByType("http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument");
            }
            if (relationshipsByType.isEmpty()) {
                relationshipsByType = oPCPackage.getRelationshipsByType("http://schemas.microsoft.com/visio/2010/relationships/document");
                if (relationshipsByType.size() == 1) {
                    return new XDGFVisioExtractor(oPCPackage);
                }
            }
            if (relationshipsByType.size() == 1) {
                String contentType = oPCPackage.getPart(relationshipsByType.getRelationship(0)).getContentType();
                Iterator<XSSFRelation> it2 = XSSFExcelExtractor.SUPPORTED_TYPES.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getContentType().equals(contentType)) {
                        if (getPreferEventExtractor()) {
                            return new XSSFEventBasedExcelExtractor(oPCPackage);
                        }
                        return new XSSFExcelExtractor(oPCPackage);
                    }
                }
                Iterator<XWPFRelation> it3 = XWPFWordExtractor.SUPPORTED_TYPES.iterator();
                while (it3.hasNext()) {
                    if (it3.next().getContentType().equals(contentType)) {
                        return new XWPFWordExtractor(oPCPackage);
                    }
                }
                Iterator<XSLFRelation> it4 = SUPPORTED_XSLF_TYPES.iterator();
                while (it4.hasNext()) {
                    if (it4.next().getContentType().equals(contentType)) {
                        return new XSLFExtractor(new XMLSlideShow(oPCPackage));
                    }
                }
                if (XSLFRelation.THEME_MANAGER.getContentType().equals(contentType)) {
                    return new XSLFExtractor(new XMLSlideShow(oPCPackage));
                }
                Iterator<XSSFRelation> it5 = XSSFBEventBasedExcelExtractor.SUPPORTED_TYPES.iterator();
                while (it5.hasNext()) {
                    if (it5.next().getContentType().equals(contentType)) {
                        return new XSSFBEventBasedExcelExtractor(oPCPackage);
                    }
                }
                return null;
            }
            throw new IllegalArgumentException("Invalid OOXML Package received - expected 1 core document, found " + relationshipsByType.size());
        } catch (RuntimeException | OpenXML4JException | XmlException e) {
            throw new IOException(e);
        }
    }

    public POITextExtractor create(POIFSFileSystem pOIFSFileSystem) throws IOException {
        return create(pOIFSFileSystem.getRoot(), Biff8EncryptionKey.getCurrentUserPassword());
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(DirectoryNode directoryNode, String str) throws IOException {
        if (directoryNode.hasEntry(ExtractorFactory.OOXML_PACKAGE)) {
            DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream(ExtractorFactory.OOXML_PACKAGE);
            try {
                POITextExtractor create = create(createDocumentInputStream, str);
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
        if (directoryNode.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY)) {
            Decryptor decryptor = new EncryptionInfo(directoryNode).getDecryptor();
            try {
                if (decryptor.verifyPassword(str)) {
                    try {
                        InputStream dataStream = decryptor.getDataStream(directoryNode);
                        try {
                            POITextExtractor create2 = create(dataStream, str);
                            if (dataStream != null) {
                                dataStream.close();
                            }
                            return create2;
                        } finally {
                        }
                    } finally {
                        POIFSFileSystem fileSystem = directoryNode.getFileSystem();
                        if (fileSystem != null) {
                            fileSystem.close();
                        }
                    }
                } else {
                    throw new IOException("Invalid password specified");
                }
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new IOException(e2);
            }
        } else {
            throw new IOException("The OLE2 file neither contained a plain OOXML package node (\"Package\") nor an encrypted one (\"EncryptedPackage\").");
        }
    }
}

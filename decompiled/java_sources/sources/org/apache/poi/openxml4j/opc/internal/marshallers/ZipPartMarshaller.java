package org.apache.poi.openxml4j.opc.internal.marshallers;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.Iterator;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.PackageNamespaces;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.StreamHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.openxml4j.opc.internal.PartMarshaller;
import org.apache.poi.openxml4j.opc.internal.ZipHelper;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public final class ZipPartMarshaller implements PartMarshaller {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ZipPartMarshaller.class);

    public static boolean marshallRelationshipPart(PackageRelationshipCollection packageRelationshipCollection, PackagePartName packagePartName, ZipArchiveOutputStream zipArchiveOutputStream) {
        String uri;
        Document createDocument = DocumentHelper.createDocument();
        Element createElementNS = createDocument.createElementNS(PackageNamespaces.RELATIONSHIPS, PackageRelationship.RELATIONSHIPS_TAG_NAME);
        createDocument.appendChild(createElementNS);
        URI sourcePartUriFromRelationshipPartUri = PackagingURIHelper.getSourcePartUriFromRelationshipPartUri(packagePartName.getURI());
        Iterator<PackageRelationship> it2 = packageRelationshipCollection.iterator();
        while (it2.hasNext()) {
            PackageRelationship next = it2.next();
            Element createElementNS2 = createDocument.createElementNS(PackageNamespaces.RELATIONSHIPS, PackageRelationship.RELATIONSHIP_TAG_NAME);
            createElementNS.appendChild(createElementNS2);
            createElementNS2.setAttribute(PackageRelationship.ID_ATTRIBUTE_NAME, next.getId());
            createElementNS2.setAttribute("Type", next.getRelationshipType());
            URI targetURI = next.getTargetURI();
            if (next.getTargetMode() == TargetMode.EXTERNAL) {
                uri = targetURI.toString();
                createElementNS2.setAttribute(PackageRelationship.TARGET_MODE_ATTRIBUTE_NAME, "External");
            } else {
                uri = PackagingURIHelper.relativizeURI(sourcePartUriFromRelationshipPartUri, next.getTargetURI(), true).toString();
            }
            createElementNS2.setAttribute(PackageRelationship.TARGET_ATTRIBUTE_NAME, uri);
        }
        createDocument.normalize();
        try {
            zipArchiveOutputStream.putArchiveEntry(new ZipArchiveEntry(ZipHelper.getZipURIFromOPCName(packagePartName.getURI().toASCIIString()).getPath()));
            try {
                return StreamHelper.saveXmlInStream(createDocument, zipArchiveOutputStream);
            } finally {
                zipArchiveOutputStream.closeArchiveEntry();
            }
        } catch (IOException e) {
            LOG.atError().withThrowable(e).log("Cannot create zip entry {}", packagePartName);
            return false;
        }
    }

    @Override // org.apache.poi.openxml4j.opc.internal.PartMarshaller
    public boolean marshall(PackagePart packagePart, OutputStream outputStream) throws OpenXML4JException {
        if (!(outputStream instanceof ZipArchiveOutputStream)) {
            LOG.atError().log("Unexpected class {}", outputStream.getClass().getName());
            throw new OpenXML4JException("ZipOutputStream expected !");
        }
        if (packagePart.getSize() == 0 && packagePart.getPartName().getName().equals(XSSFRelation.SHARED_STRINGS.getDefaultFileName())) {
            return true;
        }
        ZipArchiveOutputStream zipArchiveOutputStream = (ZipArchiveOutputStream) outputStream;
        try {
            zipArchiveOutputStream.putArchiveEntry(new ZipArchiveEntry(ZipHelper.getZipItemNameFromOPCName(packagePart.getPartName().getURI().getPath())));
            try {
                InputStream inputStream = packagePart.getInputStream();
                try {
                    IOUtils.copy(inputStream, zipArchiveOutputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (packagePart.hasRelationships()) {
                        marshallRelationshipPart(packagePart.getRelationships(), PackagingURIHelper.getRelationshipPartName(packagePart.getPartName()), zipArchiveOutputStream);
                    }
                    return true;
                } finally {
                }
            } finally {
                zipArchiveOutputStream.closeArchiveEntry();
            }
        } catch (IOException e) {
            LOG.atError().withThrowable(e).log("Cannot write: {}: in ZIP", packagePart.getPartName());
            return false;
        }
    }
}

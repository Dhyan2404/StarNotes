package org.apache.poi.ooxml.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.Iterator;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageProperties;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class PackageHelper {
    @Removal(version = "6.0.0")
    @Deprecated
    public static OPCPackage clone(OPCPackage oPCPackage, File file) throws OpenXML4JException, IOException {
        String absolutePath = file.getAbsolutePath();
        OPCPackage create = OPCPackage.create(absolutePath);
        try {
            Iterator<PackageRelationship> it2 = oPCPackage.getRelationships().iterator();
            while (it2.hasNext()) {
                PackageRelationship next = it2.next();
                PackagePart part = oPCPackage.getPart(next);
                if (next.getRelationshipType().equals(PackageRelationshipTypes.CORE_PROPERTIES)) {
                    copyProperties(oPCPackage.getPackageProperties(), create.getPackageProperties());
                } else {
                    create.addRelationship(part.getPartName(), next.getTargetMode(), next.getRelationshipType());
                    PackagePart createPart = create.createPart(part.getPartName(), part.getContentType());
                    InputStream inputStream = part.getInputStream();
                    try {
                        OutputStream outputStream = createPart.getOutputStream();
                        try {
                            IOUtils.copy(inputStream, outputStream);
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (part.hasRelationships()) {
                                copy(oPCPackage, part, create, createPart);
                            }
                        } finally {
                        }
                    } finally {
                    }
                }
            }
            if (create != null) {
                create.close();
            }
            new File(absolutePath).deleteOnExit();
            return OPCPackage.open(absolutePath);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (create != null) {
                    try {
                        create.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private static void copy(OPCPackage oPCPackage, PackagePart packagePart, OPCPackage oPCPackage2, PackagePart packagePart2) throws OpenXML4JException, IOException {
        PackageRelationshipCollection relationships = packagePart.getRelationships();
        if (relationships != null) {
            Iterator<PackageRelationship> it2 = relationships.iterator();
            while (it2.hasNext()) {
                PackageRelationship next = it2.next();
                if (next.getTargetMode() == TargetMode.EXTERNAL) {
                    packagePart2.addExternalRelationship(next.getTargetURI().toString(), next.getRelationshipType(), next.getId());
                } else {
                    URI targetURI = next.getTargetURI();
                    if (targetURI.getRawFragment() != null) {
                        packagePart2.addRelationship(targetURI, next.getTargetMode(), next.getRelationshipType(), next.getId());
                    } else {
                        PackagePart part = oPCPackage.getPart(PackagingURIHelper.createPartName(next.getTargetURI()));
                        packagePart2.addRelationship(part.getPartName(), next.getTargetMode(), next.getRelationshipType(), next.getId());
                        if (oPCPackage2.containPart(part.getPartName())) {
                            continue;
                        } else {
                            PackagePart createPart = oPCPackage2.createPart(part.getPartName(), part.getContentType());
                            InputStream inputStream = part.getInputStream();
                            try {
                                OutputStream outputStream = createPart.getOutputStream();
                                try {
                                    IOUtils.copy(inputStream, outputStream);
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    copy(oPCPackage, part, oPCPackage2, createPart);
                                } finally {
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
                }
            }
        }
    }

    private static void copyProperties(PackageProperties packageProperties, PackageProperties packageProperties2) {
        packageProperties2.setCategoryProperty(packageProperties.getCategoryProperty());
        packageProperties2.setContentStatusProperty(packageProperties.getContentStatusProperty());
        packageProperties2.setContentTypeProperty(packageProperties.getContentTypeProperty());
        packageProperties2.setCreatorProperty(packageProperties.getCreatorProperty());
        packageProperties2.setDescriptionProperty(packageProperties.getDescriptionProperty());
        packageProperties2.setIdentifierProperty(packageProperties.getIdentifierProperty());
        packageProperties2.setKeywordsProperty(packageProperties.getKeywordsProperty());
        packageProperties2.setLanguageProperty(packageProperties.getLanguageProperty());
        packageProperties2.setRevisionProperty(packageProperties.getRevisionProperty());
        packageProperties2.setSubjectProperty(packageProperties.getSubjectProperty());
        packageProperties2.setTitleProperty(packageProperties.getTitleProperty());
        packageProperties2.setVersionProperty(packageProperties.getVersionProperty());
    }

    public static OPCPackage open(InputStream inputStream) throws IOException {
        return open(inputStream, false);
    }

    public static OPCPackage open(InputStream inputStream, boolean z) throws IOException {
        try {
            try {
                return OPCPackage.open(inputStream);
            } catch (InvalidFormatException e) {
                throw new POIXMLException(e);
            }
        } finally {
            if (z) {
                inputStream.close();
            }
        }
    }
}

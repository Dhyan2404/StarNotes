package org.apache.poi.openxml4j.opc;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.SimpleMessage;
import org.apache.logging.log4j.util.Supplier;
import org.apache.poi.UnsupportedFileFormatException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.InvalidOperationException;
import org.apache.poi.openxml4j.exceptions.NotOfficeXmlFileException;
import org.apache.poi.openxml4j.exceptions.ODFNotOfficeXmlFileException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.ZipPackage;
import org.apache.poi.openxml4j.opc.internal.ContentTypeManager;
import org.apache.poi.openxml4j.opc.internal.EncryptedTempFilePackagePart;
import org.apache.poi.openxml4j.opc.internal.FileHelper;
import org.apache.poi.openxml4j.opc.internal.MemoryPackagePart;
import org.apache.poi.openxml4j.opc.internal.PartMarshaller;
import org.apache.poi.openxml4j.opc.internal.TempFilePackagePart;
import org.apache.poi.openxml4j.opc.internal.ZipContentTypeManager;
import org.apache.poi.openxml4j.opc.internal.ZipHelper;
import org.apache.poi.openxml4j.opc.internal.marshallers.ZipPartMarshaller;
import org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream;
import org.apache.poi.openxml4j.util.ZipEntrySource;
import org.apache.poi.openxml4j.util.ZipFileZipEntrySource;
import org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.TempFile;

/* loaded from: classes12.dex */
public final class ZipPackage extends OPCPackage {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ZipPackage.class);
    private static final String MIMETYPE = "mimetype";
    private static final String SETTINGS_XML = "settings.xml";
    private static boolean encryptTempFilePackageParts;
    private static boolean useTempFilePackageParts;
    private final ZipEntrySource zipArchive;

    /* loaded from: classes12.dex */
    public class EntryTriple implements Comparable<EntryTriple> {
        final String contentType;
        final PackagePartName partName;
        final ZipArchiveEntry zipArchiveEntry;

        /* JADX WARN: Removed duplicated region for block: B:6:0x003c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public EntryTriple(org.apache.commons.compress.archivers.zip.ZipArchiveEntry r4, org.apache.poi.openxml4j.opc.internal.ContentTypeManager r5) {
            /*
                r2 = this;
                org.apache.poi.openxml4j.opc.ZipPackage.this = r3
                r2.<init>()
                r2.zipArchiveEntry = r4
                java.lang.String r3 = r4.getName()
                boolean r4 = org.apache.poi.openxml4j.opc.ZipPackage.access$000(r4)
                r0 = 0
                if (r4 != 0) goto L36
                java.lang.String r4 = "[Content_Types].xml"
                boolean r4 = r4.equalsIgnoreCase(r3)     // Catch: java.lang.Exception -> L24
                if (r4 == 0) goto L1b
                goto L36
            L1b:
                java.lang.String r4 = org.apache.poi.openxml4j.opc.internal.ZipHelper.getOPCNameFromZipItemName(r3)     // Catch: java.lang.Exception -> L24
                org.apache.poi.openxml4j.opc.PackagePartName r3 = org.apache.poi.openxml4j.opc.PackagingURIHelper.createPartName(r4)     // Catch: java.lang.Exception -> L24
                goto L37
            L24:
                r4 = move-exception
                org.apache.logging.log4j.Logger r1 = org.apache.poi.openxml4j.opc.ZipPackage.access$100()
                org.apache.logging.log4j.LogBuilder r1 = r1.atWarn()
                org.apache.logging.log4j.LogBuilder r4 = r1.withThrowable(r4)
                java.lang.String r1 = "Entry {} is not valid, so this part won't be added to the package."
                r4.log(r1, r3)
            L36:
                r3 = r0
            L37:
                r2.partName = r3
                if (r3 != 0) goto L3c
                goto L40
            L3c:
                java.lang.String r0 = r5.getContentType(r3)
            L40:
                r2.contentType = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.openxml4j.opc.ZipPackage.EntryTriple.<init>(org.apache.poi.openxml4j.opc.ZipPackage, org.apache.commons.compress.archivers.zip.ZipArchiveEntry, org.apache.poi.openxml4j.opc.internal.ContentTypeManager):void");
        }

        public void register(PackagePartCollection packagePartCollection) throws InvalidFormatException {
            if (this.contentType == null) {
                throw new InvalidFormatException("The part " + this.partName.getURI().getPath() + " does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]");
            }
            if (packagePartCollection.containsKey(this.partName)) {
                throw new InvalidFormatException("A part with the name '" + this.partName + "' already exists : Packages shall not contain equivalent part names and package implementers shall neither create nor recognize packages with equivalent part names. [M1.12]");
            }
            try {
                PackagePartName packagePartName = this.partName;
                packagePartCollection.put(packagePartName, new ZipPackagePart(ZipPackage.this, this.zipArchiveEntry, packagePartName, this.contentType, false));
            } catch (InvalidOperationException e) {
                throw new InvalidFormatException(e.getMessage(), e);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(EntryTriple entryTriple) {
            int compare = Integer.compare(ContentTypes.RELATIONSHIPS_PART.equals(this.contentType) ? -1 : 1, ContentTypes.RELATIONSHIPS_PART.equals(entryTriple.contentType) ? -1 : 1);
            return compare != 0 ? compare : this.partName.compareTo(entryTriple.partName);
        }
    }

    public ZipPackage() {
        super(OPCPackage.defaultPackageAccess);
        this.zipArchive = null;
        try {
            this.contentTypeManager = new ZipContentTypeManager(null, this);
        } catch (InvalidFormatException e) {
            LOG.atWarn().withThrowable(e).log("Could not parse ZipPackage");
        }
    }

    public static boolean encryptTempFilePackageParts() {
        return encryptTempFilePackageParts;
    }

    private synchronized String generateTempFileName(File file) {
        File file2;
        do {
            file2 = new File(file.getAbsoluteFile() + File.separator + "OpenXML4J" + System.nanoTime());
        } while (file2.exists());
        return FileHelper.getFilename(file2.getAbsoluteFile());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean ignoreEntry(ZipArchiveEntry zipArchiveEntry) {
        String name = zipArchiveEntry.getName();
        return name.startsWith("[trash]") || name.endsWith("/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getPartsImpl$0(ZipArchiveEntry zipArchiveEntry) {
        return !ignoreEntry(zipArchiveEntry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ EntryTriple lambda$getPartsImpl$1(ZipArchiveEntry zipArchiveEntry) {
        return new EntryTriple(this, zipArchiveEntry, this.contentTypeManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getPartsImpl$2(EntryTriple entryTriple) {
        return entryTriple.partName != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Message lambda$saveImpl$3(PackagePartName packagePartName) {
        return new SimpleMessage("Save part '" + ZipHelper.getZipItemNameFromOPCName(packagePartName.getName()) + CloudStorageConstants.SINGLE_QUOTES);
    }

    private static ZipEntrySource openZipEntrySourceStream(File file) throws InvalidOperationException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return openZipEntrySourceStream(fileInputStream);
            } catch (UnsupportedFileFormatException | InvalidOperationException e) {
                IOUtils.closeQuietly(fileInputStream);
                throw e;
            } catch (Exception e2) {
                IOUtils.closeQuietly(fileInputStream);
                throw new InvalidOperationException("Failed to read the file input stream from file: '" + file + CloudStorageConstants.SINGLE_QUOTES, e2);
            }
        } catch (FileNotFoundException e3) {
            throw new InvalidOperationException("Can't open the specified file input stream from file: '" + file + CloudStorageConstants.SINGLE_QUOTES, e3);
        }
    }

    public static void setEncryptTempFilePackageParts(boolean z) {
        encryptTempFilePackageParts = z;
    }

    public static void setUseTempFilePackageParts(boolean z) {
        useTempFilePackageParts = z;
    }

    public static boolean useTempFilePackageParts() {
        return useTempFilePackageParts;
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public void closeImpl() throws IOException {
        flush();
        String str = this.originalPackagePath;
        if (str == null || str.isEmpty()) {
            return;
        }
        File file = new File(this.originalPackagePath);
        if (!file.exists()) {
            throw new InvalidOperationException("Can't close a package not previously open with the open() method !");
        }
        File createTempFile = TempFile.createTempFile(generateTempFileName(FileHelper.getDirectory(file)), ".tmp");
        try {
            save(createTempFile);
            IOUtils.closeQuietly(this.zipArchive);
            try {
                FileHelper.copyFile(createTempFile, file);
            } finally {
                if (!createTempFile.delete()) {
                    LOG.atWarn().log("The temporary file: '{}' cannot be deleted ! Make sure that no other application use it.", file.getAbsolutePath());
                }
            }
        } catch (Throwable th) {
            IOUtils.closeQuietly(this.zipArchive);
            if (!createTempFile.delete()) {
                LOG.atWarn().log("The temporary file: '{}' cannot be deleted ! Make sure that no other application use it.", file.getAbsolutePath());
            }
            throw th;
        }
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public PackagePart createPartImpl(PackagePartName packagePartName, String str, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException(CouchFieldKey.KEY_CONTENT_TYPE);
        }
        if (packagePartName == null) {
            throw new IllegalArgumentException("partName");
        }
        try {
            return useTempFilePackageParts ? encryptTempFilePackageParts ? new EncryptedTempFilePackagePart(this, packagePartName, str, z) : new TempFilePackagePart(this, packagePartName, str, z) : new MemoryPackagePart(this, packagePartName, str, z);
        } catch (Exception e) {
            LOG.atWarn().withThrowable(e).log("Failed to create part {}", packagePartName);
            return null;
        }
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public void flushImpl() {
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public PackagePartCollection getPartsImpl() throws InvalidFormatException {
        PackagePartCollection packagePartCollection = new PackagePartCollection();
        ZipEntrySource zipEntrySource = this.zipArchive;
        if (zipEntrySource == null) {
            return packagePartCollection;
        }
        ZipArchiveEntry entry = zipEntrySource.getEntry(ContentTypeManager.CONTENT_TYPES_PART_NAME);
        if (entry == null) {
            boolean z = this.zipArchive.getEntry(MIMETYPE) != null;
            boolean z2 = this.zipArchive.getEntry(SETTINGS_XML) != null;
            if (z && z2) {
                throw new ODFNotOfficeXmlFileException("The supplied data appears to be in ODF (Open Document) Format. Formats like these (eg ODS, ODP) are not supported, try Apache ODFToolkit");
            }
            if (this.zipArchive.getEntries().hasMoreElements()) {
                throw new InvalidFormatException("Package should contain a content type part [M1.13]");
            }
            throw new NotOfficeXmlFileException("No valid entries or contents found, this is not a valid OOXML (Office Open XML) file");
        }
        if (this.contentTypeManager != null) {
            throw new InvalidFormatException("ContentTypeManager can only be created once. This must be a cyclic relation?");
        }
        try {
            this.contentTypeManager = new ZipContentTypeManager(this.zipArchive.getInputStream(entry), this);
            Iterator it2 = ((List) Collections.list(this.zipArchive.getEntries()).stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.nxo
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getPartsImpl$0;
                    lambda$getPartsImpl$0 = ZipPackage.lambda$getPartsImpl$0((ZipArchiveEntry) obj);
                    return lambda$getPartsImpl$0;
                }
            }).map(new Function() { // from class: com.sunia.HTREnginev2.oxo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ZipPackage.EntryTriple lambda$getPartsImpl$1;
                    lambda$getPartsImpl$1 = ZipPackage.this.lambda$getPartsImpl$1((ZipArchiveEntry) obj);
                    return lambda$getPartsImpl$1;
                }
            }).filter(new Predicate() { // from class: org.apache.poi.openxml4j.opc.a
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getPartsImpl$2;
                    lambda$getPartsImpl$2 = ZipPackage.lambda$getPartsImpl$2((ZipPackage.EntryTriple) obj);
                    return lambda$getPartsImpl$2;
                }
            }).sorted().collect(Collectors.toList())).iterator();
            while (it2.hasNext()) {
                ((EntryTriple) it2.next()).register(packagePartCollection);
            }
            return packagePartCollection;
        } catch (IOException e) {
            throw new InvalidFormatException(e.getMessage(), e);
        }
    }

    public ZipEntrySource getZipArchive() {
        return this.zipArchive;
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public boolean isClosed() {
        ZipEntrySource zipEntrySource = this.zipArchive;
        return zipEntrySource != null && zipEntrySource.isClosed();
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public void removePartImpl(PackagePartName packagePartName) {
        if (packagePartName == null) {
            throw new IllegalArgumentException("partUri");
        }
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public void revertImpl() {
        try {
            ZipEntrySource zipEntrySource = this.zipArchive;
            if (zipEntrySource != null) {
                zipEntrySource.close();
            }
        } catch (IOException unused) {
        }
    }

    @Override // org.apache.poi.openxml4j.opc.OPCPackage
    public void saveImpl(OutputStream outputStream) {
        throwExceptionIfReadOnly();
        ZipArchiveOutputStream zipArchiveOutputStream = outputStream instanceof ZipArchiveOutputStream ? (ZipArchiveOutputStream) outputStream : new ZipArchiveOutputStream(outputStream);
        try {
            if (getPartsByRelationshipType(PackageRelationshipTypes.CORE_PROPERTIES).isEmpty() && getPartsByRelationshipType(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376).isEmpty()) {
                LOG.atDebug().log("Save core properties part");
                getPackageProperties();
                addPackagePart(this.packageProperties);
                this.relationships.addRelationship(this.packageProperties.getPartName().getURI(), TargetMode.INTERNAL, PackageRelationshipTypes.CORE_PROPERTIES, null);
                if (!this.contentTypeManager.isContentTypeRegister(ContentTypes.CORE_PROPERTIES_PART)) {
                    this.contentTypeManager.addContentType(this.packageProperties.getPartName(), ContentTypes.CORE_PROPERTIES_PART);
                }
            }
            Logger logger = LOG;
            logger.atDebug().log("Save content types part");
            this.contentTypeManager.save(zipArchiveOutputStream);
            logger.atDebug().log("Save package relationships");
            ZipPartMarshaller.marshallRelationshipPart(getRelationships(), PackagingURIHelper.PACKAGE_RELATIONSHIPS_ROOT_PART_NAME, zipArchiveOutputStream);
            Iterator<PackagePart> it2 = getParts().iterator();
            while (it2.hasNext()) {
                PackagePart next = it2.next();
                if (!next.isRelationshipPart()) {
                    final PackagePartName partName = next.getPartName();
                    LOG.atDebug().log(new Supplier() { // from class: com.sunia.HTREnginev2.mxo
                        @Override // org.apache.logging.log4j.util.Supplier
                        public final Object get() {
                            Message lambda$saveImpl$3;
                            lambda$saveImpl$3 = ZipPackage.lambda$saveImpl$3(PackagePartName.this);
                            return lambda$saveImpl$3;
                        }
                    });
                    PartMarshaller partMarshaller = this.partMarshallers.get(next._contentType);
                    if (partMarshaller == null) {
                        partMarshaller = this.defaultPartMarshaller;
                    }
                    if (!partMarshaller.marshall(next, zipArchiveOutputStream)) {
                        throw new OpenXML4JException("The part " + partName.getURI() + " failed to be saved in the stream with marshaller " + partMarshaller + ". Enable logging via Log4j 2 for more details.");
                    }
                }
            }
            zipArchiveOutputStream.finish();
        } catch (OpenXML4JRuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new OpenXML4JRuntimeException("Fail to save: an error occurs while saving the package : " + e2.getMessage(), e2);
        }
    }

    public ZipPackage(InputStream inputStream, PackageAccess packageAccess) throws IOException {
        super(packageAccess);
        ZipArchiveThresholdInputStream openZipStream = ZipHelper.openZipStream(inputStream);
        try {
            this.zipArchive = new ZipInputStreamZipEntrySource(openZipStream);
        } catch (IOException | RuntimeException e) {
            IOUtils.closeQuietly(openZipStream);
            throw e;
        }
    }

    private static ZipEntrySource openZipEntrySourceStream(FileInputStream fileInputStream) throws InvalidOperationException {
        try {
            ZipArchiveThresholdInputStream openZipStream = ZipHelper.openZipStream(fileInputStream);
            try {
                return openZipEntrySourceStream(openZipStream);
            } catch (UnsupportedFileFormatException | InvalidOperationException e) {
                IOUtils.closeQuietly(openZipStream);
                throw e;
            } catch (Exception e2) {
                IOUtils.closeQuietly(openZipStream);
                throw new InvalidOperationException("Failed to read the zip entry source stream", e2);
            }
        } catch (IOException e3) {
            throw new InvalidOperationException("Could not open the file input stream", e3);
        }
    }

    public ZipPackage(String str, PackageAccess packageAccess) throws InvalidOperationException {
        this(new File(str), packageAccess);
    }

    public ZipPackage(File file, PackageAccess packageAccess) throws InvalidOperationException {
        super(packageAccess);
        ZipEntrySource openZipEntrySourceStream;
        try {
            openZipEntrySourceStream = new ZipFileZipEntrySource(ZipHelper.openZipFile(file));
        } catch (IOException e) {
            if (packageAccess != PackageAccess.WRITE) {
                LOG.atWarn().log("Error in zip file {} - falling back to stream processing (i.e. ignoring zip central directory)", file);
                openZipEntrySourceStream = openZipEntrySourceStream(file);
            } else {
                throw new InvalidOperationException("Can't open the specified file: '" + file + CloudStorageConstants.SINGLE_QUOTES, e);
            }
        }
        this.zipArchive = openZipEntrySourceStream;
    }

    private static ZipEntrySource openZipEntrySourceStream(ZipArchiveThresholdInputStream zipArchiveThresholdInputStream) throws InvalidOperationException {
        try {
            return new ZipInputStreamZipEntrySource(zipArchiveThresholdInputStream);
        } catch (IOException e) {
            throw new InvalidOperationException("Could not open the specified zip entry source stream", e);
        }
    }

    public ZipPackage(ZipEntrySource zipEntrySource, PackageAccess packageAccess) {
        super(packageAccess);
        this.zipArchive = zipEntrySource;
    }
}

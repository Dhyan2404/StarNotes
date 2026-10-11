package org.apache.poi;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.util.List;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hpsf.DocumentSummaryInformation;
import org.apache.poi.hpsf.PropertySet;
import org.apache.poi.hpsf.PropertySetFactory;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hpsf.WritingNotSupportedException;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIEncryptor;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public abstract class POIDocument implements Closeable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) POIDocument.class);
    private DirectoryNode directory;
    private DocumentSummaryInformation dsInf;
    private boolean initialized;
    private SummaryInformation sInf;

    public POIDocument(DirectoryNode directoryNode) {
        this.directory = directoryNode;
    }

    private <T> T readPropertySet(Class<T> cls, String str, boolean z) {
        String substring = cls.getName().substring(cls.getName().lastIndexOf(46) + 1);
        try {
            T t = (T) getPropertySet(str);
            if (cls.isInstance(t)) {
                return t;
            }
            if (t != null) {
                LOG.atWarn().log("{} property set came back with wrong class - {}", substring, t.getClass().getName());
            } else if (z) {
                LOG.atWarn().log("{} property set came back as null", substring);
            }
            return null;
        } catch (IOException e) {
            LOG.atError().withThrowable(e).log("can't retrieve property set");
            return null;
        }
    }

    private void writePropertySet(String str, PropertySet propertySet, POIFSFileSystem pOIFSFileSystem, List<String> list) throws IOException {
        if (propertySet == null) {
            return;
        }
        writePropertySet(str, propertySet, pOIFSFileSystem);
        if (list != null) {
            list.add(str);
        }
    }

    @Internal
    public void clearDirectory() {
        this.directory = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        DirectoryNode directoryNode = this.directory;
        if (directoryNode == null || directoryNode.getFileSystem() == null) {
            return;
        }
        this.directory.getFileSystem().close();
        clearDirectory();
    }

    public void createInformationProperties() {
        if (!this.initialized) {
            readProperties(false);
        }
        if (this.sInf == null) {
            this.sInf = PropertySetFactory.newSummaryInformation();
        }
        if (this.dsInf == null) {
            this.dsInf = PropertySetFactory.newDocumentSummaryInformation();
        }
    }

    @Internal
    public DirectoryNode getDirectory() {
        return this.directory;
    }

    public DocumentSummaryInformation getDocumentSummaryInformation() {
        if (!this.initialized) {
            readProperties();
        }
        return this.dsInf;
    }

    public String getEncryptedPropertyStreamName() {
        return CouchFieldKey.KEY_ENCRYPTION;
    }

    public EncryptionInfo getEncryptionInfo() throws IOException {
        return null;
    }

    public PropertySet getPropertySet(String str) throws IOException {
        return getPropertySet(str, getEncryptionInfo());
    }

    public SummaryInformation getSummaryInformation() {
        if (!this.initialized) {
            readProperties();
        }
        return this.sInf;
    }

    @Internal
    public boolean initDirectory() {
        if (this.directory != null) {
            return false;
        }
        this.directory = new POIFSFileSystem().getRoot();
        return true;
    }

    @Internal
    public void readProperties() {
        readProperties(true);
    }

    @Internal
    public void replaceDirectory(DirectoryNode directoryNode) throws IOException {
        DirectoryNode directoryNode2 = this.directory;
        if (directoryNode != directoryNode2) {
            if (directoryNode == null || directoryNode2 == null || directoryNode.getFileSystem() != this.directory.getFileSystem()) {
                DirectoryNode directoryNode3 = this.directory;
                if (directoryNode3 != null && directoryNode3.getFileSystem() != null) {
                    this.directory.getFileSystem().close();
                }
                this.directory = directoryNode;
            }
        }
    }

    public void validateInPlaceWritePossible() throws IllegalStateException {
        DirectoryNode directoryNode = this.directory;
        if (directoryNode == null) {
            throw new IllegalStateException("Newly created Document, cannot save in-place");
        }
        if (directoryNode.getParent() != null) {
            throw new IllegalStateException("This is not the root Document, cannot save embedded resource in-place");
        }
        if (this.directory.getFileSystem() == null || !this.directory.getFileSystem().isInPlaceWriteable()) {
            throw new IllegalStateException("Opened read-only or via an InputStream, a Writeable File is required");
        }
    }

    public abstract void write() throws IOException;

    public abstract void write(File file) throws IOException;

    public abstract void write(OutputStream outputStream) throws IOException;

    public void writeProperties() throws IOException {
        validateInPlaceWritePossible();
        writeProperties(this.directory.getFileSystem(), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0051 A[Catch: all -> 0x0080, Exception -> 0x0083, IOException -> 0x00a5, TRY_ENTER, TRY_LEAVE, TryCatch #8 {Exception -> 0x0083, blocks: (B:49:0x0023, B:6:0x0051), top: B:48:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.poi.hpsf.PropertySet getPropertySet(java.lang.String r6, org.apache.poi.poifs.crypt.EncryptionInfo r7) throws java.io.IOException {
        /*
            r5 = this;
            org.apache.poi.poifs.filesystem.DirectoryNode r0 = r5.directory
            r1 = 0
            java.lang.String r2 = "getting"
            if (r7 == 0) goto L4d
            boolean r3 = r7.isDocPropsEncrypted()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L49 java.io.IOException -> L4b
            if (r3 == 0) goto L4d
            java.lang.String r3 = "getting encrypted"
            java.lang.String r5 = r5.getEncryptedPropertyStreamName()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            boolean r4 = r0.hasEntry(r5)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            if (r4 == 0) goto L28
            org.apache.poi.poifs.crypt.Decryptor r7 = r7.getDecryptor()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIDecryptor r7 = (org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIDecryptor) r7     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            org.apache.poi.poifs.filesystem.POIFSFileSystem r5 = r7.getSummaryEntries(r0, r5)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            org.apache.poi.poifs.filesystem.DirectoryNode r0 = r5.getRoot()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L83 java.io.IOException -> La5
            goto L4f
        L28:
            org.apache.poi.EncryptedDocumentException r7 = new org.apache.poi.EncryptedDocumentException     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            r0.<init>()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            java.lang.String r2 = "can't find encrypted property stream '"
            r0.append(r2)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            r0.append(r5)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            java.lang.String r5 = "'"
            r0.append(r5)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            java.lang.String r5 = r0.toString()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            r7.<init>(r5)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
            throw r7     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L46 java.io.IOException -> L4b
        L44:
            r7 = move-exception
            goto L85
        L46:
            r6 = move-exception
            goto La8
        L49:
            r7 = move-exception
            goto L86
        L4b:
            r6 = move-exception
            goto La7
        L4d:
            r5 = r1
            r3 = r2
        L4f:
            if (r0 == 0) goto Lac
            boolean r7 = r0.hasEntry(r6)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L83 java.io.IOException -> La5
            if (r7 != 0) goto L58
            goto Lac
        L58:
            org.apache.poi.poifs.filesystem.Entry r7 = r0.getEntry(r6)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L80 java.io.IOException -> La5
            org.apache.poi.poifs.filesystem.DocumentInputStream r7 = r0.createDocumentInputStream(r7)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L80 java.io.IOException -> La5
            java.lang.String r2 = "creating"
            org.apache.poi.hpsf.PropertySet r0 = org.apache.poi.hpsf.PropertySetFactory.create(r7)     // Catch: java.lang.Throwable -> L6f
            if (r7 == 0) goto L6b
            r7.close()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L80 java.io.IOException -> La5
        L6b:
            org.apache.poi.util.IOUtils.closeQuietly(r5)
            return r0
        L6f:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L71
        L71:
            r1 = move-exception
            if (r7 == 0) goto L7c
            r7.close()     // Catch: java.lang.Throwable -> L78
            goto L7c
        L78:
            r7 = move-exception
            r0.addSuppressed(r7)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L80 java.io.IOException -> La5
        L7c:
            throw r1     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L80 java.io.IOException -> La5
        L7d:
            r7 = move-exception
            r1 = r5
            goto L86
        L80:
            r6 = move-exception
            r1 = r5
            goto La8
        L83:
            r7 = move-exception
            r1 = r5
        L85:
            r2 = r3
        L86:
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L46
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L46
            r0.<init>()     // Catch: java.lang.Throwable -> L46
            java.lang.String r3 = "Error "
            r0.append(r3)     // Catch: java.lang.Throwable -> L46
            r0.append(r2)     // Catch: java.lang.Throwable -> L46
            java.lang.String r2 = " property set with name "
            r0.append(r2)     // Catch: java.lang.Throwable -> L46
            r0.append(r6)     // Catch: java.lang.Throwable -> L46
            java.lang.String r6 = r0.toString()     // Catch: java.lang.Throwable -> L46
            r5.<init>(r6, r7)     // Catch: java.lang.Throwable -> L46
            throw r5     // Catch: java.lang.Throwable -> L46
        La5:
            r6 = move-exception
            r1 = r5
        La7:
            throw r6     // Catch: java.lang.Throwable -> L46
        La8:
            org.apache.poi.util.IOUtils.closeQuietly(r1)
            throw r6
        Lac:
            org.apache.poi.util.IOUtils.closeQuietly(r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.POIDocument.getPropertySet(java.lang.String, org.apache.poi.poifs.crypt.EncryptionInfo):org.apache.poi.hpsf.PropertySet");
    }

    @Internal
    public void readProperties(boolean z) {
        if (this.initialized) {
            return;
        }
        DocumentSummaryInformation documentSummaryInformation = (DocumentSummaryInformation) readPropertySet(DocumentSummaryInformation.class, DocumentSummaryInformation.DEFAULT_STREAM_NAME, z);
        if (documentSummaryInformation != null) {
            this.dsInf = documentSummaryInformation;
        }
        SummaryInformation summaryInformation = (SummaryInformation) readPropertySet(SummaryInformation.class, SummaryInformation.DEFAULT_STREAM_NAME, z);
        if (summaryInformation != null) {
            this.sInf = summaryInformation;
        }
        this.initialized = true;
    }

    public POIDocument(POIFSFileSystem pOIFSFileSystem) {
        this(pOIFSFileSystem.getRoot());
    }

    private void writePropertySet(String str, PropertySet propertySet, POIFSFileSystem pOIFSFileSystem) throws IOException {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                new PropertySet(propertySet).write(unsynchronizedByteArrayOutputStream);
                InputStream inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
                try {
                    pOIFSFileSystem.createOrUpdateDocument(inputStream, str);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    LOG.atInfo().log("Wrote property set {} of size {}", str, Unbox.box(unsynchronizedByteArrayOutputStream.size()));
                    unsynchronizedByteArrayOutputStream.close();
                } finally {
                }
            } finally {
            }
        } catch (WritingNotSupportedException unused) {
            LOG.atError().log("Couldn't write property set with name {} as not supported by HPSF yet", str);
        }
    }

    @Internal
    public void writeProperties(POIFSFileSystem pOIFSFileSystem) throws IOException {
        writeProperties(pOIFSFileSystem, null);
    }

    public void writeProperties(POIFSFileSystem pOIFSFileSystem, List<String> list) throws IOException {
        EncryptionInfo encryptionInfo = getEncryptionInfo();
        Encryptor encryptor = encryptionInfo == null ? null : encryptionInfo.getEncryptor();
        boolean z = encryptionInfo != null && encryptionInfo.isDocPropsEncrypted() && (encryptor instanceof CryptoAPIEncryptor);
        POIFSFileSystem pOIFSFileSystem2 = new POIFSFileSystem();
        POIFSFileSystem pOIFSFileSystem3 = z ? pOIFSFileSystem2 : pOIFSFileSystem;
        try {
            writePropertySet(SummaryInformation.DEFAULT_STREAM_NAME, getSummaryInformation(), pOIFSFileSystem3, list);
            writePropertySet(DocumentSummaryInformation.DEFAULT_STREAM_NAME, getDocumentSummaryInformation(), pOIFSFileSystem3, list);
            if (!z) {
                pOIFSFileSystem2.close();
                return;
            }
            writePropertySet(DocumentSummaryInformation.DEFAULT_STREAM_NAME, PropertySetFactory.newDocumentSummaryInformation(), pOIFSFileSystem);
            if (pOIFSFileSystem.getRoot().hasEntry(SummaryInformation.DEFAULT_STREAM_NAME)) {
                pOIFSFileSystem.getRoot().getEntry(SummaryInformation.DEFAULT_STREAM_NAME).delete();
            }
            try {
                ((CryptoAPIEncryptor) encryptor).setSummaryEntries(pOIFSFileSystem.getRoot(), getEncryptedPropertyStreamName(), pOIFSFileSystem3);
                pOIFSFileSystem2.close();
            } catch (GeneralSecurityException e) {
                throw new IOException(e);
            }
        } finally {
        }
    }
}

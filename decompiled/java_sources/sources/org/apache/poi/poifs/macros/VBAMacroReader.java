package org.apache.poi.poifs.macros;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.DocumentNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.OfficeXmlFileException;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.poifs.macros.Module;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.RLEDecompressingInputStream;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class VBAMacroReader implements Closeable {
    private static final int DOC_STRING_RESERVED = 64;
    private static final int HELP_FILE_PATH_RESERVED = 61;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) VBAMacroReader.class);
    private static final int MAX_STRING_LENGTH = 20000;
    private static final int MODULE_DOCSTRING_RESERVED = 72;
    private static final int PROJECT_CONSTANTS_RESERVED = 60;
    private static final int REFERENCE_NAME_RESERVED = 62;
    private static final int STREAMNAME_RESERVED = 50;
    protected static final String VBA_PROJECT_OOXML = "vbaProject.bin";
    protected static final String VBA_PROJECT_POIFS = "VBA";

    /* renamed from: fs */
    private POIFSFileSystem f111463fs;

    /* renamed from: org.apache.poi.poifs.macros.VBAMacroReader$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195941 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType;

        static {
            int[] iArr = new int[RecordType.values().length];
            $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType = iArr;
            try {
                iArr[RecordType.PROJECT_VERSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.PROJECT_CODEPAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.MODULE_STREAM_NAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.PROJECT_DOC_STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.PROJECT_HELP_FILE_PATH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.PROJECT_CONSTANTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.REFERENCE_NAME.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.REFERENCE_REGISTERED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.MODULE_DOC_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.MODULE_OFFSET.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.PROJECT_MODULES.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.REFERENCE_CONTROL_A.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType[RecordType.MODULE_TERMINATOR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum DIR_STATE {
        INFORMATION_RECORD,
        REFERENCES_RECORD,
        MODULES_RECORD
    }

    /* loaded from: classes12.dex */
    public static class ModuleImpl implements Module {
        byte[] buf;
        Charset charset;
        Module.ModuleType moduleType;
        Integer offset;

        @Override // org.apache.poi.poifs.macros.Module
        public Module.ModuleType geModuleType() {
            return this.moduleType;
        }

        @Override // org.apache.poi.poifs.macros.Module
        public String getContent() {
            return new String(this.buf, this.charset);
        }

        public void read(InputStream inputStream) throws IOException {
            this.buf = IOUtils.toByteArray(inputStream);
        }
    }

    /* loaded from: classes12.dex */
    public static class ModuleMap extends HashMap<String, ModuleImpl> {
        Charset charset = StringUtil.WIN_1252;
    }

    public VBAMacroReader(InputStream inputStream) throws IOException {
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        if (FileMagic.valueOf(prepareToCheckMagic) == FileMagic.OLE2) {
            this.f111463fs = new POIFSFileSystem(prepareToCheckMagic);
        } else {
            openOOXML(prepareToCheckMagic);
        }
    }

    private static byte[] findCompressedStreamWBruteForce(InputStream inputStream) throws IOException {
        int uShort;
        byte[] byteArray = IOUtils.toByteArray(inputStream);
        byte[] bArr = null;
        for (int i = 0; i < byteArray.length; i++) {
            if (byteArray[i] == 1 && i < byteArray.length - 1 && (uShort = LittleEndian.getUShort(byteArray, i + 1)) > 0 && (uShort & 28672) == 12288 && (bArr = tryToDecompress(new UnsynchronizedByteArrayInputStream(byteArray, i, byteArray.length - i))) != null && bArr.length > 9 && new String(bArr, 0, Math.min(20, bArr.length), StringUtil.WIN_1252).contains("Attribute")) {
                return bArr;
            }
        }
        return bArr;
    }

    private ModuleImpl getModule(String str, Map<String, String> map, ModuleMap moduleMap) {
        return map.containsKey(str) ? moduleMap.get(map.get(str)) : moduleMap.get(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0023, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        throw r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void openOOXML(java.io.InputStream r3) throws java.io.IOException {
        /*
            r2 = this;
            java.util.zip.ZipInputStream r0 = new java.util.zip.ZipInputStream
            r0.<init>(r3)
        L5:
            java.util.zip.ZipEntry r3 = r0.getNextEntry()     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L27
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = "vbaProject.bin"
            boolean r3 = org.apache.poi.util.StringUtil.endsWithIgnoreCase(r3, r1)     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L5
            org.apache.poi.poifs.filesystem.POIFSFileSystem r3 = new org.apache.poi.poifs.filesystem.POIFSFileSystem     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L32
            r3.<init>(r0)     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L32
            r2.f111463fs = r3     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L32
            r0.close()
            return
        L22:
            r2 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L32
            throw r2     // Catch: java.lang.Throwable -> L32
        L27:
            r0.close()
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "No VBA project found"
            r2.<init>(r3)
            throw r2
        L32:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L34
        L34:
            r3 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L39
            goto L3d
        L39:
            r0 = move-exception
            r2.addSuppressed(r0)
        L3d:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.poifs.macros.VBAMacroReader.openOOXML(java.io.InputStream):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0186, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0189, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x018c, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x018d, code lost:
    
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x018e, code lost:
    
        r11 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01c7, code lost:
    
        throw new java.io.IOException("Error occurred while reading macros at section id " + r11 + " (" + org.apache.poi.util.HexDump.shortToHex(r11) + com.google.android.material.motion.MotionUtils.f31762d, r10);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x003a. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processDirStream(org.apache.poi.poifs.filesystem.Entry r11, org.apache.poi.poifs.macros.VBAMacroReader.ModuleMap r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.poifs.macros.VBAMacroReader.processDirStream(org.apache.poi.poifs.filesystem.Entry, org.apache.poi.poifs.macros.VBAMacroReader$ModuleMap):void");
    }

    private static String readMBCS(int i, InputStream inputStream, Charset charset) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        int i2 = 0;
        while (i > 0 && i2 < 20000) {
            i2++;
            try {
                unsynchronizedByteArrayOutputStream.write(i);
                i = IOUtils.readByte(inputStream);
            } finally {
            }
        }
        String abstractByteArrayOutputStream = unsynchronizedByteArrayOutputStream.toString(charset);
        unsynchronizedByteArrayOutputStream.close();
        return abstractByteArrayOutputStream;
    }

    private static void readModuleFromDocumentStream(DocumentNode documentNode, String str, ModuleMap moduleMap) throws IOException {
        ModuleImpl moduleImpl = moduleMap.get(str);
        if (moduleImpl == null) {
            ModuleImpl moduleImpl2 = new ModuleImpl();
            moduleMap.put(str, moduleImpl2);
            DocumentInputStream documentInputStream = new DocumentInputStream(documentNode);
            try {
                moduleImpl2.read(documentInputStream);
                documentInputStream.close();
                return;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        documentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        if (moduleImpl.buf != null) {
            return;
        }
        if (moduleImpl.offset == null) {
            throw new IOException("Module offset for '" + str + "' was never read.");
        }
        try {
            DocumentInputStream documentInputStream2 = new DocumentInputStream(documentNode);
            try {
                trySkip(documentInputStream2, moduleImpl.offset.intValue());
                RLEDecompressingInputStream rLEDecompressingInputStream = new RLEDecompressingInputStream(documentInputStream2);
                try {
                    moduleImpl.read(rLEDecompressingInputStream);
                    rLEDecompressingInputStream.close();
                    documentInputStream2.close();
                } finally {
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        documentInputStream2.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        } catch (IllegalArgumentException | IllegalStateException unused) {
            DocumentInputStream documentInputStream3 = new DocumentInputStream(documentNode);
            try {
                byte[] findCompressedStreamWBruteForce = findCompressedStreamWBruteForce(documentInputStream3);
                documentInputStream3.close();
                if (findCompressedStreamWBruteForce != null) {
                    moduleImpl.read(new UnsynchronizedByteArrayInputStream(findCompressedStreamWBruteForce));
                }
            } catch (Throwable th7) {
                try {
                    throw th7;
                } catch (Throwable th8) {
                    try {
                        documentInputStream3.close();
                    } catch (Throwable th9) {
                        th7.addSuppressed(th9);
                    }
                    throw th8;
                }
            }
        }
    }

    private static void readModuleMetadataFromDirStream(RLEDecompressingInputStream rLEDecompressingInputStream, String str, ModuleMap moduleMap) throws IOException {
        int readInt = rLEDecompressingInputStream.readInt();
        ModuleImpl moduleImpl = moduleMap.get(str);
        if (moduleImpl == null) {
            ModuleImpl moduleImpl2 = new ModuleImpl();
            moduleImpl2.offset = Integer.valueOf(readInt);
            moduleMap.put(str, moduleImpl2);
        } else {
            byte[] bArr = moduleImpl.buf;
            RLEDecompressingInputStream rLEDecompressingInputStream2 = new RLEDecompressingInputStream(new UnsynchronizedByteArrayInputStream(bArr, readInt, bArr.length - readInt));
            moduleImpl.read(rLEDecompressingInputStream2);
            rLEDecompressingInputStream2.close();
        }
    }

    private static String readString(InputStream inputStream, int i, Charset charset) throws IOException {
        byte[] safelyAllocate = IOUtils.safelyAllocate(i, 20000);
        int readFully = IOUtils.readFully(inputStream, safelyAllocate);
        if (readFully == i) {
            return new String(safelyAllocate, 0, i, charset);
        }
        throw new IOException("Tried to read: " + i + ", but could only read: " + readFully);
    }

    private ASCIIUnicodeStringPair readStringPair(RLEDecompressingInputStream rLEDecompressingInputStream, Charset charset, int i) throws IOException {
        return readStringPair(rLEDecompressingInputStream, charset, i, true);
    }

    private static String readUnicode(InputStream inputStream) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            int readByte = IOUtils.readByte(inputStream);
            int readByte2 = IOUtils.readByte(inputStream);
            int i = 2;
            while (readByte + readByte2 != 0 && i < 20000) {
                unsynchronizedByteArrayOutputStream.write(readByte);
                unsynchronizedByteArrayOutputStream.write(readByte2);
                readByte = IOUtils.readByte(inputStream);
                readByte2 = IOUtils.readByte(inputStream);
                i += 2;
            }
            if (i >= 20000) {
                LOGGER.atWarn().log("stopped reading unicode name after {} bytes", Unbox.box(i));
            }
            String abstractByteArrayOutputStream = unsynchronizedByteArrayOutputStream.toString(StandardCharsets.UTF_16LE);
            unsynchronizedByteArrayOutputStream.close();
            return abstractByteArrayOutputStream;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private String readUnicodeString(RLEDecompressingInputStream rLEDecompressingInputStream, int i) throws IOException {
        byte[] safelyAllocate = IOUtils.safelyAllocate(i, 20000);
        if (IOUtils.readFully(rLEDecompressingInputStream, safelyAllocate) == i) {
            return new String(safelyAllocate, StringUtil.UTF16LE);
        }
        throw new EOFException();
    }

    private static void trySkip(InputStream inputStream, long j) throws IOException {
        long skipFully = IOUtils.skipFully(inputStream, j);
        if (skipFully != j) {
            if (skipFully < 0) {
                throw new IOException("Tried skipping " + j + " bytes, but no bytes were skipped. The end of the stream has been reached or the stream is closed.");
            }
            throw new IOException("Tried skipping " + j + " bytes, but only " + skipFully + " bytes were skipped. This should never happen with a non-corrupt file.");
        }
    }

    private static byte[] tryToDecompress(InputStream inputStream) {
        try {
            RLEDecompressingInputStream rLEDecompressingInputStream = new RLEDecompressingInputStream(inputStream);
            try {
                byte[] byteArray = IOUtils.toByteArray(rLEDecompressingInputStream);
                rLEDecompressingInputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        rLEDecompressingInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException | IllegalArgumentException | IllegalStateException unused) {
            return null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f111463fs.close();
        this.f111463fs = null;
    }

    public void findMacros(DirectoryNode directoryNode, ModuleMap moduleMap) throws IOException {
        if (VBA_PROJECT_POIFS.equalsIgnoreCase(directoryNode.getName())) {
            readMacros(directoryNode, moduleMap);
            return;
        }
        Iterator<Entry> it2 = directoryNode.iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (next instanceof DirectoryNode) {
                findMacros((DirectoryNode) next, moduleMap);
            }
        }
    }

    public void findModuleNameMap(DirectoryNode directoryNode, Map<String, String> map, ModuleMap moduleMap) throws IOException {
        Iterator<Entry> it2 = directoryNode.iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if ("projectwm".equalsIgnoreCase(next.getName())) {
                DocumentInputStream documentInputStream = new DocumentInputStream((DocumentNode) next);
                try {
                    readNameMapRecords(documentInputStream, map, moduleMap.charset);
                    documentInputStream.close();
                    return;
                } finally {
                }
            } else if (next.isDirectoryEntry()) {
                findModuleNameMap((DirectoryNode) next, map, moduleMap);
            }
        }
    }

    public void findProjectProperties(DirectoryNode directoryNode, Map<String, String> map, ModuleMap moduleMap) throws IOException {
        Iterator<Entry> it2 = directoryNode.iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if ("project".equalsIgnoreCase(next.getName())) {
                DocumentInputStream documentInputStream = new DocumentInputStream((DocumentNode) next);
                try {
                    readProjectProperties(documentInputStream, map, moduleMap);
                    documentInputStream.close();
                    return;
                } finally {
                }
            } else if (next instanceof DirectoryNode) {
                findProjectProperties((DirectoryNode) next, map, moduleMap);
            }
        }
    }

    public Map<String, Module> readMacroModules() throws IOException {
        ModuleMap moduleMap = new ModuleMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        findMacros(this.f111463fs.getRoot(), moduleMap);
        findModuleNameMap(this.f111463fs.getRoot(), linkedHashMap, moduleMap);
        findProjectProperties(this.f111463fs.getRoot(), linkedHashMap, moduleMap);
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ModuleImpl> entry : moduleMap.entrySet()) {
            ModuleImpl value = entry.getValue();
            value.charset = moduleMap.charset;
            hashMap.put(entry.getKey(), value);
        }
        return hashMap;
    }

    public Map<String, String> readMacros() throws IOException {
        Map<String, Module> readMacroModules = readMacroModules();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Module> entry : readMacroModules.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().getContent());
        }
        return hashMap;
    }

    public void readNameMapRecords(InputStream inputStream, Map<String, String> map, Charset charset) throws IOException {
        int i = 0;
        while (true) {
            i++;
            if (i >= 10000) {
                LOGGER.atWarn().log("Hit max name records to read (10000). Stopped early.");
                return;
            }
            try {
                int readByte = IOUtils.readByte(inputStream);
                if (readByte == 0 && (readByte = IOUtils.readByte(inputStream)) == 0) {
                    return;
                }
                String readMBCS = readMBCS(readByte, inputStream, charset);
                String readUnicode = readUnicode(inputStream);
                if (StringUtil.isNotBlank(readMBCS) && StringUtil.isNotBlank(readUnicode)) {
                    map.put(readMBCS, readUnicode);
                }
            } catch (EOFException unused) {
                return;
            }
        }
    }

    public void readProjectProperties(DocumentInputStream documentInputStream, Map<String, String> map, ModuleMap moduleMap) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(documentInputStream, moduleMap.charset);
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[512];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read < 0) {
                break;
            } else {
                sb.append(cArr, 0, read);
            }
        }
        for (String str : sb.toString().split("\r\n|\n\r")) {
            if (!str.startsWith(IteratorUtils.f104923a)) {
                String[] split = str.split("=");
                if (split.length > 1 && split[1].length() > 1 && split[1].startsWith("\"") && split[1].endsWith("\"")) {
                    String str2 = split[1];
                    split[1] = str2.substring(1, str2.length() - 1);
                }
                if ("Document".equals(split[0]) && split.length > 1) {
                    String str3 = split[1];
                    String substring = str3.substring(0, str3.indexOf("/&H"));
                    ModuleImpl module = getModule(substring, map, moduleMap);
                    if (module != null) {
                        module.moduleType = Module.ModuleType.Document;
                    } else {
                        LOGGER.atWarn().log("couldn't find module with name: {}", substring);
                    }
                } else if ("Module".equals(split[0]) && split.length > 1) {
                    ModuleImpl module2 = getModule(split[1], map, moduleMap);
                    if (module2 != null) {
                        module2.moduleType = Module.ModuleType.Module;
                    } else {
                        LOGGER.atWarn().log("couldn't find module with name: {}", split[1]);
                    }
                } else if ("Class".equals(split[0]) && split.length > 1) {
                    ModuleImpl module3 = getModule(split[1], map, moduleMap);
                    if (module3 != null) {
                        module3.moduleType = Module.ModuleType.Class;
                    } else {
                        LOGGER.atWarn().log("couldn't find module with name: {}", split[1]);
                    }
                }
            }
        }
    }

    private ASCIIUnicodeStringPair readStringPair(RLEDecompressingInputStream rLEDecompressingInputStream, Charset charset, int i, boolean z) throws IOException {
        String readString = readString(rLEDecompressingInputStream, rLEDecompressingInputStream.readInt(), charset);
        int readShort = rLEDecompressingInputStream.readShort();
        if (readShort == i) {
            return new ASCIIUnicodeStringPair(readString, readUnicodeString(rLEDecompressingInputStream, rLEDecompressingInputStream.readInt()));
        }
        if (!z) {
            return new ASCIIUnicodeStringPair(readString, readShort);
        }
        throw new IOException("Expected " + Integer.toHexString(i) + "after name before Unicode name, but found: " + Integer.toHexString(readShort));
    }

    /* loaded from: classes12.dex */
    public enum RecordType {
        MODULE_OFFSET(49),
        PROJECT_SYS_KIND(1),
        PROJECT_LCID(2),
        PROJECT_LCID_INVOKE(20),
        PROJECT_CODEPAGE(3),
        PROJECT_NAME(4),
        PROJECT_DOC_STRING(5),
        PROJECT_HELP_FILE_PATH(6),
        PROJECT_HELP_CONTEXT(7, 8),
        PROJECT_LIB_FLAGS(8),
        PROJECT_VERSION(9, 10),
        PROJECT_CONSTANTS(12),
        PROJECT_MODULES(15),
        DIR_STREAM_TERMINATOR(16),
        PROJECT_COOKIE(19),
        MODULE_NAME(25),
        MODULE_NAME_UNICODE(71),
        MODULE_STREAM_NAME(26),
        MODULE_DOC_STRING(28),
        MODULE_HELP_CONTEXT(30),
        MODULE_COOKIE(44),
        MODULE_TYPE_PROCEDURAL(33, 4),
        MODULE_TYPE_OTHER(34, 4),
        MODULE_PRIVATE(40, 4),
        REFERENCE_NAME(22),
        REFERENCE_REGISTERED(13),
        REFERENCE_PROJECT(14),
        REFERENCE_CONTROL_A(47),
        REFERENCE_CONTROL_B(51),
        MODULE_TERMINATOR(43),
        EOF(-1),
        UNKNOWN(-2);

        private final int constantLength;

        /* renamed from: id */
        private final int f111464id;

        RecordType(int i) {
            this.f111464id = i;
            this.constantLength = -1;
        }

        public static RecordType lookup(int i) {
            for (RecordType recordType : values()) {
                if (recordType.f111464id == i) {
                    return recordType;
                }
            }
            return UNKNOWN;
        }

        public int getConstantLength() {
            return this.constantLength;
        }

        RecordType(int i, int i2) {
            this.f111464id = i;
            this.constantLength = i2;
        }
    }

    /* loaded from: classes12.dex */
    public static class ASCIIUnicodeStringPair {
        private final String ascii;
        private final int pushbackRecordId;
        private final String unicode;

        public ASCIIUnicodeStringPair(String str, int i) {
            this.ascii = str;
            this.unicode = "";
            this.pushbackRecordId = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getAscii() {
            return this.ascii;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPushbackRecordId() {
            return this.pushbackRecordId;
        }

        private String getUnicode() {
            return this.unicode;
        }

        public ASCIIUnicodeStringPair(String str, String str2) {
            this.ascii = str;
            this.unicode = str2;
            this.pushbackRecordId = -1;
        }
    }

    public void readMacros(DirectoryNode directoryNode, ModuleMap moduleMap) throws IOException {
        Iterator<String> it2 = directoryNode.getEntryNames().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            String next = it2.next();
            if (CouchFieldKey.KEY_DIR.equalsIgnoreCase(next)) {
                processDirStream(directoryNode.getEntry(next), moduleMap);
                break;
            }
        }
        Iterator<Entry> it3 = directoryNode.iterator();
        while (it3.hasNext()) {
            Entry next2 = it3.next();
            if (next2 instanceof DocumentNode) {
                String name = next2.getName();
                DocumentNode documentNode = (DocumentNode) next2;
                if (!CouchFieldKey.KEY_DIR.equalsIgnoreCase(name) && !StringUtil.startsWithIgnoreCase(name, "__SRP") && !StringUtil.startsWithIgnoreCase(name, "_VBA_PROJECT")) {
                    readModuleFromDocumentStream(documentNode, name, moduleMap);
                }
            }
        }
    }

    public VBAMacroReader(File file) throws IOException {
        try {
            this.f111463fs = new POIFSFileSystem(file);
        } catch (OfficeXmlFileException unused) {
            openOOXML(new FileInputStream(file));
        }
    }

    public VBAMacroReader(POIFSFileSystem pOIFSFileSystem) {
        this.f111463fs = pOIFSFileSystem;
    }
}

package sun.font;

import java.awt.FontFormatException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.HashMap;
import java.util.HashSet;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.hssf.model.InternalWorkbook;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes16.dex */
public class Type1Font extends FileFont {
    private static final int PSEOFTOKEN = 0;
    private static final int PSNAMETOKEN = 1;
    private static final int PSSTRINGTOKEN = 2;
    private static HashMap<String, String> styleAbbreviationsMapping = new HashMap<>();
    private static HashSet<String> styleNameTokes = new HashSet<>();
    WeakReference<Object> bufferRef;
    private String psName;

    /* loaded from: classes16.dex */
    public static class T1DisposerRecord implements DisposerRecord {
        String fileName;

        public T1DisposerRecord(String str) {
            this.fileName = str;
        }

        @Override // sun.java2d.DisposerRecord
        public synchronized void dispose() {
            AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.font.Type1Font.T1DisposerRecord.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    if (T1DisposerRecord.this.fileName == null) {
                        return null;
                    }
                    new File(T1DisposerRecord.this.fileName).delete();
                    return null;
                }
            });
        }
    }

    static {
        String[] strArr = {"Black", "Bold", InternalWorkbook.OLD_WORKBOOK_DIR_ENTRY_NAME, "Demi", "Heavy", "Light", "Meduium", "Nord", "Poster", "Regular", "Super", "Thin", "Compressed", "Condensed", "Compact", "Extended", "Narrow", "Inclined", "Italic", "Kursiv", "Oblique", "Upright", "Sloped", "Semi", "Ultra", "Extra", "Alternate", "Alternate", "Deutsche Fraktur", "Expert", "Inline", "Ornaments", "Outline", "Roman", "Rounded", "Script", "Shaded", "Swash", "Titling", "Typewriter"};
        String[] strArr2 = {"Blk", "Bd", "Bk", "Dm", "Hv", "Lt", "Md", "Nd", "Po", "Rg", "Su", "Th", "Cm", "Cn", "Ct", "Ex", "Nr", "Ic", "It", "Ks", "Obl", "Up", "Sl", "Sm", "Ult", "X", "A", "Alt", "Dfr", "Exp", "In", "Or", "Ou", "Rm", "Rd", "Scr", "Sh", "Sw", "Ti", "Typ"};
        String[] strArr3 = {"Black", "Bold", InternalWorkbook.OLD_WORKBOOK_DIR_ENTRY_NAME, "Demi", "Heavy", "Light", "Medium", "Nord", "Poster", "Regular", "Super", "Thin", "Compressed", "Condensed", "Compact", "Extended", "Narrow", "Inclined", "Italic", "Kursiv", "Oblique", "Upright", "Sloped", "Slanted", "Semi", "Ultra", "Extra"};
        for (int i = 0; i < 40; i++) {
            styleAbbreviationsMapping.put(strArr2[i], strArr[i]);
        }
        for (int i2 = 0; i2 < 27; i2++) {
            styleNameTokes.add(strArr3[i2]);
        }
    }

    public Type1Font(String str, Object obj) throws FontFormatException {
        this(str, obj, false);
    }

    private String expandAbbreviation(String str) {
        return styleAbbreviationsMapping.containsKey(str) ? styleAbbreviationsMapping.get(str) : str;
    }

    private String expandName(String str, boolean z) {
        StringBuilder sb = new StringBuilder(str.length() + 10);
        int i = 0;
        while (i < str.length()) {
            int nextCapitalLetter = nextCapitalLetter(str, i + 1);
            if (nextCapitalLetter < 0) {
                nextCapitalLetter = str.length();
            }
            if (i != 0) {
                sb.append(" ");
            }
            if (z) {
                sb.append(expandAbbreviation(str.substring(i, nextCapitalLetter)));
            } else {
                sb.append(str.substring(i, nextCapitalLetter));
            }
            i = nextCapitalLetter;
        }
        return sb.toString();
    }

    private String fullName2FamilyName(String str) {
        int length = str.length();
        while (length > 0) {
            int i = length - 1;
            while (i > 0 && str.charAt(i) != ' ') {
                i--;
            }
            if (!isStyleToken(str.substring(i + 1, length))) {
                return str.substring(0, length);
            }
            length = i;
        }
        return str;
    }

    private synchronized ByteBuffer getBuffer() throws FontFormatException {
        MappedByteBuffer mappedByteBuffer;
        mappedByteBuffer = (MappedByteBuffer) this.bufferRef.get();
        if (mappedByteBuffer == null) {
            try {
                try {
                    FileChannel channel = ((RandomAccessFile) AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.font.Type1Font.1
                        @Override // java.security.PrivilegedAction
                        public Object run() {
                            try {
                                return new RandomAccessFile(Type1Font.this.platName, "r");
                            } catch (FileNotFoundException unused) {
                                return null;
                            }
                        }
                    })).getChannel();
                    int size = (int) channel.size();
                    this.fileSize = size;
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, size);
                    map.position(0);
                    this.bufferRef = new WeakReference<>(map);
                    channel.close();
                    mappedByteBuffer = map;
                } catch (IOException e) {
                    throw new FontFormatException(e.toString());
                }
            } catch (NullPointerException e2) {
                throw new FontFormatException(e2.toString());
            } catch (ClosedChannelException unused) {
                Thread.interrupted();
                return getBuffer();
            }
        }
        return mappedByteBuffer;
    }

    private String getSimpleToken(ByteBuffer byteBuffer) {
        do {
        } while (byteBuffer.get() <= 32);
        int position = byteBuffer.position() - 1;
        do {
        } while (byteBuffer.get() > 32);
        byte[] bArr = new byte[(byteBuffer.position() - position) - 1];
        byteBuffer.position(position);
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "US-ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    private String getString(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        do {
        } while (byteBuffer.get() != 41);
        byte[] bArr = new byte[(byteBuffer.position() - position) - 1];
        byteBuffer.position(position);
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "US-ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    private void initNames(ByteBuffer byteBuffer) throws FontFormatException {
        String str = null;
        boolean z = false;
        while (true) {
            try {
                if ((this.fullName == null || this.familyName == null || this.psName == null || str == null) && !z) {
                    int nextTokenType = nextTokenType(byteBuffer);
                    if (nextTokenType == 1) {
                        if (byteBuffer.get(byteBuffer.position()) == 70) {
                            String simpleToken = getSimpleToken(byteBuffer);
                            if ("FullName".equals(simpleToken)) {
                                if (nextTokenType(byteBuffer) == 2) {
                                    this.fullName = getString(byteBuffer);
                                }
                            } else if ("FamilyName".equals(simpleToken)) {
                                if (nextTokenType(byteBuffer) == 2) {
                                    this.familyName = getString(byteBuffer);
                                }
                            } else if ("FontName".equals(simpleToken)) {
                                if (nextTokenType(byteBuffer) == 1) {
                                    this.psName = getSimpleToken(byteBuffer);
                                }
                            } else if ("FontType".equals(simpleToken)) {
                                String simpleToken2 = getSimpleToken(byteBuffer);
                                if ("def".equals(getSimpleToken(byteBuffer))) {
                                    str = simpleToken2;
                                }
                            }
                        } else {
                            do {
                            } while (byteBuffer.get() > 32);
                        }
                    } else if (nextTokenType == 0) {
                        z = true;
                    }
                }
            } catch (Exception e) {
                throw new FontFormatException(e.toString());
            }
        }
        if (!"1".equals(str)) {
            throw new FontFormatException("Unsupported font type");
        }
        if (this.psName == null) {
            byteBuffer.position(0);
            if (byteBuffer.getShort() != 9505) {
                byteBuffer.position(8);
            }
            String simpleToken3 = getSimpleToken(byteBuffer);
            if (!simpleToken3.startsWith("FontType1-") && !simpleToken3.startsWith("PS-AdobeFont-")) {
                throw new FontFormatException("Unsupported font format [" + simpleToken3 + IteratorUtils.f104924b);
            }
            this.psName = getSimpleToken(byteBuffer);
        }
        if (z) {
            String str2 = this.fullName;
            if (str2 != null) {
                this.familyName = fullName2FamilyName(str2);
                return;
            }
            String str3 = this.familyName;
            if (str3 != null) {
                this.fullName = str3;
            } else {
                this.fullName = psName2FullName(this.psName);
                this.familyName = psName2FamilyName(this.psName);
            }
        }
    }

    private boolean isStyleToken(String str) {
        return styleNameTokes.contains(str);
    }

    private int nextCapitalLetter(String str, int i) {
        while (i >= 0 && i < str.length()) {
            if (str.charAt(i) >= 'A' && str.charAt(i) <= 'Z') {
                return i;
            }
            i++;
        }
        return -1;
    }

    private int nextTokenType(ByteBuffer byteBuffer) {
        try {
            byte skip = skip(byteBuffer);
            while (skip != 47) {
                if (skip == 40) {
                    return 2;
                }
                if (skip != 13 && skip != 10) {
                    skip = byteBuffer.get();
                }
                skip = skip(byteBuffer);
            }
            return 1;
        } catch (BufferUnderflowException unused) {
            return 0;
        }
    }

    private String psName2FamilyName(String str) {
        if (str.indexOf(45) > 0) {
            str = str.substring(0, str.indexOf(45));
        }
        return expandName(str, false);
    }

    private String psName2FullName(String str) {
        int indexOf = str.indexOf(45);
        if (indexOf < 0) {
            return expandName(str, false);
        }
        return expandName(str.substring(0, indexOf), false) + " " + expandName(str.substring(indexOf + 1), true);
    }

    private byte skip(ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        while (b == 37) {
            do {
                b = byteBuffer.get();
                if (b != 13) {
                }
            } while (b != 10);
        }
        while (b <= 32) {
            b = byteBuffer.get();
        }
        return b;
    }

    private void verify() throws FontFormatException {
        ByteBuffer buffer = getBuffer();
        if (buffer.capacity() < 6) {
            throw new FontFormatException("short file");
        }
        buffer.get(0);
        if ((buffer.get(0) & 255) == 128) {
            verifyPFB(buffer);
            buffer.position(6);
        } else {
            verifyPFA(buffer);
            buffer.position(0);
        }
        initNames(buffer);
        if (this.familyName == null || this.fullName == null) {
            throw new FontFormatException("Font name not found");
        }
        setStyle();
    }

    private void verifyPFA(ByteBuffer byteBuffer) throws FontFormatException {
        if (byteBuffer.getShort() != 9505) {
            throw new FontFormatException("bad pfa font");
        }
    }

    private void verifyPFB(ByteBuffer byteBuffer) throws FontFormatException {
        int i = 0;
        while (true) {
            try {
                int i2 = byteBuffer.getShort(i) & 65535;
                if (i2 != 32769 && i2 != 32770) {
                    if (i2 != 32771) {
                        throw new FontFormatException("bad pfb file");
                    }
                    return;
                }
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
                int i3 = byteBuffer.getInt(i + 2);
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                if (i3 <= 0) {
                    throw new FontFormatException("bad segment length");
                }
                i += i3 + 6;
            } catch (BufferUnderflowException e) {
                throw new FontFormatException(e.toString());
            } catch (Exception e2) {
                throw new FontFormatException(e2.toString());
            }
        }
    }

    @Override // sun.font.FileFont
    public void close() {
    }

    public int getFileSize() {
        if (this.fileSize == 0) {
            try {
                getBuffer();
            } catch (FontFormatException unused) {
            }
        }
        return this.fileSize;
    }

    public int getGlyphCode(char c) {
        try {
            return getScaler().getGlyphCode(c);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getGlyphCode(c);
        }
    }

    @Override // sun.font.Font2D
    public CharToGlyphMapper getMapper() {
        if (this.mapper == null) {
            this.mapper = new Type1GlyphMapper(this);
        }
        return this.mapper;
    }

    @Override // sun.font.Font2D
    public int getMissingGlyphCode() {
        try {
            return getScaler().getMissingGlyphCode();
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getMissingGlyphCode();
        }
    }

    @Override // sun.font.Font2D
    public int getNumGlyphs() {
        try {
            return getScaler().getNumGlyphs();
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getNumGlyphs();
        }
    }

    @Override // sun.font.Font2D
    public String getPostscriptName() {
        return this.psName;
    }

    @Override // sun.font.FileFont
    public synchronized FontScaler getScaler() {
        if (this.scaler == null) {
            this.scaler = FontScaler.getScaler(this, 0, false, this.fileSize);
        }
        return this.scaler;
    }

    @Override // sun.font.FileFont
    public synchronized ByteBuffer readBlock(int i, int i2) {
        ByteBuffer buffer;
        try {
            buffer = getBuffer();
            int i3 = this.fileSize;
            if (i > i3) {
                i = i3;
            }
            buffer.position(i);
        } catch (FontFormatException unused) {
            return null;
        }
        return buffer.slice();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
    
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0036: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:41:0x0036 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readFile(java.nio.ByteBuffer r6) {
        /*
            r5 = this;
            r0 = 0
            sun.font.Type1Font$2 r1 = new sun.font.Type1Font$2     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L28 java.nio.channels.ClosedChannelException -> L2e java.lang.NullPointerException -> L48
            r1.<init>()     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L28 java.nio.channels.ClosedChannelException -> L2e java.lang.NullPointerException -> L48
            java.lang.Object r1 = java.security.AccessController.doPrivileged(r1)     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L28 java.nio.channels.ClosedChannelException -> L2e java.lang.NullPointerException -> L48
            java.io.RandomAccessFile r1 = (java.io.RandomAccessFile) r1     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L28 java.nio.channels.ClosedChannelException -> L2e java.lang.NullPointerException -> L48
            java.nio.channels.FileChannel r2 = r1.getChannel()     // Catch: java.io.IOException -> L22 java.lang.NullPointerException -> L24 java.nio.channels.ClosedChannelException -> L2f java.lang.Throwable -> L35
        L10:
            int r3 = r6.remaining()     // Catch: java.io.IOException -> L22 java.lang.NullPointerException -> L24 java.nio.channels.ClosedChannelException -> L2f java.lang.Throwable -> L35
            if (r3 <= 0) goto L1e
            int r3 = r2.read(r6)     // Catch: java.io.IOException -> L22 java.lang.NullPointerException -> L24 java.nio.channels.ClosedChannelException -> L2f java.lang.Throwable -> L35
            r4 = -1
            if (r3 == r4) goto L1e
            goto L10
        L1e:
            r1.close()     // Catch: java.io.IOException -> L4b
            goto L4b
        L22:
            r0 = r1
            goto L28
        L24:
            r0 = r1
            goto L48
        L26:
            r5 = move-exception
            goto L42
        L28:
            if (r0 == 0) goto L4b
        L2a:
            r0.close()     // Catch: java.io.IOException -> L4b
            goto L4b
        L2e:
            r1 = r0
        L2f:
            if (r1 == 0) goto L38
            r1.close()     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L38
            goto L39
        L35:
            r5 = move-exception
            r0 = r1
            goto L42
        L38:
            r0 = r1
        L39:
            java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L26
            r5.readFile(r6)     // Catch: java.lang.Throwable -> L26
            if (r0 == 0) goto L4b
            goto L2a
        L42:
            if (r0 == 0) goto L47
            r0.close()     // Catch: java.io.IOException -> L47
        L47:
            throw r5
        L48:
            if (r0 == 0) goto L4b
            goto L2a
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.Type1Font.readFile(java.nio.ByteBuffer):void");
    }

    public String toString() {
        return "** Type1 Font: Family=" + this.familyName + " Name=" + this.fullName + " style=" + this.style + " fileName=" + getPublicFileName();
    }

    public Type1Font(String str, Object obj, boolean z) throws FontFormatException {
        super(str, obj);
        this.bufferRef = new WeakReference<>(null);
        this.psName = null;
        this.fontRank = 4;
        try {
            verify();
        } catch (Throwable th) {
            if (z) {
                Disposer.addObjectRecord(this.bufferRef, new T1DisposerRecord(str));
                this.bufferRef = null;
            }
            if (th instanceof FontFormatException) {
                throw th;
            }
            throw new FontFormatException("Unexpected runtime exception.");
        }
    }
}

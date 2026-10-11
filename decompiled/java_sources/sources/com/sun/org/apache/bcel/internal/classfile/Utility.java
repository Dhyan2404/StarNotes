package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.CharArrayReader;
import java.io.CharArrayWriter;
import java.io.FilterReader;
import java.io.FilterWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes10.dex */
public abstract class Utility {
    private static final char ESCAPE_CHAR = '$';
    private static final int FREE_CHARS = 48;
    private static int consumed_chars;
    private static boolean wide;
    private static int[] CHAR_MAP = new int[48];
    private static int[] MAP_CHAR = new int[256];

    static {
        int i = 0;
        for (int i2 = 65; i2 <= 90; i2++) {
            CHAR_MAP[i] = i2;
            MAP_CHAR[i2] = i;
            i++;
        }
        for (int i3 = 103; i3 <= 122; i3++) {
            CHAR_MAP[i] = i3;
            MAP_CHAR[i3] = i;
            i++;
        }
        int[] iArr = CHAR_MAP;
        iArr[i] = 36;
        int[] iArr2 = MAP_CHAR;
        iArr2[36] = i;
        int i4 = i + 1;
        iArr[i4] = 95;
        iArr2[95] = i4;
    }

    public static final String accessToString(int i) {
        return accessToString(i, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r0 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final short byteToShort(byte r0) {
        /*
            if (r0 >= 0) goto L4
            int r0 = r0 + 256
        L4:
            short r0 = (short) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.classfile.Utility.byteToShort(byte):short");
    }

    public static final String classOrInterface(int i) {
        return (i & 512) != 0 ? "interface" : "class";
    }

    public static final int clearBit(int i, int i2) {
        int pow2 = pow2(i2);
        return (i & pow2) == 0 ? i : i ^ pow2;
    }

    public static final String codeToString(byte[] bArr, ConstantPool constantPool, int i, int i2, boolean z) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 20);
        ByteSequence byteSequence = new ByteSequence(bArr);
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            try {
                codeToString(byteSequence, constantPool, z);
            } catch (IOException e) {
                System.out.println(stringBuffer.toString());
                e.printStackTrace();
                throw new ClassFormatException("Byte code error: " + e);
            }
        }
        while (byteSequence.available() > 0) {
            if (i2 < 0 || i3 < i2) {
                stringBuffer.append(fillup(byteSequence.getIndex() + ":", 6, true, ' ') + codeToString(byteSequence, constantPool, z) + '\n');
            }
            i3++;
        }
        return stringBuffer.toString();
    }

    public static final String compactClassName(String str) {
        return compactClassName(str, true);
    }

    public static final String convertString(String str) {
        char[] charArray = str.toCharArray();
        StringBuffer stringBuffer = new StringBuffer();
        for (char c : charArray) {
            if (c == '\n') {
                stringBuffer.append("\\n");
            } else if (c == '\r') {
                stringBuffer.append("\\r");
            } else if (c == '\"') {
                stringBuffer.append("\\\"");
            } else if (c == '\'') {
                stringBuffer.append("\\'");
            } else if (c != '\\') {
                stringBuffer.append(c);
            } else {
                stringBuffer.append("\\\\");
            }
        }
        return stringBuffer.toString();
    }

    private static int countBrackets(String str) {
        boolean z = false;
        int i = 0;
        for (char c : str.toCharArray()) {
            if (c == '[') {
                if (z) {
                    throw new RuntimeException("Illegally nested brackets:" + str);
                }
                z = true;
            } else if (c != ']') {
                continue;
            } else {
                if (!z) {
                    throw new RuntimeException("Illegally nested brackets:" + str);
                }
                i++;
                z = false;
            }
        }
        if (!z) {
            return i;
        }
        throw new RuntimeException("Illegally nested brackets:" + str);
    }

    public static byte[] decode(String str, boolean z) throws IOException {
        CharArrayReader charArrayReader = new CharArrayReader(str.toCharArray());
        JavaReader javaReader = new JavaReader(charArrayReader);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = javaReader.read();
            if (read < 0) {
                break;
            }
            byteArrayOutputStream.write(read);
        }
        byteArrayOutputStream.close();
        charArrayReader.close();
        javaReader.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (!z) {
            return byteArray;
        }
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(byteArray));
        byte[] bArr = new byte[byteArray.length * 3];
        int i = 0;
        while (true) {
            int read2 = gZIPInputStream.read();
            if (read2 < 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                return bArr2;
            }
            bArr[i] = (byte) read2;
            i++;
        }
    }

    public static String encode(byte[] bArr, boolean z) throws IOException {
        if (z) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr, 0, bArr.length);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            bArr = byteArrayOutputStream.toByteArray();
        }
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        JavaWriter javaWriter = new JavaWriter(charArrayWriter);
        for (byte b : bArr) {
            javaWriter.write(b & 255);
        }
        return charArrayWriter.toString();
    }

    public static final boolean equals(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static final String fillup(String str, int i, boolean z, char c) {
        int length = i - str.length();
        if (length < 0) {
            length = 0;
        }
        char[] cArr = new char[length];
        for (int i2 = 0; i2 < length; i2++) {
            cArr[i2] = c;
        }
        if (z) {
            return str + new String(cArr);
        }
        return new String(cArr) + str;
    }

    public static final String format(int i, int i2, boolean z, char c) {
        return fillup(Integer.toString(i), i2, z, c);
    }

    public static String getSignature(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        char[] charArray = str.toCharArray();
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (i >= charArray.length) {
                i = -1;
                break;
            }
            char c = charArray[i];
            if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
                if (z2) {
                    z3 = true;
                }
            } else if (c != '[') {
                if (!z3) {
                    stringBuffer.append(c);
                }
                z2 = true;
            } else if (!z2) {
                throw new RuntimeException("Illegal type: " + str);
            }
            i++;
        }
        int countBrackets = i > 0 ? countBrackets(str.substring(i)) : 0;
        String stringBuffer2 = stringBuffer.toString();
        stringBuffer.setLength(0);
        for (int i2 = 0; i2 < countBrackets; i2++) {
            stringBuffer.append('[');
        }
        for (int i3 = 4; i3 <= 12 && !z; i3++) {
            if (Constants.TYPE_NAMES[i3].equals(stringBuffer2)) {
                stringBuffer.append(Constants.SHORT_TYPE_NAMES[i3]);
                z = true;
            }
        }
        if (!z) {
            stringBuffer.append('L' + stringBuffer2.replace('.', '/') + ';');
        }
        return stringBuffer.toString();
    }

    public static boolean isJavaIdentifierPart(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || ((c >= '0' && c <= '9') || c == '_');
    }

    public static final boolean isSet(int i, int i2) {
        return (i & pow2(i2)) != 0;
    }

    private static final boolean is_digit(char c) {
        return c >= '0' && c <= '9';
    }

    private static final boolean is_space(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n';
    }

    public static final String[] methodSignatureArgumentTypes(String str) throws ClassFormatException {
        return methodSignatureArgumentTypes(str, true);
    }

    public static final String methodSignatureReturnType(String str) throws ClassFormatException {
        return methodSignatureReturnType(str, true);
    }

    public static final String methodSignatureToString(String str, String str2, String str3) {
        return methodSignatureToString(str, str2, str3, true);
    }

    public static final String methodTypeToSignature(String str, String[] strArr) throws ClassFormatException {
        StringBuffer stringBuffer = new StringBuffer(MotionUtils.f31761c);
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                String signature = getSignature(strArr[i]);
                if (signature.endsWith("V")) {
                    throw new ClassFormatException("Invalid type: " + strArr[i]);
                }
                stringBuffer.append(signature);
            }
        }
        stringBuffer.append(MotionUtils.f31762d + getSignature(str));
        return stringBuffer.toString();
    }

    private static final int pow2(int i) {
        return 1 << i;
    }

    public static final void printArray(PrintStream printStream, Object[] objArr) {
        printStream.println(printArray(objArr, true));
    }

    public static final String replace(String str, String str2, String str3) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            if (str.indexOf(str2) == -1) {
                return str;
            }
            int i = 0;
            while (true) {
                int indexOf = str.indexOf(str2, i);
                if (indexOf == -1) {
                    stringBuffer.append(str.substring(i));
                    return stringBuffer.toString();
                }
                stringBuffer.append(str.substring(i, indexOf));
                stringBuffer.append(str3);
                i = str2.length() + indexOf;
            }
        } catch (StringIndexOutOfBoundsException e) {
            System.err.println(e);
            return str;
        }
    }

    public static short searchOpcode(String str) {
        String lowerCase = str.toLowerCase();
        short s = 0;
        while (true) {
            String[] strArr = Constants.OPCODE_NAMES;
            if (s >= strArr.length) {
                return (short) -1;
            }
            if (strArr[s].equals(lowerCase)) {
                return s;
            }
            s = (short) (s + 1);
        }
    }

    public static final int setBit(int i, int i2) {
        return i | pow2(i2);
    }

    public static final String signatureToString(String str) {
        return signatureToString(str, true);
    }

    public static final String toHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            short byteToShort = byteToShort(bArr[i]);
            String num = Integer.toString(byteToShort, 16);
            if (byteToShort < 16) {
                stringBuffer.append('0');
            }
            stringBuffer.append(num);
            if (i < bArr.length - 1) {
                stringBuffer.append(' ');
            }
        }
        return stringBuffer.toString();
    }

    public static final byte typeOfMethodSignature(String str) throws ClassFormatException {
        try {
            if (str.charAt(0) == '(') {
                return typeOfSignature(str.substring(str.lastIndexOf(41) + 1));
            }
            throw new ClassFormatException("Invalid method signature: " + str);
        } catch (StringIndexOutOfBoundsException unused) {
            throw new ClassFormatException("Invalid method signature: " + str);
        }
    }

    public static final byte typeOfSignature(String str) throws ClassFormatException {
        char charAt;
        try {
            charAt = str.charAt(0);
        } catch (StringIndexOutOfBoundsException unused) {
            throw new ClassFormatException("Invalid method signature: " + str);
        }
        if (charAt == 'F') {
            return (byte) 6;
        }
        if (charAt == 'L') {
            return (byte) 14;
        }
        if (charAt == 'S') {
            return (byte) 9;
        }
        if (charAt == 'V') {
            return (byte) 12;
        }
        if (charAt == 'I') {
            return (byte) 10;
        }
        if (charAt == 'J') {
            return (byte) 11;
        }
        if (charAt == 'Z') {
            return (byte) 4;
        }
        if (charAt == '[') {
            return (byte) 13;
        }
        switch (charAt) {
            case 'B':
                return (byte) 8;
            case 'C':
                return (byte) 5;
            case 'D':
                return (byte) 7;
            default:
                throw new ClassFormatException("Invalid method signature: " + str);
        }
        throw new ClassFormatException("Invalid method signature: " + str);
    }

    public static final String accessToString(int i, boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 0;
        int i3 = 0;
        while (i2 < 2048) {
            i2 = pow2(i3);
            if ((i & i2) != 0 && (!z || (i2 != 32 && i2 != 512))) {
                stringBuffer.append(Constants.ACCESS_NAMES[i3] + " ");
            }
            i3++;
        }
        return stringBuffer.toString().trim();
    }

    public static final String compactClassName(String str, String str2, boolean z) {
        int length = str2.length();
        String replace = str.replace('/', '.');
        return (z && replace.startsWith(str2) && replace.substring(length).indexOf(46) == -1) ? replace.substring(length) : replace;
    }

    public static final String[] methodSignatureArgumentTypes(String str, boolean z) throws ClassFormatException {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.charAt(0) == '(') {
                for (int i = 1; str.charAt(i) != ')'; i += consumed_chars) {
                    arrayList.add(signatureToString(str.substring(i), z));
                }
                String[] strArr = new String[arrayList.size()];
                arrayList.toArray(strArr);
                return strArr;
            }
            throw new ClassFormatException("Invalid method signature: " + str);
        } catch (StringIndexOutOfBoundsException unused) {
            throw new ClassFormatException("Invalid method signature: " + str);
        }
    }

    public static final String methodSignatureReturnType(String str, boolean z) throws ClassFormatException {
        try {
            return signatureToString(str.substring(str.lastIndexOf(41) + 1), z);
        } catch (StringIndexOutOfBoundsException unused) {
            throw new ClassFormatException("Invalid method signature: " + str);
        }
    }

    public static final String methodSignatureToString(String str, String str2, String str3, boolean z) {
        return methodSignatureToString(str, str2, str3, z, null);
    }

    public static final void printArray(PrintWriter printWriter, Object[] objArr) {
        printWriter.println(printArray(objArr, true));
    }

    public static final String signatureToString(String str, boolean z) {
        consumed_chars = 1;
        int i = 0;
        try {
            char charAt = str.charAt(0);
            if (charAt == 'F') {
                return "float";
            }
            if (charAt == 'L') {
                int indexOf = str.indexOf(59);
                if (indexOf >= 0) {
                    consumed_chars = indexOf + 1;
                    return compactClassName(str.substring(1, indexOf), z);
                }
                throw new ClassFormatException("Invalid signature: " + str);
            }
            if (charAt == 'S') {
                return "short";
            }
            if (charAt == 'V') {
                return "void";
            }
            if (charAt == 'I') {
                return "int";
            }
            if (charAt == 'J') {
                return "long";
            }
            if (charAt == 'Z') {
                return "boolean";
            }
            if (charAt != '[') {
                switch (charAt) {
                    case 'B':
                        return "byte";
                    case 'C':
                        return "char";
                    case 'D':
                        return "double";
                    default:
                        throw new ClassFormatException("Invalid signature: `" + str + CloudStorageConstants.SINGLE_QUOTES);
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            while (str.charAt(i) == '[') {
                stringBuffer.append("[]");
                i++;
            }
            String signatureToString = signatureToString(str.substring(i), z);
            consumed_chars += i;
            return signatureToString + stringBuffer.toString();
        } catch (StringIndexOutOfBoundsException e) {
            throw new ClassFormatException("Invalid signature: " + e + ":" + str);
        }
    }

    public static final String methodSignatureToString(String str, String str2, String str3, boolean z, LocalVariableTable localVariableTable) throws ClassFormatException {
        StringBuffer stringBuffer = new StringBuffer(MotionUtils.f31761c);
        int i = str3.indexOf("static") >= 0 ? 0 : 1;
        try {
            if (str.charAt(0) == '(') {
                int i2 = 1;
                while (str.charAt(i2) != ')') {
                    String signatureToString = signatureToString(str.substring(i2), z);
                    stringBuffer.append(signatureToString);
                    if (localVariableTable != null) {
                        LocalVariable localVariable = localVariableTable.getLocalVariable(i);
                        if (localVariable != null) {
                            stringBuffer.append(" " + localVariable.getName());
                        }
                    } else {
                        stringBuffer.append(" arg" + i);
                    }
                    if (!"double".equals(signatureToString) && !"long".equals(signatureToString)) {
                        i++;
                        stringBuffer.append(", ");
                        i2 += consumed_chars;
                    }
                    i += 2;
                    stringBuffer.append(", ");
                    i2 += consumed_chars;
                }
                String signatureToString2 = signatureToString(str.substring(i2 + 1), z);
                if (stringBuffer.length() > 1) {
                    stringBuffer.setLength(stringBuffer.length() - 2);
                }
                stringBuffer.append(MotionUtils.f31762d);
                StringBuilder sb = new StringBuilder();
                sb.append(str3);
                sb.append(str3.length() > 0 ? " " : "");
                sb.append(signatureToString2);
                sb.append(" ");
                sb.append(str2);
                sb.append(stringBuffer.toString());
                return sb.toString();
            }
            throw new ClassFormatException("Invalid method signature: " + str);
        } catch (StringIndexOutOfBoundsException unused) {
            throw new ClassFormatException("Invalid method signature: " + str);
        }
    }

    public static final String printArray(Object[] objArr) {
        return printArray(objArr, true);
    }

    public static final String printArray(Object[] objArr, boolean z) {
        return printArray(objArr, z, false);
    }

    /* loaded from: classes10.dex */
    public static class JavaReader extends FilterReader {
        public JavaReader(Reader reader) {
            super(reader);
        }

        @Override // java.io.FilterReader, java.io.Reader
        public int read() throws IOException {
            int read = ((FilterReader) this).in.read();
            if (read != 36) {
                return read;
            }
            int read2 = ((FilterReader) this).in.read();
            if (read2 < 0) {
                return -1;
            }
            if ((read2 >= 48 && read2 <= 57) || (read2 >= 97 && read2 <= 102)) {
                int read3 = ((FilterReader) this).in.read();
                if (read3 < 0) {
                    return -1;
                }
                return Integer.parseInt(new String(new char[]{(char) read2, (char) read3}), 16);
            }
            return Utility.MAP_CHAR[read2];
        }

        @Override // java.io.FilterReader, java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            for (int i3 = 0; i3 < i2; i3++) {
                cArr[i + i3] = (char) read();
            }
            return i2;
        }
    }

    public static final String printArray(Object[] objArr, boolean z, boolean z2) {
        if (objArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('{');
        }
        for (int i = 0; i < objArr.length; i++) {
            if (objArr[i] != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(z2 ? "\"" : "");
                sb.append(objArr[i].toString());
                sb.append(z2 ? "\"" : "");
                stringBuffer.append(sb.toString());
            } else {
                stringBuffer.append("null");
            }
            if (i < objArr.length - 1) {
                stringBuffer.append(", ");
            }
        }
        if (z) {
            stringBuffer.append('}');
        }
        return stringBuffer.toString();
    }

    public static final String compactClassName(String str, boolean z) {
        return compactClassName(str, "java.lang.", z);
    }

    /* loaded from: classes10.dex */
    public static class JavaWriter extends FilterWriter {
        public JavaWriter(Writer writer) {
            super(writer);
        }

        @Override // java.io.FilterWriter, java.io.Writer
        public void write(int i) throws IOException {
            if (Utility.isJavaIdentifierPart((char) i) && i != 36) {
                ((FilterWriter) this).out.write(i);
                return;
            }
            ((FilterWriter) this).out.write(36);
            if (i >= 0 && i < 48) {
                ((FilterWriter) this).out.write(Utility.CHAR_MAP[i]);
                return;
            }
            char[] charArray = Integer.toHexString(i).toCharArray();
            if (charArray.length == 1) {
                ((FilterWriter) this).out.write(48);
                ((FilterWriter) this).out.write(charArray[0]);
            } else {
                ((FilterWriter) this).out.write(charArray[0]);
                ((FilterWriter) this).out.write(charArray[1]);
            }
        }

        @Override // java.io.FilterWriter, java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            for (int i3 = 0; i3 < i2; i3++) {
                write(cArr[i + i3]);
            }
        }

        @Override // java.io.FilterWriter, java.io.Writer
        public void write(String str, int i, int i2) throws IOException {
            write(str.toCharArray(), i, i2);
        }
    }

    public static final String codeToString(byte[] bArr, ConstantPool constantPool, int i, int i2) {
        return codeToString(bArr, constantPool, i, i2, true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0341 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String codeToString(com.sun.org.apache.bcel.internal.util.ByteSequence r18, com.sun.org.apache.bcel.internal.classfile.ConstantPool r19, boolean r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.classfile.Utility.codeToString(com.sun.org.apache.bcel.internal.util.ByteSequence, com.sun.org.apache.bcel.internal.classfile.ConstantPool, boolean):java.lang.String");
    }

    public static final String codeToString(ByteSequence byteSequence, ConstantPool constantPool) throws IOException {
        return codeToString(byteSequence, constantPool, true);
    }
}

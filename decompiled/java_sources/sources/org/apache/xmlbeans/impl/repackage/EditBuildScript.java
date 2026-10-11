package org.apache.xmlbeans.impl.repackage;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;

/* loaded from: classes13.dex */
public class EditBuildScript {
    public static void copy(Reader reader, Writer writer) throws IOException {
        char[] cArr = new char[16384];
        while (true) {
            int read = reader.read(cArr, 0, 16384);
            if (read < 0) {
                return;
            } else {
                writer.write(cArr, 0, read);
            }
        }
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length != 3) {
            throw new IllegalArgumentException("Wrong number of arguments");
        }
        strArr[0] = strArr[0].replace('/', File.separatorChar);
        File file = new File(strArr[0]);
        StringBuffer readFile = readFile(file);
        String str = "<property name=\"" + strArr[1] + "\" value=\"";
        int indexOf = readFile.indexOf(str);
        if (indexOf < 0) {
            throw new IllegalArgumentException("Can't find token: " + str);
        }
        int length = str.length() + indexOf;
        while (readFile.charAt(length) != '\"') {
            length++;
        }
        readFile.replace(indexOf + str.length(), length, strArr[2]);
        writeFile(file, readFile);
    }

    public static StringBuffer readFile(File file) throws IOException {
        BufferedReader newBufferedReader = Files.newBufferedReader(file.toPath(), StandardCharsets.ISO_8859_1);
        try {
            StringWriter stringWriter = new StringWriter();
            try {
                copy(newBufferedReader, stringWriter);
                StringBuffer buffer = stringWriter.getBuffer();
                stringWriter.close();
                if (newBufferedReader != null) {
                    newBufferedReader.close();
                }
                return buffer;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newBufferedReader != null) {
                    try {
                        newBufferedReader.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static void writeFile(File file, StringBuffer stringBuffer) throws IOException {
        BufferedWriter newBufferedWriter = Files.newBufferedWriter(file.toPath(), StandardCharsets.ISO_8859_1, new OpenOption[0]);
        try {
            StringReader stringReader = new StringReader(stringBuffer.toString());
            try {
                copy(stringReader, newBufferedWriter);
                stringReader.close();
                if (newBufferedWriter != null) {
                    newBufferedWriter.close();
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newBufferedWriter != null) {
                    try {
                        newBufferedWriter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}

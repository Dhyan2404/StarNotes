package org.apache.poi.poifs.macros;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Map;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class VBAMacroExtractor {
    public static void main(String[] strArr) throws IOException {
        if (strArr.length == 0) {
            System.err.println("Use:");
            System.err.println("   VBAMacroExtractor <office.doc> [output]");
            System.err.println();
            System.err.println("If an output directory is given, macros are written there");
            System.err.println("Otherwise they are output to the screen");
            System.exit(1);
        }
        new VBAMacroExtractor().extract(new File(strArr[0]), strArr.length > 1 ? new File(strArr[1]) : null);
    }

    public void extract(File file, File file2, String str) throws IOException {
        if (file.exists()) {
            System.err.print("Extracting VBA Macros from " + file + " to ");
            if (file2 != null) {
                if (!file2.exists() && !file2.mkdirs()) {
                    throw new IOException("Output directory " + file2 + " could not be created");
                }
                System.err.println(file2);
            } else {
                System.err.println("STDOUT");
            }
            VBAMacroReader vBAMacroReader = new VBAMacroReader(file);
            try {
                Map<String, String> readMacros = vBAMacroReader.readMacros();
                vBAMacroReader.close();
                for (Map.Entry<String, String> entry : readMacros.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (file2 == null) {
                        System.out.println("---------------------------------------");
                        System.out.println(key);
                        System.out.println();
                        System.out.println(value);
                    } else {
                        File file3 = new File(file2, key + str);
                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                        try {
                            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, StringUtil.UTF8);
                            try {
                                outputStreamWriter.write(value);
                                outputStreamWriter.close();
                                fileOutputStream.close();
                                System.out.println("Extracted " + file3);
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    try {
                                        outputStreamWriter.close();
                                    } catch (Throwable th3) {
                                        th.addSuppressed(th3);
                                    }
                                    throw th2;
                                }
                            }
                        } catch (Throwable th4) {
                            try {
                                throw th4;
                            } catch (Throwable th5) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th6) {
                                    th4.addSuppressed(th6);
                                }
                                throw th5;
                            }
                        }
                    }
                }
                if (file2 == null) {
                    System.out.println("---------------------------------------");
                    return;
                }
                return;
            } catch (Throwable th7) {
                try {
                    throw th7;
                } catch (Throwable th8) {
                    try {
                        vBAMacroReader.close();
                    } catch (Throwable th9) {
                        th7.addSuppressed(th9);
                    }
                    throw th8;
                }
            }
        }
        throw new FileNotFoundException(file.toString());
    }

    public void extract(File file, File file2) throws IOException {
        extract(file, file2, ".vba");
    }
}

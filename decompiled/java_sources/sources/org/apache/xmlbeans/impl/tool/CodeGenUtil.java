package org.apache.xmlbeans.impl.tool;

import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.attribute.FileAttribute;
import java.security.CodeSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import org.apache.commons.lang3.SystemUtils;
import org.apache.xmlbeans.SystemProperties;
import org.apache.xmlbeans.impl.common.IOUtil;
import org.apache.xmlbeans.impl.tool.CodeGenUtil;

/* loaded from: classes13.dex */
public class CodeGenUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String DEFAULT_COMPILER = "javac";
    public static final String DEFAULT_MEM_MAX = "256m";
    public static final String DEFAULT_MEM_START = "8m";

    public static void addAllJavaFiles(List<File> list, List<String> list2) {
        for (File file : list) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles(new FileFilter() { // from class: com.sunia.HTREnginev2.nwd
                    @Override // java.io.FileFilter
                    public final boolean accept(File file2) {
                        boolean lambda$addAllJavaFiles$0;
                        lambda$addAllJavaFiles$0 = CodeGenUtil.lambda$addAllJavaFiles$0(file2);
                        return lambda$addAllJavaFiles$0;
                    }
                });
                if (listFiles != null) {
                    addAllJavaFiles(Arrays.asList(listFiles), list2);
                }
            } else {
                list2.add(quoteAndEscapeFilename(file.getAbsolutePath()));
            }
        }
    }

    private static Thread copy(InputStream inputStream, final StringBuilder sb) {
        final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.ISO_8859_1));
        Thread thread = new Thread(new Runnable() { // from class: com.sunia.HTREnginev2.owd
            @Override // java.lang.Runnable
            public final void run() {
                CodeGenUtil.lambda$copy$2(bufferedReader, sb);
            }
        });
        thread.start();
        return thread;
    }

    public static boolean externalCompile(List<File> list, File file, File[] fileArr, boolean z) {
        return externalCompile(list, file, fileArr, z, DEFAULT_COMPILER, null, DEFAULT_MEM_START, DEFAULT_MEM_MAX, false, false);
    }

    private static File findJavaTool(String str) {
        File file = new File(str);
        if (file.isFile()) {
            return file;
        }
        File file2 = new File(str + ".exe");
        if (file2.isFile()) {
            return file2;
        }
        String property = SystemProperties.getProperty(SystemUtils.f107424e);
        String str2 = File.separator;
        File file3 = new File(property + str2 + Constants.ATTRVAL_PARENT + str2 + FileExtensionUtils.EXTENSION_TYPE_BIN, str);
        if (file3.isFile()) {
            return file3;
        }
        File file4 = new File(file3.getPath() + ".exe");
        if (file4.isFile()) {
            return file4;
        }
        File file5 = new File(property + str2 + FileExtensionUtils.EXTENSION_TYPE_BIN, str);
        if (file5.isFile()) {
            return file5;
        }
        File file6 = new File(file5.getPath() + ".exe");
        return file6.isFile() ? file6 : file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$addAllJavaFiles$0(File file) {
        return (file.isFile() && file.getName().endsWith(".java")) || file.isDirectory();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$copy$2(BufferedReader bufferedReader, final StringBuilder sb) {
        bufferedReader.lines().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.mwd
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CodeGenUtil.lambda$null$1(sb, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$null$1(StringBuilder sb, String str) {
        sb.append(str);
        sb.append("\n");
    }

    private static String quoteAndEscapeFilename(String str) {
        if (!str.contains(" ")) {
            return str;
        }
        return "\"" + str.replaceAll("\\\\", "\\\\\\\\") + "\"";
    }

    public static URI resolve(URI uri, URI uri2) {
        URI resolve = uri.resolve(uri2);
        if (!"file".equals(resolve.getScheme()) || uri2.equals(resolve) || !uri.getPath().startsWith("//") || resolve.getPath().startsWith("//")) {
            return resolve;
        }
        try {
            return new URI("file", null, "///".concat(resolve.getPath()), resolve.getQuery(), resolve.getFragment());
        } catch (URISyntaxException unused) {
            return resolve;
        }
    }

    public static File[] systemClasspath() {
        ArrayList arrayList = new ArrayList();
        CodeSource codeSource = CodeGenUtil.class.getProtectionDomain().getCodeSource();
        if (codeSource != null) {
            arrayList.add(new File(codeSource.getLocation().getPath()));
        } else {
            System.err.println("Can't determine path of xmlbeans-*.jar - specify classpath explicitly!");
        }
        String property = SystemProperties.getProperty("java.class.path");
        if (property != null) {
            for (String str : property.split(File.pathSeparator)) {
                arrayList.add(new File(str));
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }

    public static boolean externalCompile(List<File> list, File file, File[] fileArr, boolean z, String str, String str2, String str3, boolean z2, boolean z3) {
        return externalCompile(list, file, fileArr, z, str, null, str2, str3, z2, z3);
    }

    public static boolean externalCompile(List<File> list, File file, File[] fileArr, boolean z, String str, String str2, String str3, String str4, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            str = DEFAULT_COMPILER;
        }
        arrayList.add(findJavaTool(str).getAbsolutePath());
        if (file == null) {
            file = new File(".");
        } else {
            arrayList.add("-d");
            arrayList.add(quoteAndEscapeFilename(file.getAbsolutePath()));
        }
        if (fileArr == null) {
            fileArr = systemClasspath();
        }
        if (fileArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(file.getAbsolutePath());
            for (File file2 : fileArr) {
                sb.append(File.pathSeparator);
                sb.append(file2.getAbsolutePath());
            }
            arrayList.add("-classpath");
            arrayList.add(quoteAndEscapeFilename(sb.toString()));
        }
        if (str2 == null) {
            str2 = "1.8";
        }
        arrayList.add("-source");
        arrayList.add(str2);
        arrayList.add("-target");
        arrayList.add(str2);
        arrayList.add(z ? "-g" : "-g:none");
        if (z3) {
            arrayList.add("-verbose");
        }
        addAllJavaFiles(list, arrayList);
        File file3 = null;
        try {
            file3 = Files.createTempFile(IOUtil.getTempDir(), DEFAULT_COMPILER, ".tmp", new FileAttribute[0]).toFile();
            BufferedWriter newBufferedWriter = Files.newBufferedWriter(file3.toPath(), StandardCharsets.ISO_8859_1, new OpenOption[0]);
            try {
                Iterator it2 = arrayList.iterator();
                it2.next();
                while (it2.hasNext()) {
                    newBufferedWriter.write((String) it2.next());
                    newBufferedWriter.write(10);
                }
                if (newBufferedWriter != null) {
                    newBufferedWriter.close();
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(arrayList.get(0));
                if (str3 != null && str3.length() != 0) {
                    arrayList2.add("-J-Xms" + str3);
                }
                if (str4 != null && str4.length() != 0) {
                    arrayList2.add("-J-Xmx" + str4);
                }
                arrayList2.add("@" + file3.getAbsolutePath());
                arrayList = arrayList2;
            } finally {
            }
        } catch (Exception unused) {
            System.err.println("Could not create command-line file for javac");
        }
        try {
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            if (z3) {
                System.out.print("compile command:");
                for (String str5 : strArr) {
                    System.out.print(" " + str5);
                }
                System.out.println();
            }
            Process exec = Runtime.getRuntime().exec(strArr);
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            copy(exec.getInputStream(), sb3);
            copy(exec.getErrorStream(), sb2);
            exec.waitFor();
            if (z3 || exec.exitValue() != 0) {
                if (sb3.length() > 0) {
                    System.out.println(sb3.toString());
                    System.out.flush();
                }
                if (sb2.length() > 0) {
                    System.err.println(sb2.toString());
                    System.err.flush();
                }
                if (exec.exitValue() != 0) {
                    return false;
                }
            }
            if (file3 == null) {
                return true;
            }
            file3.delete();
            return true;
        } catch (Throwable th) {
            System.err.println(th.toString());
            System.err.println(th.getCause());
            th.printStackTrace(System.err);
            return false;
        }
    }
}

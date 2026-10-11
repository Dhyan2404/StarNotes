package org.apache.xmlbeans.impl.repackage;

import androidx.appcompat.widget.ActivityChooserModel;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes13.dex */
public class Repackage {
    private List<List<String>> _fromPackages;
    private List<String> _moveAlongFiles;
    private Map<String, String> _movedDirs;
    private Pattern _packagePattern;
    private final Repackager _repackager;
    private int _skippedFiles;
    private final File _sourceBase;
    private final File _targetBase;
    private List<List<String>> _toPackages;

    private Repackage(String[] strArr) {
        int i;
        String str = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        boolean z = false;
        while (i2 < strArr.length) {
            if (strArr[i2].equals("-repackage") && (i = i2 + 1) < strArr.length) {
                str = strArr[i];
            } else if (strArr[i2].equals("-f") && (i = i2 + 1) < strArr.length) {
                str2 = strArr[i];
            } else if (!strArr[i2].equals("-t") || (i = i2 + 1) >= strArr.length) {
                z = true;
                i2++;
            } else {
                str3 = strArr[i];
            }
            i2 = i;
            i2++;
        }
        if (!z && str != null) {
            if (!((str2 == null) ^ (str3 == null))) {
                this._repackager = new Repackager(str);
                if (str2 == null || str3 == null) {
                    this._targetBase = null;
                    this._sourceBase = null;
                    return;
                } else {
                    this._sourceBase = new File(str2);
                    this._targetBase = new File(str3);
                    return;
                }
            }
        }
        throw new RuntimeException("Usage: repackage -repackage [spec] [ -f [sourcedir] -t [targetdir] ]");
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr, 0, 16384);
            if (read < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        file2.getParentFile().mkdirs();
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                copy(fileInputStream, fileOutputStream);
                fileOutputStream.close();
                fileInputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void main(String[] strArr) throws Exception {
        new Repackage(strArr).repackage();
    }

    public void fillFiles(List<File> list, File file) {
        if (!file.isDirectory()) {
            list.add(file);
            return;
        }
        if (file.getName().equals(PrivilegedApp.f6529f) || file.getName().equals("CVS")) {
            return;
        }
        String[] list2 = file.list();
        if (list2 == null) {
            throw new RuntimeException("Directory can't be accessed: " + file.toString());
        }
        for (String str : list2) {
            fillFiles(list, new File(file, str));
        }
    }

    public void finishMovingFiles() throws IOException {
        for (String str : this._moveAlongFiles) {
            String str2 = this._movedDirs.get(Repackager.dirForPath(str));
            String file = str2 == null ? str : new File(str2, new File(str).getName()).toString();
            if (str.endsWith(".html")) {
                repackageNonJavaFile(str, file);
            } else {
                justMoveNonJavaFile(str, file);
            }
        }
    }

    public void justMoveNonJavaFile(String str, String str2) throws IOException {
        File file = new File(this._sourceBase, str);
        File file2 = new File(this._targetBase, str2);
        if (file.lastModified() < file2.lastModified()) {
            this._skippedFiles++;
        } else {
            copyFile(file, file2);
        }
    }

    public void moveAlongWithJavaFiles(String str) {
        this._moveAlongFiles.add(str);
    }

    public StringBuffer readFile(File file) throws IOException {
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

    public StringBuffer readInputStream(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StandardCharsets.ISO_8859_1);
        try {
            StringWriter stringWriter = new StringWriter();
            try {
                copy(inputStreamReader, stringWriter);
                StringBuffer buffer = stringWriter.getBuffer();
                stringWriter.close();
                inputStreamReader.close();
                return buffer;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void recursiveDelete(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                String[] list = file.list();
                if (list == null) {
                    throw new RuntimeException("Directory can't be accessed: " + file.toString());
                }
                for (String str : list) {
                    recursiveDelete(new File(file, str));
                }
            }
            file.delete();
        }
    }

    public void repackage() throws Exception {
        if (this._sourceBase == null || this._targetBase == null) {
            System.out.println(this._repackager.repackage(readInputStream(System.in)).toString());
            return;
        }
        this._fromPackages = this._repackager.getFromPackages();
        this._toPackages = this._repackager.getToPackages();
        this._packagePattern = Pattern.compile("^\\s*package\\s+((?:\\w|\\.)*)\\s*;", 8);
        this._moveAlongFiles = new ArrayList();
        this._movedDirs = new HashMap();
        this._targetBase.mkdirs();
        ArrayList arrayList = new ArrayList();
        fillFiles(arrayList, this._sourceBase);
        System.out.println("Repackaging " + arrayList.size() + " files ...");
        int length = this._sourceBase.getCanonicalPath().length();
        Iterator<File> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            repackageFile(it2.next().getCanonicalPath().substring(length + 1));
        }
        finishMovingFiles();
        if (this._skippedFiles > 0) {
            System.out.println("Skipped " + this._skippedFiles + " unmodified files.");
        }
    }

    public void repackageFile(String str) throws IOException {
        if (str.endsWith(".java")) {
            repackageJavaFile(str);
            return;
        }
        if (str.endsWith(".xsdconfig") || str.endsWith(ActivityChooserModel.f1436y) || str.endsWith(".g")) {
            repackageNonJavaFile(str);
            return;
        }
        if (str.startsWith(FileExtensionUtils.EXTENSION_TYPE_BIN + File.separatorChar)) {
            repackageNonJavaFile(str);
        } else {
            moveAlongWithJavaFiles(str);
        }
    }

    public void repackageJavaFile(String str) throws IOException {
        List<String> list;
        List<String> list2;
        String str2 = str;
        File file = new File(this._sourceBase, str2);
        StringBuffer readFile = readFile(file);
        Matcher matcher = this._packagePattern.matcher(readFile);
        int i = 1;
        if (matcher.find()) {
            String group = matcher.group(1);
            int start = matcher.start(1);
            int end = matcher.end(1);
            if (matcher.find()) {
                throw new RuntimeException("Two package specifications found: " + str2);
            }
            List<String> splitPath = Repackager.splitPath(str2, File.separatorChar);
            String dirForPath = Repackager.dirForPath(str);
            while (true) {
                boolean z = false;
                for (int i2 = i; i2 < splitPath.size(); i2++) {
                    int i3 = i2 - 1;
                    String str3 = splitPath.get(i3);
                    String str4 = splitPath.get(i2);
                    if (str3.indexOf(58) < str4.indexOf(58)) {
                        splitPath.set(i3, str4);
                        splitPath.set(i2, str3);
                        z = true;
                    }
                }
                if (!z) {
                    break;
                } else {
                    i = 1;
                }
            }
            List<String> splitPath2 = Repackager.splitPath(group, '.');
            int size = splitPath.size() - 2;
            if (size < 0 || splitPath.size() - 1 < splitPath2.size()) {
                throw new RuntimeException("Package spec differs from file path: " + str2);
            }
            for (int size2 = splitPath2.size() - 1; size2 >= 0; size2--) {
                if (!splitPath2.get(size2).equals(splitPath.get(size))) {
                    throw new RuntimeException("Package spec differs from file path: " + str2);
                }
                size--;
            }
            int i4 = 0;
            loop3: while (true) {
                if (i4 >= this._fromPackages.size()) {
                    list = null;
                    list2 = null;
                    break;
                }
                list = this._fromPackages.get(i4);
                if (list.size() <= splitPath2.size()) {
                    for (int i5 = 0; i5 < list.size(); i5++) {
                        if (!list.get(i5).equals(splitPath2.get(i5))) {
                            break;
                        }
                    }
                    list2 = this._toPackages.get(i4);
                    break loop3;
                }
                i4++;
            }
            if (list2 != null) {
                String str5 = "";
                String str6 = "";
                for (int i6 = 0; i6 < list2.size(); i6++) {
                    if (i6 > 0) {
                        str5 = str5 + ".";
                        str6 = str6 + File.separatorChar;
                    }
                    str5 = str5 + list2.get(i6);
                    str6 = str6 + list2.get(i6);
                }
                for (int size3 = (splitPath.size() - splitPath2.size()) - 2; size3 >= 0; size3--) {
                    str6 = splitPath.get(size3) + File.separatorChar + str6;
                }
                for (int size4 = list.size(); size4 < splitPath2.size(); size4++) {
                    str6 = str6 + File.separatorChar + splitPath2.get(size4);
                    str5 = str5 + '.' + splitPath2.get(size4);
                }
                String str7 = str6 + File.separatorChar + splitPath.get(splitPath.size() - 1);
                readFile.replace(start, end, str5);
                String dirForPath2 = Repackager.dirForPath(str7);
                if (!dirForPath.equals(dirForPath2)) {
                    this._movedDirs.put(dirForPath, dirForPath2);
                }
                str2 = str7;
            }
        }
        if (file.lastModified() < new File(this._targetBase, str2).lastModified()) {
            this._skippedFiles++;
        } else {
            writeFile(new File(this._targetBase, str2), this._repackager.repackage(readFile));
        }
    }

    public void repackageNonJavaFile(String str) throws IOException {
        File file = new File(this._sourceBase, str);
        File file2 = new File(this._targetBase, str);
        if (file.lastModified() < file2.lastModified()) {
            this._skippedFiles++;
        } else {
            writeFile(file2, this._repackager.repackage(readFile(file)));
        }
    }

    public void writeFile(File file, StringBuffer stringBuffer) throws IOException {
        file.getParentFile().mkdirs();
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

    public void repackageNonJavaFile(String str, String str2) throws IOException {
        File file = new File(this._sourceBase, str);
        File file2 = new File(this._targetBase, str2);
        if (file.lastModified() < file2.lastModified()) {
            this._skippedFiles++;
        } else {
            writeFile(file2, this._repackager.repackage(readFile(file)));
        }
    }
}

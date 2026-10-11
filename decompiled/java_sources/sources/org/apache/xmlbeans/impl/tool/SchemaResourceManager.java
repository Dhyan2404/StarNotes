package org.apache.xmlbeans.impl.tool;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.xmlbeans.impl.common.IOUtil;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class SchemaResourceManager extends BaseSchemaResourceManager {
    private File _directory;

    public SchemaResourceManager(File file) {
        this._directory = file;
        init();
    }

    private static List collectXSDFiles(File[] fileArr) {
        ArrayList arrayList = new ArrayList();
        for (File file : fileArr) {
            if (file.isDirectory()) {
                arrayList.addAll(collectXSDFiles(file.listFiles(new FileFilter() { // from class: org.apache.xmlbeans.impl.tool.SchemaResourceManager.1
                    @Override // java.io.FileFilter
                    public boolean accept(File file2) {
                        return file2.isDirectory() || (file2.isFile() && file2.getName().endsWith(".xsd"));
                    }
                })));
            } else {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    private static boolean isInDirectory(File file, File file2) {
        if (file == null) {
            return false;
        }
        if (file.equals(file2)) {
            return true;
        }
        return isInDirectory(file.getParentFile(), file2);
    }

    private static boolean looksLikeURL(String str) {
        return str.startsWith(URIUtil.HTTP_COLON) || str.startsWith(URIUtil.HTTPS_COLON) || str.startsWith("ftp:") || str.startsWith("file:");
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length == 0) {
            printUsage();
            System.exit(0);
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(C6999h.f39688c);
        hashSet.add("help");
        hashSet.add("usage");
        hashSet.add("license");
        hashSet.add("version");
        hashSet.add(EventHandlerManager.SYNC);
        hashSet.add("refresh");
        hashSet.add("recurse");
        HashSet hashSet2 = new HashSet();
        hashSet2.add(CouchFieldKey.KEY_DIR);
        CommandLine commandLine = new CommandLine(strArr, hashSet, hashSet2);
        if (commandLine.getOpt(C6999h.f39688c) != null || commandLine.getOpt("help") != null || commandLine.getOpt("usage") != null) {
            printUsage();
            System.exit(0);
            return;
        }
        String[] badOpts = commandLine.getBadOpts();
        if (badOpts.length > 0) {
            for (String str : badOpts) {
                System.out.println("Unrecognized option: " + str);
            }
            printUsage();
            System.exit(0);
            return;
        }
        if (commandLine.getOpt("license") != null) {
            CommandLine.printLicense();
            System.exit(0);
            return;
        }
        if (commandLine.getOpt("version") != null) {
            CommandLine.printVersion();
            System.exit(0);
            return;
        }
        String[] args = commandLine.args();
        boolean z = commandLine.getOpt(EventHandlerManager.SYNC) != null;
        boolean z2 = commandLine.getOpt("refresh") != null;
        boolean z3 = commandLine.getOpt("recurse") != null;
        String opt = commandLine.getOpt(CouchFieldKey.KEY_DIR);
        if (opt == null) {
            opt = ".";
        }
        File file = new File(opt);
        try {
            SchemaResourceManager schemaResourceManager = new SchemaResourceManager(file);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < args.length; i++) {
                if (looksLikeURL(args[i])) {
                    arrayList.add(args[i]);
                } else {
                    arrayList2.add(new File(file, args[i]));
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                File file2 = (File) it2.next();
                if (!isInDirectory(file2, file)) {
                    System.err.println("File not within directory: " + file2);
                    it2.remove();
                }
            }
            List collectXSDFiles = collectXSDFiles((File[]) arrayList2.toArray(new File[0]));
            String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
            String[] relativeFilenames = relativeFilenames((File[]) collectXSDFiles.toArray(new File[0]), file);
            if (strArr2.length + relativeFilenames.length > 0) {
                schemaResourceManager.process(strArr2, relativeFilenames, z, z2, z3);
            } else {
                schemaResourceManager.processAll(z, z2, z3);
            }
            schemaResourceManager.writeCache();
            System.exit(0);
        } catch (IllegalStateException e) {
            if (e.getMessage() != null) {
                System.out.println(e.getMessage());
            } else {
                e.printStackTrace();
            }
            System.exit(1);
        }
    }

    public static void printUsage() {
        System.out.println("Maintains \"xsdownload.xml\", an index of locally downloaded .xsd files");
        System.out.println("usage: sdownload [-dir directory] [-refresh] [-recurse] [-sync] [url/file...]");
        System.out.println("");
        System.out.println("URLs that are specified are downloaded if they aren't already cached.");
        System.out.println("In addition:");
        System.out.println("  -dir specifies the directory for the xsdownload.xml file (default .).");
        System.out.println("  -sync synchronizes the index to any local .xsd files in the tree.");
        System.out.println("  -recurse recursively downloads imported and included .xsd files.");
        System.out.println("  -refresh redownloads all indexed .xsd files.");
        System.out.println("If no files or URLs are specified, all indexed files are relevant.");
    }

    private static String relativeFilename(File file, File file2) {
        if (file == null || file.equals(file2)) {
            return ".";
        }
        return relativeFilename(file.getParentFile(), file2) + "/" + file.getName();
    }

    private static String[] relativeFilenames(File[] fileArr, File file) {
        String[] strArr = new String[fileArr.length];
        for (int i = 0; i < fileArr.length; i++) {
            strArr[i] = relativeFilename(fileArr[i], file);
        }
        return strArr;
    }

    @Override // org.apache.xmlbeans.impl.tool.BaseSchemaResourceManager
    public void deleteFile(String str) {
        new File(this._directory, str).delete();
    }

    @Override // org.apache.xmlbeans.impl.tool.BaseSchemaResourceManager
    public boolean fileExists(String str) {
        return new File(this._directory, str).exists();
    }

    @Override // org.apache.xmlbeans.impl.tool.BaseSchemaResourceManager
    public String[] getAllXSDFilenames() {
        return relativeFilenames((File[]) collectXSDFiles(new File[]{this._directory}).toArray(new File[0]), this._directory);
    }

    @Override // org.apache.xmlbeans.impl.tool.BaseSchemaResourceManager
    public InputStream inputStreamForFile(String str) throws IOException {
        return new FileInputStream(new File(this._directory, str));
    }

    @Override // org.apache.xmlbeans.impl.tool.BaseSchemaResourceManager
    public void warning(String str) {
        System.out.println(str);
    }

    @Override // org.apache.xmlbeans.impl.tool.BaseSchemaResourceManager
    public void writeInputStreamToFile(InputStream inputStream, String str) throws IOException {
        File file = new File(this._directory, str);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        IOUtil.copyCompletely(inputStream, new FileOutputStream(file));
    }
}

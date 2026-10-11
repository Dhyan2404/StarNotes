package org.apache.poi.poifs.dev;

import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public class POIFSLister {
    public static void displayDirectory(DirectoryNode directoryNode, String str, boolean z) {
        String str2;
        System.out.println(str + directoryNode.getName() + " -");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(GlideException.C1935a.f14609h);
        String sb2 = sb.toString();
        Iterator<Entry> entries = directoryNode.getEntries();
        boolean z2 = false;
        while (entries.hasNext()) {
            Entry next = entries.next();
            if (next instanceof DirectoryNode) {
                displayDirectory((DirectoryNode) next, sb2, z);
            } else {
                DocumentNode documentNode = (DocumentNode) next;
                String name = documentNode.getName();
                if (name.charAt(0) < '\n') {
                    name = name.substring(1) + " <" + ("(0x0" + ((int) name.charAt(0)) + MotionUtils.f31762d + name.substring(1)) + ">";
                }
                if (z) {
                    str2 = " [" + documentNode.getSize() + " / 0x" + Integer.toHexString(documentNode.getSize()) + IteratorUtils.f104924b;
                } else {
                    str2 = "";
                }
                System.out.println(sb2 + name + str2);
            }
            z2 = true;
        }
        if (z2) {
            return;
        }
        System.out.println(sb2 + "(no children)");
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length == 0) {
            System.err.println("Must specify at least one file to view");
            System.exit(1);
        }
        boolean z = true;
        boolean z2 = false;
        for (String str : strArr) {
            if (str.equalsIgnoreCase("-size") || str.equalsIgnoreCase("-sizes")) {
                z2 = true;
            } else if (str.equalsIgnoreCase("-old") || str.equalsIgnoreCase("-old-poifs")) {
                z = false;
            } else if (z) {
                viewFile(str, z2);
            } else {
                viewFileOld(str, z2);
            }
        }
    }

    public static void viewFile(String str, boolean z) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(new File(str));
        try {
            displayDirectory(pOIFSFileSystem.getRoot(), "", z);
            pOIFSFileSystem.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pOIFSFileSystem.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void viewFileOld(String str, boolean z) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(fileInputStream);
            try {
                displayDirectory(pOIFSFileSystem.getRoot(), "", z);
                pOIFSFileSystem.close();
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
}

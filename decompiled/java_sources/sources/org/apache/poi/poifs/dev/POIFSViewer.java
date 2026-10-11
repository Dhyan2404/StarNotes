package org.apache.poi.poifs.dev;

import com.bumptech.glide.load.engine.GlideException;
import com.google.firebase.installations.local.IidStore;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class POIFSViewer {
    private POIFSViewer() {
    }

    public static void main(String[] strArr) {
        if (strArr.length == 0) {
            System.err.println("Must specify at least one file to view");
            System.exit(1);
        }
        boolean z = strArr.length > 1;
        for (String str : strArr) {
            viewFile(str, z);
        }
    }

    private static void viewFile(String str, boolean z) {
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append(".");
            for (int i = 0; i < str.length(); i++) {
                sb.append("-");
            }
            sb.append(".");
            System.out.println(sb);
            System.out.println(IidStore.f35940g + str + IidStore.f35940g);
            System.out.println(sb);
        }
        try {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(new File(str));
            Iterator<String> it2 = POIFSViewEngine.inspectViewable(pOIFSFileSystem, true, 0, GlideException.C1935a.f14609h).iterator();
            while (it2.hasNext()) {
                System.out.print(it2.next());
            }
            pOIFSFileSystem.close();
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }
}

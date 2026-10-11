package org.apache.poi.poifs.dev;

import java.io.IOException;
import java.io.LineNumberReader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes12.dex */
public class POIFSViewEngine {
    private static final String _EOL = System.getProperty("line.separator");

    private static String indent(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb2.append(str);
        }
        LineNumberReader lineNumberReader = new LineNumberReader(new StringReader(str2));
        try {
            for (String readLine = lineNumberReader.readLine(); readLine != null; readLine = lineNumberReader.readLine()) {
                sb.append((CharSequence) sb2);
                sb.append(readLine);
                sb.append(_EOL);
            }
        } catch (IOException e) {
            sb.append((CharSequence) sb2);
            sb.append(e.getMessage());
            sb.append(_EOL);
        }
        return sb.toString();
    }

    public static List<String> inspectViewable(Object obj, boolean z, int i, String str) {
        ArrayList arrayList = new ArrayList();
        if (obj instanceof POIFSViewable) {
            POIFSViewable pOIFSViewable = (POIFSViewable) obj;
            arrayList.add(indent(i, str, pOIFSViewable.getShortDescription()));
            if (z) {
                if (pOIFSViewable.preferArray()) {
                    for (Object obj2 : pOIFSViewable.getViewableArray()) {
                        arrayList.addAll(inspectViewable(obj2, z, i + 1, str));
                    }
                } else {
                    Iterator<Object> viewableIterator = pOIFSViewable.getViewableIterator();
                    while (viewableIterator.hasNext()) {
                        arrayList.addAll(inspectViewable(viewableIterator.next(), z, i + 1, str));
                    }
                }
            }
        } else {
            arrayList.add(indent(i, str, obj.toString()));
        }
        return arrayList;
    }
}

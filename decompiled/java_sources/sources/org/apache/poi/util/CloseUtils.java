package org.apache.poi.util;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes13.dex */
public class CloseUtils {
    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

package com.onyx.common.util;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes8.dex */
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

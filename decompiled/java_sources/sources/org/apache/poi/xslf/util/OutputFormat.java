package org.apache.poi.xslf.util;

import java.awt.Graphics2D;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import org.apache.poi.util.Internal;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes13.dex */
public interface OutputFormat extends Closeable {
    Graphics2D addSlide(double d, double d2) throws IOException;

    default void writeDocument(MFProxy mFProxy, File file) throws IOException {
    }

    void writeSlide(MFProxy mFProxy, File file) throws IOException;
}

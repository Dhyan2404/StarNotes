package org.apache.poi.convert.htmlgen;

import java.io.Closeable;

/* loaded from: classes12.dex */
public interface DocumentHandler extends ConverterHandler, Closeable {
    void handleDocument();

    void setAbort(boolean z);
}

package org.apache.poi.xssf.streaming;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes13.dex */
public class StreamingSheetWriter extends SheetDataWriter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) StreamingSheetWriter.class);
    private boolean closed;

    public StreamingSheetWriter() throws IOException {
        this.closed = false;
        throw new IllegalStateException("StreamingSheetWriter requires OutputStream");
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this._out.flush();
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter
    public File createTempFile() throws IOException {
        throw new IllegalStateException("Not supported with StreamingSheetWriter");
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter
    public Writer createWriter(File file) throws IOException {
        throw new IllegalStateException("Not supported with StreamingSheetWriter");
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter
    public boolean dispose() throws IOException {
        if (!this.closed) {
            this._out.close();
        }
        this.closed = true;
        return true;
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter
    public InputStream getWorksheetXMLInputStream() throws IOException {
        throw new IllegalStateException("Not supported with StreamingSheetWriter");
    }

    public static Writer createWriter(OutputStream outputStream) throws IOException {
        return new BufferedWriter(new OutputStreamWriter(outputStream, StandardCharsets.UTF_8));
    }

    public StreamingSheetWriter(OutputStream outputStream) throws IOException {
        super(createWriter(outputStream));
        this.closed = false;
        LOG.atDebug().log("Preparing SXSSF sheet writer");
    }
}

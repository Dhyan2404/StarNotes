package org.mortbay.jetty;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import org.apache.commons.compress.compressors.CompressorStreamFactory;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class HttpHeaderValues extends BufferCache {
    public static final String BYTES = "bytes";
    public static final Buffer BYTES_BUFFER;
    public static final int BYTES_ORDINAL = 9;
    public static final HttpHeaderValues CACHE;
    public static final String CHUNKED = "chunked";
    public static final Buffer CHUNKED_BUFFER;
    public static final int CHUNKED_ORDINAL = 2;
    public static final String CLOSE = "close";
    public static final Buffer CLOSE_BUFFER;
    public static final int CLOSE_ORDINAL = 1;
    public static final String CONTINUE = "100-continue";
    public static final Buffer CONTINUE_BUFFER;
    public static final int CONTINUE_ORDINAL = 6;
    public static final String GZIP = "gzip";
    public static final Buffer GZIP_BUFFER;
    public static final int GZIP_ORDINAL = 3;
    public static final String IDENTITY = "identity";
    public static final Buffer IDENTITY_BUFFER;
    public static final int IDENTITY_ORDINAL = 4;
    public static final String KEEP_ALIVE = "keep-alive";
    public static final Buffer KEEP_ALIVE_BUFFER;
    public static final int KEEP_ALIVE_ORDINAL = 5;
    public static final String NO_CACHE = "no-cache";
    public static final Buffer NO_CACHE_BUFFER;
    public static final int NO_CACHE_ORDINAL = 10;
    public static final String PROCESSING = "102-processing";
    public static final Buffer PROCESSING_BUFFER;
    public static final int PROCESSING_ORDINAL = 7;

    /* renamed from: TE */
    public static final String f114637TE = "TE";
    public static final Buffer TE_BUFFER;
    public static final int TE_ORDINAL = 8;

    /* renamed from: d */
    public static /* synthetic */ Class f114638d;

    static {
        HttpHeaderValues httpHeaderValues = new HttpHeaderValues();
        CACHE = httpHeaderValues;
        CLOSE_BUFFER = httpHeaderValues.add("close", 1);
        CHUNKED_BUFFER = httpHeaderValues.add("chunked", 2);
        GZIP_BUFFER = httpHeaderValues.add("gzip", 3);
        IDENTITY_BUFFER = httpHeaderValues.add("identity", 4);
        KEEP_ALIVE_BUFFER = httpHeaderValues.add("keep-alive", 5);
        CONTINUE_BUFFER = httpHeaderValues.add("100-continue", 6);
        PROCESSING_BUFFER = httpHeaderValues.add(PROCESSING, 7);
        TE_BUFFER = httpHeaderValues.add("TE", 8);
        BYTES_BUFFER = httpHeaderValues.add(BYTES, 9);
        NO_CACHE_BUFFER = httpHeaderValues.add("no-cache", 10);
        httpHeaderValues.add("gzip", 100);
        httpHeaderValues.add("gzip,deflate", 101);
        httpHeaderValues.add(CompressorStreamFactory.DEFLATE, 102);
        try {
            Class cls = f114638d;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.HttpHeaderValues");
                f114638d = cls;
            }
            InputStream resourceAsStream = cls.getResourceAsStream("/org/mortbay/jetty/useragents");
            if (resourceAsStream != null) {
                LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(resourceAsStream));
                String readLine = lineNumberReader.readLine();
                int i = 103;
                while (readLine != null) {
                    int i2 = i + 1;
                    CACHE.add(readLine, i);
                    readLine = lineNumberReader.readLine();
                    i = i2;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.ignore(e);
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }
}

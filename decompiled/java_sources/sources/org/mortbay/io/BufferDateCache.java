package org.mortbay.io;

import java.text.DateFormatSymbols;
import java.util.Locale;
import org.mortbay.util.DateCache;

/* loaded from: classes13.dex */
public class BufferDateCache extends DateCache {

    /* renamed from: p */
    public Buffer f114458p;

    /* renamed from: q */
    public String f114459q;

    public BufferDateCache() {
    }

    public synchronized Buffer formatBuffer(long j) {
        String format = super.format(j);
        if (format == this.f114459q) {
            return this.f114458p;
        }
        this.f114459q = format;
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(format);
        this.f114458p = byteArrayBuffer;
        return byteArrayBuffer;
    }

    public BufferDateCache(String str, DateFormatSymbols dateFormatSymbols) {
        super(str, dateFormatSymbols);
    }

    public BufferDateCache(String str, Locale locale) {
        super(str, locale);
    }

    public BufferDateCache(String str) {
        super(str);
    }
}

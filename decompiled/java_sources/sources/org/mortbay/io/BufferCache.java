package org.mortbay.io;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.View;
import org.mortbay.util.StringMap;

/* loaded from: classes13.dex */
public class BufferCache {

    /* renamed from: a */
    public HashMap f114453a = new HashMap();

    /* renamed from: b */
    public StringMap f114454b = new StringMap(true);

    /* renamed from: c */
    public ArrayList f114455c = new ArrayList();

    /* loaded from: classes13.dex */
    public static class CachedBuffer extends ByteArrayBuffer.CaseInsensitive {

        /* renamed from: g */
        public int f114456g;

        /* renamed from: h */
        public HashMap f114457h;

        public CachedBuffer(String str, int i) {
            super(str);
            this.f114457h = null;
            this.f114456g = i;
        }

        public CachedBuffer getAssociate(Object obj) {
            HashMap hashMap = this.f114457h;
            if (hashMap == null) {
                return null;
            }
            return (CachedBuffer) hashMap.get(obj);
        }

        public int getOrdinal() {
            return this.f114456g;
        }

        public void setAssociate(Object obj, CachedBuffer cachedBuffer) {
            if (this.f114457h == null) {
                this.f114457h = new HashMap();
            }
            this.f114457h.put(obj, cachedBuffer);
        }
    }

    public CachedBuffer add(String str, int i) {
        CachedBuffer cachedBuffer = new CachedBuffer(str, i);
        this.f114453a.put(cachedBuffer, cachedBuffer);
        this.f114454b.put(str, (Object) cachedBuffer);
        while (i - this.f114455c.size() > 0) {
            this.f114455c.add(null);
        }
        this.f114455c.add(i, cachedBuffer);
        return cachedBuffer;
    }

    public CachedBuffer get(int i) {
        if (i < 0 || i >= this.f114455c.size()) {
            return null;
        }
        return (CachedBuffer) this.f114455c.get(i);
    }

    public CachedBuffer getBest(byte[] bArr, int i, int i2) {
        Map.Entry bestEntry = this.f114454b.getBestEntry(bArr, i, i2);
        if (bestEntry != null) {
            return (CachedBuffer) bestEntry.getValue();
        }
        return null;
    }

    public int getOrdinal(Buffer buffer) {
        if (buffer instanceof CachedBuffer) {
            return ((CachedBuffer) buffer).getOrdinal();
        }
        Buffer lookup = lookup(buffer);
        if (lookup == null || !(lookup instanceof CachedBuffer)) {
            return -1;
        }
        return ((CachedBuffer) lookup).getOrdinal();
    }

    public Buffer lookup(Buffer buffer) {
        CachedBuffer cachedBuffer = get(buffer);
        return cachedBuffer == null ? buffer instanceof Buffer.CaseInsensitve ? buffer : new View.CaseInsensitive(buffer) : cachedBuffer;
    }

    public String toString(Buffer buffer) {
        return lookup(buffer).toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CACHE[bufferMap=");
        stringBuffer.append(this.f114453a);
        stringBuffer.append(",stringMap=");
        stringBuffer.append(this.f114454b);
        stringBuffer.append(",index=");
        stringBuffer.append(this.f114455c);
        stringBuffer.append(IteratorUtils.f104924b);
        return stringBuffer.toString();
    }

    public CachedBuffer get(Buffer buffer) {
        return (CachedBuffer) this.f114453a.get(buffer);
    }

    public CachedBuffer get(String str) {
        return (CachedBuffer) this.f114454b.get(str);
    }

    public Buffer lookup(String str) {
        CachedBuffer cachedBuffer = get(str);
        return cachedBuffer == null ? new CachedBuffer(str, -1) : cachedBuffer;
    }
}

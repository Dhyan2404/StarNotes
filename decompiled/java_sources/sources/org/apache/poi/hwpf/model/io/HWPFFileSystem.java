package org.apache.poi.hwpf.model.io;

import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class HWPFFileSystem {
    private Map<String, ByteArrayOutputStream> _streams;

    public HWPFFileSystem() {
        HashMap hashMap = new HashMap();
        this._streams = hashMap;
        hashMap.put("WordDocument", new ByteArrayOutputStream(100000));
        this._streams.put("1Table", new ByteArrayOutputStream(100000));
        this._streams.put("Data", new ByteArrayOutputStream(100000));
    }

    public ByteArrayOutputStream getStream(String str) {
        return this._streams.get(str);
    }
}

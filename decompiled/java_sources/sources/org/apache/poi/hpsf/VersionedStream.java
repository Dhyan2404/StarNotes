package org.apache.poi.hpsf;

import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

@Internal
/* loaded from: classes12.dex */
public class VersionedStream {
    private final GUID _versionGuid = new GUID();
    private final IndirectPropertyName _streamName = new IndirectPropertyName();

    public void read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
        this._versionGuid.read(littleEndianByteArrayInputStream);
        this._streamName.read(littleEndianByteArrayInputStream);
    }
}

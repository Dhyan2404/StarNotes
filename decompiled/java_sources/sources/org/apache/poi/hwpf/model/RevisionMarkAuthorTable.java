package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class RevisionMarkAuthorTable {
    private String[] entries;

    public RevisionMarkAuthorTable(byte[] bArr, int i, int i2) throws IOException {
        this.entries = SttbUtils.readSttbfRMark(bArr, i);
    }

    public String getAuthor(int i) {
        if (i >= 0) {
            String[] strArr = this.entries;
            if (i < strArr.length) {
                return strArr[i];
            }
        }
        return null;
    }

    public List<String> getEntries() {
        return Collections.unmodifiableList(Arrays.asList(this.entries));
    }

    public int getSize() {
        return this.entries.length;
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        SttbUtils.writeSttbfRMark(this.entries, byteArrayOutputStream);
    }
}

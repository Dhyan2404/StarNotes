package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class SavedByTable {
    private SavedByEntry[] entries;

    public SavedByTable(byte[] bArr, int i, int i2) {
        String[] readSttbSavedBy = SttbUtils.readSttbSavedBy(bArr, i);
        int length = readSttbSavedBy.length / 2;
        this.entries = new SavedByEntry[length];
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i3 * 2;
            this.entries[i3] = new SavedByEntry(readSttbSavedBy[i4], readSttbSavedBy[i4 + 1]);
        }
    }

    public List<SavedByEntry> getEntries() {
        return Collections.unmodifiableList(Arrays.asList(this.entries));
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        SavedByEntry[] savedByEntryArr = this.entries;
        String[] strArr = new String[savedByEntryArr.length * 2];
        int i = 0;
        for (SavedByEntry savedByEntry : savedByEntryArr) {
            int i2 = i + 1;
            strArr[i] = savedByEntry.getUserName();
            i = i2 + 1;
            strArr[i2] = savedByEntry.getSaveLocation();
        }
        SttbUtils.writeSttbSavedBy(strArr, byteArrayOutputStream);
    }
}

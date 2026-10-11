package org.apache.poi.ddf;

import java.io.PrintStream;

/* loaded from: classes12.dex */
public final class EscherDump {
    public void dump(byte[] bArr, int i, int i2, PrintStream printStream) {
        EscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
        int i3 = i;
        while (i3 < i + i2) {
            EscherRecord createRecord = defaultEscherRecordFactory.createRecord(bArr, i3);
            int fillFields = createRecord.fillFields(bArr, i3, defaultEscherRecordFactory);
            printStream.println(createRecord);
            i3 += fillFields;
        }
    }

    public void dump(int i, byte[] bArr, PrintStream printStream) {
        dump(bArr, 0, i, printStream);
    }
}

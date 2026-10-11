package org.apache.poi.hwpf.model;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class SttbUtils {
    private static final int CDATA_SIZE_STTBF_BKMK = 2;
    private static final int CDATA_SIZE_STTBF_R_MARK = 2;
    private static final int CDATA_SIZE_STTB_SAVED_BY = 2;

    public static String[] readSttbSavedBy(byte[] bArr, int i) {
        return new Sttb(2, bArr, i).getData();
    }

    public static String[] readSttbfBkmk(byte[] bArr, int i) {
        return new Sttb(2, bArr, i).getData();
    }

    public static String[] readSttbfRMark(byte[] bArr, int i) {
        return new Sttb(2, bArr, i).getData();
    }

    public static void writeSttbSavedBy(String[] strArr, OutputStream outputStream) throws IOException {
        outputStream.write(new Sttb(2, strArr).serialize());
    }

    public static void writeSttbfBkmk(String[] strArr, OutputStream outputStream) throws IOException {
        outputStream.write(new Sttb(2, strArr).serialize());
    }

    public static void writeSttbfRMark(String[] strArr, OutputStream outputStream) throws IOException {
        outputStream.write(new Sttb(2, strArr).serialize());
    }
}

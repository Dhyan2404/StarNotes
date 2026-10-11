package onyx.org.apache.commons.io.channels;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Objects;

/* loaded from: classes11.dex */
public final class FileChannels {
    /* renamed from: a */
    public static long m65197a(FileChannel fileChannel) throws IOException {
        if (fileChannel != null) {
            return fileChannel.size();
        }
        return 0L;
    }

    public static boolean contentEquals(FileChannel fileChannel, FileChannel fileChannel2, int i) throws IOException {
        if (Objects.equals(fileChannel, fileChannel2)) {
            return true;
        }
        long m65197a = m65197a(fileChannel);
        long m65197a2 = m65197a(fileChannel2);
        if (m65197a != m65197a2) {
            return false;
        }
        if (m65197a == 0 && m65197a2 == 0) {
            return true;
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i);
        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(i);
        do {
            int read = fileChannel.read(allocateDirect);
            int read2 = fileChannel2.read(allocateDirect2);
            allocateDirect.clear();
            allocateDirect2.clear();
            if (read == -1 && read2 == -1) {
                return allocateDirect.equals(allocateDirect2);
            }
            if (read != read2) {
                return false;
            }
        } while (allocateDirect.equals(allocateDirect2));
        return false;
    }
}

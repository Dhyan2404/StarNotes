package onyx.org.apache.commons.io;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Objects;
import onyx.org.apache.commons.io.channels.FileChannels;
import onyx.org.apache.commons.io.function.IOTriFunction;

/* loaded from: classes11.dex */
public class RandomAccessFiles {
    @Deprecated
    public RandomAccessFiles() {
    }

    /* renamed from: a */
    public static long m65190a(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile != null) {
            return randomAccessFile.length();
        }
        return 0L;
    }

    public static boolean contentEquals(RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws IOException {
        if (Objects.equals(randomAccessFile, randomAccessFile2)) {
            return true;
        }
        long m65190a = m65190a(randomAccessFile);
        long m65190a2 = m65190a(randomAccessFile2);
        if (m65190a != m65190a2) {
            return false;
        }
        if (m65190a == 0 && m65190a2 == 0) {
            return true;
        }
        return FileChannels.contentEquals(randomAccessFile.getChannel(), randomAccessFile2.getChannel(), 8192);
    }

    public static byte[] read(final RandomAccessFile randomAccessFile, long j, int i) throws IOException {
        randomAccessFile.seek(j);
        return IOUtils.m65189v(new IOTriFunction() { // from class: com.sunia.HTREnginev2.jcl
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Integer.valueOf(randomAccessFile.read((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue()));
            }
        }, i);
    }

    public static RandomAccessFile reset(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.seek(0L);
        return randomAccessFile;
    }
}

package onyx.org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class FileDeleteStrategy {

    /* renamed from: a */
    public final String f104174a;
    public static final FileDeleteStrategy NORMAL = new FileDeleteStrategy("Normal");
    public static final FileDeleteStrategy FORCE = new C18627a();

    /* renamed from: onyx.org.apache.commons.io.FileDeleteStrategy$a */
    /* loaded from: classes11.dex */
    public static class C18627a extends FileDeleteStrategy {
        public C18627a() {
            super("Force");
        }

        @Override // onyx.org.apache.commons.io.FileDeleteStrategy
        public boolean doDelete(File file) throws IOException {
            FileUtils.forceDelete(file);
            return true;
        }
    }

    public FileDeleteStrategy(String str) {
        this.f104174a = str;
    }

    public void delete(File file) throws IOException {
        if (!file.exists() || doDelete(file)) {
            return;
        }
        throw new IOException("Deletion failed: " + file);
    }

    public boolean deleteQuietly(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        try {
            return doDelete(file);
        } catch (IOException unused) {
            return false;
        }
    }

    public boolean doDelete(File file) throws IOException {
        FileUtils.delete(file);
        return true;
    }

    public String toString() {
        return "FileDeleteStrategy[" + this.f104174a + IteratorUtils.f104924b;
    }
}

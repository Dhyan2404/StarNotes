package onyx.org.apache.commons.io.filefilter;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.time.Instant;
import java.util.Date;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.file.PathUtils;
import onyx.org.apache.commons.io.filefilter.AgeFileFilter;
import onyx.org.apache.commons.io.function.IOSupplier;

/* loaded from: classes11.dex */
public class AgeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -2132740084016138541L;
    private final boolean acceptOlder;
    private final Instant cutoffInstant;

    public AgeFileFilter(Date date) {
        this(date, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FileVisitResult lambda$accept$0(Path path) throws IOException {
        return toFileVisitResult(this.acceptOlder != PathUtils.isNewer(path, this.cutoffInstant, new LinkOption[0]));
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return this.acceptOlder != FileUtils.isFileNewer(file, this.cutoffInstant);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + MotionUtils.f31761c + (this.acceptOlder ? "<=" : ">") + this.cutoffInstant + MotionUtils.f31762d;
    }

    public AgeFileFilter(Date date, boolean z) {
        this(date.toInstant(), z);
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(final Path path, BasicFileAttributes basicFileAttributes) {
        return get(new IOSupplier() { // from class: com.sunia.HTREnginev2.l9
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                FileVisitResult lambda$accept$0;
                lambda$accept$0 = AgeFileFilter.this.lambda$accept$0(path);
                return lambda$accept$0;
            }
        });
    }

    public AgeFileFilter(File file) {
        this(file, true);
    }

    public AgeFileFilter(File file, boolean z) {
        this(FileUtils.lastModifiedUnchecked(file), z);
    }

    public AgeFileFilter(Instant instant) {
        this(instant, true);
    }

    public AgeFileFilter(Instant instant, boolean z) {
        this.acceptOlder = z;
        this.cutoffInstant = instant;
    }

    public AgeFileFilter(long j) {
        this(Instant.ofEpochMilli(j), true);
    }

    public AgeFileFilter(long j, boolean z) {
        this(Instant.ofEpochMilli(j), z);
    }
}

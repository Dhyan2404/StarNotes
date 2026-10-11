package org.apache.commons.io.filefilter;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Date;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.file.PathUtils;

/* loaded from: classes12.dex */
public class AgeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -2132740084016138541L;
    private final boolean acceptOlder;
    private final long cutoffMillis;

    public AgeFileFilter(Date date) {
        this(date, true);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return this.acceptOlder != FileUtils.isFileNewer(file, this.cutoffMillis);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + MotionUtils.f31761c + (this.acceptOlder ? "<=" : ">") + this.cutoffMillis + MotionUtils.f31762d;
    }

    public AgeFileFilter(Date date, boolean z) {
        this(date.getTime(), z);
    }

    public AgeFileFilter(File file) {
        this(file, true);
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        try {
            return AbstractFileFilter.toFileVisitResult(this.acceptOlder != PathUtils.isNewer(path, this.cutoffMillis, new LinkOption[0]), path);
        } catch (IOException e) {
            return handle(e);
        }
    }

    public AgeFileFilter(File file, boolean z) {
        this(FileUtils.lastModifiedUnchecked(file), z);
    }

    public AgeFileFilter(long j) {
        this(j, true);
    }

    public AgeFileFilter(long j, boolean z) {
        this.acceptOlder = z;
        this.cutoffMillis = j;
    }
}

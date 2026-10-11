package onyx.org.apache.commons.io.file;

import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface PathFilter {
    FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes);
}

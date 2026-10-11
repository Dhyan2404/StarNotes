package onyx.org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.util.Objects;
import onyx.org.apache.commons.io.file.SimplePathVisitor;
import onyx.org.apache.commons.io.function.IOBiFunction;

/* loaded from: classes11.dex */
public abstract class SimplePathVisitor extends SimpleFileVisitor<Path> implements PathVisitor {

    /* renamed from: e */
    public final IOBiFunction<Path, IOException, FileVisitResult> f104245e;

    public SimplePathVisitor() {
        this.f104245e = new IOBiFunction() { // from class: com.sunia.HTREnginev2.osm
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                FileVisitResult m65238b;
                m65238b = SimplePathVisitor.this.m65238b((Path) obj, (IOException) obj2);
                return m65238b;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ FileVisitResult m65238b(Object obj, IOException iOException) throws IOException {
        return super.visitFileFailed((SimplePathVisitor) obj, iOException);
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult visitFileFailed(Path path, IOException iOException) throws IOException {
        return this.f104245e.apply(path, iOException);
    }

    public SimplePathVisitor(IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        Objects.requireNonNull(iOBiFunction, "visitFileFailed");
        this.f104245e = iOBiFunction;
    }
}

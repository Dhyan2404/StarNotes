package org.apache.xmlbeans.impl.config;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.symbolsolver.resolution.typesolvers.CombinedTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.JarTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.JavaParserTypeSolver;
import com.github.javaparser.utils.CollectionStrategy;
import com.github.javaparser.utils.ProjectRoot;
import com.sunia.HTREnginev2.pxo;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.xmlbeans.impl.config.ChildSolverCollectionStrategy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class ChildSolverCollectionStrategy implements CollectionStrategy {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ChildSolverCollectionStrategy.class);
    private final CombinedTypeSolver combinedTypeSolver;
    private final ParserConfiguration config;
    private final PathMatcher javaMatcher = getPathMatcher("glob:**.java");
    private final PathMatcher jarMatcher = getPathMatcher("glob:**.jar");
    private final List<Path> roots = new ArrayList();

    /* loaded from: classes13.dex */
    public class FileVisitor extends SimpleFileVisitor<Path> {
        private FileVisitor() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$visitFile$0(Path path) {
            ChildSolverCollectionStrategy.this.getSolver().add(new JavaParserTypeSolver(path, ChildSolverCollectionStrategy.this.getParserConfiguration()));
            ChildSolverCollectionStrategy.this.roots.add(path);
        }

        @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
        public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
            return Files.isHidden(path) ? FileVisitResult.SKIP_SUBTREE : FileVisitResult.CONTINUE;
        }

        @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
        public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
            if (ChildSolverCollectionStrategy.this.javaMatcher.matches(path)) {
                Stream map = ChildSolverCollectionStrategy.this.roots.stream().map(new Function() { // from class: com.sunia.HTREnginev2.jtd
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((Path) obj).toAbsolutePath();
                    }
                });
                final Path absolutePath = path.toAbsolutePath();
                absolutePath.getClass();
                if (map.noneMatch(new Predicate() { // from class: com.sunia.HTREnginev2.ktd
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return absolutePath.startsWith((Path) obj);
                    }
                })) {
                    ChildSolverCollectionStrategy.this.getRoot(path).ifPresent(new Consumer() { // from class: org.apache.xmlbeans.impl.config.b
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ChildSolverCollectionStrategy.FileVisitor.this.lambda$visitFile$0((Path) obj);
                        }
                    });
                }
            } else if (ChildSolverCollectionStrategy.this.jarMatcher.matches(path)) {
                ChildSolverCollectionStrategy.this.getSolver().add(new JarTypeSolver(path));
            }
            return FileVisitResult.CONTINUE;
        }
    }

    public ChildSolverCollectionStrategy(ParserConfiguration parserConfiguration, CombinedTypeSolver combinedTypeSolver) {
        this.config = parserConfiguration;
        this.combinedTypeSolver = combinedTypeSolver;
    }

    private static Path commonRoot(Path path, Path path2) {
        ArrayList arrayList = new ArrayList();
        path.toAbsolutePath().iterator().forEachRemaining(new pxo(arrayList));
        ArrayList arrayList2 = new ArrayList();
        path2.toAbsolutePath().iterator().forEachRemaining(new pxo(arrayList2));
        arrayList.retainAll(arrayList2);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (Path) arrayList.get(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CombinedTypeSolver getSolver() {
        return this.combinedTypeSolver;
    }

    public ProjectRoot collect(Path path) {
        try {
            Files.walkFileTree(path, new FileVisitor());
        } catch (IOException e) {
            LOG.atWarn().withThrowable(e).log("Unable to walk {}", path);
        }
        if (this.roots.isEmpty()) {
            return null;
        }
        return new ProjectRoot(this.roots.get(r4.size() - 1), this.config);
    }

    public ProjectRoot collectAll() {
        Path path = null;
        for (Path path2 : this.roots) {
            if (path != null) {
                path = commonRoot(path, path2);
                if (path == null) {
                    break;
                }
            } else {
                path = path2;
            }
        }
        if (path == null) {
            throw new IllegalStateException("Unable to construct a common project root - giving up.");
        }
        final ProjectRoot projectRoot = new ProjectRoot(path, this.config);
        this.roots.forEach(new Consumer() { // from class: org.apache.xmlbeans.impl.config.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                projectRoot.addSourceRoot((Path) obj);
            }
        });
        return projectRoot;
    }

    public ParserConfiguration getParserConfiguration() {
        return this.config;
    }
}

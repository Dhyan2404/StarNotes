package org.apache.xmlbeans.impl.config;

import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.symbolsolver.JavaSymbolSolver;
import com.github.javaparser.symbolsolver.model.resolution.TypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.ClassLoaderTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.CombinedTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.ReflectionTypeSolver;
import com.github.javaparser.utils.ProjectRoot;
import com.github.javaparser.utils.SourceRoot;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.Path;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class Parser {
    private final File[] classpath;
    private final CombinedTypeSolver combinedTypeSolver;
    private final File[] javaFiles;

    /* renamed from: pc */
    private final ParserConfiguration f113738pc;
    private final ProjectRoot projectRoot;

    public Parser(File[] fileArr, File[] fileArr2) {
        CombinedTypeSolver combinedTypeSolver = new CombinedTypeSolver(new TypeSolver[0]);
        this.combinedTypeSolver = combinedTypeSolver;
        File[] fileArr3 = fileArr != null ? (File[]) fileArr.clone() : new File[0];
        this.javaFiles = fileArr3;
        File[] fileArr4 = fileArr2 != null ? (File[]) fileArr2.clone() : new File[0];
        this.classpath = fileArr4;
        ParserConfiguration parserConfiguration = new ParserConfiguration();
        this.f113738pc = parserConfiguration;
        parserConfiguration.setLanguageLevel(ParserConfiguration.LanguageLevel.BLEEDING_EDGE);
        combinedTypeSolver.add(new ClassLoaderTypeSolver(new URLClassLoader((URL[]) Stream.of((Object[]) fileArr4).map(new Function() { // from class: org.apache.xmlbeans.impl.config.l
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                URL fileToURL;
                fileToURL = Parser.fileToURL((File) obj);
                return fileToURL;
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.bxk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((URL) obj);
            }
        }).toArray(new IntFunction() { // from class: org.apache.xmlbeans.impl.config.o
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                URL[] lambda$new$0;
                lambda$new$0 = Parser.lambda$new$0(i);
                return lambda$new$0;
            }
        }), getClass().getClassLoader())));
        combinedTypeSolver.add(new ReflectionTypeSolver());
        parserConfiguration.setSymbolResolver(new JavaSymbolSolver(combinedTypeSolver));
        if (fileArr3.length <= 0) {
            this.projectRoot = null;
            return;
        }
        final ChildSolverCollectionStrategy childSolverCollectionStrategy = new ChildSolverCollectionStrategy(parserConfiguration, combinedTypeSolver);
        Stream.of((Object[]) fileArr3).map(new Function() { // from class: org.apache.xmlbeans.impl.config.p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                File lambda$new$1;
                lambda$new$1 = Parser.lambda$new$1((File) obj);
                return lambda$new$1;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.cxk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((File) obj).toPath();
            }
        }).distinct().forEach(new Consumer() { // from class: org.apache.xmlbeans.impl.config.q
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ChildSolverCollectionStrategy.this.collect((Path) obj);
            }
        });
        this.projectRoot = childSolverCollectionStrategy.collectAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static URL fileToURL(File file) {
        try {
            return file.toURI().toURL();
        } catch (MalformedURLException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$loadSource$3(CompilationUnit compilationUnit) {
        return compilationUnit.getTypes().stream();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$loadSource$4(String str, TypeDeclaration typeDeclaration) {
        return str.equals(typeDeclaration.getFullyQualifiedName().orElse(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ URL[] lambda$new$0(int i) {
        return new URL[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ File lambda$new$1(File file) {
        return file.isDirectory() ? file : file.getParentFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: parseOrNull, reason: merged with bridge method [inline-methods] */
    public ParseResult<CompilationUnit> lambda$loadSource$2(SourceRoot sourceRoot, String str) {
        try {
            return sourceRoot.tryToParse("", str, this.f113738pc);
        } catch (IOException unused) {
            return null;
        }
    }

    public ClassOrInterfaceDeclaration loadSource(final String str) {
        final String str2 = str.replace('.', '/') + ".java";
        ProjectRoot projectRoot = this.projectRoot;
        if (projectRoot == null) {
            return null;
        }
        Stream flatMap = projectRoot.getSourceRoots().stream().map(new Function() { // from class: org.apache.xmlbeans.impl.config.r
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ParseResult lambda$loadSource$2;
                lambda$loadSource$2 = Parser.this.lambda$loadSource$2(str2, (SourceRoot) obj);
                return lambda$loadSource$2;
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.dxk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((ParseResult) obj);
            }
        }).filter(new Predicate() { // from class: org.apache.xmlbeans.impl.config.s
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isSuccessful;
                isSuccessful = ((ParseResult) obj).isSuccessful();
                return isSuccessful;
            }
        }).map(new Function() { // from class: org.apache.xmlbeans.impl.config.t
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Optional result;
                result = ((ParseResult) obj).getResult();
                return result;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.ywk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (CompilationUnit) ((Optional) obj).get();
            }
        }).flatMap(new Function() { // from class: org.apache.xmlbeans.impl.config.m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream lambda$loadSource$3;
                lambda$loadSource$3 = Parser.lambda$loadSource$3((CompilationUnit) obj);
                return lambda$loadSource$3;
            }
        });
        final Class<ClassOrInterfaceDeclaration> cls = ClassOrInterfaceDeclaration.class;
        Stream filter = flatMap.filter(new Predicate() { // from class: com.sunia.HTREnginev2.zwk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return cls.isInstance((TypeDeclaration) obj);
            }
        }).filter(new Predicate() { // from class: org.apache.xmlbeans.impl.config.n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$loadSource$4;
                lambda$loadSource$4 = Parser.lambda$loadSource$4(str, (TypeDeclaration) obj);
                return lambda$loadSource$4;
            }
        });
        final Class<ClassOrInterfaceDeclaration> cls2 = ClassOrInterfaceDeclaration.class;
        return (ClassOrInterfaceDeclaration) filter.map(new Function() { // from class: com.sunia.HTREnginev2.axk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (ClassOrInterfaceDeclaration) cls2.cast((TypeDeclaration) obj);
            }
        }).findFirst().orElse(null);
    }
}

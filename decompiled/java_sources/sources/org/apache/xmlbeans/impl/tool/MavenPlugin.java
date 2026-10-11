package org.apache.xmlbeans.impl.tool;

import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.maven.model.Resource;
import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugin.MojoFailureException;
import org.apache.maven.plugins.annotations.LifecyclePhase;
import org.apache.maven.plugins.annotations.Mojo;
import org.apache.maven.plugins.annotations.Parameter;
import org.apache.maven.project.MavenProject;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.impl.tool.MavenPlugin;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xmlresolver.cache.ResourceCache;

@Mojo(defaultPhase = LifecyclePhase.GENERATE_SOURCES, name = "compile")
/* loaded from: classes13.dex */
public class MavenPlugin extends AbstractMojo {

    @Parameter(defaultValue = "schemaorg_apache_xmlbeans/src")
    private String baseSchemaLocation;

    @Parameter
    private File basedir;

    @Parameter(defaultValue = "true")
    private boolean buildSchemas;

    @Parameter
    private String catalogLocation;

    @Parameter
    private String classPath;

    @Parameter(defaultValue = "${project.basedir}/target/generated-resources")
    private String classTargetDir;

    @Parameter
    private String compiler;

    @Parameter(defaultValue = "false")
    private boolean copyAnn;

    @Parameter(defaultValue = "false")
    private boolean debug;

    @Parameter(defaultValue = "false")
    private boolean download;

    @Parameter
    private List<Extension> extensions;

    @Parameter(defaultValue = "${project.basedir}/target/generated-sources")
    private String javaTargetDir;

    @Parameter
    private List<String> mdefNamespaces;

    @Parameter(defaultValue = CodeGenUtil.DEFAULT_MEM_START)
    private String memoryInitialSize;

    @Parameter(defaultValue = CodeGenUtil.DEFAULT_MEM_MAX)
    private String memoryMaximumSize;

    @Parameter(defaultValue = "${project.artifactId}")
    private String name;

    @Parameter(defaultValue = "false")
    private boolean noAnn;

    @Parameter(defaultValue = "false")
    private boolean noPvr;

    @Parameter(defaultValue = "false")
    private boolean noUpa;

    @Parameter(defaultValue = "false")
    private boolean noVDoc;

    @Parameter(defaultValue = "${project.basedir}/target/${project.artifactId}-${project.version}-xmltypes.jar")
    private File outputJar;

    @Parameter
    private String partialMethods;

    @Parameter(defaultValue = "${project}", readonly = true)
    private MavenProject project;

    @Parameter(defaultValue = "true")
    private boolean quiet;

    @Parameter(defaultValue = "true")
    private boolean quite;

    @Parameter(defaultValue = "${project.groupId}.${project.artifactId}.metadata")
    private String repackage;

    @Parameter
    private List<Resource> resources;

    @Parameter(defaultValue = "${project.basedir}/src/main/schema")
    private String sourceDir;

    @Parameter(defaultValue = "true")
    private boolean sourceOnly;

    @Parameter(defaultValue = "*.xsd,*.wsdl,*.java")
    private String sourceSchemas;

    @Parameter(defaultValue = "false")
    private boolean verbose;

    @Parameter(defaultValue = "${project.basedir}/src/schema/xmlconfig.xml")
    private String xmlConfigs;

    /* loaded from: classes13.dex */
    public static class PassThroughResolver implements EntityResolver {
        private final String baseSchemaLocation;

        /* renamed from: cl */
        private final ClassLoader f113864cl;
        private final EntityResolver delegate;
        private final URI sourceDir;

        public PassThroughResolver(ClassLoader classLoader, EntityResolver entityResolver, URI uri, String str) {
            this.f113864cl = classLoader;
            this.delegate = entityResolver;
            this.sourceDir = uri;
            this.baseSchemaLocation = str + "/";
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
            InputSource resolveEntity;
            EntityResolver entityResolver = this.delegate;
            if (entityResolver != null && (resolveEntity = entityResolver.resolveEntity(str, str2)) != null) {
                return resolveEntity;
            }
            System.out.println("Could not resolve publicId: " + str + ", systemId: " + str2 + " from catalog");
            try {
                String uri = this.sourceDir.relativize(new URI(str2)).toString();
                InputStream resourceAsStream = this.f113864cl.getResourceAsStream(uri);
                if (resourceAsStream != null) {
                    System.out.println("found in classpath at: " + uri);
                    return new InputSource(resourceAsStream);
                }
                InputStream resourceAsStream2 = this.f113864cl.getResourceAsStream(this.baseSchemaLocation + uri);
                if (resourceAsStream2 != null) {
                    System.out.println("found in classpath at: META-INF/" + uri);
                    return new InputSource(resourceAsStream2);
                }
                System.out.println("Not found in classpath, looking in current directory: " + str2);
                return new InputSource(str2);
            } catch (URISyntaxException e) {
                throw new IOException("Could not relativeize systemId", e);
            }
        }
    }

    private static File[] files(List<File> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (File[]) list.toArray(new File[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$execute$0(Pattern pattern, File file, String str) {
        return !str.endsWith(".xsdconfig") && pattern.matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$execute$1(File file, String str) {
        return Stream.of((Object[]) new File[]{new File(str), new File(file, str)}).filter(new Predicate() { // from class: com.sunia.HTREnginev2.rgj
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((File) obj).exists();
            }
        });
    }

    public void execute() throws MojoExecutionException, MojoFailureException {
        String str = this.sourceDir;
        if (str == null || str.isEmpty() || !new File(this.sourceDir).isDirectory()) {
            throw new MojoFailureException("Set configuration <sourceDir> (='" + this.sourceDir + "') to a valid directory containing *.xsd,*.wsdl files.");
        }
        String str2 = this.baseSchemaLocation;
        if (str2 == null || str2.isEmpty()) {
            throw new MojoFailureException("baseSchemaLocation is empty");
        }
        if (this.sourceSchemas == null) {
            getLog().debug("sourceSchemas is null");
        }
        if (this.classPath == null) {
            getLog().debug("classPath is null");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        final File file = new File(this.sourceDir);
        Resource resource = new Resource();
        resource.setDirectory(this.sourceDir);
        resource.setTargetPath(this.baseSchemaLocation);
        String str3 = this.sourceSchemas;
        String str4 = ResourceCache.defaultPattern;
        if (str3 != null) {
            str4 = MotionUtils.f31761c + this.sourceSchemas.replace(",", IidStore.f35940g).replace(".", "\\.").replace("*", ResourceCache.defaultPattern) + MotionUtils.f31762d;
        }
        final Pattern compile = Pattern.compile(str4);
        File[] listFiles = file.listFiles(new FilenameFilter() { // from class: com.sunia.HTREnginev2.sgj
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str5) {
                boolean lambda$execute$0;
                lambda$execute$0 = MavenPlugin.lambda$execute$0(compile, file2, str5);
                return lambda$execute$0;
            }
        });
        Objects.requireNonNull(listFiles);
        boolean z = false;
        for (File file2 : listFiles) {
            String name = file2.getName();
            String replaceAll = name.replaceAll(".*\\.", "");
            replaceAll.hashCode();
            if (replaceAll.equals("java")) {
                arrayList3.add(file2);
            } else if (replaceAll.equals("wsdl")) {
                arrayList2.add(file2);
            } else {
                arrayList.add(file2);
            }
            resource.addInclude(name);
        }
        this.resources = Collections.singletonList(resource);
        if (this.buildSchemas) {
            String str5 = this.xmlConfigs;
            List emptyList = (str5 == null || str5.isEmpty()) ? Collections.emptyList() : (List) Stream.of((Object[]) this.xmlConfigs.split(",")).flatMap(new Function() { // from class: com.sunia.HTREnginev2.tgj
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Stream lambda$execute$1;
                    lambda$execute$1 = MavenPlugin.lambda$execute$1(file, (String) obj);
                    return lambda$execute$1;
                }
            }).collect(Collectors.toList());
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            String str6 = this.classPath;
            if (str6 != null) {
                for (String str7 : str6.split(",")) {
                    File file3 = new File(str7);
                    arrayList4.add(file3);
                    try {
                        arrayList5.add(file3.toURI().toURL());
                    } catch (MalformedURLException e) {
                        throw new MojoFailureException("invalid classpath: " + file3, e);
                    }
                }
            }
            PassThroughResolver passThroughResolver = new PassThroughResolver(new URLClassLoader((URL[]) arrayList5.toArray(new URL[0])), MavenPluginResolver.getResolver(this.catalogLocation), new File(this.sourceDir).toURI(), this.baseSchemaLocation);
            Parameters parameters = new Parameters();
            parameters.setXsdFiles(files(arrayList));
            parameters.setWsdlFiles(files(arrayList2));
            parameters.setJavaFiles(files(arrayList3));
            parameters.setConfigFiles(files(emptyList));
            parameters.setClasspath(files(arrayList4));
            parameters.setName(this.name);
            parameters.setSrcDir(new File(this.javaTargetDir));
            parameters.setClassesDir(new File(this.classTargetDir));
            parameters.setNojavac(this.sourceOnly);
            parameters.setVerbose(this.verbose);
            parameters.setEntityResolver(passThroughResolver);
            if (this.quiet && this.quite) {
                z = true;
            }
            parameters.setQuiet(z);
            parameters.setNoUpa(this.noUpa);
            parameters.setNoPvr(this.noPvr);
            parameters.setNoAnn(this.noAnn);
            parameters.setCopyAnn(this.copyAnn);
            parameters.setNoVDoc(this.noVDoc);
            String str8 = this.repackage;
            if (str8 != null && !str8.isEmpty()) {
                parameters.setRepackage("org.apache.xmlbeans.metadata:" + this.repackage);
            }
            List<String> list = this.mdefNamespaces;
            if (list != null && !list.isEmpty()) {
                parameters.setMdefNamespaces(new HashSet(this.mdefNamespaces));
            }
            ArrayList arrayList6 = new ArrayList();
            parameters.setErrorListener(arrayList6);
            String str9 = this.partialMethods;
            if (str9 != null && !str9.isEmpty()) {
                parameters.setPartialMethods(SchemaCompiler.parsePartialMethods(this.partialMethods));
            }
            parameters.setDownload(this.download);
            parameters.setBaseDir(this.basedir);
            parameters.setCompiler(this.compiler);
            parameters.setMemoryInitialSize(this.memoryInitialSize);
            parameters.setMemoryMaximumSize(this.memoryMaximumSize);
            parameters.setOutputJar(this.outputJar);
            parameters.setDebug(this.debug);
            parameters.setExtensions(this.extensions);
            if (!SchemaCompiler.compile(parameters)) {
                throw new MojoFailureException("Schema compilation failed!\n" + ((String) arrayList6.stream().map(new Function() { // from class: com.sunia.HTREnginev2.ugj
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((XmlError) obj).toString();
                    }
                }).collect(Collectors.joining("\n"))));
            }
            Resource resource2 = new Resource();
            resource2.setDirectory(this.classTargetDir);
            this.project.addResource(resource2);
            this.project.addCompileSourceRoot(this.javaTargetDir);
        }
    }
}

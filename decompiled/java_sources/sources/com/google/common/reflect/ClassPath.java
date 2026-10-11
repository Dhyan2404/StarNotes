package com.google.common.reflect;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.base.StandardSystemProperty;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.io.ByteSource;
import com.google.common.io.CharSource;
import com.google.common.io.Resources;
import com.google.common.reflect.ClassPath;
import com.sunia.HTREnginev2.onf;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@onf
/* loaded from: classes6.dex */
public final class ClassPath {

    /* renamed from: b */
    public static final Logger f35078b = Logger.getLogger(ClassPath.class.getName());

    /* renamed from: c */
    public static final Splitter f35079c = Splitter.m25828on(" ").omitEmptyStrings();

    /* renamed from: d */
    public static final String f35080d = ".class";

    /* renamed from: a */
    public final ImmutableSet<ResourceInfo> f35081a;

    /* loaded from: classes6.dex */
    public static final class ClassInfo extends ResourceInfo {

        /* renamed from: d */
        public final String f35082d;

        public ClassInfo(File file, String str, ClassLoader classLoader) {
            super(file, str, classLoader);
            this.f35082d = ClassPath.m27428c(str);
        }

        public String getName() {
            return this.f35082d;
        }

        public String getPackageName() {
            return Reflection.getPackageName(this.f35082d);
        }

        public String getSimpleName() {
            int lastIndexOf = this.f35082d.lastIndexOf(36);
            if (lastIndexOf != -1) {
                return CharMatcher.inRange('0', '9').trimLeadingFrom(this.f35082d.substring(lastIndexOf + 1));
            }
            String packageName = getPackageName();
            return packageName.isEmpty() ? this.f35082d : this.f35082d.substring(packageName.length() + 1);
        }

        public boolean isTopLevel() {
            return this.f35082d.indexOf(36) == -1;
        }

        public Class<?> load() {
            try {
                return this.f35085c.loadClass(this.f35082d);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.reflect.ClassPath.ResourceInfo
        public String toString() {
            return this.f35082d;
        }
    }

    /* loaded from: classes6.dex */
    public static class ResourceInfo {

        /* renamed from: a */
        public final File f35083a;

        /* renamed from: b */
        public final String f35084b;

        /* renamed from: c */
        public final ClassLoader f35085c;

        public ResourceInfo(File file, String str, ClassLoader classLoader) {
            this.f35083a = (File) Preconditions.checkNotNull(file);
            this.f35084b = (String) Preconditions.checkNotNull(str);
            this.f35085c = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        /* renamed from: b */
        public static ResourceInfo m27435b(File file, String str, ClassLoader classLoader) {
            return str.endsWith(ClassPath.f35080d) ? new ClassInfo(file, str, classLoader) : new ResourceInfo(file, str, classLoader);
        }

        /* renamed from: a */
        public final File m27436a() {
            return this.f35083a;
        }

        public final ByteSource asByteSource() {
            return Resources.asByteSource(url());
        }

        public final CharSource asCharSource(Charset charset) {
            return Resources.asCharSource(url(), charset);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof ResourceInfo)) {
                return false;
            }
            ResourceInfo resourceInfo = (ResourceInfo) obj;
            return this.f35084b.equals(resourceInfo.f35084b) && this.f35085c == resourceInfo.f35085c;
        }

        public final String getResourceName() {
            return this.f35084b;
        }

        public int hashCode() {
            return this.f35084b.hashCode();
        }

        public String toString() {
            return this.f35084b;
        }

        public final URL url() {
            URL resource = this.f35085c.getResource(this.f35084b);
            if (resource != null) {
                return resource;
            }
            throw new NoSuchElementException(this.f35084b);
        }
    }

    /* renamed from: com.google.common.reflect.ClassPath$a */
    /* loaded from: classes6.dex */
    public static final class C6259a {

        /* renamed from: a */
        public final File f35086a;

        /* renamed from: b */
        public final ClassLoader f35087b;

        public C6259a(File file, ClassLoader classLoader) {
            this.f35086a = (File) Preconditions.checkNotNull(file);
            this.f35087b = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        /* renamed from: a */
        public final File m27437a() {
            return this.f35086a;
        }

        /* renamed from: b */
        public final void m27438b(File file, Set<File> set, ImmutableSet.Builder<ResourceInfo> builder) throws IOException {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        m27439c(file, builder);
                    } else {
                        m27441e(file, set, builder);
                    }
                }
            } catch (SecurityException e) {
                Logger logger = ClassPath.f35078b;
                String valueOf = String.valueOf(file);
                String valueOf2 = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 16 + valueOf2.length());
                sb.append("Cannot access ");
                sb.append(valueOf);
                sb.append(": ");
                sb.append(valueOf2);
                logger.warning(sb.toString());
            }
        }

        /* renamed from: c */
        public final void m27439c(File file, ImmutableSet.Builder<ResourceInfo> builder) throws IOException {
            HashSet hashSet = new HashSet();
            hashSet.add(file.getCanonicalFile());
            m27440d(file, "", hashSet, builder);
        }

        /* renamed from: d */
        public final void m27440d(File file, String str, Set<File> set, ImmutableSet.Builder<ResourceInfo> builder) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Logger logger = ClassPath.f35078b;
                String valueOf = String.valueOf(file);
                StringBuilder sb = new StringBuilder(valueOf.length() + 22);
                sb.append("Cannot read directory ");
                sb.append(valueOf);
                logger.warning(sb.toString());
                return;
            }
            for (File file2 : listFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (set.add(canonicalFile)) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(name).length());
                        sb2.append(str);
                        sb2.append(name);
                        sb2.append("/");
                        m27440d(canonicalFile, sb2.toString(), set, builder);
                        set.remove(canonicalFile);
                    }
                } else {
                    String valueOf2 = String.valueOf(str);
                    String valueOf3 = String.valueOf(name);
                    String concat = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                    if (!concat.equals("META-INF/MANIFEST.MF")) {
                        builder.add((ImmutableSet.Builder<ResourceInfo>) ResourceInfo.m27435b(file2, concat, this.f35087b));
                    }
                }
            }
        }

        /* renamed from: e */
        public final void m27441e(File file, Set<File> set, ImmutableSet.Builder<ResourceInfo> builder) throws IOException {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    UnmodifiableIterator<File> it2 = ClassPath.m27431f(file, jarFile.getManifest()).iterator();
                    while (it2.hasNext()) {
                        File next = it2.next();
                        if (set.add(next.getCanonicalFile())) {
                            m27438b(next, set, builder);
                        }
                    }
                    m27442f(jarFile, builder);
                } finally {
                    try {
                        jarFile.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (IOException unused2) {
            }
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof C6259a)) {
                return false;
            }
            C6259a c6259a = (C6259a) obj;
            return this.f35086a.equals(c6259a.f35086a) && this.f35087b.equals(c6259a.f35087b);
        }

        /* renamed from: f */
        public final void m27442f(JarFile jarFile, ImmutableSet.Builder<ResourceInfo> builder) {
            Enumeration<JarEntry> entries = jarFile.entries();
            while (entries.hasMoreElements()) {
                JarEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory() && !nextElement.getName().equals("META-INF/MANIFEST.MF")) {
                    builder.add((ImmutableSet.Builder<ResourceInfo>) ResourceInfo.m27435b(new File(jarFile.getName()), nextElement.getName(), this.f35087b));
                }
            }
        }

        /* renamed from: g */
        public ImmutableSet<ResourceInfo> m27443g() throws IOException {
            return m27444h(new HashSet());
        }

        /* renamed from: h */
        public ImmutableSet<ResourceInfo> m27444h(Set<File> set) throws IOException {
            ImmutableSet.Builder<ResourceInfo> builder = ImmutableSet.builder();
            set.add(this.f35086a);
            m27438b(this.f35086a, set, builder);
            return builder.build();
        }

        public int hashCode() {
            return this.f35086a.hashCode();
        }

        public String toString() {
            return this.f35086a.toString();
        }
    }

    public ClassPath(ImmutableSet<ResourceInfo> immutableSet) {
        this.f35081a = immutableSet;
    }

    /* renamed from: b */
    public static ImmutableList<URL> m27427b(ClassLoader classLoader) {
        return classLoader instanceof URLClassLoader ? ImmutableList.copyOf(((URLClassLoader) classLoader).getURLs()) : classLoader.equals(ClassLoader.getSystemClassLoader()) ? m27433h() : ImmutableList.m26161of();
    }

    @VisibleForTesting
    /* renamed from: c */
    public static String m27428c(String str) {
        return str.substring(0, str.length() - 6).replace('/', '.');
    }

    @VisibleForTesting
    /* renamed from: d */
    public static ImmutableMap<File, ClassLoader> m27429d(ClassLoader classLoader) {
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        ClassLoader parent = classLoader.getParent();
        if (parent != null) {
            newLinkedHashMap.putAll(m27429d(parent));
        }
        UnmodifiableIterator<URL> it2 = m27427b(classLoader).iterator();
        while (it2.hasNext()) {
            URL next = it2.next();
            if (next.getProtocol().equals("file")) {
                File m27434i = m27434i(next);
                if (!newLinkedHashMap.containsKey(m27434i)) {
                    newLinkedHashMap.put(m27434i, classLoader);
                }
            }
        }
        return ImmutableMap.copyOf((Map) newLinkedHashMap);
    }

    @VisibleForTesting
    /* renamed from: e */
    public static URL m27430e(File file, String str) throws MalformedURLException {
        return new URL(file.toURI().toURL(), str);
    }

    @VisibleForTesting
    /* renamed from: f */
    public static ImmutableSet<File> m27431f(File file, @CheckForNull Manifest manifest) {
        if (manifest == null) {
            return ImmutableSet.m26234of();
        }
        ImmutableSet.Builder builder = ImmutableSet.builder();
        String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
        if (value != null) {
            for (String str : f35079c.split(value)) {
                try {
                    URL m27430e = m27430e(file, str);
                    if (m27430e.getProtocol().equals("file")) {
                        builder.add((ImmutableSet.Builder) m27434i(m27430e));
                    }
                } catch (MalformedURLException unused) {
                    Logger logger = f35078b;
                    String valueOf = String.valueOf(str);
                    logger.warning(valueOf.length() != 0 ? "Invalid Class-Path entry: ".concat(valueOf) : new String("Invalid Class-Path entry: "));
                }
            }
        }
        return builder.build();
    }

    public static ClassPath from(ClassLoader classLoader) throws IOException {
        ImmutableSet<C6259a> m27432g = m27432g(classLoader);
        HashSet hashSet = new HashSet();
        UnmodifiableIterator<C6259a> it2 = m27432g.iterator();
        while (it2.hasNext()) {
            hashSet.add(it2.next().m27437a());
        }
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<C6259a> it3 = m27432g.iterator();
        while (it3.hasNext()) {
            builder.addAll((Iterable) it3.next().m27444h(hashSet));
        }
        return new ClassPath(builder.build());
    }

    /* renamed from: g */
    public static ImmutableSet<C6259a> m27432g(ClassLoader classLoader) {
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<Map.Entry<File, ClassLoader>> it2 = m27429d(classLoader).entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<File, ClassLoader> next = it2.next();
            builder.add((ImmutableSet.Builder) new C6259a(next.getKey(), next.getValue()));
        }
        return builder.build();
    }

    @VisibleForTesting
    /* renamed from: h */
    public static ImmutableList<URL> m27433h() {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (String str : Splitter.m25828on(StandardSystemProperty.PATH_SEPARATOR.value()).split(StandardSystemProperty.JAVA_CLASS_PATH.value())) {
            try {
                try {
                    builder.add((ImmutableList.Builder) new File(str).toURI().toURL());
                } catch (SecurityException unused) {
                    builder.add((ImmutableList.Builder) new URL("file", (String) null, new File(str).getAbsolutePath()));
                }
            } catch (MalformedURLException e) {
                Logger logger = f35078b;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(str);
                logger.log(level, valueOf.length() != 0 ? "malformed classpath entry: ".concat(valueOf) : new String("malformed classpath entry: "), (Throwable) e);
            }
        }
        return builder.build();
    }

    @VisibleForTesting
    /* renamed from: i */
    public static File m27434i(URL url) {
        Preconditions.checkArgument(url.getProtocol().equals("file"));
        try {
            return new File(url.toURI());
        } catch (URISyntaxException unused) {
            return new File(url.getPath());
        }
    }

    public ImmutableSet<ClassInfo> getAllClasses() {
        return FluentIterable.from(this.f35081a).filter(ClassInfo.class).toSet();
    }

    public ImmutableSet<ResourceInfo> getResources() {
        return this.f35081a;
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses() {
        return FluentIterable.from(this.f35081a).filter(ClassInfo.class).filter(new Predicate() { // from class: com.sunia.HTREnginev2.hud
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((ClassPath.ClassInfo) obj).isTopLevel();
            }
        }).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClassesRecursive(String str) {
        Preconditions.checkNotNull(str);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1);
        sb.append(str);
        sb.append('.');
        String sb2 = sb.toString();
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it2 = getTopLevelClasses().iterator();
        while (it2.hasNext()) {
            ClassInfo next = it2.next();
            if (next.getName().startsWith(sb2)) {
                builder.add((ImmutableSet.Builder) next);
            }
        }
        return builder.build();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses(String str) {
        Preconditions.checkNotNull(str);
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it2 = getTopLevelClasses().iterator();
        while (it2.hasNext()) {
            ClassInfo next = it2.next();
            if (next.getPackageName().equals(str)) {
                builder.add((ImmutableSet.Builder) next);
            }
        }
        return builder.build();
    }
}

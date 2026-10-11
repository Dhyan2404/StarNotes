package org.mortbay.jetty.webapp;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.CodeSource;
import java.security.PermissionCollection;
import java.util.HashSet;
import java.util.StringTokenizer;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.C20429IO;
import org.mortbay.util.LazyList;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class WebAppClassLoader extends URLClassLoader {

    /* renamed from: i */
    public static /* synthetic */ Class f115193i;

    /* renamed from: e */
    public String f115194e;

    /* renamed from: f */
    public WebAppContext f115195f;

    /* renamed from: g */
    public ClassLoader f115196g;

    /* renamed from: h */
    public HashSet f115197h;

    public WebAppClassLoader(WebAppContext webAppContext) throws IOException {
        this(null, webAppContext);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public void addClassPath(String str) throws IOException {
        if (str == null) {
            return;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",;");
        while (stringTokenizer.hasMoreTokens()) {
            Resource newResource = Resource.newResource(stringTokenizer.nextToken());
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Path resource=");
                stringBuffer.append(newResource);
                Log.debug(stringBuffer.toString());
            }
            File file = newResource.getFile();
            if (file != null) {
                addURL(newResource.getURL());
            } else if (newResource.isDirectory() || file != null) {
                addURL(newResource.getURL());
            } else {
                InputStream inputStream = newResource.getInputStream();
                File tempDirectory = this.f115195f.getTempDirectory();
                FileOutputStream fileOutputStream = null;
                if (tempDirectory == null) {
                    tempDirectory = File.createTempFile("jetty.cl.lib", null);
                    tempDirectory.mkdir();
                    tempDirectory.deleteOnExit();
                }
                File file2 = new File(tempDirectory, "lib");
                if (!file2.exists()) {
                    file2.mkdir();
                    file2.deleteOnExit();
                }
                File createTempFile = File.createTempFile("Jetty-", ".jar", file2);
                createTempFile.deleteOnExit();
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Extract ");
                    stringBuffer2.append(newResource);
                    stringBuffer2.append(" to ");
                    stringBuffer2.append(createTempFile);
                    Log.debug(stringBuffer2.toString());
                }
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(createTempFile);
                    try {
                        C20429IO.copy(inputStream, fileOutputStream2);
                        C20429IO.close(fileOutputStream2);
                        addURL(createTempFile.toURL());
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        C20429IO.close(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }

    public void addJars(Resource resource) {
        if (resource.exists() && resource.isDirectory()) {
            String[] list = resource.list();
            for (int i = 0; list != null && i < list.length; i++) {
                try {
                    Resource addPath = resource.addPath(list[i]);
                    if (m71621f(addPath.getName().toLowerCase())) {
                        addClassPath(StringUtil.replace(StringUtil.replace(addPath.toString(), ",", "%2C"), AndroidTreeView.f47214k, "%3B"));
                    }
                } catch (Exception e) {
                    Log.warn(Log.EXCEPTION, (Throwable) e);
                }
            }
        }
    }

    public void destroy() {
        this.f115196g = null;
    }

    /* renamed from: f */
    public final boolean m71621f(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf != -1 && this.f115197h.contains(str.substring(lastIndexOf));
    }

    public ContextHandler getContext() {
        return this.f115195f;
    }

    public String getName() {
        return this.f115194e;
    }

    @Override // java.net.URLClassLoader, java.security.SecureClassLoader
    public PermissionCollection getPermissions(CodeSource codeSource) {
        PermissionCollection permissions = this.f115195f.getPermissions();
        return permissions == null ? super.getPermissions(codeSource) : permissions;
    }

    @Override // java.lang.ClassLoader
    public URL getResource(String str) {
        boolean z;
        ClassLoader classLoader;
        if (this.f115195f.isParentLoaderPriority() || isSystemPath(str)) {
            ClassLoader classLoader2 = this.f115196g;
            r2 = classLoader2 != null ? classLoader2.getResource(str) : null;
            z = true;
        } else {
            z = false;
        }
        if (r2 == null && (r2 = findResource(str)) == null && str.startsWith("/")) {
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("HACK leading / off ");
                stringBuffer.append(str);
                Log.debug(stringBuffer.toString());
            }
            r2 = findResource(str.substring(1));
        }
        if (r2 == null && !z && (classLoader = this.f115196g) != null) {
            r2 = classLoader.getResource(str);
        }
        if (r2 != null && Log.isDebugEnabled()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("getResource(");
            stringBuffer2.append(str);
            stringBuffer2.append(")=");
            stringBuffer2.append(r2);
            Log.debug(stringBuffer2.toString());
        }
        return r2;
    }

    public boolean isServerPath(String str) {
        boolean z;
        String replace = str.replace('/', '.');
        while (replace.startsWith(".")) {
            replace = replace.substring(1);
        }
        String[] serverClasses = this.f115195f.getServerClasses();
        if (serverClasses != null) {
            for (int i = 0; i < serverClasses.length; i++) {
                String str2 = serverClasses[i];
                if (str2.startsWith("-")) {
                    str2 = str2.substring(1);
                    z = false;
                } else {
                    z = true;
                }
                if (str2.endsWith(".")) {
                    if (replace.startsWith(str2)) {
                        return z;
                    }
                } else if (replace.equals(str2)) {
                    return z;
                }
            }
        }
        return false;
    }

    public boolean isSystemPath(String str) {
        boolean z;
        String replace = str.replace('/', '.');
        while (replace.startsWith(".")) {
            replace = replace.substring(1);
        }
        String[] systemClasses = this.f115195f.getSystemClasses();
        if (systemClasses != null) {
            for (int i = 0; i < systemClasses.length; i++) {
                String str2 = systemClasses[i];
                if (str2.startsWith("-")) {
                    str2 = str2.substring(1);
                    z = false;
                } else {
                    z = true;
                }
                if (str2.endsWith(".")) {
                    if (replace.startsWith(str2)) {
                        return z;
                    }
                } else if (replace.equals(str2)) {
                    return z;
                }
            }
        }
        return false;
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str) throws ClassNotFoundException {
        return loadClass(str, false);
    }

    public void setName(String str) {
        this.f115194e = str;
    }

    public String toString() {
        if (!Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ContextLoader@");
            stringBuffer.append(this.f115194e);
            return stringBuffer.toString();
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("ContextLoader@");
        stringBuffer2.append(this.f115194e);
        stringBuffer2.append(MotionUtils.f31761c);
        stringBuffer2.append(LazyList.array2List(getURLs()));
        stringBuffer2.append(") / ");
        stringBuffer2.append(this.f115196g);
        return stringBuffer2.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WebAppClassLoader(java.lang.ClassLoader r3, org.mortbay.jetty.webapp.WebAppContext r4) throws java.io.IOException {
        /*
            r2 = this;
            r0 = 0
            java.net.URL[] r0 = new java.net.URL[r0]
            java.lang.String r1 = "org.mortbay.jetty.webapp.WebAppClassLoader"
            if (r3 == 0) goto L8
            goto L3e
        L8:
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r3 = r3.getContextClassLoader()
            if (r3 == 0) goto L1b
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r3 = r3.getContextClassLoader()
            goto L3e
        L1b:
            java.lang.Class r3 = org.mortbay.jetty.webapp.WebAppClassLoader.f115193i
            if (r3 != 0) goto L25
            java.lang.Class r3 = class$(r1)
            org.mortbay.jetty.webapp.WebAppClassLoader.f115193i = r3
        L25:
            java.lang.ClassLoader r3 = r3.getClassLoader()
            if (r3 == 0) goto L3a
            java.lang.Class r3 = org.mortbay.jetty.webapp.WebAppClassLoader.f115193i
            if (r3 != 0) goto L35
            java.lang.Class r3 = class$(r1)
            org.mortbay.jetty.webapp.WebAppClassLoader.f115193i = r3
        L35:
            java.lang.ClassLoader r3 = r3.getClassLoader()
            goto L3e
        L3a:
            java.lang.ClassLoader r3 = java.lang.ClassLoader.getSystemClassLoader()
        L3e:
            r2.<init>(r0, r3)
            java.lang.ClassLoader r3 = r2.getParent()
            r2.f115196g = r3
            r2.f115195f = r4
            if (r3 == 0) goto Lac
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            r2.f115197h = r3
            java.lang.String r0 = ".jar"
            r3.add(r0)
            java.util.HashSet r3 = r2.f115197h
            java.lang.String r0 = ".zip"
            r3.add(r0)
            java.lang.StringBuffer r3 = new java.lang.StringBuffer
            r3.<init>()
            java.lang.Class r0 = org.mortbay.jetty.webapp.WebAppClassLoader.f115193i
            if (r0 != 0) goto L6d
            java.lang.Class r0 = class$(r1)
            org.mortbay.jetty.webapp.WebAppClassLoader.f115193i = r0
        L6d:
            java.lang.String r0 = r0.getName()
            r3.append(r0)
            java.lang.String r0 = ".extensions"
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            java.lang.String r3 = java.lang.System.getProperty(r3)
            if (r3 == 0) goto L9e
            java.util.StringTokenizer r0 = new java.util.StringTokenizer
            java.lang.String r1 = ",;"
            r0.<init>(r3, r1)
        L8a:
            boolean r3 = r0.hasMoreTokens()
            if (r3 == 0) goto L9e
            java.util.HashSet r3 = r2.f115197h
            java.lang.String r1 = r0.nextToken()
            java.lang.String r1 = r1.trim()
            r3.add(r1)
            goto L8a
        L9e:
            java.lang.String r3 = r4.getExtraClasspath()
            if (r3 == 0) goto Lab
            java.lang.String r3 = r4.getExtraClasspath()
            r2.addClassPath(r3)
        Lab:
            return
        Lac:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "no parent classloader!"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.webapp.WebAppClassLoader.<init>(java.lang.ClassLoader, org.mortbay.jetty.webapp.WebAppContext):void");
    }

    @Override // java.lang.ClassLoader
    public synchronized Class loadClass(String str, boolean z) throws ClassNotFoundException {
        Class<?> findLoadedClass;
        boolean z2;
        findLoadedClass = findLoadedClass(str);
        ClassNotFoundException e = null;
        if (findLoadedClass == null && this.f115196g != null && (this.f115195f.isParentLoaderPriority() || isSystemPath(str))) {
            z2 = true;
            try {
                findLoadedClass = this.f115196g.loadClass(str);
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("loaded ");
                    stringBuffer.append(findLoadedClass);
                    Log.debug(stringBuffer.toString());
                }
            } catch (ClassNotFoundException e2) {
                e = e2;
            }
        } else {
            z2 = false;
        }
        if (findLoadedClass == null) {
            try {
                findLoadedClass = findClass(str);
            } catch (ClassNotFoundException e3) {
                e = e3;
            }
        }
        if (findLoadedClass == null && this.f115196g != null && !z2 && !isServerPath(str)) {
            findLoadedClass = this.f115196g.loadClass(str);
        }
        if (findLoadedClass != null) {
            if (z) {
                resolveClass(findLoadedClass);
            }
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("loaded ");
                stringBuffer2.append(findLoadedClass);
                stringBuffer2.append(" from ");
                stringBuffer2.append(findLoadedClass.getClassLoader());
                Log.debug(stringBuffer2.toString());
            }
        } else {
            throw e;
        }
        return findLoadedClass;
    }
}

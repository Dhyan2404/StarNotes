package org.mortbay.jetty.webapp;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.File;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashSet;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.regex.Pattern;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.Loader;
import org.mortbay.xml.XmlParser;

/* loaded from: classes13.dex */
public class TagLibConfiguration implements Configuration {
    static /* synthetic */ Class class$org$mortbay$jetty$webapp$TagLibConfiguration;
    WebAppContext _context;

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureClassLoader() throws Exception {
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureDefaults() throws Exception {
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void configureWebApp() throws Exception {
        XmlParser.Node parse;
        URL[] uRLs;
        JarFile jarFile;
        Enumeration<JarEntry> enumeration;
        HashSet<Resource> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        if (this._context.getResourceAliases() != null && this._context.getBaseResource() != null && this._context.getBaseResource().exists()) {
            for (String str : this._context.getResourceAliases().values()) {
                if (str != null && str.toLowerCase().endsWith(".tld")) {
                    if (!str.startsWith("/")) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("/WEB-INF/");
                        stringBuffer.append(str);
                        str = stringBuffer.toString();
                    }
                    hashSet.add(this._context.getBaseResource().addPath(str));
                }
            }
        }
        Resource webInf = this._context.getWebInf();
        if (webInf != null) {
            String[] list = webInf.list();
            for (int i = 0; list != null && i < list.length; i++) {
                String str2 = list[i];
                if (str2 != null && str2.toLowerCase().endsWith(".tld")) {
                    hashSet.add(this._context.getWebInf().addPath(list[i]));
                }
            }
        }
        String initParameter = this._context.getInitParameter("org.mortbay.jetty.webapp.NoTLDJarPattern");
        Pattern compile = initParameter == null ? null : Pattern.compile(initParameter);
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        boolean z = false;
        while (true) {
            int i2 = 1;
            if (contextClassLoader == null) {
                break;
            }
            if ((contextClassLoader instanceof URLClassLoader) && (uRLs = ((URLClassLoader) contextClassLoader).getURLs()) != null) {
                int i3 = 0;
                while (i3 < uRLs.length) {
                    if (uRLs[i3].toString().toLowerCase().endsWith(".jar")) {
                        String url = uRLs[i3].toString();
                        String substring = url.substring(url.lastIndexOf(47) + i2);
                        if (!z || ((this._context.isParentLoaderPriority() || !hashSet2.contains(substring)) && (compile == null || !compile.matcher(substring).matches()))) {
                            hashSet2.add(substring);
                            Log.debug("TLD search of {}", uRLs[i3]);
                            File file = Resource.newResource(uRLs[i3]).getFile();
                            if (file != null && file.exists() && file.canRead()) {
                                try {
                                    jarFile = new JarFile(file);
                                    try {
                                        try {
                                            Enumeration<JarEntry> entries = jarFile.entries();
                                            while (entries.hasMoreElements()) {
                                                String name = entries.nextElement().getName();
                                                if (name.startsWith("META-INF/") && name.toLowerCase().endsWith(".tld")) {
                                                    StringBuffer stringBuffer2 = new StringBuffer();
                                                    enumeration = entries;
                                                    stringBuffer2.append("jar:");
                                                    stringBuffer2.append(uRLs[i3]);
                                                    stringBuffer2.append("!/");
                                                    stringBuffer2.append(name);
                                                    Resource newResource = Resource.newResource(stringBuffer2.toString());
                                                    hashSet.add(newResource);
                                                    Log.debug("TLD found {}", newResource);
                                                } else {
                                                    enumeration = entries;
                                                }
                                                entries = enumeration;
                                            }
                                        } catch (Exception e) {
                                            e = e;
                                            StringBuffer stringBuffer3 = new StringBuffer();
                                            stringBuffer3.append("Failed to read file: ");
                                            stringBuffer3.append(file);
                                            Log.warn(stringBuffer3.toString(), (Throwable) e);
                                            if (jarFile == null) {
                                                i3++;
                                                i2 = 1;
                                            }
                                            jarFile.close();
                                            i3++;
                                            i2 = 1;
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        if (jarFile != null) {
                                            jarFile.close();
                                        }
                                        throw th;
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    jarFile = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    jarFile = null;
                                }
                                jarFile.close();
                            }
                        }
                    }
                    i3++;
                    i2 = 1;
                }
            }
            contextClassLoader = contextClassLoader.getParent();
            z = true;
        }
        XmlParser xmlParser = new XmlParser(false);
        Class cls = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = cls;
        }
        xmlParser.redirectEntity("web-jsptaglib_1_1.dtd", Loader.getResource(cls, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd", false));
        Class cls2 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        if (cls2 == null) {
            cls2 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = cls2;
        }
        xmlParser.redirectEntity("web-jsptaglib_1_2.dtd", Loader.getResource(cls2, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd", false));
        Class cls3 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        if (cls3 == null) {
            cls3 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = cls3;
        }
        xmlParser.redirectEntity("web-jsptaglib_2_0.xsd", Loader.getResource(cls3, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd", false));
        Class cls4 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        if (cls4 == null) {
            cls4 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = cls4;
        }
        xmlParser.redirectEntity("web-jsptaglibrary_1_1.dtd", Loader.getResource(cls4, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd", false));
        Class cls5 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        if (cls5 == null) {
            cls5 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = cls5;
        }
        xmlParser.redirectEntity("web-jsptaglibrary_1_2.dtd", Loader.getResource(cls5, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd", false));
        Class cls6 = class$org$mortbay$jetty$webapp$TagLibConfiguration;
        if (cls6 == null) {
            cls6 = class$("org.mortbay.jetty.webapp.TagLibConfiguration");
            class$org$mortbay$jetty$webapp$TagLibConfiguration = cls6;
        }
        xmlParser.redirectEntity("web-jsptaglibrary_2_0.xsd", Loader.getResource(cls6, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd", false));
        xmlParser.setXpath("/taglib/listener/listener-class");
        for (Resource resource : hashSet) {
            try {
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("TLD=");
                    stringBuffer4.append(resource);
                    Log.debug(stringBuffer4.toString());
                }
                try {
                    parse = xmlParser.parse(resource.getInputStream());
                } catch (Exception unused) {
                    parse = xmlParser.parse(resource.getURL().toString());
                }
                if (parse == null) {
                    Log.warn("No TLD root in {}", resource);
                } else {
                    for (int i4 = 0; i4 < parse.size(); i4++) {
                        Object obj = parse.get(i4);
                        if (obj instanceof XmlParser.Node) {
                            XmlParser.Node node = (XmlParser.Node) obj;
                            if (ServiceSpecificExtraArgs.CastExtraArgs.LISTENER.equals(node.getTag())) {
                                try {
                                    String string = node.getString("listener-class", false, true);
                                    if (Log.isDebugEnabled()) {
                                        StringBuffer stringBuffer5 = new StringBuffer();
                                        stringBuffer5.append("listener=");
                                        stringBuffer5.append(string);
                                        Log.debug(stringBuffer5.toString());
                                    }
                                    try {
                                        this._context.addEventListener((EventListener) getWebAppContext().loadClass(string).newInstance());
                                    } catch (Error e3) {
                                        StringBuffer stringBuffer6 = new StringBuffer();
                                        stringBuffer6.append("Could not instantiate listener ");
                                        stringBuffer6.append(string);
                                        stringBuffer6.append(": ");
                                        stringBuffer6.append(e3);
                                        Log.warn(stringBuffer6.toString());
                                        Log.debug(e3);
                                    } catch (Exception e4) {
                                        StringBuffer stringBuffer7 = new StringBuffer();
                                        stringBuffer7.append("Could not instantiate listener ");
                                        stringBuffer7.append(string);
                                        stringBuffer7.append(": ");
                                        stringBuffer7.append(e4);
                                        Log.warn(stringBuffer7.toString());
                                        Log.debug(e4);
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    Log.warn(e);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e6) {
                e = e6;
                Log.warn(e);
            }
        }
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void deconfigureWebApp() throws Exception {
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public WebAppContext getWebAppContext() {
        return this._context;
    }

    @Override // org.mortbay.jetty.webapp.Configuration
    public void setWebAppContext(WebAppContext webAppContext) {
        this._context = webAppContext;
    }
}

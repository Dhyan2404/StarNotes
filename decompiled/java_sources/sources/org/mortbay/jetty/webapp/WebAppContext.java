package org.mortbay.jetty.webapp;

import com.dropbox.core.DbxWebAuth;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.security.PermissionCollection;
import java.util.EventListener;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionListener;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.mortbay.io.Portable;
import org.mortbay.jetty.Connector;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.deployer.WebAppDeployer;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.ErrorHandler;
import org.mortbay.jetty.handler.HandlerCollection;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.jetty.servlet.Context;
import org.mortbay.jetty.servlet.ErrorPageErrorHandler;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.jetty.servlet.SessionHandler;
import org.mortbay.log.Log;
import org.mortbay.resource.JarResource;
import org.mortbay.resource.Resource;
import org.mortbay.util.C20429IO;
import org.mortbay.util.LazyList;
import org.mortbay.util.Loader;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class WebAppContext extends Context {
    public static final String ERROR_PAGE = "org.mortbay.jetty.error_page";

    /* renamed from: Q0 */
    public static String[] f115198Q0 = {"org.mortbay.jetty.webapp.WebInfConfiguration", "org.mortbay.jetty.webapp.WebXmlConfiguration", "org.mortbay.jetty.webapp.JettyWebXmlConfiguration", "org.mortbay.jetty.webapp.TagLibConfiguration"};

    /* renamed from: R0 */
    public static /* synthetic */ Class f115199R0 = null;

    /* renamed from: S0 */
    public static /* synthetic */ Class f115200S0 = null;

    /* renamed from: T0 */
    public static /* synthetic */ Class f115201T0 = null;
    public static final String WEB_DEFAULTS_XML = "org/mortbay/jetty/webapp/webdefault.xml";

    /* renamed from: A0 */
    public boolean f115202A0;

    /* renamed from: B0 */
    public boolean f115203B0;

    /* renamed from: C0 */
    public boolean f115204C0;

    /* renamed from: D0 */
    public boolean f115205D0;

    /* renamed from: E0 */
    public boolean f115206E0;

    /* renamed from: F0 */
    public PermissionCollection f115207F0;

    /* renamed from: G0 */
    public String[] f115208G0;

    /* renamed from: H0 */
    public String[] f115209H0;

    /* renamed from: I0 */
    public File f115210I0;

    /* renamed from: J0 */
    public boolean f115211J0;

    /* renamed from: K0 */
    public String f115212K0;

    /* renamed from: L0 */
    public String f115213L0;

    /* renamed from: M0 */
    public Throwable f115214M0;

    /* renamed from: N0 */
    public transient Map f115215N0;

    /* renamed from: O0 */
    public transient boolean f115216O0;

    /* renamed from: P0 */
    public transient boolean f115217P0;

    /* renamed from: v0 */
    public String[] f115218v0;

    /* renamed from: w0 */
    public Configuration[] f115219w0;

    /* renamed from: x0 */
    public String f115220x0;

    /* renamed from: y0 */
    public String f115221y0;

    /* renamed from: z0 */
    public String f115222z0;

    public WebAppContext() {
        this(null, null, null, null);
    }

    public static void addWebApplications(Server server, String str, String str2, boolean z, boolean z2) throws IOException {
        addWebApplications(server, str, str2, f115198Q0, z, z2);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static ContextHandler getCurrentWebAppContext() {
        ContextHandler.SContext currentContext = ContextHandler.getCurrentContext();
        if (currentContext == null) {
            return null;
        }
        ContextHandler contextHandler = currentContext.getContextHandler();
        if (contextHandler instanceof WebAppContext) {
            return contextHandler;
        }
        return null;
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public void addEventListener(EventListener eventListener) {
        EventListener[] eventListeners = getEventListeners();
        Class cls = f115201T0;
        if (cls == null) {
            cls = class$("java.util.EventListener");
            f115201T0 = cls;
        }
        setEventListeners((EventListener[]) LazyList.addToArray(eventListeners, eventListener, cls));
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        try {
            loadConfigurations();
            int i = 0;
            int i2 = 0;
            while (true) {
                Configuration[] configurationArr = this.f115219w0;
                if (i2 >= configurationArr.length) {
                    break;
                }
                configurationArr[i2].setWebAppContext(this);
                i2++;
            }
            this.f115216O0 = false;
            if (getClassLoader() == null) {
                setClassLoader(new WebAppClassLoader(this));
                this.f115216O0 = true;
            }
            if (Log.isDebugEnabled()) {
                ClassLoader classLoader = getClassLoader();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Thread Context class loader is: ");
                stringBuffer.append(classLoader);
                Log.debug(stringBuffer.toString());
                for (ClassLoader parent = classLoader.getParent(); parent != null; parent = parent.getParent()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Parent class loader is: ");
                    stringBuffer2.append(parent);
                    Log.debug(stringBuffer2.toString());
                }
            }
            while (true) {
                Configuration[] configurationArr2 = this.f115219w0;
                if (i >= configurationArr2.length) {
                    break;
                }
                configurationArr2[i].configureClassLoader();
                i++;
            }
            getTempDirectory();
            if (this.f115210I0 != null && !this.f115211J0 && !isTempWorkDirectory()) {
                File file = new File(this.f115210I0, ".active");
                if (!file.exists()) {
                    file.mkdir();
                }
            }
            super.doStart();
            if (isLogUrlOnStart()) {
                dumpUrl();
            }
        } catch (Exception e) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Failed startup of context ");
            stringBuffer3.append(this);
            Log.warn(stringBuffer3.toString(), (Throwable) e);
            this.f115214M0 = e;
            this.f115217P0 = true;
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        try {
            int length = this.f115219w0.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                this.f115219w0[i].deconfigureWebApp();
                length = i;
            }
            this.f115219w0 = null;
            if (this._securityHandler.getHandler() == null) {
                this._sessionHandler.setHandler(this._securityHandler);
                this._securityHandler.setHandler(this._servletHandler);
            }
            if (this.f115210I0 != null && !this.f115211J0 && !isTempWorkDirectory()) {
                C20429IO.delete(this.f115210I0);
                this.f115210I0 = null;
            }
        } finally {
            if (this.f115216O0) {
                setClassLoader(null);
            }
            this.f115217P0 = false;
            this.f115214M0 = null;
        }
    }

    public void dumpUrl() {
        Connector[] connectors = getServer().getConnectors();
        for (Connector connector : connectors) {
            String name = connector.getName();
            String displayName = getDisplayName();
            if (displayName == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("WebApp@");
                stringBuffer.append(connectors.hashCode());
                displayName = stringBuffer.toString();
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(displayName);
            stringBuffer2.append(" at http://");
            stringBuffer2.append(name);
            stringBuffer2.append(getContextPath());
            Log.info(stringBuffer2.toString());
        }
    }

    public String[] getConfigurationClasses() {
        return this.f115218v0;
    }

    public Configuration[] getConfigurations() {
        return this.f115219w0;
    }

    public String getDefaultsDescriptor() {
        return this.f115220x0;
    }

    public String getDescriptor() {
        return this.f115221y0;
    }

    public String getExtraClasspath() {
        return this.f115213L0;
    }

    public String getOverrideDescriptor() {
        return this.f115222z0;
    }

    public PermissionCollection getPermissions() {
        return this.f115207F0;
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public Resource getResource(String str) throws MalformedURLException {
        Throwable th = null;
        int i = 0;
        Resource resource = null;
        while (str != null) {
            int i2 = i + 1;
            if (i >= 100) {
                break;
            }
            try {
                resource = super.getResource(str);
            } catch (IOException e) {
                Log.ignore(e);
                if (th == null) {
                    th = e;
                }
            }
            if (resource != null && resource.exists()) {
                return resource;
            }
            str = getResourceAlias(str);
            i = i2;
        }
        if (th == null || !(th instanceof MalformedURLException)) {
            return resource;
        }
        throw ((MalformedURLException) th);
    }

    public String getResourceAlias(String str) {
        Map map = this.f115215N0;
        if (map == null) {
            return null;
        }
        return (String) map.get(str);
    }

    public Map getResourceAliases() {
        Map map = this.f115215N0;
        if (map == null) {
            return null;
        }
        return map;
    }

    public String[] getServerClasses() {
        return this.f115209H0;
    }

    public String[] getSystemClasses() {
        return this.f115208G0;
    }

    public File getTempDirectory() {
        File file;
        Resource webInf;
        File file2 = this.f115210I0;
        if (file2 != null && file2.isDirectory() && this.f115210I0.canWrite()) {
            return this.f115210I0;
        }
        Object attribute = getAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR);
        if (attribute != null && (attribute instanceof File)) {
            File file3 = (File) attribute;
            this.f115210I0 = file3;
            if (file3.isDirectory() && this.f115210I0.canWrite()) {
                return this.f115210I0;
            }
        }
        if (attribute != null && (attribute instanceof String)) {
            try {
                File file4 = new File((String) attribute);
                this.f115210I0 = file4;
                if (file4.isDirectory() && this.f115210I0.canWrite()) {
                    if (Log.isDebugEnabled()) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Converted to File ");
                        stringBuffer.append(this.f115210I0);
                        stringBuffer.append(" for ");
                        stringBuffer.append(this);
                        Log.debug(stringBuffer.toString());
                    }
                    setAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR, this.f115210I0);
                    return this.f115210I0;
                }
            } catch (Exception e) {
                Log.warn(Log.EXCEPTION, (Throwable) e);
            }
        }
        try {
            file = new File(System.getProperty("jetty.home"), DbxWebAuth.ROLE_WORK);
        } catch (Exception e2) {
            Log.ignore(e2);
        }
        if (!file.exists() || !file.canWrite() || !file.isDirectory()) {
            if (this.getBaseResource() != null && (webInf = this.getWebInf()) != null && webInf.exists()) {
                File file5 = new File(webInf.getFile(), DbxWebAuth.ROLE_WORK);
                if (file5.exists() && file5.canWrite()) {
                    if (file5.isDirectory()) {
                        file = file5;
                    }
                }
            }
            file = null;
        }
        try {
            String m71622o = this.m71622o();
            if (file != null) {
                this.f115210I0 = new File(file, m71622o);
            } else {
                File file6 = new File(System.getProperty("java.io.tmpdir"), m71622o);
                this.f115210I0 = file6;
                if (file6.exists()) {
                    if (Log.isDebugEnabled()) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Delete existing temp dir ");
                        stringBuffer2.append(this.f115210I0);
                        stringBuffer2.append(" for ");
                        stringBuffer2.append(this);
                        Log.debug(stringBuffer2.toString());
                    }
                    if (!C20429IO.delete(this.f115210I0) && Log.isDebugEnabled()) {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append("Failed to delete temp dir ");
                        stringBuffer3.append(this.f115210I0);
                        Log.debug(stringBuffer3.toString());
                    }
                    if (this.f115210I0.exists()) {
                        String file7 = this.f115210I0.toString();
                        StringBuffer stringBuffer4 = new StringBuffer();
                        stringBuffer4.append(m71622o);
                        stringBuffer4.append("_");
                        File createTempFile = File.createTempFile(stringBuffer4.toString(), "");
                        this.f115210I0 = createTempFile;
                        if (createTempFile.exists()) {
                            this.f115210I0.delete();
                        }
                        StringBuffer stringBuffer5 = new StringBuffer();
                        stringBuffer5.append("Can't reuse ");
                        stringBuffer5.append(file7);
                        stringBuffer5.append(", using ");
                        stringBuffer5.append(this.f115210I0);
                        Log.warn(stringBuffer5.toString());
                    }
                }
            }
            if (!this.f115210I0.exists()) {
                this.f115210I0.mkdir();
            }
            if (!this.isTempWorkDirectory()) {
                this.f115210I0.deleteOnExit();
            }
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer6 = new StringBuffer();
                stringBuffer6.append("Created temp dir ");
                stringBuffer6.append(this.f115210I0);
                stringBuffer6.append(" for ");
                stringBuffer6.append(this);
                Log.debug(stringBuffer6.toString());
            }
        } catch (Exception e3) {
            this.f115210I0 = null;
            Log.ignore(e3);
        }
        if (this.f115210I0 == null) {
            try {
                File createTempFile2 = File.createTempFile("JettyContext", "");
                this.f115210I0 = createTempFile2;
                if (createTempFile2.exists()) {
                    this.f115210I0.delete();
                }
                this.f115210I0.mkdir();
                this.f115210I0.deleteOnExit();
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer7 = new StringBuffer();
                    stringBuffer7.append("Created temp dir ");
                    stringBuffer7.append(this.f115210I0);
                    stringBuffer7.append(" for ");
                    stringBuffer7.append(this);
                    Log.debug(stringBuffer7.toString());
                }
            } catch (IOException e4) {
                Log.warn("tmpdir", (Throwable) e4);
                System.exit(1);
            }
        }
        this.setAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR, this.f115210I0);
        return this.f115210I0;
    }

    public Throwable getUnavailableException() {
        return this.f115214M0;
    }

    public String getWar() {
        if (this.f115212K0 == null) {
            this.f115212K0 = getResourceBase();
        }
        return this.f115212K0;
    }

    public Resource getWebInf() throws IOException {
        resolveWebApp();
        Resource addPath = super.getBaseResource().addPath("WEB-INF/");
        if (addPath.exists() && addPath.isDirectory()) {
            return addPath;
        }
        return null;
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        if (!this.f115217P0) {
            super.handle(str, httpServletRequest, httpServletResponse, i);
        } else {
            (httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest()).setHandled(true);
            httpServletResponse.sendError(503);
        }
    }

    public boolean isCopyWebDir() {
        return this.f115204C0;
    }

    public boolean isDistributable() {
        return this.f115202A0;
    }

    public boolean isExtractWAR() {
        return this.f115203B0;
    }

    public boolean isLogUrlOnStart() {
        return this.f115205D0;
    }

    public boolean isParentLoaderPriority() {
        return this.f115206E0;
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public boolean isProtectedTarget(String str) {
        while (str.startsWith("//")) {
            str = URIUtil.compactPath(str);
        }
        return StringUtil.startsWithIgnoreCase(str, "/web-inf") || StringUtil.startsWithIgnoreCase(str, "/meta-inf");
    }

    public boolean isTempWorkDirectory() {
        File file = this.f115210I0;
        if (file == null) {
            return false;
        }
        if (file.getName().equalsIgnoreCase(DbxWebAuth.ROLE_WORK)) {
            return true;
        }
        File parentFile = this.f115210I0.getParentFile();
        if (parentFile == null) {
            return false;
        }
        return parentFile.getName().equalsIgnoreCase(DbxWebAuth.ROLE_WORK);
    }

    public void loadConfigurations() throws Exception {
        if (this.f115219w0 != null) {
            return;
        }
        if (this.f115218v0 == null) {
            this.f115218v0 = f115198Q0;
        }
        this.f115219w0 = new Configuration[this.f115218v0.length];
        int i = 0;
        while (true) {
            Configuration[] configurationArr = this.f115219w0;
            if (i >= configurationArr.length) {
                return;
            }
            configurationArr[i] = (Configuration) Loader.loadClass(getClass(), this.f115218v0[i]).newInstance();
            i++;
        }
    }

    /* renamed from: o */
    public final String m71622o() {
        String str;
        Connector connector;
        Connector connector2;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Jetty");
        Connector[] connectors = getServer().getConnectors();
        stringBuffer.append("_");
        String str2 = "";
        String host = (connectors == null || (connector2 = connectors[0]) == null) ? "" : connector2.getHost();
        if (host == null) {
            host = Portable.ALL_INTERFACES;
        }
        stringBuffer.append(host.replace('.', NameUtil.USCORE));
        stringBuffer.append("_");
        int localPort = (connectors == null || (connector = connectors[0]) == null) ? 0 : connector.getLocalPort();
        if (localPort < 0) {
            localPort = connectors[0].getPort();
        }
        stringBuffer.append(localPort);
        stringBuffer.append("_");
        try {
            Resource baseResource = super.getBaseResource();
            if (baseResource == null) {
                String str3 = this.f115212K0;
                if (str3 == null || str3.length() == 0) {
                    Resource.newResource(getResourceBase());
                }
                baseResource = Resource.newResource(this.f115212K0);
            }
            String decodePath = URIUtil.decodePath(baseResource.getURL().getPath());
            if (decodePath.endsWith("/")) {
                decodePath = decodePath.substring(0, decodePath.length() - 1);
            }
            if (decodePath.endsWith("!")) {
                decodePath = decodePath.substring(0, decodePath.length() - 1);
            }
            stringBuffer.append(decodePath.substring(decodePath.lastIndexOf("/") + 1, decodePath.length()));
        } catch (Exception e) {
            Log.warn("Can't generate resourceBase as part of webapp tmp dir name", (Throwable) e);
        }
        stringBuffer.append("_");
        stringBuffer.append(getContextPath().replace('/', NameUtil.USCORE).replace('\\', NameUtil.USCORE));
        stringBuffer.append("_");
        String[] virtualHosts = getVirtualHosts();
        if (virtualHosts != null && (str = virtualHosts[0]) != null) {
            str2 = str;
        }
        stringBuffer.append(str2);
        String num = Integer.toString(stringBuffer.toString().hashCode(), 36);
        stringBuffer.append("_");
        stringBuffer.append(num);
        for (int i = 0; i < stringBuffer.length(); i++) {
            if (!Character.isJavaIdentifierPart(stringBuffer.charAt(i))) {
                stringBuffer.setCharAt(i, '.');
            }
        }
        return stringBuffer.toString();
    }

    public String removeResourceAlias(String str) {
        Map map = this.f115215N0;
        if (map == null) {
            return null;
        }
        return (String) map.remove(str);
    }

    public void resolveWebApp() throws IOException {
        if (super.getBaseResource() == null) {
            String str = this.f115212K0;
            if (str == null || str.length() == 0) {
                this.f115212K0 = getResourceBase();
            }
            Resource newResource = Resource.newResource(this.f115212K0);
            if (newResource.getAlias() != null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(newResource);
                stringBuffer.append(" anti-aliased to ");
                stringBuffer.append(newResource.getAlias());
                Log.debug(stringBuffer.toString());
                newResource = Resource.newResource(newResource.getAlias());
            }
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Try webapp=");
                stringBuffer2.append(newResource);
                stringBuffer2.append(", exists=");
                stringBuffer2.append(newResource.exists());
                stringBuffer2.append(", directory=");
                stringBuffer2.append(newResource.isDirectory());
                Log.debug(stringBuffer2.toString());
            }
            if (newResource.exists() && !newResource.isDirectory() && !newResource.toString().startsWith("jar:")) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("jar:");
                stringBuffer3.append(newResource);
                stringBuffer3.append("!/");
                Resource newResource2 = Resource.newResource(stringBuffer3.toString());
                if (newResource2.exists() && newResource2.isDirectory()) {
                    newResource = newResource2;
                }
            }
            if (newResource.exists() && ((this.f115204C0 && newResource.getFile() != null && newResource.getFile().isDirectory()) || ((this.f115203B0 && newResource.getFile() != null && !newResource.getFile().isDirectory()) || ((this.f115203B0 && newResource.getFile() == null) || !newResource.isDirectory())))) {
                File file = new File(getTempDirectory(), "webapp");
                if (newResource.getFile() != null && newResource.getFile().isDirectory()) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("Copy ");
                    stringBuffer4.append(newResource.getFile());
                    stringBuffer4.append(" to ");
                    stringBuffer4.append(file);
                    Log.info(stringBuffer4.toString());
                    C20429IO.copyDir(newResource.getFile(), file);
                } else if (!file.exists()) {
                    file.mkdir();
                    StringBuffer stringBuffer5 = new StringBuffer();
                    stringBuffer5.append("Extract ");
                    stringBuffer5.append(this.f115212K0);
                    stringBuffer5.append(" to ");
                    stringBuffer5.append(file);
                    Log.info(stringBuffer5.toString());
                    JarResource.extract(newResource, file, false);
                } else if (newResource.lastModified() > file.lastModified()) {
                    C20429IO.delete(file);
                    file.mkdir();
                    StringBuffer stringBuffer6 = new StringBuffer();
                    stringBuffer6.append("Extract ");
                    stringBuffer6.append(this.f115212K0);
                    stringBuffer6.append(" to ");
                    stringBuffer6.append(file);
                    Log.info(stringBuffer6.toString());
                    JarResource.extract(newResource, file, false);
                }
                newResource = Resource.newResource(file.getCanonicalPath());
            }
            if (!newResource.exists() || !newResource.isDirectory()) {
                StringBuffer stringBuffer7 = new StringBuffer();
                stringBuffer7.append("Web application not found ");
                stringBuffer7.append(this.f115212K0);
                Log.warn(stringBuffer7.toString());
                throw new FileNotFoundException(this.f115212K0);
            }
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer8 = new StringBuffer();
                stringBuffer8.append("webapp=");
                stringBuffer8.append(newResource);
                Log.debug(stringBuffer8.toString());
            }
            super.setBaseResource(newResource);
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public void setClassLoader(ClassLoader classLoader) {
        super.setClassLoader(classLoader);
        if (classLoader == null || !(classLoader instanceof WebAppClassLoader)) {
            return;
        }
        ((WebAppClassLoader) classLoader).setName(getDisplayName());
    }

    public void setConfigurationClasses(String[] strArr) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this.f115218v0 = strArr == null ? null : (String[]) strArr.clone();
    }

    public void setConfigurations(Configuration[] configurationArr) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this.f115219w0 = configurationArr == null ? null : (Configuration[]) configurationArr.clone();
    }

    public void setCopyWebDir(boolean z) {
        this.f115204C0 = z;
    }

    public void setDefaultsDescriptor(String str) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this.f115220x0 = str;
    }

    public void setDescriptor(String str) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this.f115221y0 = str;
    }

    public void setDistributable(boolean z) {
        this.f115202A0 = z;
    }

    @Override // org.mortbay.jetty.handler.ContextHandler
    public void setEventListeners(EventListener[] eventListenerArr) {
        SessionHandler sessionHandler;
        SessionHandler sessionHandler2 = this._sessionHandler;
        if (sessionHandler2 != null) {
            sessionHandler2.clearEventListeners();
        }
        super.setEventListeners(eventListenerArr);
        for (int i = 0; eventListenerArr != null && i < eventListenerArr.length; i++) {
            EventListener eventListener = eventListenerArr[i];
            if (((eventListener instanceof HttpSessionActivationListener) || (eventListener instanceof HttpSessionAttributeListener) || (eventListener instanceof HttpSessionBindingListener) || (eventListener instanceof HttpSessionListener)) && (sessionHandler = this._sessionHandler) != null) {
                sessionHandler.addEventListener(eventListener);
            }
        }
    }

    public void setExtraClasspath(String str) {
        this.f115213L0 = str;
    }

    public void setExtractWAR(boolean z) {
        this.f115203B0 = z;
    }

    public void setLogUrlOnStart(boolean z) {
        this.f115205D0 = z;
    }

    public void setOverrideDescriptor(String str) {
        if (isRunning()) {
            throw new IllegalStateException("Running");
        }
        this.f115222z0 = str;
    }

    public void setParentLoaderPriority(boolean z) {
        this.f115206E0 = z;
    }

    public void setPermissions(PermissionCollection permissionCollection) {
        this.f115207F0 = permissionCollection;
    }

    public void setResourceAlias(String str, String str2) {
        if (this.f115215N0 == null) {
            this.f115215N0 = new HashMap(5);
        }
        this.f115215N0.put(str, str2);
    }

    public void setResourceAliases(Map map) {
        this.f115215N0 = map;
    }

    public void setServerClasses(String[] strArr) {
        this.f115209H0 = strArr == null ? null : (String[]) strArr.clone();
    }

    public void setSystemClasses(String[] strArr) {
        this.f115208G0 = strArr == null ? null : (String[]) strArr.clone();
    }

    public void setTempDirectory(File file) {
        if (isStarted()) {
            throw new IllegalStateException("Started");
        }
        if (file != null) {
            try {
                file = new File(file.getCanonicalPath());
            } catch (IOException e) {
                Log.warn(Log.EXCEPTION, (Throwable) e);
            }
        }
        if (file != null && !file.exists()) {
            file.mkdir();
            file.deleteOnExit();
        } else if (file != null) {
            this.f115211J0 = true;
        }
        if (file == null || (file.exists() && file.isDirectory() && file.canWrite())) {
            this.f115210I0 = file;
            setAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR, file);
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Bad temp directory: ");
            stringBuffer.append(file);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    public void setWar(String str) {
        this.f115212K0 = str;
    }

    @Override // org.mortbay.jetty.servlet.Context, org.mortbay.jetty.handler.ContextHandler
    public void startContext() throws Exception {
        int i = 0;
        int i2 = 0;
        while (true) {
            Configuration[] configurationArr = this.f115219w0;
            if (i2 >= configurationArr.length) {
                break;
            }
            configurationArr[i2].configureDefaults();
            i2++;
        }
        Resource webInf = getWebInf();
        if (webInf != null) {
            Resource addPath = webInf.addPath(DbxWebAuth.ROLE_WORK);
            if (addPath.exists() && addPath.isDirectory() && addPath.getFile() != null && addPath.getFile().canWrite() && getAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR) == null) {
                setAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR, addPath.getFile());
            }
        }
        while (true) {
            Configuration[] configurationArr2 = this.f115219w0;
            if (i >= configurationArr2.length) {
                super.startContext();
                return;
            } else {
                configurationArr2[i].configureWebApp();
                i++;
            }
        }
    }

    @Override // org.mortbay.jetty.handler.ContextHandler, org.mortbay.jetty.handler.AbstractHandler
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getClass().getName());
        stringBuffer.append("@");
        stringBuffer.append(Integer.toHexString(hashCode()));
        stringBuffer.append("{");
        stringBuffer.append(getContextPath());
        stringBuffer.append(",");
        String str = this.f115212K0;
        if (str == null) {
            str = getResourceBase();
        }
        stringBuffer.append(str);
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    public WebAppContext(String str, String str2) {
        super(null, str2, 3);
        this.f115218v0 = f115198Q0;
        this.f115220x0 = WEB_DEFAULTS_XML;
        this.f115221y0 = null;
        this.f115222z0 = null;
        this.f115202A0 = false;
        this.f115203B0 = true;
        this.f115204C0 = false;
        this.f115205D0 = false;
        this.f115206E0 = Boolean.getBoolean("org.mortbay.jetty.webapp.parentLoaderPriority");
        this.f115208G0 = new String[]{"java.", "javax.", "org.mortbay.", "org.xml.", "org.w3c.", "org.apache.commons.logging.", "org.apache.log4j."};
        this.f115209H0 = new String[]{"-org.mortbay.jetty.plus.annotation.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.plus.naming.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.servlet.DefaultServlet", "org.mortbay.jetty.", "org.slf4j."};
        this.f115216O0 = false;
        setContextPath(str2);
        setWar(str);
        setErrorHandler(new ErrorPageErrorHandler());
    }

    public static void addWebApplications(Server server, String str, String str2, String[] strArr, boolean z, boolean z2) throws IOException {
        Class cls = f115199R0;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.handler.ContextHandlerCollection");
            f115199R0 = cls;
        }
        HandlerCollection handlerCollection = (HandlerCollection) server.getChildHandlerByClass(cls);
        if (handlerCollection == null) {
            Class cls2 = f115200S0;
            if (cls2 == null) {
                cls2 = class$("org.mortbay.jetty.handler.HandlerCollection");
                f115200S0 = cls2;
            }
            handlerCollection = (HandlerCollection) server.getChildHandlerByClass(cls2);
        }
        addWebApplications(handlerCollection, str, str2, strArr, z, z2);
    }

    public static void addWebApplications(HandlerContainer handlerContainer, String str, String str2, boolean z, boolean z2) throws IOException {
        addWebApplications(handlerContainer, str, str2, f115198Q0, z, z2);
    }

    public static void addWebApplications(HandlerContainer handlerContainer, String str, String str2, String[] strArr, boolean z, boolean z2) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Deprecated configuration used for ");
        stringBuffer.append(str);
        Log.warn(stringBuffer.toString());
        WebAppDeployer webAppDeployer = new WebAppDeployer();
        webAppDeployer.setContexts(handlerContainer);
        webAppDeployer.setWebAppDir(str);
        webAppDeployer.setConfigurationClasses(strArr);
        webAppDeployer.setExtract(z);
        webAppDeployer.setParentLoaderPriority(z2);
        try {
            webAppDeployer.start();
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public WebAppContext(HandlerContainer handlerContainer, String str, String str2) {
        super(handlerContainer, str2, 3);
        this.f115218v0 = f115198Q0;
        this.f115220x0 = WEB_DEFAULTS_XML;
        this.f115221y0 = null;
        this.f115222z0 = null;
        this.f115202A0 = false;
        this.f115203B0 = true;
        this.f115204C0 = false;
        this.f115205D0 = false;
        this.f115206E0 = Boolean.getBoolean("org.mortbay.jetty.webapp.parentLoaderPriority");
        this.f115208G0 = new String[]{"java.", "javax.", "org.mortbay.", "org.xml.", "org.w3c.", "org.apache.commons.logging.", "org.apache.log4j."};
        this.f115209H0 = new String[]{"-org.mortbay.jetty.plus.annotation.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.plus.naming.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.servlet.DefaultServlet", "org.mortbay.jetty.", "org.slf4j."};
        this.f115216O0 = false;
        setWar(str);
        setErrorHandler(new ErrorPageErrorHandler());
    }

    public WebAppContext(SecurityHandler securityHandler, SessionHandler sessionHandler, ServletHandler servletHandler, ErrorHandler errorHandler) {
        super(null, sessionHandler == null ? new SessionHandler() : sessionHandler, securityHandler == null ? new SecurityHandler() : securityHandler, servletHandler == null ? new ServletHandler() : servletHandler, null);
        this.f115218v0 = f115198Q0;
        this.f115220x0 = WEB_DEFAULTS_XML;
        this.f115221y0 = null;
        this.f115222z0 = null;
        this.f115202A0 = false;
        this.f115203B0 = true;
        this.f115204C0 = false;
        this.f115205D0 = false;
        this.f115206E0 = Boolean.getBoolean("org.mortbay.jetty.webapp.parentLoaderPriority");
        this.f115208G0 = new String[]{"java.", "javax.", "org.mortbay.", "org.xml.", "org.w3c.", "org.apache.commons.logging.", "org.apache.log4j."};
        this.f115209H0 = new String[]{"-org.mortbay.jetty.plus.annotation.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.plus.naming.", "-org.mortbay.jetty.plus.jaas.", "-org.mortbay.jetty.servlet.DefaultServlet", "org.mortbay.jetty.", "org.slf4j."};
        this.f115216O0 = false;
        setErrorHandler(errorHandler == null ? new ErrorPageErrorHandler() : errorHandler);
    }
}

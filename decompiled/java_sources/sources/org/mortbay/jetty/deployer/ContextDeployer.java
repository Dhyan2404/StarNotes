package org.mortbay.jetty.deployer;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.text.AlphabetConverter;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.ContextHandlerCollection;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.Scanner;
import org.mortbay.xml.XmlConfiguration;

/* loaded from: classes13.dex */
public class ContextDeployer extends AbstractLifeCycle {
    public static final String NAME = "ConfiguredDeployer";

    /* renamed from: g */
    public ScannerListener f114836g;

    /* renamed from: h */
    public Resource f114837h;

    /* renamed from: j */
    public ContextHandlerCollection f114839j;

    /* renamed from: k */
    public ConfigurationManager f114840k;

    /* renamed from: e */
    public int f114834e = 10;

    /* renamed from: i */
    public Map f114838i = new HashMap();

    /* renamed from: l */
    public boolean f114841l = false;

    /* renamed from: f */
    public Scanner f114835f = new Scanner();

    /* loaded from: classes13.dex */
    public class ScannerListener implements Scanner.DiscreteListener {
        public ScannerListener() {
        }

        @Override // org.mortbay.util.Scanner.DiscreteListener
        public void fileAdded(String str) throws Exception {
            ContextDeployer.this.m71544j(str);
        }

        @Override // org.mortbay.util.Scanner.DiscreteListener
        public void fileChanged(String str) throws Exception {
            ContextDeployer.this.m71545k(str);
        }

        @Override // org.mortbay.util.Scanner.DiscreteListener
        public void fileRemoved(String str) throws Exception {
            ContextDeployer.this.m71546l(str);
        }

        public String toString() {
            return "ContextDeployer$Scanner";
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        Resource resource = this.f114837h;
        if (resource == null) {
            throw new IllegalStateException("No configuraition dir specified");
        }
        if (this.f114839j == null) {
            throw new IllegalStateException("No context handler collection specified for deployer");
        }
        this.f114835f.setScanDir(resource.getFile());
        this.f114835f.setScanInterval(getScanInterval());
        this.f114835f.setRecursive(this.f114841l);
        this.f114835f.setFilenameFilter(new C20384a(this));
        ScannerListener scannerListener = new ScannerListener();
        this.f114836g = scannerListener;
        this.f114835f.addListener(scannerListener);
        this.f114835f.scan();
        this.f114835f.start();
        this.f114839j.getServer().getContainer().addBean(this.f114835f);
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        this.f114835f.removeListener(this.f114836g);
        this.f114835f.stop();
    }

    public Resource getConfigurationDir() {
        return this.f114837h;
    }

    public ConfigurationManager getConfigurationManager() {
        return this.f114840k;
    }

    public ContextHandlerCollection getContexts() {
        return this.f114839j;
    }

    public String getDirectory() {
        return getConfigurationDir().getName();
    }

    public boolean getRecursive() {
        return this.f114841l;
    }

    public int getScanInterval() {
        return this.f114834e;
    }

    /* renamed from: i */
    public final ContextHandler m71543i(String str) throws Exception {
        Resource newResource = Resource.newResource(str);
        if (!newResource.exists()) {
            return null;
        }
        XmlConfiguration xmlConfiguration = new XmlConfiguration(newResource.getURL());
        HashMap hashMap = new HashMap();
        hashMap.put("Server", this.f114839j.getServer());
        ConfigurationManager configurationManager = this.f114840k;
        if (configurationManager != null) {
            hashMap.putAll(configurationManager.getProperties());
        }
        xmlConfiguration.setProperties(hashMap);
        return (ContextHandler) xmlConfiguration.configure();
    }

    public boolean isRecursive() {
        return this.f114841l;
    }

    /* renamed from: j */
    public final void m71544j(String str) throws Exception {
        ContextHandler m71543i = m71543i(str);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Deploy ");
        stringBuffer.append(str);
        stringBuffer.append(AlphabetConverter.f109940d);
        stringBuffer.append(m71543i);
        Log.info(stringBuffer.toString());
        this.f114839j.addHandler(m71543i);
        this.f114838i.put(str, m71543i);
        if (this.f114839j.isStarted()) {
            m71543i.start();
        }
    }

    /* renamed from: k */
    public final void m71545k(String str) throws Exception {
        m71546l(str);
        m71544j(str);
    }

    /* renamed from: l */
    public final void m71546l(String str) throws Exception {
        ContextHandler contextHandler = (ContextHandler) this.f114838i.get(str);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Undeploy ");
        stringBuffer.append(str);
        stringBuffer.append(AlphabetConverter.f109940d);
        stringBuffer.append(contextHandler);
        Log.info(stringBuffer.toString());
        if (contextHandler == null) {
            return;
        }
        contextHandler.stop();
        this.f114839j.removeHandler(contextHandler);
        this.f114838i.remove(str);
    }

    public void setConfigurationDir(String str) throws Exception {
        setConfigurationDir(Resource.newResource(str));
    }

    public void setConfigurationManager(ConfigurationManager configurationManager) {
        this.f114840k = configurationManager;
    }

    public void setContexts(ContextHandlerCollection contextHandlerCollection) {
        if (isStarted() || isStarting()) {
            throw new IllegalStateException("Cannot set Contexts after deployer start");
        }
        this.f114839j = contextHandlerCollection;
    }

    public void setDirectory(String str) throws Exception {
        setConfigurationDir(str);
    }

    public void setRecursive(boolean z) {
        this.f114841l = z;
    }

    public void setScanInterval(int i) {
        if (isStarted() || isStarting()) {
            throw new IllegalStateException("Cannot change scan interval after deployer start");
        }
        this.f114834e = i;
    }

    public void setConfigurationDir(File file) throws Exception {
        setConfigurationDir(Resource.newResource(file.toURL()));
    }

    public void setConfigurationDir(Resource resource) {
        if (!isStarted() && !isStarting()) {
            this.f114837h = resource;
            return;
        }
        throw new IllegalStateException("Cannot change hot deploy dir after deployer start");
    }
}

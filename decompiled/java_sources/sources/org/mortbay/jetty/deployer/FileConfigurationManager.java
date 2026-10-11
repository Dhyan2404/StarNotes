package org.mortbay.jetty.deployer;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.Map;
import java.util.Properties;
import org.mortbay.resource.Resource;

/* loaded from: classes13.dex */
public class FileConfigurationManager implements ConfigurationManager {

    /* renamed from: a */
    public Resource f114843a;

    /* renamed from: b */
    public Properties f114844b = new Properties();

    /* renamed from: a */
    public final void m71547a() throws FileNotFoundException, IOException {
        if (this.f114844b.isEmpty()) {
            this.f114844b.load(this.f114843a.getInputStream());
        }
    }

    @Override // org.mortbay.jetty.deployer.ConfigurationManager
    public Map getProperties() {
        try {
            m71547a();
            return this.f114844b;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void setFile(String str) throws MalformedURLException, IOException {
        this.f114843a = Resource.newResource(str);
    }
}

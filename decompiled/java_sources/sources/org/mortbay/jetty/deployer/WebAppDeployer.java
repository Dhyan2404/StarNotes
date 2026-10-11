package org.mortbay.jetty.deployer;

import java.util.ArrayList;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.handler.ContextHandler;

/* loaded from: classes13.dex */
public class WebAppDeployer extends AbstractLifeCycle {

    /* renamed from: m */
    public static /* synthetic */ Class f114845m;

    /* renamed from: n */
    public static /* synthetic */ Class f114846n;

    /* renamed from: e */
    public HandlerContainer f114847e;

    /* renamed from: f */
    public String f114848f;

    /* renamed from: g */
    public String f114849g;

    /* renamed from: h */
    public String[] f114850h;

    /* renamed from: i */
    public boolean f114851i;

    /* renamed from: j */
    public boolean f114852j;

    /* renamed from: k */
    public boolean f114853k;

    /* renamed from: l */
    public ArrayList f114854l;

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this.f114854l = new ArrayList();
        scan();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        int size = this.f114854l.size();
        while (true) {
            int i = size - 1;
            if (size <= 0) {
                return;
            }
            ((ContextHandler) this.f114854l.get(i)).stop();
            size = i;
        }
    }

    public boolean getAllowDuplicates() {
        return this.f114853k;
    }

    public String[] getConfigurationClasses() {
        return this.f114850h;
    }

    public HandlerContainer getContexts() {
        return this.f114847e;
    }

    public String getDefaultsDescriptor() {
        return this.f114849g;
    }

    public String getWebAppDir() {
        return this.f114848f;
    }

    public boolean isExtract() {
        return this.f114851i;
    }

    public boolean isParentLoaderPriority() {
        return this.f114852j;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x019e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scan() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.deployer.WebAppDeployer.scan():void");
    }

    public void setAllowDuplicates(boolean z) {
        this.f114853k = z;
    }

    public void setConfigurationClasses(String[] strArr) {
        this.f114850h = strArr;
    }

    public void setContexts(HandlerContainer handlerContainer) {
        this.f114847e = handlerContainer;
    }

    public void setDefaultsDescriptor(String str) {
        this.f114849g = str;
    }

    public void setExtract(boolean z) {
        this.f114851i = z;
    }

    public void setParentLoaderPriority(boolean z) {
        this.f114852j = z;
    }

    public void setWebAppDir(String str) {
        this.f114848f = str;
    }
}

package org.mortbay.jetty.security;

import java.io.IOException;
import java.io.PrintStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.Scanner;

/* loaded from: classes13.dex */
public class HashUserRealm extends AbstractLifeCycle implements UserRealm, SSORealm {
    public static final String __SSO = "org.mortbay.http.SSO";

    /* renamed from: e */
    public String f115017e;

    /* renamed from: f */
    public String f115018f;

    /* renamed from: g */
    public Resource f115019g;

    /* renamed from: h */
    public SSORealm f115020h;

    /* renamed from: i */
    public Scanner f115021i;
    protected HashMap _users = new HashMap();
    protected HashMap _roles = new HashMap(7);

    /* renamed from: j */
    public int f115022j = 0;

    /* renamed from: org.mortbay.jetty.security.HashUserRealm$a */
    /* loaded from: classes13.dex */
    public class C20398a extends C20399b {

        /* renamed from: g */
        public String f115023g;

        /* renamed from: h */
        public Credential f115024h;

        public C20398a(String str, Credential credential) {
            super(HashUserRealm.this, null);
            this.f115023g = str;
            this.f115024h = credential;
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.C20399b
        /* renamed from: c */
        public boolean mo71583c() {
            return true;
        }

        /* renamed from: d */
        public boolean m71584d(Object obj) {
            Credential credential = this.f115024h;
            return credential != null && credential.check(obj);
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.C20399b, java.security.Principal
        public String getName() {
            return this.f115023g;
        }
    }

    /* renamed from: org.mortbay.jetty.security.HashUserRealm$c */
    /* loaded from: classes13.dex */
    public class C20400c extends C20399b {

        /* renamed from: g */
        public Principal f115028g;

        /* renamed from: h */
        public String f115029h;

        public C20400c(Principal principal, String str) {
            super(HashUserRealm.this, null);
            this.f115028g = principal;
            this.f115029h = str;
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.C20399b
        /* renamed from: c */
        public boolean mo71583c() {
            return true;
        }

        /* renamed from: d */
        public Principal m71587d() {
            return this.f115028g;
        }

        /* renamed from: e */
        public boolean m71588e(String str) {
            return this.f115029h.equals(str);
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.C20399b, java.security.Principal
        public String getName() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("role:");
            stringBuffer.append(this.f115029h);
            return stringBuffer.toString();
        }
    }

    public HashUserRealm() {
    }

    public synchronized void addUserToRole(String str, String str2) {
        HashSet hashSet = (HashSet) this._roles.get(str2);
        if (hashSet == null) {
            hashSet = new HashSet(11);
            this._roles.put(str2, hashSet);
        }
        hashSet.add(str);
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal authenticate(String str, Object obj, Request request) {
        C20398a c20398a;
        synchronized (this) {
            c20398a = (C20398a) this._users.get(str);
        }
        if (c20398a != null && c20398a.m71584d(obj)) {
            return c20398a;
        }
        return null;
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public void clearSingleSignOn(String str) {
        SSORealm sSORealm = this.f115020h;
        if (sSORealm != null) {
            sSORealm.clearSingleSignOn(str);
        }
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public void disassociate(Principal principal) {
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        super.doStart();
        Scanner scanner = this.f115021i;
        if (scanner != null) {
            scanner.stop();
        }
        if (getRefreshInterval() > 0) {
            Scanner scanner2 = new Scanner();
            this.f115021i = scanner2;
            scanner2.setScanInterval(getRefreshInterval());
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.f115019g.getFile());
            this.f115021i.setScanDirs(arrayList);
            this.f115021i.setFilenameFilter(new C20403b(this));
            this.f115021i.addListener(new C20404c(this));
            this.f115021i.setReportExistingFilesOnStartup(false);
            this.f115021i.setRecursive(false);
            this.f115021i.start();
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        Scanner scanner = this.f115021i;
        if (scanner != null) {
            scanner.stop();
        }
        this.f115021i = null;
    }

    public void dump(PrintStream printStream) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this);
        stringBuffer.append(":");
        printStream.println(stringBuffer.toString());
        printStream.println(super.toString());
        printStream.println(this._roles);
    }

    public String getConfig() {
        return this.f115018f;
    }

    public Resource getConfigResource() {
        return this.f115019g;
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public String getName() {
        return this.f115017e;
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal getPrincipal(String str) {
        return (Principal) this._users.get(str);
    }

    public int getRefreshInterval() {
        return this.f115022j;
    }

    public SSORealm getSSORealm() {
        return this.f115020h;
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public Credential getSingleSignOn(Request request, Response response) {
        SSORealm sSORealm = this.f115020h;
        if (sSORealm != null) {
            return sSORealm.getSingleSignOn(request, response);
        }
        return null;
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public synchronized boolean isUserInRole(Principal principal, String str) {
        if (principal instanceof C20400c) {
            return ((C20400c) principal).m71588e(str);
        }
        boolean z = false;
        if (principal != null && (principal instanceof C20399b) && ((C20399b) principal).m71586b() == this) {
            HashSet hashSet = (HashSet) this._roles.get(str);
            if (hashSet != null && hashSet.contains(principal.getName())) {
                z = true;
            }
            return z;
        }
        return false;
    }

    public void loadConfig() throws IOException {
        String str;
        synchronized (this) {
            this._users.clear();
            this._roles.clear();
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Load ");
                stringBuffer.append(this);
                stringBuffer.append(" from ");
                stringBuffer.append(this.f115018f);
                Log.debug(stringBuffer.toString());
            }
            Properties properties = new Properties();
            properties.load(this.f115019g.getInputStream());
            for (Map.Entry entry : properties.entrySet()) {
                String trim = entry.getKey().toString().trim();
                String trim2 = entry.getValue().toString().trim();
                int indexOf = trim2.indexOf(44);
                if (indexOf > 0) {
                    str = trim2.substring(indexOf + 1).trim();
                    trim2 = trim2.substring(0, indexOf).trim();
                } else {
                    str = null;
                }
                if (trim != null && trim.length() > 0 && trim2 != null && trim2.length() > 0) {
                    put(trim, trim2);
                    if (str != null && str.length() > 0) {
                        StringTokenizer stringTokenizer = new StringTokenizer(str, ", ");
                        while (stringTokenizer.hasMoreTokens()) {
                            addUserToRole(trim, stringTokenizer.nextToken());
                        }
                    }
                }
            }
        }
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public void logout(Principal principal) {
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal popRole(Principal principal) {
        return ((C20400c) principal).m71587d();
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal pushRole(Principal principal, String str) {
        if (principal == null) {
            principal = new C20399b(this, null);
        }
        return new C20400c(principal, str);
    }

    public synchronized Object put(Object obj, Object obj2) {
        if (obj2 instanceof Principal) {
            return this._users.put(obj.toString(), obj2);
        }
        if (obj2 instanceof Password) {
            return this._users.put(obj, new C20398a(obj.toString(), (Password) obj2));
        }
        if (obj2 == null) {
            return null;
        }
        return this._users.put(obj, new C20398a(obj.toString(), Credential.getCredential(obj2.toString())));
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public boolean reauthenticate(Principal principal) {
        return ((C20399b) principal).mo71583c();
    }

    public void setConfig(String str) throws IOException {
        this.f115018f = str;
        this.f115019g = Resource.newResource(str);
        loadConfig();
    }

    public void setName(String str) {
        this.f115017e = str;
    }

    public void setRefreshInterval(int i) {
        this.f115022j = i;
    }

    public void setSSORealm(SSORealm sSORealm) {
        this.f115020h = sSORealm;
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public void setSingleSignOn(Request request, Response response, Principal principal, Credential credential) {
        SSORealm sSORealm = this.f115020h;
        if (sSORealm != null) {
            sSORealm.setSingleSignOn(request, response, principal, credential);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Realm[");
        stringBuffer.append(this.f115017e);
        stringBuffer.append("]==");
        stringBuffer.append(this._users.keySet());
        return stringBuffer.toString();
    }

    /* renamed from: org.mortbay.jetty.security.HashUserRealm$b */
    /* loaded from: classes13.dex */
    public class C20399b implements Principal {

        /* renamed from: e */
        public List f115026e;

        public C20399b() {
            this.f115026e = null;
        }

        /* renamed from: b */
        public final UserRealm m71586b() {
            return HashUserRealm.this;
        }

        /* renamed from: c */
        public boolean mo71583c() {
            return false;
        }

        @Override // java.security.Principal
        public String getName() {
            return "Anonymous";
        }

        @Override // java.security.Principal
        public String toString() {
            return getName();
        }

        public /* synthetic */ C20399b(HashUserRealm hashUserRealm, C20403b c20403b) {
            this();
        }
    }

    public HashUserRealm(String str) {
        this.f115017e = str;
    }

    public HashUserRealm(String str, String str2) throws IOException {
        this.f115017e = str;
        setConfig(str2);
    }
}

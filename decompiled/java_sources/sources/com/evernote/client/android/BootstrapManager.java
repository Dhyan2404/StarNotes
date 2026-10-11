package com.evernote.client.android;

import android.util.Log;
import com.evernote.auth.EvernoteAuth;
import com.evernote.client.android.EvernoteSession;
import com.evernote.edam.userstore.BootstrapInfo;
import com.evernote.edam.userstore.BootstrapProfile;
import com.evernote.thrift.TException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class BootstrapManager {

    /* renamed from: e */
    public static final String f20790e = "EvernoteSession";

    /* renamed from: f */
    public static final List<Locale> f20791f = Collections.unmodifiableList(Arrays.asList(Locale.TRADITIONAL_CHINESE, Locale.CHINESE, Locale.CHINA, Locale.SIMPLIFIED_CHINESE));

    /* renamed from: a */
    public ArrayList<String> f20792a;

    /* renamed from: b */
    public Locale f20793b;

    /* renamed from: c */
    public String f20794c;

    /* renamed from: d */
    public final EvernoteSession f20795d;

    /* loaded from: classes4.dex */
    public static class ClientUnsupportedException extends Exception {
        public ClientUnsupportedException(String str) {
            super("Client version " + str + " not supported.");
        }
    }

    /* renamed from: com.evernote.client.android.BootstrapManager$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4456a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20796a;

        static {
            int[] iArr = new int[EvernoteSession.EvernoteService.values().length];
            f20796a = iArr;
            try {
                iArr[EvernoteSession.EvernoteService.PRODUCTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20796a[EvernoteSession.EvernoteService.SANDBOX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.evernote.client.android.BootstrapManager$b */
    /* loaded from: classes4.dex */
    public static class C4457b {

        /* renamed from: a */
        public String f20797a;

        /* renamed from: b */
        public BootstrapInfo f20798b;

        public C4457b(String str, BootstrapInfo bootstrapInfo) {
            this.f20797a = str;
            this.f20798b = bootstrapInfo;
        }

        /* renamed from: a */
        public BootstrapInfo m16916a() {
            return this.f20798b;
        }

        /* renamed from: b */
        public String m16917b() {
            return this.f20797a;
        }
    }

    public BootstrapManager(EvernoteSession evernoteSession) {
        this(evernoteSession.getEvernoteService(), evernoteSession);
    }

    /* renamed from: a */
    public C4457b m16912a() throws Exception {
        Log.d(f20790e, "getBootstrapInfo()");
        BootstrapInfo bootstrapInfo = null;
        try {
            if (this.f20794c == null) {
                m16914c();
            }
            bootstrapInfo = this.f20795d.getEvernoteClientFactory().getUserStoreClient(m16913b(this.f20794c), null).getBootstrapInfo(this.f20793b.toString());
            m16915d(bootstrapInfo);
        } catch (TException e) {
            Log.e(f20790e, "error getting bootstrap info", e);
        }
        return new C4457b(this.f20794c, bootstrapInfo);
    }

    /* renamed from: b */
    public final String m16913b(String str) {
        return str + EvernoteAuth.f20767g;
    }

    /* renamed from: c */
    public final void m16914c() throws Exception {
        Iterator<String> it2 = this.f20792a.iterator();
        int i = 0;
        while (it2.hasNext()) {
            String next = it2.next();
            i++;
            try {
                if (!this.f20795d.getEvernoteClientFactory().getUserStoreClient(m16913b(next), null).checkVersion(EvernoteUtil.generateUserAgentString(this.f20795d.getApplicationContext()), (short) 1, (short) 25)) {
                    throw new ClientUnsupportedException("1.25");
                }
                this.f20794c = next;
                return;
            } catch (ClientUnsupportedException e) {
                Log.e(f20790e, "Invalid Version", e);
                throw e;
            } catch (Exception e2) {
                if (i >= this.f20792a.size()) {
                    throw e2;
                }
                Log.e(f20790e, "Error contacting bootstrap server=" + next, e2);
            }
        }
    }

    /* renamed from: d */
    public void m16915d(BootstrapInfo bootstrapInfo) {
        if (bootstrapInfo == null) {
            return;
        }
        Log.d(f20790e, "printBootstrapInfo");
        List<BootstrapProfile> profiles = bootstrapInfo.getProfiles();
        if (profiles == null) {
            Log.d(f20790e, "Profiles are null");
            return;
        }
        Iterator<BootstrapProfile> it2 = profiles.iterator();
        while (it2.hasNext()) {
            Log.d(f20790e, it2.next().toString());
        }
    }

    public BootstrapManager(EvernoteSession.EvernoteService evernoteService, EvernoteSession evernoteSession) {
        this(evernoteService, evernoteSession, Locale.getDefault());
    }

    public BootstrapManager(EvernoteSession.EvernoteService evernoteService, EvernoteSession evernoteSession, Locale locale) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f20792a = arrayList;
        this.f20795d = evernoteSession;
        this.f20793b = locale;
        arrayList.clear();
        int i = C4456a.f20796a[evernoteService.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            this.f20792a.add(EvernoteSession.HOST_SANDBOX);
        } else {
            if (f20791f.contains(this.f20793b)) {
                this.f20792a.add(EvernoteSession.HOST_CHINA);
            }
            this.f20792a.add(EvernoteSession.HOST_PRODUCTION);
        }
    }
}

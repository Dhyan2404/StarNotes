package org.mortbay.jetty.servlet;

import java.security.SecureRandom;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.SessionIdManager;
import org.mortbay.jetty.servlet.AbstractSessionManager;
import org.mortbay.log.Log;
import org.mortbay.util.MultiMap;

/* loaded from: classes13.dex */
public class HashSessionIdManager extends AbstractLifeCycle implements SessionIdManager {

    /* renamed from: h */
    public static final String f115138h = "org.mortbay.jetty.newSessionId";
    protected Random _random;

    /* renamed from: e */
    public MultiMap f115139e;

    /* renamed from: f */
    public boolean f115140f;

    /* renamed from: g */
    public String f115141g;

    public HashSessionIdManager() {
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public void addSession(HttpSession httpSession) {
        synchronized (this) {
            this.f115139e.add(getClusterId(httpSession.getId()), httpSession);
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() {
        if (this._random == null) {
            try {
                Log.debug("Init SecureRandom.");
                this._random = new SecureRandom();
            } catch (Exception e) {
                Log.warn("Could not generate SecureRandom for session-id randomness", (Throwable) e);
                this._random = new Random();
                this.f115140f = true;
            }
        }
        this.f115139e = new MultiMap();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() {
        MultiMap multiMap = this.f115139e;
        if (multiMap != null) {
            multiMap.clear();
        }
        this.f115139e = null;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getClusterId(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf > 0 ? str.substring(0, lastIndexOf) : str;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getNodeId(String str, HttpServletRequest httpServletRequest) {
        String str2 = httpServletRequest == null ? null : (String) httpServletRequest.getAttribute("org.mortbay.http.ajp.JVMRoute");
        if (str2 != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append('.');
            stringBuffer.append(str2);
            return stringBuffer.toString();
        }
        if (this.f115141g == null) {
            return str;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(str);
        stringBuffer2.append('.');
        stringBuffer2.append(this.f115141g);
        return stringBuffer2.toString();
    }

    public Random getRandom() {
        return this._random;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getWorkerName() {
        return this.f115141g;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public boolean idInUse(String str) {
        return this.f115139e.containsKey(str);
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public void invalidateAll(String str) {
        AbstractSessionManager.Session session;
        while (true) {
            synchronized (this) {
                if (!this.f115139e.containsKey(str)) {
                    return;
                }
                session = (AbstractSessionManager.Session) this.f115139e.getValue(str, 0);
                this.f115139e.removeValue(str, session);
            }
            if (session.isValid()) {
                session.invalidate();
            }
        }
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String newSessionId(HttpServletRequest httpServletRequest, long j) {
        synchronized (this) {
            String requestedSessionId = httpServletRequest.getRequestedSessionId();
            if (requestedSessionId != null) {
                String clusterId = getClusterId(requestedSessionId);
                if (idInUse(clusterId)) {
                    return clusterId;
                }
            }
            String str = (String) httpServletRequest.getAttribute("org.mortbay.jetty.newSessionId");
            if (str != null && idInUse(str)) {
                return str;
            }
            String str2 = null;
            while (true) {
                if (str2 != null && str2.length() != 0 && !idInUse(str2)) {
                    break;
                }
                long hashCode = this.f115140f ? ((hashCode() ^ Runtime.getRuntime().freeMemory()) ^ this._random.nextInt()) ^ (httpServletRequest.hashCode() << 32) : this._random.nextLong();
                long nextLong = this._random.nextLong();
                if (hashCode < 0) {
                    hashCode = -hashCode;
                }
                if (nextLong < 0) {
                    nextLong = -nextLong;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(Long.toString(hashCode, 36));
                stringBuffer.append(Long.toString(nextLong, 36));
                str2 = stringBuffer.toString();
            }
            if (this.f115141g != null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(this.f115141g);
                stringBuffer2.append(str2);
                str2 = stringBuffer2.toString();
            }
            httpServletRequest.setAttribute("org.mortbay.jetty.newSessionId", str2);
            return str2;
        }
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public void removeSession(HttpSession httpSession) {
        synchronized (this) {
            this.f115139e.removeValue(getClusterId(httpSession.getId()), httpSession);
        }
    }

    public void setRandom(Random random) {
        this._random = random;
        this.f115140f = false;
    }

    public void setWorkerName(String str) {
        this.f115141g = str;
    }

    public HashSessionIdManager(Random random) {
        this._random = random;
    }
}

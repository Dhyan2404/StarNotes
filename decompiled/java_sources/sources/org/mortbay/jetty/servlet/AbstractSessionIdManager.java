package org.mortbay.jetty.servlet;

import java.security.SecureRandom;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.SessionIdManager;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public abstract class AbstractSessionIdManager extends AbstractLifeCycle implements SessionIdManager {

    /* renamed from: e */
    public static final String f115102e = "org.mortbay.jetty.newSessionId";
    protected Random _random;
    protected Server _server;
    protected boolean _weakRandom;
    protected String _workerName;

    public AbstractSessionIdManager(Server server) {
        this._server = server;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() {
        initRandom();
    }

    public Random getRandom() {
        return this._random;
    }

    @Override // org.mortbay.jetty.SessionIdManager
    public String getWorkerName() {
        return this._workerName;
    }

    public void initRandom() {
        if (this._random == null) {
            try {
                this._random = new SecureRandom();
                this._weakRandom = false;
            } catch (Exception e) {
                Log.warn("Could not generate SecureRandom for session-id randomness", (Throwable) e);
                this._random = new Random();
                this._weakRandom = true;
            }
        }
        Random random = this._random;
        random.setSeed(((random.nextLong() ^ System.currentTimeMillis()) ^ hashCode()) ^ Runtime.getRuntime().freeMemory());
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
                    httpServletRequest.setAttribute("org.mortbay.jetty.newSessionId", str2);
                    return str2;
                }
                long hashCode = this._weakRandom ? ((hashCode() ^ Runtime.getRuntime().freeMemory()) ^ this._random.nextInt()) ^ (httpServletRequest.hashCode() << 32) : this._random.nextLong();
                if (hashCode < 0) {
                    hashCode = -hashCode;
                }
                long hashCode2 = this._weakRandom ? (httpServletRequest.hashCode() << 32) ^ ((hashCode() ^ Runtime.getRuntime().freeMemory()) ^ this._random.nextInt()) : this._random.nextLong();
                if (hashCode2 < 0) {
                    hashCode2 = -hashCode2;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(Long.toString(hashCode, 36));
                stringBuffer.append(Long.toString(hashCode2, 36));
                str2 = stringBuffer.toString();
                if (this._workerName != null) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(this._workerName);
                    stringBuffer2.append(str2);
                    str2 = stringBuffer2.toString();
                }
            }
        }
    }

    public void setRandom(Random random) {
        this._random = random;
        this._weakRandom = false;
    }

    public void setWorkerName(String str) {
        this._workerName = str;
    }

    public AbstractSessionIdManager(Server server, Random random) {
        this._random = random;
        this._server = server;
    }
}

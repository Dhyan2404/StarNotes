package com.tencent.qcloud.track.cls;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes10.dex */
public abstract class ClsLifecycleCredentialProvider {
    private volatile ClsSessionCredentials credentials;
    private ReentrantLock lock = new ReentrantLock();

    private synchronized ClsSessionCredentials safeGetCredentials() {
        return this.credentials;
    }

    private synchronized void safeSetCredentials(ClsSessionCredentials clsSessionCredentials) {
        this.credentials = clsSessionCredentials;
    }

    public abstract ClsSessionCredentials fetchNewCredentials() throws ClsAuthenticationException;

    public synchronized void forceInvalidationCredential() {
        safeSetCredentials(null);
    }

    public ClsSessionCredentials getCredentials() throws ClsAuthenticationException {
        ClsSessionCredentials safeGetCredentials = safeGetCredentials();
        if (safeGetCredentials != null && safeGetCredentials.isValid()) {
            return safeGetCredentials;
        }
        refresh();
        return safeGetCredentials();
    }

    public void refresh() throws ClsAuthenticationException {
        try {
            try {
                boolean tryLock = this.lock.tryLock(20L, TimeUnit.SECONDS);
                if (!tryLock) {
                    throw new ClsAuthenticationException("lock timeout, no credential for sign");
                }
                ClsSessionCredentials safeGetCredentials = safeGetCredentials();
                if (safeGetCredentials == null || !safeGetCredentials.isValid()) {
                    safeSetCredentials(null);
                    try {
                        safeSetCredentials(fetchNewCredentials());
                    } catch (Exception e) {
                        if (e instanceof ClsAuthenticationException) {
                            throw e;
                        }
                        throw new ClsAuthenticationException("fetch credentials error happens: " + e.getMessage());
                    }
                }
                if (tryLock) {
                    this.lock.unlock();
                }
            } catch (InterruptedException e2) {
                throw new ClsAuthenticationException("interrupt when try to get credential: " + e2.getMessage());
            }
        } catch (Throwable th) {
            if (0 != 0) {
                this.lock.unlock();
            }
            throw th;
        }
    }
}

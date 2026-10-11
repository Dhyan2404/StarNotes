package org.mortbay.resource;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class JarResource extends URLResource {
    protected transient JarURLConnection _jarConnection;

    public JarResource(URL url) {
        super(url, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c2, code lost:
    
        if (r3.equals("") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cd, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00cb, code lost:
    
        if (r3.startsWith(r12) == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void extract(org.mortbay.resource.Resource r12, java.io.File r13, boolean r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.resource.JarResource.extract(org.mortbay.resource.Resource, java.io.File, boolean):void");
    }

    @Override // org.mortbay.resource.URLResource
    public boolean checkConnection() {
        super.checkConnection();
        try {
            if (this._jarConnection != this._connection) {
                newConnection();
            }
        } catch (IOException e) {
            Log.ignore(e);
            this._jarConnection = null;
        }
        return this._jarConnection != null;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public boolean exists() {
        return this._urlString.endsWith("!/") ? checkConnection() : super.exists();
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public File getFile() throws IOException {
        return null;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public InputStream getInputStream() throws IOException {
        checkConnection();
        if (!this._urlString.endsWith("!/")) {
            return new C20423a(this, super.getInputStream());
        }
        return new URL(this._urlString.substring(4, r3.length() - 2)).openStream();
    }

    public void newConnection() throws IOException {
        this._jarConnection = (JarURLConnection) this._connection;
    }

    @Override // org.mortbay.resource.URLResource, org.mortbay.resource.Resource
    public synchronized void release() {
        this._jarConnection = null;
        super.release();
    }

    public JarResource(URL url, boolean z) {
        super(url, null, z);
    }

    public void extract(File file, boolean z) throws IOException {
        extract(this, file, z);
    }
}

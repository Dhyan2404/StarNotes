package org.mortbay.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.mortbay.log.Log;
import org.mortbay.util.C20429IO;

/* renamed from: org.mortbay.servlet.a */
/* loaded from: classes13.dex */
public class RunnableC20426a implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ int f115266e;

    /* renamed from: f */
    public final /* synthetic */ InputStream f115267f;

    /* renamed from: g */
    public final /* synthetic */ OutputStream f115268g;

    /* renamed from: h */
    public final /* synthetic */ CGI f115269h;

    public RunnableC20426a(CGI cgi, int i, InputStream inputStream, OutputStream outputStream) {
        this.f115269h = cgi;
        this.f115266e = i;
        this.f115267f = inputStream;
        this.f115268g = outputStream;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            int i = this.f115266e;
            if (i > 0) {
                C20429IO.copy(this.f115267f, this.f115268g, i);
            }
            this.f115268g.close();
        } catch (IOException e) {
            Log.ignore(e);
        }
    }
}

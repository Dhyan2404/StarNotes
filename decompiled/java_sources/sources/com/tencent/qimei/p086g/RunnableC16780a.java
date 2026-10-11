package com.tencent.qimei.p086g;

import com.tencent.qimei.p078a.C16733a;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p093n.C16806a;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;

/* renamed from: com.tencent.qimei.g.a */
/* loaded from: classes10.dex */
public class RunnableC16780a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f93489a;

    /* renamed from: b */
    public final /* synthetic */ String f93490b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC16782c f93491c;

    public RunnableC16780a(String str, String str2, InterfaceC16782c interfaceC16782c) {
        this.f93489a = str;
        this.f93490b = str2;
        this.f93491c = interfaceC16782c;
    }

    @Override // java.lang.Runnable
    public void run() {
        String sb;
        String str;
        String str2 = this.f93489a;
        String str3 = this.f93490b;
        InterfaceC16782c interfaceC16782c = this.f93491c;
        String str4 = "";
        int i = 0;
        int i2 = -1;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setRequestProperty("If-Modified-Since", str3);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.connect();
            i2 = httpURLConnection.getResponseCode();
            if (i2 == 200) {
                sb = C16762a.m59871a(httpURLConnection);
                str4 = httpURLConnection.getHeaderField("Last-Modified");
                str = "0";
                i = 1;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("response status code != 2XX. msg: ");
                sb2.append(httpURLConnection.getResponseMessage());
                sb = sb2.toString();
                str = "452";
            }
        } catch (SecurityException e) {
            e.printStackTrace();
            C16806a.m59991a("NET", "no network permission,please add in AndroidManifest: <uses-permission android:name=\"android.permission.INTERNET\" /> ", new Object[i]);
            sb = "security error: " + e.getMessage();
            str = "199";
        } catch (ConnectException e2) {
            StringBuilder m59796a = C16733a.m59796a("https connect timeout: ");
            m59796a.append(e2.getMessage());
            sb = m59796a.toString();
            str = "451";
        } catch (Throwable th) {
            StringBuilder m59796a2 = C16733a.m59796a("https connect error: ");
            m59796a2.append(th.getMessage());
            sb = m59796a2.toString();
            str = "499";
        }
        if (i != 0) {
            interfaceC16782c.mo59809a(sb, str4);
        } else {
            interfaceC16782c.mo59808a(str, i2, sb);
        }
    }
}

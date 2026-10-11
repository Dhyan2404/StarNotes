package com.tencent.qimei.ae;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.qimei.ad.RunnableC16748e;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p086g.InterfaceC16782c;
import com.tencent.qimei.p086g.RunnableC16780a;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p092m.C16802c;
import com.tencent.qimei.p093n.C16806a;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.qimei.ae.c */
/* loaded from: classes10.dex */
public class C16760c {

    /* renamed from: a */
    public AtomicInteger f93432a = new AtomicInteger();

    /* renamed from: b */
    public Context f93433b;

    /* renamed from: c */
    public String f93434c;

    /* renamed from: d */
    public String f93435d;

    /* renamed from: e */
    public b f93436e;

    /* renamed from: com.tencent.qimei.ae.c$a */
    /* loaded from: classes10.dex */
    public abstract class a implements InterfaceC16782c {

        /* renamed from: a */
        public final String f93437a;

        /* renamed from: b */
        public final String f93438b;

        public a(String str, String str2) {
            this.f93437a = str;
            this.f93438b = str2;
        }

        /* renamed from: a */
        public abstract String mo59859a(String str);

        @Override // com.tencent.qimei.p086g.InterfaceC16782c
        /* renamed from: a */
        public void mo59808a(String str, int i, String str2) {
            C16760c.m59860a(C16760c.this, this.f93438b, null);
            C16806a.m59991a("HidTask", "pull content from server,code = %d", Integer.valueOf(i));
        }

        @Override // com.tencent.qimei.p086g.InterfaceC16782c
        /* renamed from: a */
        public void mo59809a(String str, String... strArr) {
            C16799g.m59964b(C16760c.this.f93434c).m59968a(this.f93437a, strArr.length > 0 ? strArr[0] : "");
            C16760c.m59860a(C16760c.this, this.f93438b, mo59859a(str));
        }
    }

    /* renamed from: com.tencent.qimei.ae.c$b */
    /* loaded from: classes10.dex */
    public interface b {
    }

    public C16760c(Context context, String str, b bVar) {
        this.f93433b = context;
        this.f93434c = str;
        this.f93436e = bVar;
        this.f93435d = this.f93433b.getFilesDir().getAbsolutePath() + "/jsfile/";
    }

    /* renamed from: a */
    public final boolean m59862a(String str) {
        return new File(this.f93435d + str).exists();
    }

    /* renamed from: b */
    public void m59864b(boolean z) {
        String m59971d = C16799g.m59964b(this.f93434c).m59971d("js_md_tm");
        if (z) {
            m59971d = "";
        }
        AbstractC16769a.m59895a().mo59897a(new RunnableC16780a("https://tun-cos-1258344701.file.myqcloud.com/fp.js", m59971d, new C16759b(this, "js_md_tm", "lc_fe_st_js")));
    }

    /* renamed from: a */
    public final boolean m59863a(String str, String str2) {
        return C16800a.m59973a(C16802c.m59979a(this.f93435d, str)).equals(C16799g.m59964b(this.f93434c).m59971d(str2));
    }

    /* renamed from: a */
    public static /* synthetic */ void m59860a(C16760c c16760c, String str, String str2) {
        if (c16760c.f93432a.incrementAndGet() == 2) {
            ((RunnableC16748e) c16760c.f93436e).m59848c();
        }
        C16799g.m59964b(c16760c.f93434c).m59967a("lc_fe_tm", System.currentTimeMillis());
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        C16799g.m59964b(c16760c.f93434c).m59968a(str, C16800a.m59973a(str2));
    }

    /* renamed from: a */
    public void m59861a(boolean z) {
        String m59971d = C16799g.m59964b(this.f93434c).m59971d("hm_md_tm");
        if (z) {
            m59971d = "";
        }
        AbstractC16769a.m59895a().mo59897a(new RunnableC16780a("https://tun-cos-1258344701.file.myqcloud.com/my.html", m59971d, new C16758a(this, "hm_md_tm", "lc_fe_st_hm")));
    }
}

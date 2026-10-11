package com.tencent.qimei.p091l;

/* renamed from: com.tencent.qimei.l.d */
/* loaded from: classes10.dex */
public class RunnableC16796d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C16798f f93523a;

    public RunnableC16796d(C16798f c16798f) {
        this.f93523a = c16798f;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            synchronized (this.f93523a.f93532g) {
                byte[] m59962a = this.f93523a.m59962a(this.f93523a.f93528c.toString().getBytes("ISO8859-1"));
                if (m59962a == null) {
                    return;
                }
                long length = m59962a.length + 10;
                C16798f c16798f = this.f93523a;
                if (length > c16798f.f93530e) {
                    long length2 = m59962a.length + 10;
                    c16798f.f93530e = length2;
                    c16798f.m59961a(length2);
                }
                this.f93523a.f93529d.putInt(0, m59962a.length);
                this.f93523a.f93529d.position(10);
                this.f93523a.f93529d.put(m59962a);
                this.f93523a.f93529d.force();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

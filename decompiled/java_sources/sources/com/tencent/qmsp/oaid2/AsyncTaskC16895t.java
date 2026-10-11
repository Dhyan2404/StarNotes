package com.tencent.qmsp.oaid2;

import android.os.AsyncTask;

/* renamed from: com.tencent.qmsp.oaid2.t */
/* loaded from: classes10.dex */
public class AsyncTaskC16895t extends AsyncTask<Void, Void, Boolean> {

    /* renamed from: a */
    public InterfaceC16892q f93807a;

    /* renamed from: b */
    public InterfaceC16894s f93808b;

    public AsyncTaskC16895t(InterfaceC16892q interfaceC16892q, InterfaceC16894s interfaceC16894s) {
        this.f93807a = interfaceC16892q;
        this.f93808b = interfaceC16894s;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean doInBackground(Void... voidArr) {
        boolean mo60225c;
        InterfaceC16894s interfaceC16894s;
        if (this.f93807a == null) {
            return Boolean.FALSE;
        }
        int i = 0;
        while (true) {
            try {
                mo60225c = this.f93807a.mo60225c();
            } catch (InterruptedException unused) {
            }
            if (mo60225c) {
                break;
            }
            Thread.sleep(10L);
            i++;
            if (i >= 30) {
                break;
            }
        }
        if (mo60225c && (interfaceC16894s = this.f93808b) != null) {
            interfaceC16894s.mo60239a(true);
        }
        return Boolean.valueOf(mo60225c);
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Boolean bool) {
        super.onPostExecute(bool);
    }
}

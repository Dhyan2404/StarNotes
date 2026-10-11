package com.tencent.qimei.webview.util;

import com.tencent.qimei.ae.C16761d;

/* loaded from: classes10.dex */
public class X5StateController {
    public volatile X5Controller controller;

    /* loaded from: classes10.dex */
    public interface X5Controller {
        boolean detectX5InitFinished();
    }

    /* renamed from: com.tencent.qimei.webview.util.X5StateController$a */
    /* loaded from: classes10.dex */
    public static class C16852a {

        /* renamed from: a */
        public static final X5StateController f93698a = new X5StateController(null);
    }

    public X5StateController() {
    }

    public static X5StateController getInstance() {
        return C16852a.f93698a;
    }

    public X5Controller getController() {
        return this.controller;
    }

    public void setController(X5Controller x5Controller) {
        this.controller = x5Controller;
    }

    public /* synthetic */ X5StateController(C16761d c16761d) {
    }
}

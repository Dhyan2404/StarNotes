package com.tencent.qimei.ac;

import com.tencent.qimei.p080ab.C16741a;
import com.tencent.qimei.strategy.terminal.ITerminalStrategy;

/* renamed from: com.tencent.qimei.ac.b */
/* loaded from: classes10.dex */
public class C16743b implements ITerminalStrategy, InterfaceC16742a {

    /* renamed from: k */
    public String f93384k;

    /* renamed from: v */
    public final String f93395v;

    /* renamed from: a */
    public boolean f93374a = true;

    /* renamed from: b */
    public boolean f93375b = true;

    /* renamed from: c */
    public boolean f93376c = true;

    /* renamed from: d */
    public boolean f93377d = true;

    /* renamed from: e */
    public boolean f93378e = true;

    /* renamed from: f */
    public boolean f93379f = true;

    /* renamed from: g */
    public boolean f93380g = true;

    /* renamed from: h */
    public boolean f93381h = false;

    /* renamed from: i */
    public boolean f93382i = true;

    /* renamed from: j */
    public boolean f93383j = true;

    /* renamed from: l */
    public String f93385l = "";

    /* renamed from: m */
    public String f93386m = "";

    /* renamed from: n */
    public String f93387n = "";

    /* renamed from: o */
    public String f93388o = "";

    /* renamed from: p */
    public String f93389p = "";

    /* renamed from: q */
    public String f93390q = "";

    /* renamed from: r */
    public String f93391r = "";

    /* renamed from: s */
    public String f93392s = "";

    /* renamed from: t */
    public String f93393t = "";

    /* renamed from: u */
    public String f93394u = "";

    public C16743b(String str) {
        this.f93395v = str;
    }

    /* renamed from: a */
    public boolean m59819a() {
        return this.f93381h && C16741a.m59816a(C16741a.a.f93348C, this.f93395v).booleanValue();
    }

    /* renamed from: b */
    public boolean m59820b() {
        return C16741a.m59816a(C16741a.a.f93351F, this.f93395v).booleanValue();
    }

    /* renamed from: c */
    public boolean m59821c() {
        return this.f93374a && this.f93383j && C16741a.m59816a(C16741a.a.f93358u, this.f93395v).booleanValue();
    }

    /* renamed from: d */
    public boolean m59822d() {
        return C16741a.m59816a(C16741a.a.f93353H, this.f93395v).booleanValue();
    }

    /* renamed from: e */
    public boolean m59823e() {
        return C16741a.m59816a(C16741a.a.f93352G, this.f93395v).booleanValue();
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableAndroidId(boolean z) {
        this.f93377d = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableAudit(boolean z) {
        this.f93381h = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableBuildModel(boolean z) {
        this.f93382i = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableCid(boolean z) {
        this.f93379f = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableIMEI(boolean z) {
        this.f93375b = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableIMSI(boolean z) {
        this.f93376c = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableMAC(boolean z) {
        this.f93378e = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableOAID(boolean z) {
        this.f93374a = z;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy enableProcessInfo(boolean z) {
        this.f93380g = z;
        return this;
    }

    /* renamed from: f */
    public boolean m59824f() {
        return C16741a.m59816a(C16741a.a.f93356s, this.f93395v).booleanValue();
    }

    /* renamed from: g */
    public boolean m59825g() {
        return C16741a.m59816a(C16741a.a.f93357t, this.f93395v).booleanValue();
    }

    /* renamed from: h */
    public boolean m59826h() {
        return C16741a.m59816a(C16741a.a.f93350E, this.f93395v).booleanValue();
    }

    /* renamed from: i */
    public boolean m59827i() {
        return C16741a.m59816a(C16741a.a.f93354I, this.f93395v).booleanValue();
    }

    /* renamed from: j */
    public boolean m59828j() {
        return C16741a.m59816a(C16741a.a.f93359v, this.f93395v).booleanValue();
    }

    /* renamed from: k */
    public boolean m59829k() {
        return C16741a.m59816a(C16741a.a.f93349D, this.f93395v).booleanValue();
    }

    /* renamed from: l */
    public int m59830l() {
        return C16741a.m59817a(C16741a.b.f93368l, this.f93395v).intValue();
    }

    /* renamed from: m */
    public int m59831m() {
        return C16741a.m59817a(C16741a.b.f93365i, this.f93395v).intValue();
    }

    /* renamed from: n */
    public int m59832n() {
        return C16741a.m59817a(C16741a.b.f93367k, this.f93395v).intValue();
    }

    /* renamed from: o */
    public String m59833o() {
        return C16741a.m59818a(C16741a.c.f93373f, this.f93395v);
    }

    /* renamed from: p */
    public String m59834p() {
        return C16741a.m59818a(C16741a.c.f93372e, this.f93395v);
    }

    /* renamed from: q */
    public int m59835q() {
        return C16741a.m59817a(C16741a.b.f93364h, this.f93395v).intValue();
    }

    /* renamed from: r */
    public int m59836r() {
        return C16741a.m59817a(C16741a.b.f93366j, this.f93395v).intValue();
    }

    /* renamed from: s */
    public boolean m59837s() {
        return C16741a.m59816a(C16741a.a.f93355J, this.f93395v).booleanValue();
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setAndroidId(String str) {
        this.f93391r = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setAuditSoPath(String str) {
        this.f93387n = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setBuildModel(String str) {
        this.f93394u = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setCid(String str) {
        this.f93393t = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setHidProcess(String str) {
        this.f93384k = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setIMEI(String str) {
        this.f93389p = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setIMSI(String str) {
        this.f93390q = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setMAC(String str) {
        this.f93392s = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setOAID(String str) {
        this.f93388o = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setQimeiSoPath(String str) {
        this.f93386m = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setReportDomain(String str) {
        this.f93385l = str;
        return this;
    }

    @Override // com.tencent.qimei.strategy.terminal.ITerminalStrategy
    public ITerminalStrategy setUserAgreePrivacy(boolean z) {
        this.f93383j = z;
        return this;
    }

    /* renamed from: t */
    public int m59838t() {
        return C16741a.m59817a(C16741a.b.f93370n, this.f93395v).intValue();
    }

    /* renamed from: u */
    public int m59839u() {
        return C16741a.m59817a(C16741a.b.f93369m, this.f93395v).intValue();
    }

    /* renamed from: v */
    public String m59840v() {
        return C16741a.m59818a(C16741a.c.f93371d, this.f93395v);
    }
}

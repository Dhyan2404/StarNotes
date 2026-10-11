package com.tencent.qimei.strategy.terminal;

/* loaded from: classes10.dex */
public interface ITerminalStrategy {
    @Deprecated
    ITerminalStrategy enableAndroidId(boolean z);

    ITerminalStrategy enableAudit(boolean z);

    @Deprecated
    ITerminalStrategy enableBuildModel(boolean z);

    @Deprecated
    ITerminalStrategy enableCid(boolean z);

    @Deprecated
    ITerminalStrategy enableIMEI(boolean z);

    @Deprecated
    ITerminalStrategy enableIMSI(boolean z);

    @Deprecated
    ITerminalStrategy enableMAC(boolean z);

    @Deprecated
    ITerminalStrategy enableOAID(boolean z);

    @Deprecated
    ITerminalStrategy enableProcessInfo(boolean z);

    ITerminalStrategy setAndroidId(String str);

    ITerminalStrategy setAuditSoPath(String str);

    ITerminalStrategy setBuildModel(String str);

    ITerminalStrategy setCid(String str);

    ITerminalStrategy setHidProcess(String str);

    ITerminalStrategy setIMEI(String str);

    ITerminalStrategy setIMSI(String str);

    ITerminalStrategy setMAC(String str);

    ITerminalStrategy setOAID(String str);

    ITerminalStrategy setQimeiSoPath(String str);

    ITerminalStrategy setReportDomain(String str);

    ITerminalStrategy setUserAgreePrivacy(boolean z);
}

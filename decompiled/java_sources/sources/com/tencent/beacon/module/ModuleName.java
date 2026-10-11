package com.tencent.beacon.module;

/* loaded from: classes10.dex */
public enum ModuleName {
    STRATEGY("com.tencent.beacon.module.StrategyModule"),
    EVENT("com.tencent.beacon.module.EventModule"),
    STAT("com.tencent.beacon.module.StatModule");

    private String className;

    ModuleName(String str) {
        this.className = str;
    }

    public String getClassName() {
        return this.className;
    }
}

package com.dropbox.core;

/* loaded from: classes4.dex */
public enum IncludeGrantedScopes {
    USER,
    TEAM;

    @Override // java.lang.Enum
    public String toString() {
        return name().toLowerCase();
    }
}

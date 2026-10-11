package com.sunia.HTREnginev2;

import kotlinx.coroutines.Incomplete;
import kotlinx.coroutines.NodeList;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class xof implements Incomplete {

    /* renamed from: e */
    public final boolean f89907e;

    public xof(boolean z) {
        this.f89907e = z;
    }

    @Override // kotlinx.coroutines.Incomplete
    @Nullable
    public NodeList getList() {
        return null;
    }

    @Override // kotlinx.coroutines.Incomplete
    public boolean isActive() {
        return this.f89907e;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(isActive() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}

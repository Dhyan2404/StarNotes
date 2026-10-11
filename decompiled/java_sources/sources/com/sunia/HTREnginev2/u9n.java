package com.sunia.HTREnginev2;

import kotlinx.coroutines.scheduling.TaskContext;

/* loaded from: classes11.dex */
public final class u9n implements TaskContext {

    /* renamed from: e */
    public final int f86271e;

    public u9n(int i) {
        this.f86271e = i;
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public void afterTask() {
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public int getTaskMode() {
        return this.f86271e;
    }
}

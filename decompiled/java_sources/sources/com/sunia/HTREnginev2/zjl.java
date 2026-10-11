package com.sunia.HTREnginev2;

import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class zjl {

    /* renamed from: a */
    @JvmField
    @NotNull
    public final LockFreeLinkedListNode f91878a;

    public zjl(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.f91878a = lockFreeLinkedListNode;
    }

    @NotNull
    public String toString() {
        return "Removed[" + this.f91878a + ']';
    }
}

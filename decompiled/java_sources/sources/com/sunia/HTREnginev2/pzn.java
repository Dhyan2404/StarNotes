package com.sunia.HTREnginev2;

import androidx.window.core.FailedSpecification;
import androidx.window.core.Logger;
import androidx.window.core.SpecificationComputer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes3.dex */
public final class pzn<T> extends SpecificationComputer<T> {

    /* renamed from: a */
    @NotNull
    public final T f81418a;

    /* renamed from: b */
    @NotNull
    public final String f81419b;

    /* renamed from: c */
    @NotNull
    public final SpecificationComputer.VerificationMode f81420c;

    /* renamed from: d */
    @NotNull
    public final Logger f81421d;

    public pzn(@NotNull T value, @NotNull String tag, @NotNull SpecificationComputer.VerificationMode verificationMode, @NotNull Logger logger) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(verificationMode, "verificationMode");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f81418a = value;
        this.f81419b = tag;
        this.f81420c = verificationMode;
        this.f81421d = logger;
    }

    @NotNull
    /* renamed from: a */
    public final Logger m56476a() {
        return this.f81421d;
    }

    @NotNull
    /* renamed from: b */
    public final String m56477b() {
        return this.f81419b;
    }

    @NotNull
    /* renamed from: c */
    public final T m56478c() {
        return this.f81418a;
    }

    @Override // androidx.window.core.SpecificationComputer
    @NotNull
    public T compute() {
        return this.f81418a;
    }

    @NotNull
    /* renamed from: d */
    public final SpecificationComputer.VerificationMode m56479d() {
        return this.f81420c;
    }

    @Override // androidx.window.core.SpecificationComputer
    @NotNull
    public SpecificationComputer<T> require(@NotNull String message, @NotNull Function1<? super T, Boolean> condition) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return condition.invoke(this.f81418a).booleanValue() ? this : new FailedSpecification(this.f81418a, this.f81419b, message, this.f81421d, this.f81420c);
    }
}

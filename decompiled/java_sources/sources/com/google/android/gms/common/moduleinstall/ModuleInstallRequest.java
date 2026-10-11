package com.google.android.gms.common.moduleinstall;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class ModuleInstallRequest {

    /* renamed from: a */
    public final List f29431a;

    /* renamed from: b */
    @Nullable
    public final InstallStatusListener f29432b;

    /* renamed from: c */
    @Nullable
    public final Executor f29433c;

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a */
        public final List f29434a = new ArrayList();

        /* renamed from: b */
        @Nullable
        public InstallStatusListener f29435b;

        /* renamed from: c */
        @Nullable
        public Executor f29436c;

        @NonNull
        @CanIgnoreReturnValue
        public Builder addApi(@NonNull OptionalModuleApi optionalModuleApi) {
            this.f29434a.add(optionalModuleApi);
            return this;
        }

        @NonNull
        public ModuleInstallRequest build() {
            return new ModuleInstallRequest(this.f29434a, this.f29435b, this.f29436c, true, null);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setListener(@NonNull InstallStatusListener installStatusListener, @Nullable Executor executor) {
            this.f29435b = installStatusListener;
            this.f29436c = executor;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setListener(@NonNull InstallStatusListener installStatusListener) {
            return setListener(installStatusListener, null);
        }
    }

    public /* synthetic */ ModuleInstallRequest(List list, InstallStatusListener installStatusListener, Executor executor, boolean z, zac zacVar) {
        Preconditions.checkNotNull(list, "APIs must not be null.");
        Preconditions.checkArgument(!list.isEmpty(), "APIs must not be empty.");
        if (executor != null) {
            Preconditions.checkNotNull(installStatusListener, "Listener must not be null when listener executor is set.");
        }
        this.f29431a = list;
        this.f29432b = installStatusListener;
        this.f29433c = executor;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }

    @NonNull
    public List<OptionalModuleApi> getApis() {
        return this.f29431a;
    }

    @Nullable
    public InstallStatusListener getListener() {
        return this.f29432b;
    }

    @Nullable
    public Executor getListenerExecutor() {
        return this.f29433c;
    }
}

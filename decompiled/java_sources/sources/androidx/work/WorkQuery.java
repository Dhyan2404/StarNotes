package androidx.work;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class WorkQuery {

    /* renamed from: a */
    public final List<UUID> f11420a;

    /* renamed from: b */
    public final List<String> f11421b;

    /* renamed from: c */
    public final List<String> f11422c;

    /* renamed from: d */
    public final List<WorkInfo.State> f11423d;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public List<UUID> f11424a = new ArrayList();

        /* renamed from: b */
        public List<String> f11425b = new ArrayList();

        /* renamed from: c */
        public List<String> f11426c = new ArrayList();

        /* renamed from: d */
        public List<WorkInfo.State> f11427d = new ArrayList();

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public static Builder fromIds(@NonNull List<UUID> ids) {
            Builder builder = new Builder();
            builder.addIds(ids);
            return builder;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public static Builder fromStates(@NonNull List<WorkInfo.State> states) {
            Builder builder = new Builder();
            builder.addStates(states);
            return builder;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public static Builder fromTags(@NonNull List<String> tags) {
            Builder builder = new Builder();
            builder.addTags(tags);
            return builder;
        }

        @NonNull
        @SuppressLint({"BuilderSetStyle"})
        public static Builder fromUniqueWorkNames(@NonNull List<String> uniqueWorkNames) {
            Builder builder = new Builder();
            builder.addUniqueWorkNames(uniqueWorkNames);
            return builder;
        }

        @NonNull
        public Builder addIds(@NonNull List<UUID> ids) {
            this.f11424a.addAll(ids);
            return this;
        }

        @NonNull
        public Builder addStates(@NonNull List<WorkInfo.State> states) {
            this.f11427d.addAll(states);
            return this;
        }

        @NonNull
        public Builder addTags(@NonNull List<String> tags) {
            this.f11426c.addAll(tags);
            return this;
        }

        @NonNull
        public Builder addUniqueWorkNames(@NonNull List<String> uniqueWorkNames) {
            this.f11425b.addAll(uniqueWorkNames);
            return this;
        }

        @NonNull
        public WorkQuery build() {
            if (this.f11424a.isEmpty() && this.f11425b.isEmpty() && this.f11426c.isEmpty() && this.f11427d.isEmpty()) {
                throw new IllegalArgumentException("Must specify ids, uniqueNames, tags or states when building a WorkQuery");
            }
            return new WorkQuery(this);
        }
    }

    public WorkQuery(@NonNull Builder builder) {
        this.f11420a = builder.f11424a;
        this.f11421b = builder.f11425b;
        this.f11422c = builder.f11426c;
        this.f11423d = builder.f11427d;
    }

    @NonNull
    public static WorkQuery fromIds(@NonNull List<UUID> ids) {
        return Builder.fromIds(ids).build();
    }

    @NonNull
    public static WorkQuery fromStates(@NonNull List<WorkInfo.State> states) {
        return Builder.fromStates(states).build();
    }

    @NonNull
    public static WorkQuery fromTags(@NonNull List<String> tags) {
        return Builder.fromTags(tags).build();
    }

    @NonNull
    public static WorkQuery fromUniqueWorkNames(@NonNull String... uniqueWorkNames) {
        return Builder.fromUniqueWorkNames(Arrays.asList(uniqueWorkNames)).build();
    }

    @NonNull
    public List<UUID> getIds() {
        return this.f11420a;
    }

    @NonNull
    public List<WorkInfo.State> getStates() {
        return this.f11423d;
    }

    @NonNull
    public List<String> getTags() {
        return this.f11422c;
    }

    @NonNull
    public List<String> getUniqueWorkNames() {
        return this.f11421b;
    }

    @NonNull
    public static WorkQuery fromIds(@NonNull UUID... ids) {
        return fromIds((List<UUID>) Arrays.asList(ids));
    }

    @NonNull
    public static WorkQuery fromStates(@NonNull WorkInfo.State... states) {
        return Builder.fromStates(Arrays.asList(states)).build();
    }

    @NonNull
    public static WorkQuery fromTags(@NonNull String... tags) {
        return fromTags((List<String>) Arrays.asList(tags));
    }

    @NonNull
    public static WorkQuery fromUniqueWorkNames(@NonNull List<String> uniqueWorkNames) {
        return Builder.fromUniqueWorkNames(uniqueWorkNames).build();
    }
}

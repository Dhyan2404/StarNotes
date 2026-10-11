package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class InAppMessageParams {

    /* renamed from: a */
    public final ArrayList f13417a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public final Set f13418a = new HashSet();

        @NonNull
        public Builder addAllInAppMessageCategoriesToShow() {
            this.f13418a.add(2);
            return this;
        }

        @NonNull
        public Builder addInAppMessageCategoryToShow(int i) {
            this.f13418a.add(Integer.valueOf(i));
            return this;
        }

        @NonNull
        public InAppMessageParams build() {
            return new InAppMessageParams(this.f13418a, null);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface InAppMessageCategoryId {
        public static final int TRANSACTIONAL = 2;
        public static final int UNKNOWN_IN_APP_MESSAGE_CATEGORY_ID = 0;
    }

    public /* synthetic */ InAppMessageParams(Set set, zzcq zzcqVar) {
        this.f13417a = new ArrayList(Collections.unmodifiableList(new ArrayList(set)));
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }

    /* renamed from: a */
    public final ArrayList m7765a() {
        return this.f13417a;
    }
}

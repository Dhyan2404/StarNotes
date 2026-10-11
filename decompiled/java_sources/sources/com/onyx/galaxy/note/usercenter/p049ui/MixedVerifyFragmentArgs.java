package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class MixedVerifyFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62458a;

    @NonNull
    public static MixedVerifyFragmentArgs fromBundle(@NonNull Bundle bundle) {
        MixedVerifyFragmentArgs mixedVerifyFragmentArgs = new MixedVerifyFragmentArgs();
        bundle.setClassLoader(MixedVerifyFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        mixedVerifyFragmentArgs.f62458a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        return mixedVerifyFragmentArgs;
    }

    @NonNull
    public static MixedVerifyFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        MixedVerifyFragmentArgs mixedVerifyFragmentArgs = new MixedVerifyFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        mixedVerifyFragmentArgs.f62458a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        return mixedVerifyFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MixedVerifyFragmentArgs mixedVerifyFragmentArgs = (MixedVerifyFragmentArgs) obj;
        if (this.f62458a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != mixedVerifyFragmentArgs.f62458a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        return getPurpose() == null ? mixedVerifyFragmentArgs.getPurpose() == null : getPurpose().equals(mixedVerifyFragmentArgs.getPurpose());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62458a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return 31 + (getPurpose() != null ? getPurpose().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62458a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62458a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62458a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62458a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "MixedVerifyFragmentArgs{purpose=" + getPurpose() + "}";
    }

    public MixedVerifyFragmentArgs() {
        this.f62458a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62459a;

        public Builder(@NonNull MixedVerifyFragmentArgs mixedVerifyFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62459a = hashMap;
            hashMap.putAll(mixedVerifyFragmentArgs.f62458a);
        }

        @NonNull
        public MixedVerifyFragmentArgs build() {
            return new MixedVerifyFragmentArgs(this.f62459a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62459a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62459a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62459a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public MixedVerifyFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62458a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

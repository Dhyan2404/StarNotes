package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class UnbindPhoneFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62484a;

    @NonNull
    public static UnbindPhoneFragmentArgs fromBundle(@NonNull Bundle bundle) {
        UnbindPhoneFragmentArgs unbindPhoneFragmentArgs = new UnbindPhoneFragmentArgs();
        bundle.setClassLoader(UnbindPhoneFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        unbindPhoneFragmentArgs.f62484a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        return unbindPhoneFragmentArgs;
    }

    @NonNull
    public static UnbindPhoneFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        UnbindPhoneFragmentArgs unbindPhoneFragmentArgs = new UnbindPhoneFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        unbindPhoneFragmentArgs.f62484a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        return unbindPhoneFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UnbindPhoneFragmentArgs unbindPhoneFragmentArgs = (UnbindPhoneFragmentArgs) obj;
        if (this.f62484a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != unbindPhoneFragmentArgs.f62484a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        return getPurpose() == null ? unbindPhoneFragmentArgs.getPurpose() == null : getPurpose().equals(unbindPhoneFragmentArgs.getPurpose());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62484a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return 31 + (getPurpose() != null ? getPurpose().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62484a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62484a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62484a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62484a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "UnbindPhoneFragmentArgs{purpose=" + getPurpose() + "}";
    }

    public UnbindPhoneFragmentArgs() {
        this.f62484a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62485a;

        public Builder(@NonNull UnbindPhoneFragmentArgs unbindPhoneFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62485a = hashMap;
            hashMap.putAll(unbindPhoneFragmentArgs.f62484a);
        }

        @NonNull
        public UnbindPhoneFragmentArgs build() {
            return new UnbindPhoneFragmentArgs(this.f62485a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62485a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62485a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62485a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public UnbindPhoneFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62484a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

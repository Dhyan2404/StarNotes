package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class UnbindEmailFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62477a;

    @NonNull
    public static UnbindEmailFragmentArgs fromBundle(@NonNull Bundle bundle) {
        UnbindEmailFragmentArgs unbindEmailFragmentArgs = new UnbindEmailFragmentArgs();
        bundle.setClassLoader(UnbindEmailFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        unbindEmailFragmentArgs.f62477a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        return unbindEmailFragmentArgs;
    }

    @NonNull
    public static UnbindEmailFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        UnbindEmailFragmentArgs unbindEmailFragmentArgs = new UnbindEmailFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        unbindEmailFragmentArgs.f62477a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        return unbindEmailFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UnbindEmailFragmentArgs unbindEmailFragmentArgs = (UnbindEmailFragmentArgs) obj;
        if (this.f62477a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != unbindEmailFragmentArgs.f62477a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        return getPurpose() == null ? unbindEmailFragmentArgs.getPurpose() == null : getPurpose().equals(unbindEmailFragmentArgs.getPurpose());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62477a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return 31 + (getPurpose() != null ? getPurpose().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62477a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62477a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62477a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62477a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "UnbindEmailFragmentArgs{purpose=" + getPurpose() + "}";
    }

    public UnbindEmailFragmentArgs() {
        this.f62477a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62478a;

        public Builder(@NonNull UnbindEmailFragmentArgs unbindEmailFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62478a = hashMap;
            hashMap.putAll(unbindEmailFragmentArgs.f62477a);
        }

        @NonNull
        public UnbindEmailFragmentArgs build() {
            return new UnbindEmailFragmentArgs(this.f62478a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62478a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62478a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62478a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public UnbindEmailFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62477a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

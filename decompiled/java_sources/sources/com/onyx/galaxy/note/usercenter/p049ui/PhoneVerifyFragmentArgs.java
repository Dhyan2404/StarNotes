package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class PhoneVerifyFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62470a;

    @NonNull
    public static PhoneVerifyFragmentArgs fromBundle(@NonNull Bundle bundle) {
        PhoneVerifyFragmentArgs phoneVerifyFragmentArgs = new PhoneVerifyFragmentArgs();
        bundle.setClassLoader(PhoneVerifyFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        phoneVerifyFragmentArgs.f62470a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        return phoneVerifyFragmentArgs;
    }

    @NonNull
    public static PhoneVerifyFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        PhoneVerifyFragmentArgs phoneVerifyFragmentArgs = new PhoneVerifyFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        phoneVerifyFragmentArgs.f62470a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        return phoneVerifyFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PhoneVerifyFragmentArgs phoneVerifyFragmentArgs = (PhoneVerifyFragmentArgs) obj;
        if (this.f62470a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != phoneVerifyFragmentArgs.f62470a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        return getPurpose() == null ? phoneVerifyFragmentArgs.getPurpose() == null : getPurpose().equals(phoneVerifyFragmentArgs.getPurpose());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62470a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return 31 + (getPurpose() != null ? getPurpose().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62470a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62470a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62470a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62470a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "PhoneVerifyFragmentArgs{purpose=" + getPurpose() + "}";
    }

    public PhoneVerifyFragmentArgs() {
        this.f62470a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62471a;

        public Builder(@NonNull PhoneVerifyFragmentArgs phoneVerifyFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62471a = hashMap;
            hashMap.putAll(phoneVerifyFragmentArgs.f62470a);
        }

        @NonNull
        public PhoneVerifyFragmentArgs build() {
            return new PhoneVerifyFragmentArgs(this.f62471a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62471a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62471a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62471a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public PhoneVerifyFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62470a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

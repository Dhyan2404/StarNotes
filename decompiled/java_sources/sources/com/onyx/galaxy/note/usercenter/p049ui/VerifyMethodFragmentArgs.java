package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class VerifyMethodFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62499a;

    @NonNull
    public static VerifyMethodFragmentArgs fromBundle(@NonNull Bundle bundle) {
        VerifyMethodFragmentArgs verifyMethodFragmentArgs = new VerifyMethodFragmentArgs();
        bundle.setClassLoader(VerifyMethodFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        verifyMethodFragmentArgs.f62499a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        return verifyMethodFragmentArgs;
    }

    @NonNull
    public static VerifyMethodFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        VerifyMethodFragmentArgs verifyMethodFragmentArgs = new VerifyMethodFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        verifyMethodFragmentArgs.f62499a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        return verifyMethodFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VerifyMethodFragmentArgs verifyMethodFragmentArgs = (VerifyMethodFragmentArgs) obj;
        if (this.f62499a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != verifyMethodFragmentArgs.f62499a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        return getPurpose() == null ? verifyMethodFragmentArgs.getPurpose() == null : getPurpose().equals(verifyMethodFragmentArgs.getPurpose());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62499a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return 31 + (getPurpose() != null ? getPurpose().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62499a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62499a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62499a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62499a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "VerifyMethodFragmentArgs{purpose=" + getPurpose() + "}";
    }

    public VerifyMethodFragmentArgs() {
        this.f62499a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62500a;

        public Builder(@NonNull VerifyMethodFragmentArgs verifyMethodFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62500a = hashMap;
            hashMap.putAll(verifyMethodFragmentArgs.f62499a);
        }

        @NonNull
        public VerifyMethodFragmentArgs build() {
            return new VerifyMethodFragmentArgs(this.f62500a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62500a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62500a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62500a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public VerifyMethodFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62499a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

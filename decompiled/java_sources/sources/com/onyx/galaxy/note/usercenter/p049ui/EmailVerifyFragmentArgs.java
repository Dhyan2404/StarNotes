package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class EmailVerifyFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62393a;

    @NonNull
    public static EmailVerifyFragmentArgs fromBundle(@NonNull Bundle bundle) {
        EmailVerifyFragmentArgs emailVerifyFragmentArgs = new EmailVerifyFragmentArgs();
        bundle.setClassLoader(EmailVerifyFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        emailVerifyFragmentArgs.f62393a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        return emailVerifyFragmentArgs;
    }

    @NonNull
    public static EmailVerifyFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        EmailVerifyFragmentArgs emailVerifyFragmentArgs = new EmailVerifyFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        emailVerifyFragmentArgs.f62393a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        return emailVerifyFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EmailVerifyFragmentArgs emailVerifyFragmentArgs = (EmailVerifyFragmentArgs) obj;
        if (this.f62393a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != emailVerifyFragmentArgs.f62393a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        return getPurpose() == null ? emailVerifyFragmentArgs.getPurpose() == null : getPurpose().equals(emailVerifyFragmentArgs.getPurpose());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62393a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return 31 + (getPurpose() != null ? getPurpose().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62393a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62393a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62393a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62393a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "EmailVerifyFragmentArgs{purpose=" + getPurpose() + "}";
    }

    public EmailVerifyFragmentArgs() {
        this.f62393a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62394a;

        public Builder(@NonNull EmailVerifyFragmentArgs emailVerifyFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62394a = hashMap;
            hashMap.putAll(emailVerifyFragmentArgs.f62393a);
        }

        @NonNull
        public EmailVerifyFragmentArgs build() {
            return new EmailVerifyFragmentArgs(this.f62394a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62394a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62394a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62394a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public EmailVerifyFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62393a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

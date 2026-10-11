package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class PasswordResetFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62464a;

    @NonNull
    public static PasswordResetFragmentArgs fromBundle(@NonNull Bundle bundle) {
        PasswordResetFragmentArgs passwordResetFragmentArgs = new PasswordResetFragmentArgs();
        bundle.setClassLoader(PasswordResetFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        if (!bundle.containsKey("socialAccount")) {
            throw new IllegalArgumentException("Required argument \"socialAccount\" is missing and does not have an android:defaultValue");
        }
        String string2 = bundle.getString("socialAccount");
        if (string2 == null) {
            throw new IllegalArgumentException("Argument \"socialAccount\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put("socialAccount", string2);
        if (!bundle.containsKey("verifyCode")) {
            throw new IllegalArgumentException("Required argument \"verifyCode\" is missing and does not have an android:defaultValue");
        }
        String string3 = bundle.getString("verifyCode");
        if (string3 == null) {
            throw new IllegalArgumentException("Argument \"verifyCode\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put("verifyCode", string3);
        if (!bundle.containsKey("token")) {
            throw new IllegalArgumentException("Required argument \"token\" is missing and does not have an android:defaultValue");
        }
        String string4 = bundle.getString("token");
        if (string4 == null) {
            throw new IllegalArgumentException("Argument \"token\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put("token", string4);
        return passwordResetFragmentArgs;
    }

    @NonNull
    public static PasswordResetFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        PasswordResetFragmentArgs passwordResetFragmentArgs = new PasswordResetFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        if (!savedStateHandle.contains("socialAccount")) {
            throw new IllegalArgumentException("Required argument \"socialAccount\" is missing and does not have an android:defaultValue");
        }
        String str2 = (String) savedStateHandle.get("socialAccount");
        if (str2 == null) {
            throw new IllegalArgumentException("Argument \"socialAccount\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put("socialAccount", str2);
        if (!savedStateHandle.contains("verifyCode")) {
            throw new IllegalArgumentException("Required argument \"verifyCode\" is missing and does not have an android:defaultValue");
        }
        String str3 = (String) savedStateHandle.get("verifyCode");
        if (str3 == null) {
            throw new IllegalArgumentException("Argument \"verifyCode\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put("verifyCode", str3);
        if (!savedStateHandle.contains("token")) {
            throw new IllegalArgumentException("Required argument \"token\" is missing and does not have an android:defaultValue");
        }
        String str4 = (String) savedStateHandle.get("token");
        if (str4 == null) {
            throw new IllegalArgumentException("Argument \"token\" is marked as non-null but was passed a null value.");
        }
        passwordResetFragmentArgs.f62464a.put("token", str4);
        return passwordResetFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PasswordResetFragmentArgs passwordResetFragmentArgs = (PasswordResetFragmentArgs) obj;
        if (this.f62464a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != passwordResetFragmentArgs.f62464a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        if (getPurpose() == null ? passwordResetFragmentArgs.getPurpose() != null : !getPurpose().equals(passwordResetFragmentArgs.getPurpose())) {
            return false;
        }
        if (this.f62464a.containsKey("socialAccount") != passwordResetFragmentArgs.f62464a.containsKey("socialAccount")) {
            return false;
        }
        if (getSocialAccount() == null ? passwordResetFragmentArgs.getSocialAccount() != null : !getSocialAccount().equals(passwordResetFragmentArgs.getSocialAccount())) {
            return false;
        }
        if (this.f62464a.containsKey("verifyCode") != passwordResetFragmentArgs.f62464a.containsKey("verifyCode")) {
            return false;
        }
        if (getVerifyCode() == null ? passwordResetFragmentArgs.getVerifyCode() != null : !getVerifyCode().equals(passwordResetFragmentArgs.getVerifyCode())) {
            return false;
        }
        if (this.f62464a.containsKey("token") != passwordResetFragmentArgs.f62464a.containsKey("token")) {
            return false;
        }
        return getToken() == null ? passwordResetFragmentArgs.getToken() == null : getToken().equals(passwordResetFragmentArgs.getToken());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62464a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    @NonNull
    public String getSocialAccount() {
        return (String) this.f62464a.get("socialAccount");
    }

    @NonNull
    public String getToken() {
        return (String) this.f62464a.get("token");
    }

    @NonNull
    public String getVerifyCode() {
        return (String) this.f62464a.get("verifyCode");
    }

    public int hashCode() {
        return (((((((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + (getSocialAccount() != null ? getSocialAccount().hashCode() : 0)) * 31) + (getVerifyCode() != null ? getVerifyCode().hashCode() : 0)) * 31) + (getToken() != null ? getToken().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62464a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62464a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        if (this.f62464a.containsKey("socialAccount")) {
            bundle.putString("socialAccount", (String) this.f62464a.get("socialAccount"));
        }
        if (this.f62464a.containsKey("verifyCode")) {
            bundle.putString("verifyCode", (String) this.f62464a.get("verifyCode"));
        }
        if (this.f62464a.containsKey("token")) {
            bundle.putString("token", (String) this.f62464a.get("token"));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62464a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62464a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        if (this.f62464a.containsKey("socialAccount")) {
            savedStateHandle.set("socialAccount", (String) this.f62464a.get("socialAccount"));
        }
        if (this.f62464a.containsKey("verifyCode")) {
            savedStateHandle.set("verifyCode", (String) this.f62464a.get("verifyCode"));
        }
        if (this.f62464a.containsKey("token")) {
            savedStateHandle.set("token", (String) this.f62464a.get("token"));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "PasswordResetFragmentArgs{purpose=" + getPurpose() + ", socialAccount=" + getSocialAccount() + ", verifyCode=" + getVerifyCode() + ", token=" + getToken() + "}";
    }

    public PasswordResetFragmentArgs() {
        this.f62464a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62465a;

        public Builder(@NonNull PasswordResetFragmentArgs passwordResetFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62465a = hashMap;
            hashMap.putAll(passwordResetFragmentArgs.f62464a);
        }

        @NonNull
        public PasswordResetFragmentArgs build() {
            return new PasswordResetFragmentArgs(this.f62465a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62465a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public String getSocialAccount() {
            return (String) this.f62465a.get("socialAccount");
        }

        @NonNull
        public String getToken() {
            return (String) this.f62465a.get("token");
        }

        @NonNull
        public String getVerifyCode() {
            return (String) this.f62465a.get("verifyCode");
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62465a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        @NonNull
        public Builder setSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"socialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62465a.put("socialAccount", str);
            return this;
        }

        @NonNull
        public Builder setToken(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"token\" is marked as non-null but was passed a null value.");
            }
            this.f62465a.put("token", str);
            return this;
        }

        @NonNull
        public Builder setVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"verifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62465a.put("verifyCode", str);
            return this;
        }

        public Builder(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
            HashMap hashMap = new HashMap();
            this.f62465a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                if (str2 != null) {
                    hashMap.put("socialAccount", str2);
                    if (str3 != null) {
                        hashMap.put("verifyCode", str3);
                        if (str4 != null) {
                            hashMap.put("token", str4);
                            return;
                        }
                        throw new IllegalArgumentException("Argument \"token\" is marked as non-null but was passed a null value.");
                    }
                    throw new IllegalArgumentException("Argument \"verifyCode\" is marked as non-null but was passed a null value.");
                }
                throw new IllegalArgumentException("Argument \"socialAccount\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public PasswordResetFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62464a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

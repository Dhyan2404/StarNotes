package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class BindPhoneFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62387a;

    @NonNull
    public static BindPhoneFragmentArgs fromBundle(@NonNull Bundle bundle) {
        BindPhoneFragmentArgs bindPhoneFragmentArgs = new BindPhoneFragmentArgs();
        bundle.setClassLoader(BindPhoneFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        bindPhoneFragmentArgs.f62387a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        if (bundle.containsKey("oldSocialAccount")) {
            String string2 = bundle.getString("oldSocialAccount");
            if (string2 == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            bindPhoneFragmentArgs.f62387a.put("oldSocialAccount", string2);
        } else {
            bindPhoneFragmentArgs.f62387a.put("oldSocialAccount", "");
        }
        if (bundle.containsKey("oldVerifyCode")) {
            String string3 = bundle.getString("oldVerifyCode");
            if (string3 == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            bindPhoneFragmentArgs.f62387a.put("oldVerifyCode", string3);
        } else {
            bindPhoneFragmentArgs.f62387a.put("oldVerifyCode", "");
        }
        return bindPhoneFragmentArgs;
    }

    @NonNull
    public static BindPhoneFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        BindPhoneFragmentArgs bindPhoneFragmentArgs = new BindPhoneFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        bindPhoneFragmentArgs.f62387a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        if (savedStateHandle.contains("oldSocialAccount")) {
            String str2 = (String) savedStateHandle.get("oldSocialAccount");
            if (str2 == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            bindPhoneFragmentArgs.f62387a.put("oldSocialAccount", str2);
        } else {
            bindPhoneFragmentArgs.f62387a.put("oldSocialAccount", "");
        }
        if (savedStateHandle.contains("oldVerifyCode")) {
            String str3 = (String) savedStateHandle.get("oldVerifyCode");
            if (str3 == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            bindPhoneFragmentArgs.f62387a.put("oldVerifyCode", str3);
        } else {
            bindPhoneFragmentArgs.f62387a.put("oldVerifyCode", "");
        }
        return bindPhoneFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BindPhoneFragmentArgs bindPhoneFragmentArgs = (BindPhoneFragmentArgs) obj;
        if (this.f62387a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != bindPhoneFragmentArgs.f62387a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        if (getPurpose() == null ? bindPhoneFragmentArgs.getPurpose() != null : !getPurpose().equals(bindPhoneFragmentArgs.getPurpose())) {
            return false;
        }
        if (this.f62387a.containsKey("oldSocialAccount") != bindPhoneFragmentArgs.f62387a.containsKey("oldSocialAccount")) {
            return false;
        }
        if (getOldSocialAccount() == null ? bindPhoneFragmentArgs.getOldSocialAccount() != null : !getOldSocialAccount().equals(bindPhoneFragmentArgs.getOldSocialAccount())) {
            return false;
        }
        if (this.f62387a.containsKey("oldVerifyCode") != bindPhoneFragmentArgs.f62387a.containsKey("oldVerifyCode")) {
            return false;
        }
        return getOldVerifyCode() == null ? bindPhoneFragmentArgs.getOldVerifyCode() == null : getOldVerifyCode().equals(bindPhoneFragmentArgs.getOldVerifyCode());
    }

    @NonNull
    public String getOldSocialAccount() {
        return (String) this.f62387a.get("oldSocialAccount");
    }

    @NonNull
    public String getOldVerifyCode() {
        return (String) this.f62387a.get("oldVerifyCode");
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62387a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return (((((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + (getOldSocialAccount() != null ? getOldSocialAccount().hashCode() : 0)) * 31) + (getOldVerifyCode() != null ? getOldVerifyCode().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62387a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62387a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        if (this.f62387a.containsKey("oldSocialAccount")) {
            bundle.putString("oldSocialAccount", (String) this.f62387a.get("oldSocialAccount"));
        } else {
            bundle.putString("oldSocialAccount", "");
        }
        if (this.f62387a.containsKey("oldVerifyCode")) {
            bundle.putString("oldVerifyCode", (String) this.f62387a.get("oldVerifyCode"));
        } else {
            bundle.putString("oldVerifyCode", "");
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62387a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62387a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        if (this.f62387a.containsKey("oldSocialAccount")) {
            savedStateHandle.set("oldSocialAccount", (String) this.f62387a.get("oldSocialAccount"));
        } else {
            savedStateHandle.set("oldSocialAccount", "");
        }
        if (this.f62387a.containsKey("oldVerifyCode")) {
            savedStateHandle.set("oldVerifyCode", (String) this.f62387a.get("oldVerifyCode"));
        } else {
            savedStateHandle.set("oldVerifyCode", "");
        }
        return savedStateHandle;
    }

    public String toString() {
        return "BindPhoneFragmentArgs{purpose=" + getPurpose() + ", oldSocialAccount=" + getOldSocialAccount() + ", oldVerifyCode=" + getOldVerifyCode() + "}";
    }

    public BindPhoneFragmentArgs() {
        this.f62387a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62388a;

        public Builder(@NonNull BindPhoneFragmentArgs bindPhoneFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62388a = hashMap;
            hashMap.putAll(bindPhoneFragmentArgs.f62387a);
        }

        @NonNull
        public BindPhoneFragmentArgs build() {
            return new BindPhoneFragmentArgs(this.f62388a);
        }

        @NonNull
        public String getOldSocialAccount() {
            return (String) this.f62388a.get("oldSocialAccount");
        }

        @NonNull
        public String getOldVerifyCode() {
            return (String) this.f62388a.get("oldVerifyCode");
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62388a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setOldSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62388a.put("oldSocialAccount", str);
            return this;
        }

        @NonNull
        public Builder setOldVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62388a.put("oldVerifyCode", str);
            return this;
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62388a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62388a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public BindPhoneFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62387a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class BindEmailFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62379a;

    @NonNull
    public static BindEmailFragmentArgs fromBundle(@NonNull Bundle bundle) {
        BindEmailFragmentArgs bindEmailFragmentArgs = new BindEmailFragmentArgs();
        bundle.setClassLoader(BindEmailFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        bindEmailFragmentArgs.f62379a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        if (bundle.containsKey("oldSocialAccount")) {
            String string2 = bundle.getString("oldSocialAccount");
            if (string2 == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            bindEmailFragmentArgs.f62379a.put("oldSocialAccount", string2);
        } else {
            bindEmailFragmentArgs.f62379a.put("oldSocialAccount", "");
        }
        if (bundle.containsKey("oldVerifyCode")) {
            String string3 = bundle.getString("oldVerifyCode");
            if (string3 == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            bindEmailFragmentArgs.f62379a.put("oldVerifyCode", string3);
        } else {
            bindEmailFragmentArgs.f62379a.put("oldVerifyCode", "");
        }
        return bindEmailFragmentArgs;
    }

    @NonNull
    public static BindEmailFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        BindEmailFragmentArgs bindEmailFragmentArgs = new BindEmailFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        bindEmailFragmentArgs.f62379a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        if (savedStateHandle.contains("oldSocialAccount")) {
            String str2 = (String) savedStateHandle.get("oldSocialAccount");
            if (str2 == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            bindEmailFragmentArgs.f62379a.put("oldSocialAccount", str2);
        } else {
            bindEmailFragmentArgs.f62379a.put("oldSocialAccount", "");
        }
        if (savedStateHandle.contains("oldVerifyCode")) {
            String str3 = (String) savedStateHandle.get("oldVerifyCode");
            if (str3 == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            bindEmailFragmentArgs.f62379a.put("oldVerifyCode", str3);
        } else {
            bindEmailFragmentArgs.f62379a.put("oldVerifyCode", "");
        }
        return bindEmailFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BindEmailFragmentArgs bindEmailFragmentArgs = (BindEmailFragmentArgs) obj;
        if (this.f62379a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != bindEmailFragmentArgs.f62379a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        if (getPurpose() == null ? bindEmailFragmentArgs.getPurpose() != null : !getPurpose().equals(bindEmailFragmentArgs.getPurpose())) {
            return false;
        }
        if (this.f62379a.containsKey("oldSocialAccount") != bindEmailFragmentArgs.f62379a.containsKey("oldSocialAccount")) {
            return false;
        }
        if (getOldSocialAccount() == null ? bindEmailFragmentArgs.getOldSocialAccount() != null : !getOldSocialAccount().equals(bindEmailFragmentArgs.getOldSocialAccount())) {
            return false;
        }
        if (this.f62379a.containsKey("oldVerifyCode") != bindEmailFragmentArgs.f62379a.containsKey("oldVerifyCode")) {
            return false;
        }
        return getOldVerifyCode() == null ? bindEmailFragmentArgs.getOldVerifyCode() == null : getOldVerifyCode().equals(bindEmailFragmentArgs.getOldVerifyCode());
    }

    @NonNull
    public String getOldSocialAccount() {
        return (String) this.f62379a.get("oldSocialAccount");
    }

    @NonNull
    public String getOldVerifyCode() {
        return (String) this.f62379a.get("oldVerifyCode");
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62379a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return (((((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + (getOldSocialAccount() != null ? getOldSocialAccount().hashCode() : 0)) * 31) + (getOldVerifyCode() != null ? getOldVerifyCode().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62379a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62379a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        if (this.f62379a.containsKey("oldSocialAccount")) {
            bundle.putString("oldSocialAccount", (String) this.f62379a.get("oldSocialAccount"));
        } else {
            bundle.putString("oldSocialAccount", "");
        }
        if (this.f62379a.containsKey("oldVerifyCode")) {
            bundle.putString("oldVerifyCode", (String) this.f62379a.get("oldVerifyCode"));
        } else {
            bundle.putString("oldVerifyCode", "");
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62379a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62379a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        if (this.f62379a.containsKey("oldSocialAccount")) {
            savedStateHandle.set("oldSocialAccount", (String) this.f62379a.get("oldSocialAccount"));
        } else {
            savedStateHandle.set("oldSocialAccount", "");
        }
        if (this.f62379a.containsKey("oldVerifyCode")) {
            savedStateHandle.set("oldVerifyCode", (String) this.f62379a.get("oldVerifyCode"));
        } else {
            savedStateHandle.set("oldVerifyCode", "");
        }
        return savedStateHandle;
    }

    public String toString() {
        return "BindEmailFragmentArgs{purpose=" + getPurpose() + ", oldSocialAccount=" + getOldSocialAccount() + ", oldVerifyCode=" + getOldVerifyCode() + "}";
    }

    public BindEmailFragmentArgs() {
        this.f62379a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62380a;

        public Builder(@NonNull BindEmailFragmentArgs bindEmailFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62380a = hashMap;
            hashMap.putAll(bindEmailFragmentArgs.f62379a);
        }

        @NonNull
        public BindEmailFragmentArgs build() {
            return new BindEmailFragmentArgs(this.f62380a);
        }

        @NonNull
        public String getOldSocialAccount() {
            return (String) this.f62380a.get("oldSocialAccount");
        }

        @NonNull
        public String getOldVerifyCode() {
            return (String) this.f62380a.get("oldVerifyCode");
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62380a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setOldSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62380a.put("oldSocialAccount", str);
            return this;
        }

        @NonNull
        public Builder setOldVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62380a.put("oldVerifyCode", str);
            return this;
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62380a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62380a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public BindEmailFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62379a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

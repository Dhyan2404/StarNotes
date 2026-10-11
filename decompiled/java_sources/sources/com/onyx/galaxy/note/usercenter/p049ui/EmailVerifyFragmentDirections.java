package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class EmailVerifyFragmentDirections {

    /* loaded from: classes9.dex */
    public static class EmailVerifyToPasswordReset implements NavDirections {

        /* renamed from: a */
        public final HashMap f62395a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            EmailVerifyToPasswordReset emailVerifyToPasswordReset = (EmailVerifyToPasswordReset) obj;
            if (this.f62395a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != emailVerifyToPasswordReset.f62395a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? emailVerifyToPasswordReset.getPurpose() != null : !getPurpose().equals(emailVerifyToPasswordReset.getPurpose())) {
                return false;
            }
            if (this.f62395a.containsKey("socialAccount") != emailVerifyToPasswordReset.f62395a.containsKey("socialAccount")) {
                return false;
            }
            if (getSocialAccount() == null ? emailVerifyToPasswordReset.getSocialAccount() != null : !getSocialAccount().equals(emailVerifyToPasswordReset.getSocialAccount())) {
                return false;
            }
            if (this.f62395a.containsKey("verifyCode") != emailVerifyToPasswordReset.f62395a.containsKey("verifyCode")) {
                return false;
            }
            if (getVerifyCode() == null ? emailVerifyToPasswordReset.getVerifyCode() != null : !getVerifyCode().equals(emailVerifyToPasswordReset.getVerifyCode())) {
                return false;
            }
            if (this.f62395a.containsKey("token") != emailVerifyToPasswordReset.f62395a.containsKey("token")) {
                return false;
            }
            if (getToken() == null ? emailVerifyToPasswordReset.getToken() == null : getToken().equals(emailVerifyToPasswordReset.getToken())) {
                return getActionId() == emailVerifyToPasswordReset.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.email_verify_to_password_reset;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62395a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62395a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            if (this.f62395a.containsKey("socialAccount")) {
                bundle.putString("socialAccount", (String) this.f62395a.get("socialAccount"));
            }
            if (this.f62395a.containsKey("verifyCode")) {
                bundle.putString("verifyCode", (String) this.f62395a.get("verifyCode"));
            }
            if (this.f62395a.containsKey("token")) {
                bundle.putString("token", (String) this.f62395a.get("token"));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62395a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public String getSocialAccount() {
            return (String) this.f62395a.get("socialAccount");
        }

        @NonNull
        public String getToken() {
            return (String) this.f62395a.get("token");
        }

        @NonNull
        public String getVerifyCode() {
            return (String) this.f62395a.get("verifyCode");
        }

        public int hashCode() {
            return (((((((((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + (getSocialAccount() != null ? getSocialAccount().hashCode() : 0)) * 31) + (getVerifyCode() != null ? getVerifyCode().hashCode() : 0)) * 31) + (getToken() != null ? getToken().hashCode() : 0)) * 31) + getActionId();
        }

        @NonNull
        public EmailVerifyToPasswordReset setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62395a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        @NonNull
        public EmailVerifyToPasswordReset setSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"socialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62395a.put("socialAccount", str);
            return this;
        }

        @NonNull
        public EmailVerifyToPasswordReset setToken(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"token\" is marked as non-null but was passed a null value.");
            }
            this.f62395a.put("token", str);
            return this;
        }

        @NonNull
        public EmailVerifyToPasswordReset setVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"verifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62395a.put("verifyCode", str);
            return this;
        }

        public String toString() {
            return "EmailVerifyToPasswordReset(actionId=" + getActionId() + "){purpose=" + getPurpose() + ", socialAccount=" + getSocialAccount() + ", verifyCode=" + getVerifyCode() + ", token=" + getToken() + "}";
        }

        public EmailVerifyToPasswordReset(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
            HashMap hashMap = new HashMap();
            this.f62395a = hashMap;
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

    @NonNull
    public static EmailVerifyToPasswordReset emailVerifyToPasswordReset(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
        return new EmailVerifyToPasswordReset(str, str2, str3, str4);
    }
}

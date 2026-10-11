package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class MixedVerifyFragmentDirections {

    /* loaded from: classes9.dex */
    public static class MixedVerifyToPasswordReset implements NavDirections {

        /* renamed from: a */
        public final HashMap f62460a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            MixedVerifyToPasswordReset mixedVerifyToPasswordReset = (MixedVerifyToPasswordReset) obj;
            if (this.f62460a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != mixedVerifyToPasswordReset.f62460a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? mixedVerifyToPasswordReset.getPurpose() != null : !getPurpose().equals(mixedVerifyToPasswordReset.getPurpose())) {
                return false;
            }
            if (this.f62460a.containsKey("socialAccount") != mixedVerifyToPasswordReset.f62460a.containsKey("socialAccount")) {
                return false;
            }
            if (getSocialAccount() == null ? mixedVerifyToPasswordReset.getSocialAccount() != null : !getSocialAccount().equals(mixedVerifyToPasswordReset.getSocialAccount())) {
                return false;
            }
            if (this.f62460a.containsKey("verifyCode") != mixedVerifyToPasswordReset.f62460a.containsKey("verifyCode")) {
                return false;
            }
            if (getVerifyCode() == null ? mixedVerifyToPasswordReset.getVerifyCode() != null : !getVerifyCode().equals(mixedVerifyToPasswordReset.getVerifyCode())) {
                return false;
            }
            if (this.f62460a.containsKey("token") != mixedVerifyToPasswordReset.f62460a.containsKey("token")) {
                return false;
            }
            if (getToken() == null ? mixedVerifyToPasswordReset.getToken() == null : getToken().equals(mixedVerifyToPasswordReset.getToken())) {
                return getActionId() == mixedVerifyToPasswordReset.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.mixed_verify_to_password_reset;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        /* renamed from: getArguments */
        public Bundle getAndroidx.fragment.app.e.m java.lang.String() {
            Bundle bundle = new Bundle();
            if (this.f62460a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62460a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            if (this.f62460a.containsKey("socialAccount")) {
                bundle.putString("socialAccount", (String) this.f62460a.get("socialAccount"));
            }
            if (this.f62460a.containsKey("verifyCode")) {
                bundle.putString("verifyCode", (String) this.f62460a.get("verifyCode"));
            }
            if (this.f62460a.containsKey("token")) {
                bundle.putString("token", (String) this.f62460a.get("token"));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62460a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public String getSocialAccount() {
            return (String) this.f62460a.get("socialAccount");
        }

        @NonNull
        public String getToken() {
            return (String) this.f62460a.get("token");
        }

        @NonNull
        public String getVerifyCode() {
            return (String) this.f62460a.get("verifyCode");
        }

        public int hashCode() {
            return (((((((((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + (getSocialAccount() != null ? getSocialAccount().hashCode() : 0)) * 31) + (getVerifyCode() != null ? getVerifyCode().hashCode() : 0)) * 31) + (getToken() != null ? getToken().hashCode() : 0)) * 31) + getActionId();
        }

        @NonNull
        public MixedVerifyToPasswordReset setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62460a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        @NonNull
        public MixedVerifyToPasswordReset setSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"socialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62460a.put("socialAccount", str);
            return this;
        }

        @NonNull
        public MixedVerifyToPasswordReset setToken(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"token\" is marked as non-null but was passed a null value.");
            }
            this.f62460a.put("token", str);
            return this;
        }

        @NonNull
        public MixedVerifyToPasswordReset setVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"verifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62460a.put("verifyCode", str);
            return this;
        }

        public String toString() {
            return "MixedVerifyToPasswordReset(actionId=" + getActionId() + "){purpose=" + getPurpose() + ", socialAccount=" + getSocialAccount() + ", verifyCode=" + getVerifyCode() + ", token=" + getToken() + "}";
        }

        public MixedVerifyToPasswordReset(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
            HashMap hashMap = new HashMap();
            this.f62460a = hashMap;
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
    public static NavDirections mixedVerifyToAccountCenter() {
        return new ActionOnlyNavDirections(C10651R.id.mixed_verify_to_account_center);
    }

    @NonNull
    public static MixedVerifyToPasswordReset mixedVerifyToPasswordReset(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
        return new MixedVerifyToPasswordReset(str, str2, str3, str4);
    }
}

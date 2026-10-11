package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class UnbindEmailFragmentDirections {

    /* loaded from: classes9.dex */
    public static class UnbindEmailToBindEmail implements NavDirections {

        /* renamed from: a */
        public final HashMap f62479a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            UnbindEmailToBindEmail unbindEmailToBindEmail = (UnbindEmailToBindEmail) obj;
            if (this.f62479a.containsKey("oldSocialAccount") != unbindEmailToBindEmail.f62479a.containsKey("oldSocialAccount")) {
                return false;
            }
            if (getOldSocialAccount() == null ? unbindEmailToBindEmail.getOldSocialAccount() != null : !getOldSocialAccount().equals(unbindEmailToBindEmail.getOldSocialAccount())) {
                return false;
            }
            if (this.f62479a.containsKey("oldVerifyCode") != unbindEmailToBindEmail.f62479a.containsKey("oldVerifyCode")) {
                return false;
            }
            if (getOldVerifyCode() == null ? unbindEmailToBindEmail.getOldVerifyCode() != null : !getOldVerifyCode().equals(unbindEmailToBindEmail.getOldVerifyCode())) {
                return false;
            }
            if (this.f62479a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != unbindEmailToBindEmail.f62479a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? unbindEmailToBindEmail.getPurpose() == null : getPurpose().equals(unbindEmailToBindEmail.getPurpose())) {
                return getActionId() == unbindEmailToBindEmail.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.unbind_email_to_bind_email;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62479a.containsKey("oldSocialAccount")) {
                bundle.putString("oldSocialAccount", (String) this.f62479a.get("oldSocialAccount"));
            }
            if (this.f62479a.containsKey("oldVerifyCode")) {
                bundle.putString("oldVerifyCode", (String) this.f62479a.get("oldVerifyCode"));
            }
            if (this.f62479a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62479a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getOldSocialAccount() {
            return (String) this.f62479a.get("oldSocialAccount");
        }

        @NonNull
        public String getOldVerifyCode() {
            return (String) this.f62479a.get("oldVerifyCode");
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62479a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((((((getOldSocialAccount() != null ? getOldSocialAccount().hashCode() : 0) + 31) * 31) + (getOldVerifyCode() != null ? getOldVerifyCode().hashCode() : 0)) * 31) + (getPurpose() != null ? getPurpose().hashCode() : 0)) * 31) + getActionId();
        }

        @NonNull
        public UnbindEmailToBindEmail setOldSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62479a.put("oldSocialAccount", str);
            return this;
        }

        @NonNull
        public UnbindEmailToBindEmail setOldVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62479a.put("oldVerifyCode", str);
            return this;
        }

        @NonNull
        public UnbindEmailToBindEmail setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62479a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "UnbindEmailToBindEmail(actionId=" + getActionId() + "){oldSocialAccount=" + getOldSocialAccount() + ", oldVerifyCode=" + getOldVerifyCode() + ", purpose=" + getPurpose() + "}";
        }

        public UnbindEmailToBindEmail(@NonNull String str, @NonNull String str2, @NonNull String str3) {
            HashMap hashMap = new HashMap();
            this.f62479a = hashMap;
            if (str != null) {
                hashMap.put("oldSocialAccount", str);
                if (str2 != null) {
                    hashMap.put("oldVerifyCode", str2);
                    if (str3 != null) {
                        hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str3);
                        return;
                    }
                    throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
                }
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
        }
    }

    @NonNull
    public static UnbindEmailToBindEmail unbindEmailToBindEmail(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        return new UnbindEmailToBindEmail(str, str2, str3);
    }
}

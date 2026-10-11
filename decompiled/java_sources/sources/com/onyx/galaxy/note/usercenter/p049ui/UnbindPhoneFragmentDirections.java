package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class UnbindPhoneFragmentDirections {

    /* loaded from: classes9.dex */
    public static class UnbindPhoneToBindPhone implements NavDirections {

        /* renamed from: a */
        public final HashMap f62486a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            UnbindPhoneToBindPhone unbindPhoneToBindPhone = (UnbindPhoneToBindPhone) obj;
            if (this.f62486a.containsKey("oldSocialAccount") != unbindPhoneToBindPhone.f62486a.containsKey("oldSocialAccount")) {
                return false;
            }
            if (getOldSocialAccount() == null ? unbindPhoneToBindPhone.getOldSocialAccount() != null : !getOldSocialAccount().equals(unbindPhoneToBindPhone.getOldSocialAccount())) {
                return false;
            }
            if (this.f62486a.containsKey("oldVerifyCode") != unbindPhoneToBindPhone.f62486a.containsKey("oldVerifyCode")) {
                return false;
            }
            if (getOldVerifyCode() == null ? unbindPhoneToBindPhone.getOldVerifyCode() != null : !getOldVerifyCode().equals(unbindPhoneToBindPhone.getOldVerifyCode())) {
                return false;
            }
            if (this.f62486a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != unbindPhoneToBindPhone.f62486a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? unbindPhoneToBindPhone.getPurpose() == null : getPurpose().equals(unbindPhoneToBindPhone.getPurpose())) {
                return getActionId() == unbindPhoneToBindPhone.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.unbind_phone_to_bind_phone;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62486a.containsKey("oldSocialAccount")) {
                bundle.putString("oldSocialAccount", (String) this.f62486a.get("oldSocialAccount"));
            }
            if (this.f62486a.containsKey("oldVerifyCode")) {
                bundle.putString("oldVerifyCode", (String) this.f62486a.get("oldVerifyCode"));
            }
            if (this.f62486a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62486a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getOldSocialAccount() {
            return (String) this.f62486a.get("oldSocialAccount");
        }

        @NonNull
        public String getOldVerifyCode() {
            return (String) this.f62486a.get("oldVerifyCode");
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62486a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((((((getOldSocialAccount() != null ? getOldSocialAccount().hashCode() : 0) + 31) * 31) + (getOldVerifyCode() != null ? getOldVerifyCode().hashCode() : 0)) * 31) + (getPurpose() != null ? getPurpose().hashCode() : 0)) * 31) + getActionId();
        }

        @NonNull
        public UnbindPhoneToBindPhone setOldSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62486a.put("oldSocialAccount", str);
            return this;
        }

        @NonNull
        public UnbindPhoneToBindPhone setOldVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62486a.put("oldVerifyCode", str);
            return this;
        }

        @NonNull
        public UnbindPhoneToBindPhone setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62486a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "UnbindPhoneToBindPhone(actionId=" + getActionId() + "){oldSocialAccount=" + getOldSocialAccount() + ", oldVerifyCode=" + getOldVerifyCode() + ", purpose=" + getPurpose() + "}";
        }

        public UnbindPhoneToBindPhone(@NonNull String str, @NonNull String str2, @NonNull String str3) {
            HashMap hashMap = new HashMap();
            this.f62486a = hashMap;
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
    public static UnbindPhoneToBindPhone unbindPhoneToBindPhone(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        return new UnbindPhoneToBindPhone(str, str2, str3);
    }
}

package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class VerifyMethodFragmentDirections {

    /* loaded from: classes9.dex */
    public static class VerifyMethodToEmailVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62501a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            VerifyMethodToEmailVerify verifyMethodToEmailVerify = (VerifyMethodToEmailVerify) obj;
            if (this.f62501a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != verifyMethodToEmailVerify.f62501a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? verifyMethodToEmailVerify.getPurpose() == null : getPurpose().equals(verifyMethodToEmailVerify.getPurpose())) {
                return getActionId() == verifyMethodToEmailVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.verify_method_to_email_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62501a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62501a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62501a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public VerifyMethodToEmailVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62501a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "VerifyMethodToEmailVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public VerifyMethodToEmailVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62501a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class VerifyMethodToPhoneVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62502a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            VerifyMethodToPhoneVerify verifyMethodToPhoneVerify = (VerifyMethodToPhoneVerify) obj;
            if (this.f62502a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != verifyMethodToPhoneVerify.f62502a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? verifyMethodToPhoneVerify.getPurpose() == null : getPurpose().equals(verifyMethodToPhoneVerify.getPurpose())) {
                return getActionId() == verifyMethodToPhoneVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.verify_method_to_phone_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62502a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62502a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62502a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public VerifyMethodToPhoneVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62502a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "VerifyMethodToPhoneVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public VerifyMethodToPhoneVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62502a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class VerifyMethodToWechatVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62503a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            VerifyMethodToWechatVerify verifyMethodToWechatVerify = (VerifyMethodToWechatVerify) obj;
            if (this.f62503a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != verifyMethodToWechatVerify.f62503a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? verifyMethodToWechatVerify.getPurpose() == null : getPurpose().equals(verifyMethodToWechatVerify.getPurpose())) {
                return getActionId() == verifyMethodToWechatVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.verify_method_to_wechat_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62503a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62503a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62503a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public VerifyMethodToWechatVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62503a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "VerifyMethodToWechatVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public VerifyMethodToWechatVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62503a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    @NonNull
    public static VerifyMethodToEmailVerify verifyMethodToEmailVerify(@NonNull String str) {
        return new VerifyMethodToEmailVerify(str);
    }

    @NonNull
    public static VerifyMethodToPhoneVerify verifyMethodToPhoneVerify(@NonNull String str) {
        return new VerifyMethodToPhoneVerify(str);
    }

    @NonNull
    public static VerifyMethodToWechatVerify verifyMethodToWechatVerify(@NonNull String str) {
        return new VerifyMethodToWechatVerify(str);
    }
}

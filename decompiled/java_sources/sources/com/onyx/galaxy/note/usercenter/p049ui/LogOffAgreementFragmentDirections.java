package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class LogOffAgreementFragmentDirections {

    /* loaded from: classes9.dex */
    public static class ToMixedVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62435a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ToMixedVerify toMixedVerify = (ToMixedVerify) obj;
            if (this.f62435a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != toMixedVerify.f62435a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? toMixedVerify.getPurpose() == null : getPurpose().equals(toMixedVerify.getPurpose())) {
                return getActionId() == toMixedVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.to_mixed_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        /* renamed from: getArguments */
        public Bundle getAndroidx.fragment.app.e.m java.lang.String() {
            Bundle bundle = new Bundle();
            if (this.f62435a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62435a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62435a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public ToMixedVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62435a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "ToMixedVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public ToMixedVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62435a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class ToWechatVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62436a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ToWechatVerify toWechatVerify = (ToWechatVerify) obj;
            if (this.f62436a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != toWechatVerify.f62436a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? toWechatVerify.getPurpose() == null : getPurpose().equals(toWechatVerify.getPurpose())) {
                return getActionId() == toWechatVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.to_wechat_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        /* renamed from: getArguments */
        public Bundle getAndroidx.fragment.app.e.m java.lang.String() {
            Bundle bundle = new Bundle();
            if (this.f62436a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62436a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62436a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public ToWechatVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62436a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "ToWechatVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public ToWechatVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62436a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    @NonNull
    public static NavDirections toAccountCenter() {
        return new ActionOnlyNavDirections(C10651R.id.to_account_center);
    }

    @NonNull
    public static ToMixedVerify toMixedVerify(@NonNull String str) {
        return new ToMixedVerify(str);
    }

    @NonNull
    public static ToWechatVerify toWechatVerify(@NonNull String str) {
        return new ToWechatVerify(str);
    }
}

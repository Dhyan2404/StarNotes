package com.onyx.galaxy.note.usercenter.p049ui;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class AccountCenterFragmentDirections {

    /* loaded from: classes9.dex */
    public static class AccountCenterToBindEmail implements NavDirections {

        /* renamed from: a */
        public final HashMap f62351a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToBindEmail accountCenterToBindEmail = (AccountCenterToBindEmail) obj;
            if (this.f62351a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToBindEmail.f62351a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToBindEmail.getPurpose() != null : !getPurpose().equals(accountCenterToBindEmail.getPurpose())) {
                return false;
            }
            if (this.f62351a.containsKey("oldSocialAccount") != accountCenterToBindEmail.f62351a.containsKey("oldSocialAccount")) {
                return false;
            }
            if (getOldSocialAccount() == null ? accountCenterToBindEmail.getOldSocialAccount() != null : !getOldSocialAccount().equals(accountCenterToBindEmail.getOldSocialAccount())) {
                return false;
            }
            if (this.f62351a.containsKey("oldVerifyCode") != accountCenterToBindEmail.f62351a.containsKey("oldVerifyCode")) {
                return false;
            }
            if (getOldVerifyCode() == null ? accountCenterToBindEmail.getOldVerifyCode() == null : getOldVerifyCode().equals(accountCenterToBindEmail.getOldVerifyCode())) {
                return getActionId() == accountCenterToBindEmail.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_bind_email;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62351a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62351a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            if (this.f62351a.containsKey("oldSocialAccount")) {
                bundle.putString("oldSocialAccount", (String) this.f62351a.get("oldSocialAccount"));
            } else {
                bundle.putString("oldSocialAccount", "");
            }
            if (this.f62351a.containsKey("oldVerifyCode")) {
                bundle.putString("oldVerifyCode", (String) this.f62351a.get("oldVerifyCode"));
            } else {
                bundle.putString("oldVerifyCode", "");
            }
            return bundle;
        }

        @NonNull
        public String getOldSocialAccount() {
            return (String) this.f62351a.get("oldSocialAccount");
        }

        @NonNull
        public String getOldVerifyCode() {
            return (String) this.f62351a.get("oldVerifyCode");
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62351a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((((((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + (getOldSocialAccount() != null ? getOldSocialAccount().hashCode() : 0)) * 31) + (getOldVerifyCode() != null ? getOldVerifyCode().hashCode() : 0)) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToBindEmail setOldSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62351a.put("oldSocialAccount", str);
            return this;
        }

        @NonNull
        public AccountCenterToBindEmail setOldVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62351a.put("oldVerifyCode", str);
            return this;
        }

        @NonNull
        public AccountCenterToBindEmail setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62351a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToBindEmail(actionId=" + getActionId() + "){purpose=" + getPurpose() + ", oldSocialAccount=" + getOldSocialAccount() + ", oldVerifyCode=" + getOldVerifyCode() + "}";
        }

        public AccountCenterToBindEmail(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62351a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToBindPhone implements NavDirections {

        /* renamed from: a */
        public final HashMap f62352a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToBindPhone accountCenterToBindPhone = (AccountCenterToBindPhone) obj;
            if (this.f62352a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToBindPhone.f62352a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToBindPhone.getPurpose() != null : !getPurpose().equals(accountCenterToBindPhone.getPurpose())) {
                return false;
            }
            if (this.f62352a.containsKey("oldSocialAccount") != accountCenterToBindPhone.f62352a.containsKey("oldSocialAccount")) {
                return false;
            }
            if (getOldSocialAccount() == null ? accountCenterToBindPhone.getOldSocialAccount() != null : !getOldSocialAccount().equals(accountCenterToBindPhone.getOldSocialAccount())) {
                return false;
            }
            if (this.f62352a.containsKey("oldVerifyCode") != accountCenterToBindPhone.f62352a.containsKey("oldVerifyCode")) {
                return false;
            }
            if (getOldVerifyCode() == null ? accountCenterToBindPhone.getOldVerifyCode() == null : getOldVerifyCode().equals(accountCenterToBindPhone.getOldVerifyCode())) {
                return getActionId() == accountCenterToBindPhone.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_bind_phone;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62352a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62352a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            if (this.f62352a.containsKey("oldSocialAccount")) {
                bundle.putString("oldSocialAccount", (String) this.f62352a.get("oldSocialAccount"));
            } else {
                bundle.putString("oldSocialAccount", "");
            }
            if (this.f62352a.containsKey("oldVerifyCode")) {
                bundle.putString("oldVerifyCode", (String) this.f62352a.get("oldVerifyCode"));
            } else {
                bundle.putString("oldVerifyCode", "");
            }
            return bundle;
        }

        @NonNull
        public String getOldSocialAccount() {
            return (String) this.f62352a.get("oldSocialAccount");
        }

        @NonNull
        public String getOldVerifyCode() {
            return (String) this.f62352a.get("oldVerifyCode");
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62352a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((((((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + (getOldSocialAccount() != null ? getOldSocialAccount().hashCode() : 0)) * 31) + (getOldVerifyCode() != null ? getOldVerifyCode().hashCode() : 0)) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToBindPhone setOldSocialAccount(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldSocialAccount\" is marked as non-null but was passed a null value.");
            }
            this.f62352a.put("oldSocialAccount", str);
            return this;
        }

        @NonNull
        public AccountCenterToBindPhone setOldVerifyCode(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"oldVerifyCode\" is marked as non-null but was passed a null value.");
            }
            this.f62352a.put("oldVerifyCode", str);
            return this;
        }

        @NonNull
        public AccountCenterToBindPhone setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62352a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToBindPhone(actionId=" + getActionId() + "){purpose=" + getPurpose() + ", oldSocialAccount=" + getOldSocialAccount() + ", oldVerifyCode=" + getOldVerifyCode() + "}";
        }

        public AccountCenterToBindPhone(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62352a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToEmailVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62353a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToEmailVerify accountCenterToEmailVerify = (AccountCenterToEmailVerify) obj;
            if (this.f62353a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToEmailVerify.f62353a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToEmailVerify.getPurpose() == null : getPurpose().equals(accountCenterToEmailVerify.getPurpose())) {
                return getActionId() == accountCenterToEmailVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_email_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62353a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62353a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62353a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToEmailVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62353a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToEmailVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public AccountCenterToEmailVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62353a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToImageCrop implements NavDirections {

        /* renamed from: a */
        public final HashMap f62354a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToImageCrop accountCenterToImageCrop = (AccountCenterToImageCrop) obj;
            if (this.f62354a.containsKey("uri") != accountCenterToImageCrop.f62354a.containsKey("uri")) {
                return false;
            }
            if (getUri() == null ? accountCenterToImageCrop.getUri() != null : !getUri().equals(accountCenterToImageCrop.getUri())) {
                return false;
            }
            if (this.f62354a.containsKey("savePath") != accountCenterToImageCrop.f62354a.containsKey("savePath")) {
                return false;
            }
            if (getSavePath() == null ? accountCenterToImageCrop.getSavePath() == null : getSavePath().equals(accountCenterToImageCrop.getSavePath())) {
                return getActionId() == accountCenterToImageCrop.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_image_crop;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62354a.containsKey("uri")) {
                Uri uri = (Uri) this.f62354a.get("uri");
                if (Parcelable.class.isAssignableFrom(Uri.class) || uri == null) {
                    bundle.putParcelable("uri", (Parcelable) Parcelable.class.cast(uri));
                } else {
                    if (!Serializable.class.isAssignableFrom(Uri.class)) {
                        throw new UnsupportedOperationException(Uri.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                    }
                    bundle.putSerializable("uri", (Serializable) Serializable.class.cast(uri));
                }
            }
            if (this.f62354a.containsKey("savePath")) {
                bundle.putString("savePath", (String) this.f62354a.get("savePath"));
            }
            return bundle;
        }

        @NonNull
        public String getSavePath() {
            return (String) this.f62354a.get("savePath");
        }

        @NonNull
        public Uri getUri() {
            return (Uri) this.f62354a.get("uri");
        }

        public int hashCode() {
            return (((((getUri() != null ? getUri().hashCode() : 0) + 31) * 31) + (getSavePath() != null ? getSavePath().hashCode() : 0)) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToImageCrop setSavePath(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"savePath\" is marked as non-null but was passed a null value.");
            }
            this.f62354a.put("savePath", str);
            return this;
        }

        @NonNull
        public AccountCenterToImageCrop setUri(@NonNull Uri uri) {
            if (uri == null) {
                throw new IllegalArgumentException("Argument \"uri\" is marked as non-null but was passed a null value.");
            }
            this.f62354a.put("uri", uri);
            return this;
        }

        public String toString() {
            return "AccountCenterToImageCrop(actionId=" + getActionId() + "){uri=" + getUri() + ", savePath=" + getSavePath() + "}";
        }

        public AccountCenterToImageCrop(@NonNull Uri uri, @NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62354a = hashMap;
            if (uri != null) {
                hashMap.put("uri", uri);
                if (str != null) {
                    hashMap.put("savePath", str);
                    return;
                }
                throw new IllegalArgumentException("Argument \"savePath\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Argument \"uri\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToMixedVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62355a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToMixedVerify accountCenterToMixedVerify = (AccountCenterToMixedVerify) obj;
            if (this.f62355a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToMixedVerify.f62355a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToMixedVerify.getPurpose() == null : getPurpose().equals(accountCenterToMixedVerify.getPurpose())) {
                return getActionId() == accountCenterToMixedVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_mixed_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62355a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62355a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62355a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToMixedVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62355a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToMixedVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public AccountCenterToMixedVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62355a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToPhoneVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62356a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToPhoneVerify accountCenterToPhoneVerify = (AccountCenterToPhoneVerify) obj;
            if (this.f62356a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToPhoneVerify.f62356a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToPhoneVerify.getPurpose() == null : getPurpose().equals(accountCenterToPhoneVerify.getPurpose())) {
                return getActionId() == accountCenterToPhoneVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_phone_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62356a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62356a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62356a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToPhoneVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62356a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToPhoneVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public AccountCenterToPhoneVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62356a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToUnbindEmail implements NavDirections {

        /* renamed from: a */
        public final HashMap f62357a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToUnbindEmail accountCenterToUnbindEmail = (AccountCenterToUnbindEmail) obj;
            if (this.f62357a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToUnbindEmail.f62357a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToUnbindEmail.getPurpose() == null : getPurpose().equals(accountCenterToUnbindEmail.getPurpose())) {
                return getActionId() == accountCenterToUnbindEmail.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_unbind_email;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62357a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62357a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62357a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToUnbindEmail setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62357a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToUnbindEmail(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public AccountCenterToUnbindEmail(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62357a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToUnbindPhone implements NavDirections {

        /* renamed from: a */
        public final HashMap f62358a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToUnbindPhone accountCenterToUnbindPhone = (AccountCenterToUnbindPhone) obj;
            if (this.f62358a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToUnbindPhone.f62358a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToUnbindPhone.getPurpose() == null : getPurpose().equals(accountCenterToUnbindPhone.getPurpose())) {
                return getActionId() == accountCenterToUnbindPhone.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_unbind_phone;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62358a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62358a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62358a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToUnbindPhone setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62358a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToUnbindPhone(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public AccountCenterToUnbindPhone(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62358a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    /* loaded from: classes9.dex */
    public static class AccountCenterToWechatVerify implements NavDirections {

        /* renamed from: a */
        public final HashMap f62359a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccountCenterToWechatVerify accountCenterToWechatVerify = (AccountCenterToWechatVerify) obj;
            if (this.f62359a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != accountCenterToWechatVerify.f62359a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                return false;
            }
            if (getPurpose() == null ? accountCenterToWechatVerify.getPurpose() == null : getPurpose().equals(accountCenterToWechatVerify.getPurpose())) {
                return getActionId() == accountCenterToWechatVerify.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.account_center_to_wechat_verify;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f62359a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
                bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62359a.get(AccountVerifyPurpose.KEY_PURPOSE));
            }
            return bundle;
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62359a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        public int hashCode() {
            return (((getPurpose() != null ? getPurpose().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public AccountCenterToWechatVerify setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62359a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public String toString() {
            return "AccountCenterToWechatVerify(actionId=" + getActionId() + "){purpose=" + getPurpose() + "}";
        }

        public AccountCenterToWechatVerify(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62359a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    @NonNull
    public static AccountCenterToBindEmail accountCenterToBindEmail(@NonNull String str) {
        return new AccountCenterToBindEmail(str);
    }

    @NonNull
    public static AccountCenterToBindPhone accountCenterToBindPhone(@NonNull String str) {
        return new AccountCenterToBindPhone(str);
    }

    @NonNull
    public static AccountCenterToEmailVerify accountCenterToEmailVerify(@NonNull String str) {
        return new AccountCenterToEmailVerify(str);
    }

    @NonNull
    public static AccountCenterToImageCrop accountCenterToImageCrop(@NonNull Uri uri, @NonNull String str) {
        return new AccountCenterToImageCrop(uri, str);
    }

    @NonNull
    public static AccountCenterToMixedVerify accountCenterToMixedVerify(@NonNull String str) {
        return new AccountCenterToMixedVerify(str);
    }

    @NonNull
    public static AccountCenterToPhoneVerify accountCenterToPhoneVerify(@NonNull String str) {
        return new AccountCenterToPhoneVerify(str);
    }

    @NonNull
    public static AccountCenterToUnbindEmail accountCenterToUnbindEmail(@NonNull String str) {
        return new AccountCenterToUnbindEmail(str);
    }

    @NonNull
    public static AccountCenterToUnbindPhone accountCenterToUnbindPhone(@NonNull String str) {
        return new AccountCenterToUnbindPhone(str);
    }

    @NonNull
    public static AccountCenterToWechatVerify accountCenterToWechatVerify(@NonNull String str) {
        return new AccountCenterToWechatVerify(str);
    }
}

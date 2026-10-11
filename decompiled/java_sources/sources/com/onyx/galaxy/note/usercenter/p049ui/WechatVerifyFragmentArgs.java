package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class WechatVerifyFragmentArgs implements NavArgs {

    /* renamed from: a */
    public final HashMap f62518a;

    @NonNull
    public static WechatVerifyFragmentArgs fromBundle(@NonNull Bundle bundle) {
        WechatVerifyFragmentArgs wechatVerifyFragmentArgs = new WechatVerifyFragmentArgs();
        bundle.setClassLoader(WechatVerifyFragmentArgs.class.getClassLoader());
        if (!bundle.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String string = bundle.getString(AccountVerifyPurpose.KEY_PURPOSE);
        if (string == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        wechatVerifyFragmentArgs.f62518a.put(AccountVerifyPurpose.KEY_PURPOSE, string);
        return wechatVerifyFragmentArgs;
    }

    @NonNull
    public static WechatVerifyFragmentArgs fromSavedStateHandle(@NonNull SavedStateHandle savedStateHandle) {
        WechatVerifyFragmentArgs wechatVerifyFragmentArgs = new WechatVerifyFragmentArgs();
        if (!savedStateHandle.contains(AccountVerifyPurpose.KEY_PURPOSE)) {
            throw new IllegalArgumentException("Required argument \"purpose\" is missing and does not have an android:defaultValue");
        }
        String str = (String) savedStateHandle.get(AccountVerifyPurpose.KEY_PURPOSE);
        if (str == null) {
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
        wechatVerifyFragmentArgs.f62518a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
        return wechatVerifyFragmentArgs;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WechatVerifyFragmentArgs wechatVerifyFragmentArgs = (WechatVerifyFragmentArgs) obj;
        if (this.f62518a.containsKey(AccountVerifyPurpose.KEY_PURPOSE) != wechatVerifyFragmentArgs.f62518a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            return false;
        }
        return getPurpose() == null ? wechatVerifyFragmentArgs.getPurpose() == null : getPurpose().equals(wechatVerifyFragmentArgs.getPurpose());
    }

    @NonNull
    public String getPurpose() {
        return (String) this.f62518a.get(AccountVerifyPurpose.KEY_PURPOSE);
    }

    public int hashCode() {
        return 31 + (getPurpose() != null ? getPurpose().hashCode() : 0);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.f62518a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62518a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return bundle;
    }

    @NonNull
    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.f62518a.containsKey(AccountVerifyPurpose.KEY_PURPOSE)) {
            savedStateHandle.set(AccountVerifyPurpose.KEY_PURPOSE, (String) this.f62518a.get(AccountVerifyPurpose.KEY_PURPOSE));
        }
        return savedStateHandle;
    }

    public String toString() {
        return "WechatVerifyFragmentArgs{purpose=" + getPurpose() + "}";
    }

    public WechatVerifyFragmentArgs() {
        this.f62518a = new HashMap();
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap f62519a;

        public Builder(@NonNull WechatVerifyFragmentArgs wechatVerifyFragmentArgs) {
            HashMap hashMap = new HashMap();
            this.f62519a = hashMap;
            hashMap.putAll(wechatVerifyFragmentArgs.f62518a);
        }

        @NonNull
        public WechatVerifyFragmentArgs build() {
            return new WechatVerifyFragmentArgs(this.f62519a);
        }

        @NonNull
        public String getPurpose() {
            return (String) this.f62519a.get(AccountVerifyPurpose.KEY_PURPOSE);
        }

        @NonNull
        public Builder setPurpose(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
            }
            this.f62519a.put(AccountVerifyPurpose.KEY_PURPOSE, str);
            return this;
        }

        public Builder(@NonNull String str) {
            HashMap hashMap = new HashMap();
            this.f62519a = hashMap;
            if (str != null) {
                hashMap.put(AccountVerifyPurpose.KEY_PURPOSE, str);
                return;
            }
            throw new IllegalArgumentException("Argument \"purpose\" is marked as non-null but was passed a null value.");
        }
    }

    public WechatVerifyFragmentArgs(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f62518a = hashMap2;
        hashMap2.putAll(hashMap);
    }
}

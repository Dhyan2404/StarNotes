package com.google.android.gms.common;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class AccountPicker {

    /* loaded from: classes5.dex */
    public static class AccountChooserOptions {

        /* renamed from: a */
        @Nullable
        public Account f28983a;

        /* renamed from: b */
        public boolean f28984b;

        /* renamed from: c */
        @Nullable
        public ArrayList f28985c;

        /* renamed from: d */
        @Nullable
        public ArrayList f28986d;

        /* renamed from: e */
        public boolean f28987e;

        /* renamed from: f */
        @Nullable
        public String f28988f;

        /* renamed from: g */
        @Nullable
        public Bundle f28989g;

        /* renamed from: h */
        public boolean f28990h;

        /* renamed from: i */
        public int f28991i;

        /* renamed from: j */
        @Nullable
        public String f28992j;

        /* renamed from: k */
        public boolean f28993k;

        /* renamed from: l */
        @Nullable
        public zza f28994l;

        /* renamed from: m */
        @Nullable
        public String f28995m;

        /* renamed from: n */
        public boolean f28996n;

        /* renamed from: o */
        public boolean f28997o;

        /* loaded from: classes5.dex */
        public static class Builder {

            /* renamed from: a */
            @Nullable
            public Account f28998a;

            /* renamed from: b */
            @Nullable
            public ArrayList f28999b;

            /* renamed from: c */
            @Nullable
            public ArrayList f29000c;

            /* renamed from: d */
            public boolean f29001d = false;

            /* renamed from: e */
            @Nullable
            public String f29002e;

            /* renamed from: f */
            @Nullable
            public Bundle f29003f;

            @NonNull
            public AccountChooserOptions build() {
                Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
                Preconditions.checkArgument(true, "Consent is only valid for account chip styled account picker");
                AccountChooserOptions accountChooserOptions = new AccountChooserOptions();
                accountChooserOptions.f28986d = this.f29000c;
                accountChooserOptions.f28985c = this.f28999b;
                accountChooserOptions.f28987e = this.f29001d;
                accountChooserOptions.f28994l = null;
                accountChooserOptions.f28992j = null;
                accountChooserOptions.f28989g = this.f29003f;
                accountChooserOptions.f28983a = this.f28998a;
                accountChooserOptions.f28984b = false;
                accountChooserOptions.f28990h = false;
                accountChooserOptions.f28995m = null;
                accountChooserOptions.f28991i = 0;
                accountChooserOptions.f28988f = this.f29002e;
                accountChooserOptions.f28993k = false;
                accountChooserOptions.f28996n = false;
                accountChooserOptions.f28997o = false;
                return accountChooserOptions;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAllowableAccounts(@Nullable List<Account> list) {
                this.f28999b = list == null ? null : new ArrayList(list);
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAllowableAccountsTypes(@Nullable List<String> list) {
                this.f29000c = list == null ? null : new ArrayList(list);
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAlwaysShowAccountPicker(boolean z) {
                this.f29001d = z;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setOptionsForAddingAccount(@Nullable Bundle bundle) {
                this.f29003f = bundle;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setSelectedAccount(@Nullable Account account) {
                this.f28998a = account;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setTitleOverrideText(@Nullable String str) {
                this.f29002e = str;
                return this;
            }
        }

        /* renamed from: D */
        public static /* bridge */ /* synthetic */ boolean m21921D(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.f28996n;
            return false;
        }

        /* renamed from: a */
        public static /* bridge */ /* synthetic */ boolean m21922a(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.f28997o;
            return false;
        }

        /* renamed from: b */
        public static /* bridge */ /* synthetic */ boolean m21923b(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.f28984b;
            return false;
        }

        /* renamed from: c */
        public static /* bridge */ /* synthetic */ boolean m21924c(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.f28990h;
            return false;
        }

        /* renamed from: d */
        public static /* bridge */ /* synthetic */ boolean m21925d(AccountChooserOptions accountChooserOptions) {
            boolean z = accountChooserOptions.f28993k;
            return false;
        }

        /* renamed from: e */
        public static /* bridge */ /* synthetic */ int m21926e(AccountChooserOptions accountChooserOptions) {
            int i = accountChooserOptions.f28991i;
            return 0;
        }

        /* renamed from: h */
        public static /* bridge */ /* synthetic */ zza m21929h(AccountChooserOptions accountChooserOptions) {
            zza zzaVar = accountChooserOptions.f28994l;
            return null;
        }

        /* renamed from: i */
        public static /* bridge */ /* synthetic */ String m21930i(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.f28992j;
            return null;
        }

        /* renamed from: j */
        public static /* bridge */ /* synthetic */ String m21931j(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.f28995m;
            return null;
        }
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @Deprecated
    public static Intent newChooseAccountIntent(@Nullable Account account, @Nullable ArrayList<Account> arrayList, @Nullable String[] strArr, boolean z, @Nullable String str, @Nullable String str2, @Nullable String[] strArr2, @Nullable Bundle bundle) {
        Intent intent = new Intent();
        Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", arrayList);
        intent.putExtra("allowableAccountTypes", strArr);
        intent.putExtra("addAccountOptions", bundle);
        intent.putExtra("selectedAccount", account);
        intent.putExtra("alwaysPromptForAccount", z);
        intent.putExtra("descriptionTextOverride", str);
        intent.putExtra("authTokenType", str2);
        intent.putExtra("addAccountRequiredFeatures", strArr2);
        intent.putExtra("setGmsCoreAccount", false);
        intent.putExtra("overrideTheme", 0);
        intent.putExtra("overrideCustomTheme", 0);
        intent.putExtra("hostedDomainFilter", (String) null);
        return intent;
    }

    @NonNull
    public static Intent newChooseAccountIntent(@NonNull AccountChooserOptions accountChooserOptions) {
        Intent intent = new Intent();
        AccountChooserOptions.m21925d(accountChooserOptions);
        AccountChooserOptions.m21930i(accountChooserOptions);
        Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
        AccountChooserOptions.m21929h(accountChooserOptions);
        Preconditions.checkArgument(true, "Consent is only valid for account chip styled account picker");
        AccountChooserOptions.m21923b(accountChooserOptions);
        Preconditions.checkArgument(true, "Making the selected account non-clickable is only supported for the THEME_DAY_NIGHT_GOOGLE_MATERIAL2, THEME_LIGHT_GOOGLE_MATERIAL3, THEME_DARK_GOOGLE_MATERIAL3 or THEME_DAY_NIGHT_GOOGLE_MATERIAL3 themes");
        AccountChooserOptions.m21925d(accountChooserOptions);
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", accountChooserOptions.f28985c);
        if (accountChooserOptions.f28986d != null) {
            intent.putExtra("allowableAccountTypes", (String[]) accountChooserOptions.f28986d.toArray(new String[0]));
        }
        intent.putExtra("addAccountOptions", accountChooserOptions.f28989g);
        intent.putExtra("selectedAccount", accountChooserOptions.f28983a);
        AccountChooserOptions.m21923b(accountChooserOptions);
        intent.putExtra("selectedAccountIsNotClickable", false);
        intent.putExtra("alwaysPromptForAccount", accountChooserOptions.f28987e);
        intent.putExtra("descriptionTextOverride", accountChooserOptions.f28988f);
        AccountChooserOptions.m21924c(accountChooserOptions);
        intent.putExtra("setGmsCoreAccount", false);
        AccountChooserOptions.m21931j(accountChooserOptions);
        intent.putExtra("realClientPackage", (String) null);
        AccountChooserOptions.m21926e(accountChooserOptions);
        intent.putExtra("overrideTheme", 0);
        AccountChooserOptions.m21925d(accountChooserOptions);
        intent.putExtra("overrideCustomTheme", 0);
        AccountChooserOptions.m21930i(accountChooserOptions);
        intent.putExtra("hostedDomainFilter", (String) null);
        Bundle bundle = new Bundle();
        AccountChooserOptions.m21925d(accountChooserOptions);
        AccountChooserOptions.m21929h(accountChooserOptions);
        AccountChooserOptions.m21921D(accountChooserOptions);
        AccountChooserOptions.m21922a(accountChooserOptions);
        if (!bundle.isEmpty()) {
            intent.putExtra("first_party_options_bundle", bundle);
        }
        return intent;
    }
}

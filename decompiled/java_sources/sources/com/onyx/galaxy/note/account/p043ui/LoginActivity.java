package com.onyx.galaxy.note.account.p043ui;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.fragment.app.C1126e;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.galaxy.note.common.base.BaseCompatActivity;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0015J\b\u0010\u0006\u001a\u00020\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/ui/LoginActivity;", "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "E", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class LoginActivity extends BaseCompatActivity {
    /* renamed from: E */
    public final Bundle m41824E() {
        Bundle bundle = new Bundle();
        int intExtra = getIntent().getIntExtra(LoginFragment.KEY_LOGIN_TYPE, AppConfigManager.INSTANCE.getDefaultLoginType());
        int intExtra2 = getIntent().getIntExtra(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1000);
        String stringExtra = getIntent().getStringExtra(LoginFragment.KEY_LOGIN_ACCOUNT);
        bundle.putInt(LoginFragment.KEY_LOGIN_TYPE, intExtra);
        bundle.putInt(OnyxStatisticConstant.KEY_TRIGGER_FROM, intExtra2);
        bundle.putString(LoginFragment.KEY_LOGIN_ACCOUNT, stringExtra);
        return bundle;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingInflatedId"})
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063336, this, savedInstanceState);
    }
}

package com.onyx.galaxy.note.p048ui.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.C1126e;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.galaxy.note.account.p043ui.RecentLoginActivity;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity;
import com.onyx.galaxy.note.utils.LoginUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\t\u001a\u00020\u0004H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/activity/SplashActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/content/Context;", "newBase", "", "attachBaseContext", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"CustomSplashScreen"})
/* loaded from: classes17.dex */
public final class SplashActivity extends AppCompatActivity {
    /* renamed from: C */
    public final void m51242C() {
        if (LoginUtils.INSTANCE.isLoginRequired()) {
            startActivity(new Intent(this, (Class<?>) RecentLoginActivity.class));
        } else {
            startActivity(new Intent(this, (Class<?>) NoteListActivity.class));
            AccountDataBundle.INSTANCE.updateLocalLoginAt();
        }
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(@Nullable Context newBase) {
        super.attachBaseContext(ContextKt.createNewConfigurationContext(newBase));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063262, this, savedInstanceState);
    }
}

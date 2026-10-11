package com.onyx.android.sdk.cloudstorage.provider.evernote.p022ui;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.C1126e;
import com.evernote.client.android.login.EvernoteLoginFragment;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.provider.evernote.event.EvernoteAuthEvent;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\u0005H\u0014R\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/ui/EvernoteAuthActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/evernote/client/android/login/EvernoteLoginFragment$ResultCallback;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", FirebaseAnalytics.Param.SUCCESS, "onLoginFinished", "onDestroy", "w0", Constants.HASIDCALL_INDEX_SIG, "successful", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class EvernoteAuthActivity extends AppCompatActivity implements EvernoteLoginFragment.ResultCallback {

    /* renamed from: w0, reason: from kotlin metadata */
    public boolean successful;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063351, this, savedInstanceState);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        CloudStorageManager.INSTANCE.getOurInstance().getEventBus().post(new EvernoteAuthEvent(this.successful));
    }

    @Override // com.evernote.client.android.login.EvernoteLoginFragment.ResultCallback
    public void onLoginFinished(boolean success) {
        this.successful = success;
        finish();
    }
}

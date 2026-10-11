package com.onyx.android.sdk.cloudstorage.provider.dropbox.p021ui;

import android.app.Activity;
import android.os.Bundle;
import androidx.fragment.app.C1126e;
import com.dropbox.core.android.Auth;
import com.dropbox.core.oauth.DbxCredential;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.event.DropBoxCredentialEvent;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import okhttp3.Interceptor;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0004H\u0014J\b\u0010\b\u001a\u00020\u0004H\u0014J\b\u0010\t\u001a\u00020\u0004H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/ui/DropBoxAuthActivity;", "Landroid/app/Activity;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onResume", "onPause", "onDestroy", "a", "", "e", Constants.HASIDCALL_INDEX_SIG, "paused", "Lcom/dropbox/core/oauth/DbxCredential;", C6997f.f39671c, "Lcom/dropbox/core/oauth/DbxCredential;", "credential", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class DropBoxAuthActivity extends Activity {

    /* renamed from: e, reason: from kotlin metadata */
    public boolean paused;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public DbxCredential credential;

    /* renamed from: a */
    public final void m32658a() {
        List<? extends Interceptor> emptyList;
        String stringExtra = getIntent().getStringExtra(CloudStorageConstants.KEY_INTENT_CONSUMER_KEY);
        if (stringExtra == null || stringExtra.length() == 0) {
            return;
        }
        DropBoxUtils dropBoxUtils = DropBoxUtils.INSTANCE;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Auth.startOAuth2PKCE(this, stringExtra, dropBoxUtils.createRequestConfig(emptyList));
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063352, this, savedInstanceState);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        CloudStorageManager.INSTANCE.getOurInstance().getEventBus().post(new DropBoxCredentialEvent(this.credential));
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.paused = true;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.paused) {
            this.credential = Auth.getDbxCredential();
            Debug.INSTANCE.m32035d(DropBoxAuthActivity.class, "dropbox credential:" + this.credential, new Object[0]);
            finish();
        }
    }
}

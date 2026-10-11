package com.evernote.client.android.login;

import android.R;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import androidx.annotation.NonNull;
import com.evernote.androidsdk.C4455R;
import com.evernote.client.android.login.EvernoteLoginTask;
import com.sagittarius.p050v6.C13086AB;
import java.util.Locale;
import net.vrallev.android.task.TaskExecutor;
import net.vrallev.android.task.TaskResult;

/* loaded from: classes17.dex */
public class EvernoteLoginActivity extends Activity implements EvernoteLoginTask.LoginTaskCallback {

    /* renamed from: h */
    public static final String f21131h = "EXTRA_CONSUMER_KEY";

    /* renamed from: i */
    public static final String f21132i = "EXTRA_CONSUMER_SECRET";

    /* renamed from: j */
    public static final String f21133j = "EXTRA_SUPPORT_APP_LINKED_NOTEBOOKS";

    /* renamed from: k */
    public static final String f21134k = "EXTRA_LOCALE";

    /* renamed from: l */
    public static final String f21135l = "KEY_TASK";

    /* renamed from: m */
    public static final String f21136m = "KEY_RESULT_POSTED";

    /* renamed from: e */
    public int f21137e;

    /* renamed from: f */
    public boolean f21138f;

    /* renamed from: g */
    public ProgressDialog f21139g;

    /* renamed from: com.evernote.client.android.login.EvernoteLoginActivity$a */
    /* loaded from: classes4.dex */
    public class DialogInterfaceOnClickListenerC4567a implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC4567a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            EvernoteLoginTask evernoteLoginTask = (EvernoteLoginTask) TaskExecutor.getInstance().getTask(EvernoteLoginActivity.this.f21137e);
            if (evernoteLoginTask != null) {
                evernoteLoginTask.cancel();
            }
            EvernoteLoginActivity.this.onResult(Boolean.FALSE, evernoteLoginTask);
        }
    }

    /* renamed from: com.evernote.client.android.login.EvernoteLoginActivity$b */
    /* loaded from: classes4.dex */
    public class RunnableC4568b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ String f21141e;

        /* renamed from: com.evernote.client.android.login.EvernoteLoginActivity$b$a */
        /* loaded from: classes4.dex */
        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EvernoteLoginActivity.this.switchBootstrapProfile();
            }
        }

        public RunnableC4568b(String str) {
            this.f21141e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Button button = EvernoteLoginActivity.this.f21139g.getButton(-1);
            if (TextUtils.isEmpty(this.f21141e)) {
                button.setVisibility(8);
                button.setOnClickListener(null);
            } else {
                button.setText(EvernoteLoginActivity.this.getString(C4455R.string.esdk_switch_to, this.f21141e));
                button.setVisibility(0);
                button.setOnClickListener(new a());
            }
        }
    }

    public static Intent createIntent(Context context, String str, String str2, boolean z, Locale locale) {
        Intent intent = new Intent(context, (Class<?>) EvernoteLoginActivity.class);
        intent.putExtra(f21131h, str);
        intent.putExtra(f21132i, str2);
        intent.putExtra(f21133j, z);
        intent.putExtra(f21134k, locale);
        return intent;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 858 && i != 859) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        EvernoteLoginTask evernoteLoginTask = (EvernoteLoginTask) TaskExecutor.getInstance().getTask(this.f21137e);
        if (evernoteLoginTask != null) {
            evernoteLoginTask.m17097r(i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063357, this, bundle);
    }

    @TaskResult
    public final void onResult(Boolean bool, EvernoteLoginTask evernoteLoginTask) {
        if (this.f21138f) {
            return;
        }
        if (evernoteLoginTask == null || evernoteLoginTask.getKey() == this.f21137e) {
            this.f21138f = true;
            setResult(bool.booleanValue() ? -1 : 0);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("KEY_TASK", this.f21137e);
        bundle.putBoolean("KEY_RESULT_POSTED", this.f21138f);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        ProgressDialog progressDialog = this.f21139g;
        if (progressDialog == null || !progressDialog.isShowing()) {
            showDialog();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        this.f21139g.dismiss();
        this.f21139g = null;
        super.onStop();
    }

    @Override // com.evernote.client.android.login.EvernoteLoginTask.LoginTaskCallback
    public void show(String str) {
        runOnUiThread(new RunnableC4568b(str));
    }

    public void showDialog() {
        DialogInterfaceOnClickListenerC4567a dialogInterfaceOnClickListenerC4567a = new DialogInterfaceOnClickListenerC4567a();
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.f21139g = progressDialog;
        progressDialog.setIndeterminate(true);
        this.f21139g.setMessage(getString(C4455R.string.esdk_loading));
        this.f21139g.setButton(-2, getString(R.string.cancel), dialogInterfaceOnClickListenerC4567a);
        this.f21139g.setCancelable(false);
        this.f21139g.show();
    }

    public void switchBootstrapProfile() {
        EvernoteLoginTask evernoteLoginTask = (EvernoteLoginTask) TaskExecutor.getInstance().getTask(this.f21137e);
        if (evernoteLoginTask != null) {
            evernoteLoginTask.m17100u();
        }
    }
}

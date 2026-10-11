package com.evernote.client.android.login;

import android.R;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.DialogFragment;
import com.evernote.androidsdk.C4455R;
import com.evernote.client.android.EvernoteOAuthHelper;
import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.login.EvernoteLoginTask;
import java.util.Locale;
import net.vrallev.android.task.TaskExecutor;
import net.vrallev.android.task.TaskResult;

/* loaded from: classes4.dex */
public class EvernoteLoginFragment extends DialogFragment implements EvernoteLoginTask.LoginTaskCallback {

    /* renamed from: B1 */
    public static final String f21144B1 = "consumerKey";

    /* renamed from: C1 */
    public static final String f21145C1 = "consumerSecret";

    /* renamed from: D1 */
    public static final String f21146D1 = "supportAppLinkedNotebooks";

    /* renamed from: E1 */
    public static final String f21147E1 = "ARG_LOCALE";

    /* renamed from: F1 */
    public static final String f21148F1 = "KEY_TASK";

    /* renamed from: G1 */
    public static final String f21149G1 = "KEY_RESULT_POSTED";
    public static final String TAG = "EvernoteDialogFragment";

    /* renamed from: A1 */
    public boolean f21150A1;

    /* renamed from: z1 */
    public int f21151z1 = -1;

    /* loaded from: classes4.dex */
    public interface ResultCallback {
        void onLoginFinished(boolean z);
    }

    /* renamed from: com.evernote.client.android.login.EvernoteLoginFragment$a */
    /* loaded from: classes4.dex */
    public class DialogInterfaceOnClickListenerC4569a implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC4569a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            EvernoteLoginTask evernoteLoginTask = (EvernoteLoginTask) TaskExecutor.getInstance().getTask(EvernoteLoginFragment.this.f21151z1);
            if (evernoteLoginTask != null) {
                evernoteLoginTask.cancel();
            }
            EvernoteLoginFragment.this.onResult(Boolean.FALSE, evernoteLoginTask);
        }
    }

    /* renamed from: com.evernote.client.android.login.EvernoteLoginFragment$b */
    /* loaded from: classes4.dex */
    public class RunnableC4570b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ String f21153e;

        /* renamed from: com.evernote.client.android.login.EvernoteLoginFragment$b$a */
        /* loaded from: classes4.dex */
        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EvernoteLoginFragment.this.switchBootstrapProfile();
            }
        }

        public RunnableC4570b(String str) {
            this.f21153e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Button button = ((ProgressDialog) EvernoteLoginFragment.this.getDialog()).getButton(-1);
            if (TextUtils.isEmpty(this.f21153e)) {
                button.setVisibility(8);
                button.setOnClickListener(null);
            } else {
                button.setText(EvernoteLoginFragment.this.getString(C4455R.string.esdk_switch_to, this.f21153e));
                button.setVisibility(0);
                button.setOnClickListener(new a());
            }
        }
    }

    public static EvernoteLoginFragment create(String str, String str2, boolean z, Locale locale) {
        return create(EvernoteLoginFragment.class, str, str2, z, locale);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.f21151z1 = bundle.getInt("KEY_TASK", -1);
            this.f21150A1 = bundle.getBoolean("KEY_RESULT_POSTED", false);
        } else {
            Bundle arguments = getArguments();
            this.f21151z1 = TaskExecutor.getInstance().execute(new EvernoteLoginTask(new EvernoteOAuthHelper(EvernoteSession.getInstance(), arguments.getString(f21144B1), arguments.getString(f21145C1), arguments.getBoolean(f21146D1, true), (Locale) arguments.getSerializable(f21147E1)), true), this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 858 && i != 859) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        EvernoteLoginTask evernoteLoginTask = (EvernoteLoginTask) TaskExecutor.getInstance().getTask(this.f21151z1);
        if (evernoteLoginTask != null) {
            evernoteLoginTask.m17097r(i2, intent);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        setCancelable(false);
        DialogInterfaceOnClickListenerC4569a dialogInterfaceOnClickListenerC4569a = new DialogInterfaceOnClickListenerC4569a();
        ProgressDialog progressDialog = new ProgressDialog(getActivity());
        progressDialog.setIndeterminate(true);
        progressDialog.setMessage(getString(C4455R.string.esdk_loading));
        progressDialog.setButton(-2, getString(R.string.cancel), dialogInterfaceOnClickListenerC4569a);
        progressDialog.setCancelable(isCancelable());
        return progressDialog;
    }

    public void onLoginFinished(boolean z) {
    }

    @TaskResult
    public final synchronized void onResult(Boolean bool, EvernoteLoginTask evernoteLoginTask) {
        if (!this.f21150A1 && (evernoteLoginTask == null || evernoteLoginTask.getKey() == this.f21151z1)) {
            this.f21150A1 = true;
            dismiss();
            KeyEventDispatcher.Component activity = getActivity();
            if (activity instanceof ResultCallback) {
                ((ResultCallback) activity).onLoginFinished(bool.booleanValue());
            } else {
                onLoginFinished(bool.booleanValue());
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("KEY_TASK", this.f21151z1);
        bundle.putBoolean("KEY_RESULT_POSTED", this.f21150A1);
    }

    @Override // com.evernote.client.android.login.EvernoteLoginTask.LoginTaskCallback
    public void show(String str) {
        getActivity().runOnUiThread(new RunnableC4570b(str));
    }

    public void switchBootstrapProfile() {
        EvernoteLoginTask evernoteLoginTask = (EvernoteLoginTask) TaskExecutor.getInstance().getTask(this.f21151z1);
        if (evernoteLoginTask != null) {
            evernoteLoginTask.m17100u();
        }
    }

    public static <T extends EvernoteLoginFragment> T create(Class<T> cls, String str, String str2, boolean z, Locale locale) {
        try {
            T newInstance = cls.newInstance();
            Bundle bundle = new Bundle();
            bundle.putString(f21144B1, str);
            bundle.putString(f21145C1, str2);
            bundle.putBoolean(f21146D1, z);
            bundle.putSerializable(f21147E1, locale);
            newInstance.setArguments(bundle);
            return newInstance;
        } catch (Exception e) {
            throw new IllegalArgumentException(e);
        }
    }
}

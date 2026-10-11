package com.onegravity.rteditor;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.net.MailTo;
import com.onegravity.rteditor.LinkFragment;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.validator.EmailValidator;
import com.onegravity.rteditor.utils.validator.UrlValidator;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes7.dex */
public class LinkFragment extends DialogFragment {

    /* renamed from: e */
    public static final String f40070e = "link_address";

    /* renamed from: f */
    public static final String f40071f = "link_text";

    /* renamed from: g */
    public static final UrlValidator f40072g = new UrlValidator(3);

    /* renamed from: h */
    public static final EmailValidator f40073h = EmailValidator.getInstance(false);

    /* renamed from: com.onegravity.rteditor.LinkFragment$b */
    /* loaded from: classes7.dex */
    public static class C7026b {

        /* renamed from: a */
        public final String f40074a;

        /* renamed from: b */
        public final String f40075b;

        /* renamed from: a */
        public String m31516a() {
            return this.f40074a;
        }

        /* renamed from: b */
        public String m31517b() {
            return this.f40075b;
        }

        /* renamed from: c */
        public boolean m31518c() {
            String str;
            String str2 = this.f40075b;
            return str2 != null && str2.length() > 0 && (str = this.f40074a) != null && str.length() > 0;
        }

        public C7026b(String str, String str2) {
            this.f40074a = str;
            this.f40075b = str2;
        }
    }

    /* renamed from: com.onegravity.rteditor.LinkFragment$c */
    /* loaded from: classes7.dex */
    public static class C7027c {

        /* renamed from: a */
        public final String f40076a;

        /* renamed from: b */
        public final C7026b f40077b;

        /* renamed from: c */
        public final boolean f40078c;

        public C7027c(Fragment fragment, C7026b c7026b, boolean z) {
            this.f40076a = fragment.getTag();
            this.f40077b = c7026b;
            this.f40078c = z;
        }

        /* renamed from: a */
        public String m31519a() {
            return this.f40076a;
        }

        /* renamed from: b */
        public C7026b m31520b() {
            return this.f40077b;
        }

        /* renamed from: c */
        public boolean m31521c() {
            return this.f40078c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public /* synthetic */ void m31509e(String str, DialogInterface dialogInterface, int i) {
        EventBus.getDefault().post(new C7027c(this, new C7026b(null, str), true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m31510f(DialogInterface dialogInterface, int i) {
        EventBus.getDefault().post(new C7027c(this, null, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m31511g(TextView textView, TextView textView2, Dialog dialog, View view) {
        if (m31515k(textView, textView2)) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m31512h(final TextView textView, final TextView textView2, final Dialog dialog, DialogInterface dialogInterface) {
        ((AlertDialog) dialogInterface).getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yyi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkFragment.this.m31511g(textView, textView2, dialog, view);
            }
        });
    }

    public static LinkFragment newInstance(String str, String str2) {
        LinkFragment linkFragment = new LinkFragment();
        Bundle bundle = new Bundle();
        bundle.putString(f40071f, str);
        bundle.putString(f40070e, str2);
        linkFragment.setArguments(bundle);
        return linkFragment;
    }

    /* renamed from: i */
    public final boolean m31513i(TextView textView) {
        return textView.getText() != null && textView.getText().length() > 0;
    }

    /* renamed from: j */
    public final boolean m31514j(String str) {
        return str != null && str.toLowerCase(Locale.getDefault()).startsWith(MailTo.MAILTO_SCHEME);
    }

    /* renamed from: k */
    public final boolean m31515k(TextView textView, TextView textView2) {
        String trim = textView.getText().toString().trim();
        boolean isValid = f40073h.isValid(trim);
        boolean isValid2 = f40072g.isValid(trim);
        if (!m31513i(textView) || (!isValid2 && !isValid)) {
            textView.setError(getString(C7028R.string.rte_invalid_link, trim));
            return false;
        }
        String encodeUrl = Helper.encodeUrl(trim);
        if (isValid && !m31514j(encodeUrl)) {
            encodeUrl = MailTo.MAILTO_SCHEME + encodeUrl;
        }
        String charSequence = textView2.getText().toString();
        if (charSequence.length() != 0) {
            trim = charSequence;
        }
        EventBus.getDefault().post(new C7027c(this, new C7026b(trim, encodeUrl), false));
        return true;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        EventBus.getDefault().post(new C7027c(this, null, true));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0083  */
    @Override // android.app.DialogFragment
    @android.annotation.SuppressLint({"InflateParams"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.app.Dialog onCreateDialog(android.os.Bundle r8) {
        /*
            r7 = this;
            android.app.Activity r8 = r7.getActivity()
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r8)
            int r1 = com.onegravity.rteditor.C7028R.layout.rte_link
            r2 = 0
            android.view.View r0 = r0.inflate(r1, r2)
            android.os.Bundle r1 = r7.getArguments()
            java.lang.String r3 = "link_address"
            java.lang.String r3 = r1.getString(r3)
            if (r3 == 0) goto L39
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L39
            java.lang.String r4 = com.onegravity.rteditor.utils.Helper.decodeQuery(r3)     // Catch: java.lang.Exception -> L39
            android.net.Uri r4 = android.net.Uri.parse(r4)     // Catch: java.lang.Exception -> L39
            boolean r5 = r7.m31514j(r3)     // Catch: java.lang.Exception -> L39
            if (r5 == 0) goto L34
            java.lang.String r4 = r4.getSchemeSpecificPart()     // Catch: java.lang.Exception -> L39
            goto L3b
        L34:
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L39
            goto L3b
        L39:
            java.lang.String r4 = "http://"
        L3b:
            int r5 = com.onegravity.rteditor.C7028R.id.linkURL
            android.view.View r5 = r0.findViewById(r5)
            android.widget.TextView r5 = (android.widget.TextView) r5
            if (r4 == 0) goto L48
            r5.setText(r4)
        L48:
            java.lang.String r6 = "link_text"
            java.lang.String r1 = r1.getString(r6)
            int r6 = com.onegravity.rteditor.C7028R.id.linkText
            android.view.View r6 = r0.findViewById(r6)
            android.widget.TextView r6 = (android.widget.TextView) r6
            if (r1 == 0) goto L5b
            r6.setText(r1)
        L5b:
            androidx.appcompat.app.AlertDialog$Builder r1 = new androidx.appcompat.app.AlertDialog$Builder
            r1.<init>(r8)
            int r8 = com.onegravity.rteditor.C7028R.string.rte_create_a_link
            androidx.appcompat.app.AlertDialog$Builder r8 = r1.setTitle(r8)
            androidx.appcompat.app.AlertDialog$Builder r8 = r8.setView(r0)
            r0 = 0
            androidx.appcompat.app.AlertDialog$Builder r8 = r8.setCancelable(r0)
            r0 = 17039370(0x104000a, float:2.42446E-38)
            androidx.appcompat.app.AlertDialog$Builder r8 = r8.setPositiveButton(r0, r2)
            com.sunia.HTREnginev2.vyi r0 = new com.sunia.HTREnginev2.vyi
            r0.<init>()
            r1 = 17039360(0x1040000, float:2.424457E-38)
            androidx.appcompat.app.AlertDialog$Builder r8 = r8.setNegativeButton(r1, r0)
            if (r3 == 0) goto L8d
            int r0 = com.onegravity.rteditor.C7028R.string.rte_remove_action
            com.sunia.HTREnginev2.wyi r1 = new com.sunia.HTREnginev2.wyi
            r1.<init>()
            r8.setNeutralButton(r0, r1)
        L8d:
            androidx.appcompat.app.AlertDialog r8 = r8.create()
            com.sunia.HTREnginev2.xyi r0 = new com.sunia.HTREnginev2.xyi
            r0.<init>()
            r8.setOnShowListener(r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onegravity.rteditor.LinkFragment.onCreateDialog(android.os.Bundle):android.app.Dialog");
    }
}

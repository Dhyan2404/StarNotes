package com.sunia.HTREnginev2;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.browser.C0349R;
import androidx.browser.browseractions.BrowserActionItem;
import androidx.browser.browseractions.BrowserActionsFallbackMenuView;
import androidx.core.widget.TextViewCompat;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* renamed from: com.sunia.HTREnginev2.gv */
/* loaded from: classes3.dex */
public class C13789gv implements AdapterView.OnItemClickListener {

    /* renamed from: j */
    public static final String f71486j = "BrowserActionskMenuUi";

    /* renamed from: e */
    public final Context f71487e;

    /* renamed from: f */
    public final Uri f71488f;

    /* renamed from: g */
    public final List<BrowserActionItem> f71489g;

    /* renamed from: h */
    @Nullable
    public d f71490h;

    /* renamed from: i */
    @Nullable
    public DialogC13743fv f71491i;

    /* renamed from: com.sunia.HTREnginev2.gv$a */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((ClipboardManager) C13789gv.this.f71487e.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("url", C13789gv.this.f71488f.toString()));
            Toast.makeText(C13789gv.this.f71487e, C13789gv.this.f71487e.getString(C0349R.string.copy_toast_msg), 0).show();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.gv$b */
    /* loaded from: classes3.dex */
    public class b implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ View f71493a;

        public b(View view) {
            this.f71493a = view;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            d dVar = C13789gv.this.f71490h;
            if (dVar == null) {
                Log.e(C13789gv.f71486j, "Cannot trigger menu item listener, it is null");
            } else {
                dVar.m54358a(this.f71493a);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.gv$c */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: e */
        public final /* synthetic */ TextView f71495e;

        public c(TextView textView) {
            this.f71495e = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextViewCompat.getMaxLines(this.f71495e) == Integer.MAX_VALUE) {
                this.f71495e.setMaxLines(1);
                this.f71495e.setEllipsize(TextUtils.TruncateAt.END);
            } else {
                this.f71495e.setMaxLines(Integer.MAX_VALUE);
                this.f71495e.setEllipsize(null);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    /* renamed from: com.sunia.HTREnginev2.gv$d */
    /* loaded from: classes3.dex */
    public interface d {
        /* renamed from: a */
        void m54358a(View view);
    }

    public C13789gv(@NonNull Context context, @NonNull Uri uri, @NonNull List<BrowserActionItem> list) {
        this.f71487e = context;
        this.f71488f = uri;
        this.f71489g = m54352b(list);
    }

    /* renamed from: a */
    public final Runnable m54351a() {
        return new a();
    }

    @NonNull
    /* renamed from: b */
    public final List<BrowserActionItem> m54352b(List<BrowserActionItem> list) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BrowserActionItem(this.f71487e.getString(C0349R.string.fallback_menu_item_open_in_browser), m54353c()));
        arrayList.add(new BrowserActionItem(this.f71487e.getString(C0349R.string.fallback_menu_item_copy_link), m54351a()));
        arrayList.add(new BrowserActionItem(this.f71487e.getString(C0349R.string.fallback_menu_item_share_link), m54354d()));
        arrayList.addAll(list);
        return arrayList;
    }

    /* renamed from: c */
    public final PendingIntent m54353c() {
        return PendingIntent.getActivity(this.f71487e, 0, new Intent("android.intent.action.VIEW", this.f71488f), 67108864);
    }

    /* renamed from: d */
    public final PendingIntent m54354d() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", this.f71488f.toString());
        intent.setType("text/plain");
        return PendingIntent.getActivity(this.f71487e, 0, intent, 67108864);
    }

    /* renamed from: e */
    public void m54355e() {
        View inflate = LayoutInflater.from(this.f71487e).inflate(C0349R.layout.browser_actions_context_menu_page, (ViewGroup) null);
        DialogC13743fv dialogC13743fv = new DialogC13743fv(this.f71487e, m54356f(inflate));
        this.f71491i = dialogC13743fv;
        dialogC13743fv.setContentView(inflate);
        if (this.f71490h != null) {
            this.f71491i.setOnShowListener(new b(inflate));
        }
        this.f71491i.show();
    }

    /* renamed from: f */
    public final BrowserActionsFallbackMenuView m54356f(View view) {
        BrowserActionsFallbackMenuView browserActionsFallbackMenuView = (BrowserActionsFallbackMenuView) view.findViewById(C0349R.id.browser_actions_menu_view);
        TextView textView = (TextView) view.findViewById(C0349R.id.browser_actions_header_text);
        textView.setText(this.f71488f.toString());
        textView.setOnClickListener(new c(textView));
        ListView listView = (ListView) view.findViewById(C0349R.id.browser_actions_menu_items);
        listView.setAdapter((ListAdapter) new C13691ev(this.f71489g, this.f71487e));
        listView.setOnItemClickListener(this);
        return browserActionsFallbackMenuView;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    /* renamed from: g */
    public void m54357g(@Nullable d dVar) {
        this.f71490h = dVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        BrowserActionItem browserActionItem = this.f71489g.get(i);
        if (browserActionItem.getAction() != null) {
            try {
                browserActionItem.getAction().send();
            } catch (PendingIntent.CanceledException e) {
                Log.e(f71486j, "Failed to send custom item action", e);
            }
        } else if (browserActionItem.m1226a() != null) {
            browserActionItem.m1226a().run();
        }
        DialogC13743fv dialogC13743fv = this.f71491i;
        if (dialogC13743fv == null) {
            Log.e(f71486j, "Cannot dismiss dialog, it has already been dismissed.");
        } else {
            dialogC13743fv.dismiss();
        }
    }
}

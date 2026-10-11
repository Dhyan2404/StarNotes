package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.ActionBar;

/* renamed from: androidx.appcompat.app.b */
/* loaded from: classes3.dex */
public class C0167b implements AdapterView.OnItemSelectedListener {

    /* renamed from: e */
    public final ActionBar.OnNavigationListener f859e;

    public C0167b(ActionBar.OnNavigationListener onNavigationListener) {
        this.f859e = onNavigationListener;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ActionBar.OnNavigationListener onNavigationListener = this.f859e;
        if (onNavigationListener != null) {
            onNavigationListener.onNavigationItemSelected(i, j);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}

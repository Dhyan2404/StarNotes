package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;

/* loaded from: classes3.dex */
public class ShareActionProvider extends ActionProvider {
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";

    /* renamed from: k */
    public static final int f1916k = 4;

    /* renamed from: e */
    public int f1917e;

    /* renamed from: f */
    public final MenuItemOnMenuItemClickListenerC0291b f1918f;

    /* renamed from: g */
    public final Context f1919g;

    /* renamed from: h */
    public String f1920h;

    /* renamed from: i */
    public OnShareTargetSelectedListener f1921i;

    /* renamed from: j */
    public ActivityChooserModel.OnChooseActivityListener f1922j;

    /* loaded from: classes3.dex */
    public interface OnShareTargetSelectedListener {
        boolean onShareTargetSelected(ShareActionProvider shareActionProvider, Intent intent);
    }

    /* renamed from: androidx.appcompat.widget.ShareActionProvider$a */
    /* loaded from: classes3.dex */
    public class C0290a implements ActivityChooserModel.OnChooseActivityListener {
        public C0290a() {
        }

        @Override // androidx.appcompat.widget.ActivityChooserModel.OnChooseActivityListener
        public boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent) {
            ShareActionProvider shareActionProvider = ShareActionProvider.this;
            OnShareTargetSelectedListener onShareTargetSelectedListener = shareActionProvider.f1921i;
            if (onShareTargetSelectedListener == null) {
                return false;
            }
            onShareTargetSelectedListener.onShareTargetSelected(shareActionProvider, intent);
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ShareActionProvider$b */
    /* loaded from: classes3.dex */
    public class MenuItemOnMenuItemClickListenerC0291b implements MenuItem.OnMenuItemClickListener {
        public MenuItemOnMenuItemClickListenerC0291b() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ShareActionProvider shareActionProvider = ShareActionProvider.this;
            Intent m682b = ActivityChooserModel.m680d(shareActionProvider.f1919g, shareActionProvider.f1920h).m682b(menuItem.getItemId());
            if (m682b == null) {
                return true;
            }
            String action = m682b.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                ShareActionProvider.this.m913b(m682b);
            }
            ShareActionProvider.this.f1919g.startActivity(m682b);
            return true;
        }
    }

    public ShareActionProvider(Context context) {
        super(context);
        this.f1917e = 4;
        this.f1918f = new MenuItemOnMenuItemClickListenerC0291b();
        this.f1920h = DEFAULT_SHARE_HISTORY_FILE_NAME;
        this.f1919g = context;
    }

    /* renamed from: a */
    public final void m912a() {
        if (this.f1921i == null) {
            return;
        }
        if (this.f1922j == null) {
            this.f1922j = new C0290a();
        }
        ActivityChooserModel.m680d(this.f1919g, this.f1920h).m700u(this.f1922j);
    }

    /* renamed from: b */
    public void m913b(Intent intent) {
        intent.addFlags(134742016);
    }

    @Override // androidx.core.view.ActionProvider
    public boolean hasSubMenu() {
        return true;
    }

    @Override // androidx.core.view.ActionProvider
    public View onCreateActionView() {
        ActivityChooserView activityChooserView = new ActivityChooserView(this.f1919g);
        if (!activityChooserView.isInEditMode()) {
            activityChooserView.setActivityChooserModel(ActivityChooserModel.m680d(this.f1919g, this.f1920h));
        }
        TypedValue typedValue = new TypedValue();
        this.f1919g.getTheme().resolveAttribute(C0118R.attr.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(AppCompatResources.getDrawable(this.f1919g, typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(C0118R.string.abc_shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(C0118R.string.abc_shareactionprovider_share_with);
        return activityChooserView;
    }

    @Override // androidx.core.view.ActionProvider
    public void onPrepareSubMenu(SubMenu subMenu) {
        subMenu.clear();
        ActivityChooserModel m680d = ActivityChooserModel.m680d(this.f1919g, this.f1920h);
        PackageManager packageManager = this.f1919g.getPackageManager();
        int m685f = m680d.m685f();
        int min = Math.min(m685f, this.f1917e);
        for (int i = 0; i < min; i++) {
            ResolveInfo m684e = m680d.m684e(i);
            subMenu.add(0, i, i, m684e.loadLabel(packageManager)).setIcon(m684e.loadIcon(packageManager)).setOnMenuItemClickListener(this.f1918f);
        }
        if (min < m685f) {
            SubMenu addSubMenu = subMenu.addSubMenu(0, min, min, this.f1919g.getString(C0118R.string.abc_activity_chooser_view_see_all));
            for (int i2 = 0; i2 < m685f; i2++) {
                ResolveInfo m684e2 = m680d.m684e(i2);
                addSubMenu.add(0, i2, i2, m684e2.loadLabel(packageManager)).setIcon(m684e2.loadIcon(packageManager)).setOnMenuItemClickListener(this.f1918f);
            }
        }
    }

    public void setOnShareTargetSelectedListener(OnShareTargetSelectedListener onShareTargetSelectedListener) {
        this.f1921i = onShareTargetSelectedListener;
        m912a();
    }

    public void setShareHistoryFileName(String str) {
        this.f1920h = str;
        m912a();
    }

    public void setShareIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                m913b(intent);
            }
        }
        ActivityChooserModel.m680d(this.f1919g, this.f1920h).m699t(intent);
    }
}

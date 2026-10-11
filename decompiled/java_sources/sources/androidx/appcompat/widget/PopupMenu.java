package androidx.appcompat.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.ShowableListMenu;

/* loaded from: classes3.dex */
public class PopupMenu {

    /* renamed from: a */
    public final Context f1783a;

    /* renamed from: b */
    public final MenuBuilder f1784b;

    /* renamed from: c */
    public final View f1785c;

    /* renamed from: d */
    public final MenuPopupHelper f1786d;

    /* renamed from: e */
    public OnMenuItemClickListener f1787e;

    /* renamed from: f */
    public OnDismissListener f1788f;

    /* renamed from: g */
    public View.OnTouchListener f1789g;

    /* loaded from: classes3.dex */
    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    /* loaded from: classes3.dex */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    /* renamed from: androidx.appcompat.widget.PopupMenu$a */
    /* loaded from: classes3.dex */
    public class C0262a implements MenuBuilder.Callback {
        public C0262a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            OnMenuItemClickListener onMenuItemClickListener = PopupMenu.this.f1787e;
            if (onMenuItemClickListener != null) {
                return onMenuItemClickListener.onMenuItemClick(menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: androidx.appcompat.widget.PopupMenu$b */
    /* loaded from: classes3.dex */
    public class C0263b implements PopupWindow.OnDismissListener {
        public C0263b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PopupMenu popupMenu = PopupMenu.this;
            OnDismissListener onDismissListener = popupMenu.f1788f;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(popupMenu);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.PopupMenu$c */
    /* loaded from: classes3.dex */
    public class C0264c extends ForwardingListener {
        public C0264c(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu getPopup() {
            return PopupMenu.this.f1786d.getPopup();
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStarted() {
            PopupMenu.this.show();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStopped() {
            PopupMenu.this.dismiss();
            return true;
        }
    }

    public PopupMenu(@NonNull Context context, @NonNull View view) {
        this(context, view, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: a */
    public ListView m832a() {
        if (this.f1786d.isShowing()) {
            return this.f1786d.getListView();
        }
        return null;
    }

    public void dismiss() {
        this.f1786d.dismiss();
    }

    @NonNull
    public View.OnTouchListener getDragToOpenListener() {
        if (this.f1789g == null) {
            this.f1789g = new C0264c(this.f1785c);
        }
        return this.f1789g;
    }

    public int getGravity() {
        return this.f1786d.getGravity();
    }

    @NonNull
    public Menu getMenu() {
        return this.f1784b;
    }

    @NonNull
    public MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.f1783a);
    }

    public void inflate(@MenuRes int i) {
        getMenuInflater().inflate(i, this.f1784b);
    }

    public void setForceShowIcon(boolean z) {
        this.f1786d.setForceShowIcon(z);
    }

    public void setGravity(int i) {
        this.f1786d.setGravity(i);
    }

    public void setOnDismissListener(@Nullable OnDismissListener onDismissListener) {
        this.f1788f = onDismissListener;
    }

    public void setOnMenuItemClickListener(@Nullable OnMenuItemClickListener onMenuItemClickListener) {
        this.f1787e = onMenuItemClickListener;
    }

    public void show() {
        this.f1786d.show();
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i) {
        this(context, view, i, C0118R.attr.popupMenuStyle, 0);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i, @AttrRes int i2, @StyleRes int i3) {
        this.f1783a = context;
        this.f1785c = view;
        MenuBuilder menuBuilder = new MenuBuilder(context);
        this.f1784b = menuBuilder;
        menuBuilder.setCallback(new C0262a());
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(context, menuBuilder, view, false, i2, i3);
        this.f1786d = menuPopupHelper;
        menuPopupHelper.setGravity(i);
        menuPopupHelper.setOnDismissListener(new C0263b());
    }
}

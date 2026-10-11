package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuPopupWindow;
import com.sunia.HTREnginev2.fmj;

/* renamed from: androidx.appcompat.view.menu.c */
/* loaded from: classes3.dex */
public final class ViewOnKeyListenerC0202c extends fmj implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, MenuPresenter, View.OnKeyListener {

    /* renamed from: z */
    public static final int f1282z = C0118R.layout.abc_popup_menu_item_layout;

    /* renamed from: f */
    public final Context f1283f;

    /* renamed from: g */
    public final MenuBuilder f1284g;

    /* renamed from: h */
    public final MenuAdapter f1285h;

    /* renamed from: i */
    public final boolean f1286i;

    /* renamed from: j */
    public final int f1287j;

    /* renamed from: k */
    public final int f1288k;

    /* renamed from: l */
    public final int f1289l;

    /* renamed from: m */
    public final MenuPopupWindow f1290m;

    /* renamed from: p */
    public PopupWindow.OnDismissListener f1293p;

    /* renamed from: q */
    public View f1294q;

    /* renamed from: r */
    public View f1295r;

    /* renamed from: s */
    public MenuPresenter.Callback f1296s;

    /* renamed from: t */
    public ViewTreeObserver f1297t;

    /* renamed from: u */
    public boolean f1298u;

    /* renamed from: v */
    public boolean f1299v;

    /* renamed from: w */
    public int f1300w;

    /* renamed from: y */
    public boolean f1302y;

    /* renamed from: n */
    public final ViewTreeObserver.OnGlobalLayoutListener f1291n = new a();

    /* renamed from: o */
    public final View.OnAttachStateChangeListener f1292o = new b();

    /* renamed from: x */
    public int f1301x = 0;

    /* renamed from: androidx.appcompat.view.menu.c$a */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!ViewOnKeyListenerC0202c.this.isShowing() || ViewOnKeyListenerC0202c.this.f1290m.isModal()) {
                return;
            }
            View view = ViewOnKeyListenerC0202c.this.f1295r;
            if (view == null || !view.isShown()) {
                ViewOnKeyListenerC0202c.this.dismiss();
            } else {
                ViewOnKeyListenerC0202c.this.f1290m.show();
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.c$b */
    /* loaded from: classes3.dex */
    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = ViewOnKeyListenerC0202c.this.f1297t;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    ViewOnKeyListenerC0202c.this.f1297t = view.getViewTreeObserver();
                }
                ViewOnKeyListenerC0202c viewOnKeyListenerC0202c = ViewOnKeyListenerC0202c.this;
                viewOnKeyListenerC0202c.f1297t.removeGlobalOnLayoutListener(viewOnKeyListenerC0202c.f1291n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public ViewOnKeyListenerC0202c(Context context, MenuBuilder menuBuilder, View view, int i, int i2, boolean z) {
        this.f1283f = context;
        this.f1284g = menuBuilder;
        this.f1286i = z;
        this.f1285h = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z, f1282z);
        this.f1288k = i;
        this.f1289l = i2;
        Resources resources = context.getResources();
        this.f1287j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0118R.dimen.abc_config_prefDialogWidth));
        this.f1294q = view;
        this.f1290m = new MenuPopupWindow(context, null, i, i2);
        menuBuilder.addMenuPresenter(this, context);
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: a */
    public void mo574a(MenuBuilder menuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        if (isShowing()) {
            this.f1290m.dismiss();
        }
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: e */
    public void mo576e(View view) {
        this.f1294q = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: g */
    public void mo577g(boolean z) {
        this.f1285h.setForceShowIcon(z);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        return this.f1290m.getListView();
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: h */
    public void mo578h(int i) {
        this.f1301x = i;
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: i */
    public void mo579i(int i) {
        this.f1290m.setHorizontalOffset(i);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return !this.f1298u && this.f1290m.isShowing();
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: j */
    public void mo580j(PopupWindow.OnDismissListener onDismissListener) {
        this.f1293p = onDismissListener;
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: k */
    public void mo581k(boolean z) {
        this.f1302y = z;
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: l */
    public void mo582l(int i) {
        this.f1290m.setVerticalOffset(i);
    }

    /* renamed from: o */
    public final boolean m635o() {
        View view;
        if (isShowing()) {
            return true;
        }
        if (this.f1298u || (view = this.f1294q) == null) {
            return false;
        }
        this.f1295r = view;
        this.f1290m.setOnDismissListener(this);
        this.f1290m.setOnItemClickListener(this);
        this.f1290m.setModal(true);
        View view2 = this.f1295r;
        boolean z = this.f1297t == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f1297t = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f1291n);
        }
        view2.addOnAttachStateChangeListener(this.f1292o);
        this.f1290m.setAnchorView(view2);
        this.f1290m.setDropDownGravity(this.f1301x);
        if (!this.f1299v) {
            this.f1300w = fmj.m54133d(this.f1285h, null, this.f1283f, this.f1287j);
            this.f1299v = true;
        }
        this.f1290m.setContentWidth(this.f1300w);
        this.f1290m.setInputMethodMode(2);
        this.f1290m.setEpicenterBounds(m54136c());
        this.f1290m.show();
        ListView listView = this.f1290m.getListView();
        listView.setOnKeyListener(this);
        if (this.f1302y && this.f1284g.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1283f).inflate(C0118R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f1284g.getHeaderTitle());
            }
            frameLayout.setEnabled(false);
            listView.addHeaderView(frameLayout, null, false);
        }
        this.f1290m.setAdapter(this.f1285h);
        this.f1290m.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder != this.f1284g) {
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.f1296s;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f1298u = true;
        this.f1284g.close();
        ViewTreeObserver viewTreeObserver = this.f1297t;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1297t = this.f1295r.getViewTreeObserver();
            }
            this.f1297t.removeGlobalOnLayoutListener(this.f1291n);
            this.f1297t = null;
        }
        this.f1295r.removeOnAttachStateChangeListener(this.f1292o);
        PopupWindow.OnDismissListener onDismissListener = this.f1293p;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.f1283f, subMenuBuilder, this.f1295r, this.f1286i, this.f1288k, this.f1289l);
            menuPopupHelper.setPresenterCallback(this.f1296s);
            menuPopupHelper.setForceShowIcon(fmj.m54134m(subMenuBuilder));
            menuPopupHelper.setOnDismissListener(this.f1293p);
            this.f1293p = null;
            this.f1284g.close(false);
            int horizontalOffset = this.f1290m.getHorizontalOffset();
            int verticalOffset = this.f1290m.getVerticalOffset();
            if ((Gravity.getAbsoluteGravity(this.f1301x, this.f1294q.getLayoutDirection()) & 7) == 5) {
                horizontalOffset += this.f1294q.getWidth();
            }
            if (menuPopupHelper.tryShow(horizontalOffset, verticalOffset)) {
                MenuPresenter.Callback callback = this.f1296s;
                if (callback == null) {
                    return true;
                }
                callback.onOpenSubMenu(subMenuBuilder);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f1296s = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        if (!m635o()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        this.f1299v = false;
        MenuAdapter menuAdapter = this.f1285h;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }
}

package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.GravityCompat;
import com.sunia.HTREnginev2.fmj;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class CascadingMenuPopup extends fmj implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: q0 */
    public static final int f1098q0 = C0118R.layout.abc_cascading_menu_item_layout;

    /* renamed from: t0 */
    public static final int f1099t0 = 0;

    /* renamed from: u0 */
    public static final int f1100u0 = 1;

    /* renamed from: v0 */
    public static final int f1101v0 = 200;

    /* renamed from: J */
    public boolean f1102J;

    /* renamed from: O */
    public MenuPresenter.Callback f1103O;

    /* renamed from: Q */
    public ViewTreeObserver f1104Q;

    /* renamed from: Z */
    public PopupWindow.OnDismissListener f1105Z;

    /* renamed from: f */
    public final Context f1106f;

    /* renamed from: g */
    public final int f1107g;

    /* renamed from: h */
    public final int f1108h;

    /* renamed from: i */
    public final int f1109i;

    /* renamed from: j */
    public final boolean f1110j;

    /* renamed from: k */
    public final Handler f1111k;

    /* renamed from: k0 */
    public boolean f1112k0;

    /* renamed from: s */
    public View f1120s;

    /* renamed from: t */
    public View f1121t;

    /* renamed from: v */
    public boolean f1123v;

    /* renamed from: w */
    public boolean f1124w;

    /* renamed from: x */
    public int f1125x;

    /* renamed from: y */
    public int f1126y;

    /* renamed from: l */
    public final List<MenuBuilder> f1113l = new ArrayList();

    /* renamed from: m */
    public final List<C0192d> f1114m = new ArrayList();

    /* renamed from: n */
    public final ViewTreeObserver.OnGlobalLayoutListener f1115n = new ViewTreeObserverOnGlobalLayoutListenerC0189a();

    /* renamed from: o */
    public final View.OnAttachStateChangeListener f1116o = new ViewOnAttachStateChangeListenerC0190b();

    /* renamed from: p */
    public final MenuItemHoverListener f1117p = new C0191c();

    /* renamed from: q */
    public int f1118q = 0;

    /* renamed from: r */
    public int f1119r = 0;

    /* renamed from: z */
    public boolean f1127z = false;

    /* renamed from: u */
    public int f1122u = m587s();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface HorizPosition {
    }

    /* renamed from: androidx.appcompat.view.menu.CascadingMenuPopup$a */
    /* loaded from: classes3.dex */
    public class ViewTreeObserverOnGlobalLayoutListenerC0189a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserverOnGlobalLayoutListenerC0189a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!CascadingMenuPopup.this.isShowing() || CascadingMenuPopup.this.f1114m.size() <= 0 || CascadingMenuPopup.this.f1114m.get(0).f1135a.isModal()) {
                return;
            }
            View view = CascadingMenuPopup.this.f1121t;
            if (view == null || !view.isShown()) {
                CascadingMenuPopup.this.dismiss();
                return;
            }
            Iterator<C0192d> it2 = CascadingMenuPopup.this.f1114m.iterator();
            while (it2.hasNext()) {
                it2.next().f1135a.show();
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.CascadingMenuPopup$b */
    /* loaded from: classes3.dex */
    public class ViewOnAttachStateChangeListenerC0190b implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC0190b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = CascadingMenuPopup.this.f1104Q;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.f1104Q = view.getViewTreeObserver();
                }
                CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
                cascadingMenuPopup.f1104Q.removeGlobalOnLayoutListener(cascadingMenuPopup.f1115n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.CascadingMenuPopup$c */
    /* loaded from: classes3.dex */
    public class C0191c implements MenuItemHoverListener {

        /* renamed from: androidx.appcompat.view.menu.CascadingMenuPopup$c$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ C0192d f1131e;

            /* renamed from: f */
            public final /* synthetic */ MenuItem f1132f;

            /* renamed from: g */
            public final /* synthetic */ MenuBuilder f1133g;

            public a(C0192d c0192d, MenuItem menuItem, MenuBuilder menuBuilder) {
                this.f1131e = c0192d;
                this.f1132f = menuItem;
                this.f1133g = menuBuilder;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0192d c0192d = this.f1131e;
                if (c0192d != null) {
                    CascadingMenuPopup.this.f1112k0 = true;
                    c0192d.f1136b.close(false);
                    CascadingMenuPopup.this.f1112k0 = false;
                }
                if (this.f1132f.isEnabled() && this.f1132f.hasSubMenu()) {
                    this.f1133g.performItemAction(this.f1132f, 4);
                }
            }
        }

        public C0191c() {
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverEnter(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.f1111k.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.f1114m.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (menuBuilder == CascadingMenuPopup.this.f1114m.get(i).f1136b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            CascadingMenuPopup.this.f1111k.postAtTime(new a(i2 < CascadingMenuPopup.this.f1114m.size() ? CascadingMenuPopup.this.f1114m.get(i2) : null, menuItem, menuBuilder), menuBuilder, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.f1111k.removeCallbacksAndMessages(menuBuilder);
        }
    }

    /* renamed from: androidx.appcompat.view.menu.CascadingMenuPopup$d */
    /* loaded from: classes3.dex */
    public static class C0192d {

        /* renamed from: a */
        public final MenuPopupWindow f1135a;

        /* renamed from: b */
        public final MenuBuilder f1136b;

        /* renamed from: c */
        public final int f1137c;

        public C0192d(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int i) {
            this.f1135a = menuPopupWindow;
            this.f1136b = menuBuilder;
            this.f1137c = i;
        }

        /* renamed from: a */
        public ListView m590a() {
            return this.f1135a.getListView();
        }
    }

    public CascadingMenuPopup(@NonNull Context context, @NonNull View view, @AttrRes int i, @StyleRes int i2, boolean z) {
        this.f1106f = context;
        this.f1120s = view;
        this.f1108h = i;
        this.f1109i = i2;
        this.f1110j = z;
        Resources resources = context.getResources();
        this.f1107g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0118R.dimen.abc_config_prefDialogWidth));
        this.f1111k = new Handler();
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: a */
    public void mo574a(MenuBuilder menuBuilder) {
        menuBuilder.addMenuPresenter(this, this.f1106f);
        if (isShowing()) {
            m589u(menuBuilder);
        } else {
            this.f1113l.add(menuBuilder);
        }
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: b */
    public boolean mo575b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        int size = this.f1114m.size();
        if (size > 0) {
            C0192d[] c0192dArr = (C0192d[]) this.f1114m.toArray(new C0192d[size]);
            for (int i = size - 1; i >= 0; i--) {
                C0192d c0192d = c0192dArr[i];
                if (c0192d.f1135a.isShowing()) {
                    c0192d.f1135a.dismiss();
                }
            }
        }
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: e */
    public void mo576e(@NonNull View view) {
        if (this.f1120s != view) {
            this.f1120s = view;
            this.f1119r = GravityCompat.getAbsoluteGravity(this.f1118q, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: g */
    public void mo577g(boolean z) {
        this.f1127z = z;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        if (this.f1114m.isEmpty()) {
            return null;
        }
        return this.f1114m.get(r1.size() - 1).m590a();
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: h */
    public void mo578h(int i) {
        if (this.f1118q != i) {
            this.f1118q = i;
            this.f1119r = GravityCompat.getAbsoluteGravity(i, this.f1120s.getLayoutDirection());
        }
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: i */
    public void mo579i(int i) {
        this.f1123v = true;
        this.f1125x = i;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.f1114m.size() > 0 && this.f1114m.get(0).f1135a.isShowing();
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: j */
    public void mo580j(PopupWindow.OnDismissListener onDismissListener) {
        this.f1105Z = onDismissListener;
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: k */
    public void mo581k(boolean z) {
        this.f1102J = z;
    }

    @Override // com.sunia.HTREnginev2.fmj
    /* renamed from: l */
    public void mo582l(int i) {
        this.f1124w = true;
        this.f1126y = i;
    }

    /* renamed from: o */
    public final MenuPopupWindow m583o() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.f1106f, null, this.f1108h, this.f1109i);
        menuPopupWindow.setHoverListener(this.f1117p);
        menuPopupWindow.setOnItemClickListener(this);
        menuPopupWindow.setOnDismissListener(this);
        menuPopupWindow.setAnchorView(this.f1120s);
        menuPopupWindow.setDropDownGravity(this.f1119r);
        menuPopupWindow.setModal(true);
        menuPopupWindow.setInputMethodMode(2);
        return menuPopupWindow;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        int m584p = m584p(menuBuilder);
        if (m584p < 0) {
            return;
        }
        int i = m584p + 1;
        if (i < this.f1114m.size()) {
            this.f1114m.get(i).f1136b.close(false);
        }
        C0192d remove = this.f1114m.remove(m584p);
        remove.f1136b.removeMenuPresenter(this);
        if (this.f1112k0) {
            remove.f1135a.setExitTransition(null);
            remove.f1135a.setAnimationStyle(0);
        }
        remove.f1135a.dismiss();
        int size = this.f1114m.size();
        if (size > 0) {
            this.f1122u = this.f1114m.get(size - 1).f1137c;
        } else {
            this.f1122u = m587s();
        }
        if (size != 0) {
            if (z) {
                this.f1114m.get(0).f1136b.close(false);
                return;
            }
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.f1103O;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, true);
        }
        ViewTreeObserver viewTreeObserver = this.f1104Q;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f1104Q.removeGlobalOnLayoutListener(this.f1115n);
            }
            this.f1104Q = null;
        }
        this.f1121t.removeOnAttachStateChangeListener(this.f1116o);
        this.f1105Z.onDismiss();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0192d c0192d;
        int size = this.f1114m.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0192d = null;
                break;
            }
            c0192d = this.f1114m.get(i);
            if (!c0192d.f1135a.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (c0192d != null) {
            c0192d.f1136b.close(false);
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
        for (C0192d c0192d : this.f1114m) {
            if (subMenuBuilder == c0192d.f1136b) {
                c0192d.m590a().requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        mo574a(subMenuBuilder);
        MenuPresenter.Callback callback = this.f1103O;
        if (callback != null) {
            callback.onOpenSubMenu(subMenuBuilder);
        }
        return true;
    }

    /* renamed from: p */
    public final int m584p(@NonNull MenuBuilder menuBuilder) {
        int size = this.f1114m.size();
        for (int i = 0; i < size; i++) {
            if (menuBuilder == this.f1114m.get(i).f1136b) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: q */
    public final MenuItem m585q(@NonNull MenuBuilder menuBuilder, @NonNull MenuBuilder menuBuilder2) {
        int size = menuBuilder.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menuBuilder.getItem(i);
            if (item.hasSubMenu() && menuBuilder2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: r */
    public final View m586r(@NonNull C0192d c0192d, @NonNull MenuBuilder menuBuilder) {
        MenuAdapter menuAdapter;
        int i;
        int firstVisiblePosition;
        MenuItem m585q = m585q(c0192d.f1136b, menuBuilder);
        if (m585q == null) {
            return null;
        }
        ListView m590a = c0192d.m590a();
        ListAdapter adapter = m590a.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
        } else {
            menuAdapter = (MenuAdapter) adapter;
            i = 0;
        }
        int count = menuAdapter.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            }
            if (m585q == menuAdapter.getItem(i2)) {
                break;
            }
            i2++;
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - m590a.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < m590a.getChildCount()) {
            return m590a.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    /* renamed from: s */
    public final int m587s() {
        return this.f1120s.getLayoutDirection() == 1 ? 0 : 1;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f1103O = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        if (isShowing()) {
            return;
        }
        Iterator<MenuBuilder> it2 = this.f1113l.iterator();
        while (it2.hasNext()) {
            m589u(it2.next());
        }
        this.f1113l.clear();
        View view = this.f1120s;
        this.f1121t = view;
        if (view != null) {
            boolean z = this.f1104Q == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f1104Q = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f1115n);
            }
            this.f1121t.addOnAttachStateChangeListener(this.f1116o);
        }
    }

    /* renamed from: t */
    public final int m588t(int i) {
        List<C0192d> list = this.f1114m;
        ListView m590a = list.get(list.size() - 1).m590a();
        int[] iArr = new int[2];
        m590a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f1121t.getWindowVisibleDisplayFrame(rect);
        return this.f1122u == 1 ? (iArr[0] + m590a.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* renamed from: u */
    public final void m589u(@NonNull MenuBuilder menuBuilder) {
        C0192d c0192d;
        View view;
        int i;
        LayoutInflater from = LayoutInflater.from(this.f1106f);
        MenuAdapter menuAdapter = new MenuAdapter(menuBuilder, from, this.f1110j, f1098q0);
        if (!isShowing() && this.f1127z) {
            menuAdapter.setForceShowIcon(true);
        } else if (isShowing()) {
            menuAdapter.setForceShowIcon(fmj.m54134m(menuBuilder));
        }
        int m54133d = fmj.m54133d(menuAdapter, null, this.f1106f, this.f1107g);
        MenuPopupWindow m583o = m583o();
        m583o.setAdapter(menuAdapter);
        m583o.setContentWidth(m54133d);
        m583o.setDropDownGravity(this.f1119r);
        if (this.f1114m.size() > 0) {
            List<C0192d> list = this.f1114m;
            c0192d = list.get(list.size() - 1);
            view = m586r(c0192d, menuBuilder);
        } else {
            c0192d = null;
            view = null;
        }
        if (view != null) {
            m583o.setTouchModal(false);
            m583o.setEnterTransition(null);
            int m588t = m588t(m54133d);
            boolean z = m588t == 1;
            this.f1122u = m588t;
            m583o.setAnchorView(view);
            if ((this.f1119r & 5) == 5) {
                if (!z) {
                    m54133d = view.getWidth();
                    i = 0 - m54133d;
                }
                i = m54133d + 0;
            } else {
                if (z) {
                    m54133d = view.getWidth();
                    i = m54133d + 0;
                }
                i = 0 - m54133d;
            }
            m583o.setHorizontalOffset(i);
            m583o.setOverlapAnchor(true);
            m583o.setVerticalOffset(0);
        } else {
            if (this.f1123v) {
                m583o.setHorizontalOffset(this.f1125x);
            }
            if (this.f1124w) {
                m583o.setVerticalOffset(this.f1126y);
            }
            m583o.setEpicenterBounds(m54136c());
        }
        this.f1114m.add(new C0192d(m583o, menuBuilder, this.f1122u));
        m583o.show();
        ListView listView = m583o.getListView();
        listView.setOnKeyListener(this);
        if (c0192d == null && this.f1102J && menuBuilder.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(C0118R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(menuBuilder.getHeaderTitle());
            listView.addHeaderView(frameLayout, null, false);
            m583o.show();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        Iterator<C0192d> it2 = this.f1114m.iterator();
        while (it2.hasNext()) {
            fmj.m54135n(it2.next().m590a().getAdapter()).notifyDataSetChanged();
        }
    }
}

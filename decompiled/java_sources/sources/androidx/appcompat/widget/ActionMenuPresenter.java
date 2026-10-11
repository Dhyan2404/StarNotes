package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ActionProvider;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {

    /* renamed from: Q */
    public static final String f1376Q = "ActionMenuPresenter";

    /* renamed from: J */
    public final C0216f f1377J;

    /* renamed from: O */
    public int f1378O;

    /* renamed from: i */
    public C0214d f1379i;

    /* renamed from: j */
    public Drawable f1380j;

    /* renamed from: k */
    public boolean f1381k;

    /* renamed from: l */
    public boolean f1382l;

    /* renamed from: m */
    public boolean f1383m;

    /* renamed from: n */
    public int f1384n;

    /* renamed from: o */
    public int f1385o;

    /* renamed from: p */
    public int f1386p;

    /* renamed from: q */
    public boolean f1387q;

    /* renamed from: r */
    public boolean f1388r;

    /* renamed from: s */
    public boolean f1389s;

    /* renamed from: t */
    public boolean f1390t;

    /* renamed from: u */
    public int f1391u;

    /* renamed from: v */
    public final SparseBooleanArray f1392v;

    /* renamed from: w */
    public C0215e f1393w;

    /* renamed from: x */
    public C0211a f1394x;

    /* renamed from: y */
    public RunnableC0213c f1395y;

    /* renamed from: z */
    public C0212b f1396z;

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes3.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0210a();
        public int openSubMenuId;

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$a */
        /* loaded from: classes3.dex */
        public class C0210a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.openSubMenuId);
        }

        public SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$a */
    /* loaded from: classes3.dex */
    public class C0211a extends MenuPopupHelper {
        public C0211a(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, C0118R.attr.actionOverflowMenuStyle);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
                View view2 = ActionMenuPresenter.this.f1379i;
                setAnchorView(view2 == null ? (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView : view2);
            }
            setPresenterCallback(ActionMenuPresenter.this.f1377J);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public void onDismiss() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f1394x = null;
            actionMenuPresenter.f1378O = 0;
            super.onDismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$b */
    /* loaded from: classes3.dex */
    public class C0212b extends ActionMenuItemView.PopupCallback {
        public C0212b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public ShowableListMenu getPopup() {
            C0211a c0211a = ActionMenuPresenter.this.f1394x;
            if (c0211a != null) {
                return c0211a.getPopup();
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$c */
    /* loaded from: classes3.dex */
    public class RunnableC0213c implements Runnable {

        /* renamed from: e */
        public C0215e f1399e;

        public RunnableC0213c(C0215e c0215e) {
            this.f1399e = c0215e;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.changeMenuMode();
            }
            View view = (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView;
            if (view != null && view.getWindowToken() != null && this.f1399e.tryShow()) {
                ActionMenuPresenter.this.f1393w = this.f1399e;
            }
            ActionMenuPresenter.this.f1395y = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d */
    /* loaded from: classes3.dex */
    public class C0214d extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$d$a */
        /* loaded from: classes3.dex */
        public class a extends ForwardingListener {

            /* renamed from: n */
            public final /* synthetic */ ActionMenuPresenter f1402n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
                this.f1402n = actionMenuPresenter;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public ShowableListMenu getPopup() {
                C0215e c0215e = ActionMenuPresenter.this.f1393w;
                if (c0215e == null) {
                    return null;
                }
                return c0215e.getPopup();
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public boolean onForwardingStarted() {
                ActionMenuPresenter.this.m675w();
                return true;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public boolean onForwardingStopped() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.f1395y != null) {
                    return false;
                }
                actionMenuPresenter.m663k();
                return true;
            }
        }

        public C0214d(Context context) {
            super(context, null, C0118R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.setTooltipText(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m675w();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                DrawableCompat.setHotspotBounds(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$e */
    /* loaded from: classes3.dex */
    public class C0215e extends MenuPopupHelper {
        public C0215e(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z, C0118R.attr.actionOverflowMenuStyle);
            setGravity(8388613);
            setPresenterCallback(ActionMenuPresenter.this.f1377J);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public void onDismiss() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.close();
            }
            ActionMenuPresenter.this.f1393w = null;
            super.onDismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$f */
    /* loaded from: classes3.dex */
    public class C0216f implements MenuPresenter.Callback {
        public C0216f() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().close(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                callback.onCloseMenu(menuBuilder, z);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            if (menuBuilder == ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu) {
                return false;
            }
            ActionMenuPresenter.this.f1378O = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
            if (callback != null) {
                return callback.onOpenSubMenu(menuBuilder);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, C0118R.layout.abc_action_menu_layout, C0118R.layout.abc_action_menu_item_layout);
        this.f1392v = new SparseBooleanArray();
        this.f1377J = new C0216f();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.mMenuView);
        if (this.f1396z == null) {
            this.f1396z = new C0212b();
        }
        actionMenuItemView.setPopupCallback(this.f1396z);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f1379i) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        ArrayList<MenuItemImpl> arrayList;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.mMenu;
        View view = null;
        ?? r3 = 0;
        if (menuBuilder != null) {
            arrayList = menuBuilder.getVisibleItems();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i5 = actionMenuPresenter.f1386p;
        int i6 = actionMenuPresenter.f1385o;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.mMenuView;
        boolean z2 = false;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < i; i9++) {
            MenuItemImpl menuItemImpl = arrayList.get(i9);
            if (menuItemImpl.requiresActionButton()) {
                i7++;
            } else if (menuItemImpl.requestsActionButton()) {
                i8++;
            } else {
                z2 = true;
            }
            if (actionMenuPresenter.f1390t && menuItemImpl.isActionViewExpanded()) {
                i5 = 0;
            }
        }
        if (actionMenuPresenter.f1382l && (z2 || i8 + i7 > i5)) {
            i5--;
        }
        int i10 = i5 - i7;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.f1392v;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.f1388r) {
            int i11 = actionMenuPresenter.f1391u;
            i3 = i6 / i11;
            i2 = i11 + ((i6 % i11) / i3);
        } else {
            i2 = 0;
            i3 = 0;
        }
        int i12 = 0;
        int i13 = 0;
        while (i12 < i) {
            MenuItemImpl menuItemImpl2 = arrayList.get(i12);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = actionMenuPresenter.getItemView(menuItemImpl2, view, viewGroup);
                if (actionMenuPresenter.f1388r) {
                    i3 -= ActionMenuView.m678r(itemView, i2, i3, makeMeasureSpec, r3);
                } else {
                    itemView.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = itemView.getMeasuredWidth();
                i6 -= measuredWidth;
                if (i13 == 0) {
                    i13 = measuredWidth;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                menuItemImpl2.setIsActionButton(true);
                z = r3;
                i4 = i;
            } else if (menuItemImpl2.requestsActionButton()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z3 = sparseBooleanArray.get(groupId2);
                boolean z4 = (i10 > 0 || z3) && i6 > 0 && (!actionMenuPresenter.f1388r || i3 > 0);
                boolean z5 = z4;
                i4 = i;
                if (z4) {
                    View itemView2 = actionMenuPresenter.getItemView(menuItemImpl2, null, viewGroup);
                    if (actionMenuPresenter.f1388r) {
                        int m678r = ActionMenuView.m678r(itemView2, i2, i3, makeMeasureSpec, 0);
                        i3 -= m678r;
                        if (m678r == 0) {
                            z5 = false;
                        }
                    } else {
                        itemView2.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    boolean z6 = z5;
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i6 -= measuredWidth2;
                    if (i13 == 0) {
                        i13 = measuredWidth2;
                    }
                    z4 = z6 & (!actionMenuPresenter.f1388r ? i6 + i13 <= 0 : i6 < 0);
                }
                if (z4 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z3) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i14 = 0; i14 < i12; i14++) {
                        MenuItemImpl menuItemImpl3 = arrayList.get(i14);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.isActionButton()) {
                                i10++;
                            }
                            menuItemImpl3.setIsActionButton(false);
                        }
                    }
                }
                if (z4) {
                    i10--;
                }
                menuItemImpl2.setIsActionButton(z4);
                z = false;
            } else {
                z = r3;
                i4 = i;
                menuItemImpl2.setIsActionButton(z);
            }
            i12++;
            r3 = z;
            i = i4;
            view = null;
            actionMenuPresenter = this;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = this.mMenuView;
        MenuView menuView2 = super.getMenuView(viewGroup);
        if (menuView != menuView2) {
            ((ActionMenuView) menuView2).setPresenter(this);
        }
        return menuView2;
    }

    /* renamed from: h */
    public boolean m660h() {
        return m664l() | m663k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public final View m661i(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.f1383m) {
            this.f1382l = actionBarPolicy.showsOverflowMenuButton();
        }
        if (!this.f1389s) {
            this.f1384n = actionBarPolicy.getEmbeddedMenuWidthLimit();
        }
        if (!this.f1387q) {
            this.f1386p = actionBarPolicy.getMaxActionButtons();
        }
        int i = this.f1384n;
        if (this.f1382l) {
            if (this.f1379i == null) {
                C0214d c0214d = new C0214d(this.mSystemContext);
                this.f1379i = c0214d;
                if (this.f1381k) {
                    c0214d.setImageDrawable(this.f1380j);
                    this.f1380j = null;
                    this.f1381k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1379i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f1379i.getMeasuredWidth();
        } else {
            this.f1379i = null;
        }
        this.f1385o = i;
        this.f1391u = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    /* renamed from: j */
    public Drawable m662j() {
        C0214d c0214d = this.f1379i;
        if (c0214d != null) {
            return c0214d.getDrawable();
        }
        if (this.f1381k) {
            return this.f1380j;
        }
        return null;
    }

    /* renamed from: k */
    public boolean m663k() {
        Object obj;
        RunnableC0213c runnableC0213c = this.f1395y;
        if (runnableC0213c != null && (obj = this.mMenuView) != null) {
            ((View) obj).removeCallbacks(runnableC0213c);
            this.f1395y = null;
            return true;
        }
        C0215e c0215e = this.f1393w;
        if (c0215e == null) {
            return false;
        }
        c0215e.dismiss();
        return true;
    }

    /* renamed from: l */
    public boolean m664l() {
        C0211a c0211a = this.f1394x;
        if (c0211a == null) {
            return false;
        }
        c0211a.dismiss();
        return true;
    }

    /* renamed from: m */
    public boolean m665m() {
        return this.f1395y != null || m666n();
    }

    /* renamed from: n */
    public boolean m666n() {
        C0215e c0215e = this.f1393w;
        return c0215e != null && c0215e.isShowing();
    }

    /* renamed from: o */
    public boolean m667o() {
        return this.f1382l;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        m660h();
        super.onCloseMenu(menuBuilder, z);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).openSubMenuId) > 0 && (findItem = this.mMenu.findItem(i)) != null) {
            onSubMenuSelected((SubMenuBuilder) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.f1378O;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z = false;
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        View m661i = m661i(subMenuBuilder2.getItem());
        if (m661i == null) {
            return false;
        }
        this.f1378O = subMenuBuilder.getItem().getItemId();
        int size = subMenuBuilder.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = subMenuBuilder.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        C0211a c0211a = new C0211a(this.mContext, subMenuBuilder, m661i);
        this.f1394x = c0211a;
        c0211a.setForceShowIcon(z);
        this.f1394x.show();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
            return;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.close(false);
        }
    }

    /* renamed from: p */
    public void m668p(Configuration configuration) {
        if (!this.f1387q) {
            this.f1386p = ActionBarPolicy.get(this.mContext).getMaxActionButtons();
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.onItemsChanged(true);
        }
    }

    /* renamed from: q */
    public void m669q(boolean z) {
        this.f1390t = z;
    }

    /* renamed from: r */
    public void m670r(int i) {
        this.f1386p = i;
        this.f1387q = true;
    }

    /* renamed from: s */
    public void m671s(ActionMenuView actionMenuView) {
        this.mMenuView = actionMenuView;
        actionMenuView.initialize(this.mMenu);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    /* renamed from: t */
    public void m672t(Drawable drawable) {
        C0214d c0214d = this.f1379i;
        if (c0214d != null) {
            c0214d.setImageDrawable(drawable);
        } else {
            this.f1381k = true;
            this.f1380j = drawable;
        }
    }

    /* renamed from: u */
    public void m673u(boolean z) {
        this.f1382l = z;
        this.f1383m = true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        super.updateMenuView(z);
        ((View) this.mMenuView).requestLayout();
        MenuBuilder menuBuilder = this.mMenu;
        boolean z2 = false;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> actionItems = menuBuilder.getActionItems();
            int size = actionItems.size();
            for (int i = 0; i < size; i++) {
                ActionProvider supportActionProvider = actionItems.get(i).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.mMenu;
        ArrayList<MenuItemImpl> nonActionItems = menuBuilder2 != null ? menuBuilder2.getNonActionItems() : null;
        if (this.f1382l && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z2 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.f1379i == null) {
                this.f1379i = new C0214d(this.mSystemContext);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1379i.getParent();
            if (viewGroup != this.mMenuView) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1379i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.f1379i, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            C0214d c0214d = this.f1379i;
            if (c0214d != null) {
                Object parent = c0214d.getParent();
                Object obj = this.mMenuView;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f1379i);
                }
            }
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.f1382l);
    }

    /* renamed from: v */
    public void m674v(int i, boolean z) {
        this.f1384n = i;
        this.f1388r = z;
        this.f1389s = true;
    }

    /* renamed from: w */
    public boolean m675w() {
        MenuBuilder menuBuilder;
        if (!this.f1382l || m666n() || (menuBuilder = this.mMenu) == null || this.mMenuView == null || this.f1395y != null || menuBuilder.getNonActionItems().isEmpty()) {
            return false;
        }
        RunnableC0213c runnableC0213c = new RunnableC0213c(new C0215e(this.mContext, this.mMenu, this.f1379i, true));
        this.f1395y = runnableC0213c;
        ((View) this.mMenuView).post(runnableC0213c);
        return true;
    }
}

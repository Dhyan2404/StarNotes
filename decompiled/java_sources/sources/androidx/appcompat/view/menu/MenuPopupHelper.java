package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.GravityCompat;
import com.sunia.HTREnginev2.fmj;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class MenuPopupHelper implements InterfaceC0201b {

    /* renamed from: m */
    public static final int f1261m = 48;

    /* renamed from: a */
    public final Context f1262a;

    /* renamed from: b */
    public final MenuBuilder f1263b;

    /* renamed from: c */
    public final boolean f1264c;

    /* renamed from: d */
    public final int f1265d;

    /* renamed from: e */
    public final int f1266e;

    /* renamed from: f */
    public View f1267f;

    /* renamed from: g */
    public int f1268g;

    /* renamed from: h */
    public boolean f1269h;

    /* renamed from: i */
    public MenuPresenter.Callback f1270i;

    /* renamed from: j */
    public fmj f1271j;

    /* renamed from: k */
    public PopupWindow.OnDismissListener f1272k;

    /* renamed from: l */
    public final PopupWindow.OnDismissListener f1273l;

    /* renamed from: androidx.appcompat.view.menu.MenuPopupHelper$a */
    /* loaded from: classes3.dex */
    public class C0199a implements PopupWindow.OnDismissListener {
        public C0199a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MenuPopupHelper.this.onDismiss();
        }
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false, C0118R.attr.popupMenuStyle, 0);
    }

    @NonNull
    /* renamed from: a */
    public final fmj m630a() {
        Display defaultDisplay = ((WindowManager) this.f1262a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        fmj cascadingMenuPopup = Math.min(point.x, point.y) >= this.f1262a.getResources().getDimensionPixelSize(C0118R.dimen.abc_cascading_menus_min_smallest_width) ? new CascadingMenuPopup(this.f1262a, this.f1267f, this.f1265d, this.f1266e, this.f1264c) : new ViewOnKeyListenerC0202c(this.f1262a, this.f1263b, this.f1267f, this.f1265d, this.f1266e, this.f1264c);
        cascadingMenuPopup.mo574a(this.f1263b);
        cascadingMenuPopup.mo580j(this.f1273l);
        cascadingMenuPopup.mo576e(this.f1267f);
        cascadingMenuPopup.setCallback(this.f1270i);
        cascadingMenuPopup.mo577g(this.f1269h);
        cascadingMenuPopup.mo578h(this.f1268g);
        return cascadingMenuPopup;
    }

    /* renamed from: b */
    public final void m631b(int i, int i2, boolean z, boolean z2) {
        fmj popup = getPopup();
        popup.mo581k(z2);
        if (z) {
            if ((GravityCompat.getAbsoluteGravity(this.f1268g, this.f1267f.getLayoutDirection()) & 7) == 5) {
                i -= this.f1267f.getWidth();
            }
            popup.mo579i(i);
            popup.mo582l(i2);
            int i3 = (int) ((this.f1262a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            popup.m54137f(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
        }
        popup.show();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0201b
    public void dismiss() {
        if (isShowing()) {
            this.f1271j.dismiss();
        }
    }

    public int getGravity() {
        return this.f1268g;
    }

    public ListView getListView() {
        return getPopup().getListView();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public fmj getPopup() {
        if (this.f1271j == null) {
            this.f1271j = m630a();
        }
        return this.f1271j;
    }

    public boolean isShowing() {
        fmj fmjVar = this.f1271j;
        return fmjVar != null && fmjVar.isShowing();
    }

    public void onDismiss() {
        this.f1271j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1272k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void setAnchorView(@NonNull View view) {
        this.f1267f = view;
    }

    public void setForceShowIcon(boolean z) {
        this.f1269h = z;
        fmj fmjVar = this.f1271j;
        if (fmjVar != null) {
            fmjVar.mo577g(z);
        }
    }

    public void setGravity(int i) {
        this.f1268g = i;
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f1272k = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0201b
    public void setPresenterCallback(@Nullable MenuPresenter.Callback callback) {
        this.f1270i = callback;
        fmj fmjVar = this.f1271j;
        if (fmjVar != null) {
            fmjVar.setCallback(callback);
        }
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean tryShow() {
        if (isShowing()) {
            return true;
        }
        if (this.f1267f == null) {
            return false;
        }
        m631b(0, 0, false, false);
        return true;
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view) {
        this(context, menuBuilder, view, false, C0118R.attr.popupMenuStyle, 0);
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z, @AttrRes int i) {
        this(context, menuBuilder, view, z, i, 0);
    }

    public void show(int i, int i2) {
        if (!tryShow(i, i2)) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z, @AttrRes int i, @StyleRes int i2) {
        this.f1268g = GravityCompat.START;
        this.f1273l = new C0199a();
        this.f1262a = context;
        this.f1263b = menuBuilder;
        this.f1267f = view;
        this.f1264c = z;
        this.f1265d = i;
        this.f1266e = i2;
    }

    public boolean tryShow(int i, int i2) {
        if (isShowing()) {
            return true;
        }
        if (this.f1267f == null) {
            return false;
        }
        m631b(i, i2, true, true);
        return true;
    }
}

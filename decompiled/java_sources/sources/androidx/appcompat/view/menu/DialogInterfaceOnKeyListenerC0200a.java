package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.appcompat.C0118R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuPresenter;

/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes3.dex */
public class DialogInterfaceOnKeyListenerC0200a implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, MenuPresenter.Callback {

    /* renamed from: e */
    public MenuBuilder f1278e;

    /* renamed from: f */
    public AlertDialog f1279f;

    /* renamed from: g */
    public ListMenuPresenter f1280g;

    /* renamed from: h */
    public MenuPresenter.Callback f1281h;

    public DialogInterfaceOnKeyListenerC0200a(MenuBuilder menuBuilder) {
        this.f1278e = menuBuilder;
    }

    /* renamed from: a */
    public void m632a() {
        AlertDialog alertDialog = this.f1279f;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* renamed from: b */
    public void m633b(MenuPresenter.Callback callback) {
        this.f1281h = callback;
    }

    /* renamed from: c */
    public void m634c(IBinder iBinder) {
        MenuBuilder menuBuilder = this.f1278e;
        AlertDialog.Builder builder = new AlertDialog.Builder(menuBuilder.getContext());
        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(builder.getContext(), C0118R.layout.abc_list_menu_item_layout);
        this.f1280g = listMenuPresenter;
        listMenuPresenter.setCallback(this);
        this.f1278e.addMenuPresenter(this.f1280g);
        builder.setAdapter(this.f1280g.getAdapter(), this);
        View headerView = menuBuilder.getHeaderView();
        if (headerView != null) {
            builder.setCustomTitle(headerView);
        } else {
            builder.setIcon(menuBuilder.getHeaderIcon()).setTitle(menuBuilder.getHeaderTitle());
        }
        builder.setOnKeyListener(this);
        AlertDialog create = builder.create();
        this.f1279f = create;
        create.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1279f.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f1279f.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1278e.performItemAction((MenuItemImpl) this.f1280g.getAdapter().getItem(i), 0);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
        if (z || menuBuilder == this.f1278e) {
            m632a();
        }
        MenuPresenter.Callback callback = this.f1281h;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1280g.onCloseMenu(this.f1278e, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f1279f.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f1279f.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f1278e.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f1278e.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
        MenuPresenter.Callback callback = this.f1281h;
        if (callback != null) {
            return callback.onOpenSubMenu(menuBuilder);
        }
        return false;
    }
}

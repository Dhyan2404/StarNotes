package androidx.navigation.p003ui;

import android.graphics.drawable.Drawable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u001c\u0010\n\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\bH\u0014R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;", "Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;", "", "title", "", "setTitle", "Landroid/graphics/drawable/Drawable;", "icon", "", "contentDescription", "setNavigationIcon", "Landroidx/appcompat/app/AppCompatActivity;", C6997f.f39671c, "Landroidx/appcompat/app/AppCompatActivity;", ActivityChooserModel.f1429r, "Landroidx/navigation/ui/AppBarConfiguration;", "configuration", Constants.CONSTRUCTOR_NAME, "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/ui/AppBarConfiguration;)V", "navigation-ui_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ActionBarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final AppCompatActivity activity;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActionBarOnDestinationChangedListener(@org.jetbrains.annotations.NotNull androidx.appcompat.app.AppCompatActivity r3, @org.jetbrains.annotations.NotNull androidx.navigation.p003ui.AppBarConfiguration r4) {
        /*
            r2 = this;
            java.lang.String r0 = "activity"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "configuration"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.appcompat.app.ActionBarDrawerToggle$Delegate r0 = r3.getDrawerToggleDelegate()
            if (r0 == 0) goto L1f
            android.content.Context r0 = r0.getActionBarThemedContext()
            java.lang.String r1 = "checkNotNull(activity.dr… }.actionBarThemedContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0, r4)
            r2.activity = r3
            return
        L1f:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Activity "
            r2.append(r4)
            r2.append(r3)
            java.lang.String r3 = " does not have an DrawerToggleDelegate set"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r2 = r2.toString()
            r3.<init>(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.p003ui.ActionBarOnDestinationChangedListener.<init>(androidx.appcompat.app.AppCompatActivity, androidx.navigation.ui.AppBarConfiguration):void");
    }

    @Override // androidx.navigation.p003ui.AbstractAppBarOnDestinationChangedListener
    public void setNavigationIcon(@Nullable Drawable icon, @StringRes int contentDescription) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null) {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an ActionBar set via setSupportActionBar()").toString());
        }
        Intrinsics.checkNotNullExpressionValue(supportActionBar, "checkNotNull(activity.su…ortActionBar()\"\n        }");
        supportActionBar.setDisplayHomeAsUpEnabled(icon != null);
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = this.activity.getDrawerToggleDelegate();
        if (drawerToggleDelegate != null) {
            Intrinsics.checkNotNullExpressionValue(drawerToggleDelegate, "checkNotNull(activity.dr…leDelegate set\"\n        }");
            drawerToggleDelegate.setActionBarUpIndicator(icon, contentDescription);
        } else {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an DrawerToggleDelegate set").toString());
        }
    }

    @Override // androidx.navigation.p003ui.AbstractAppBarOnDestinationChangedListener
    public void setTitle(@Nullable CharSequence title) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            Intrinsics.checkNotNullExpressionValue(supportActionBar, "checkNotNull(activity.su…ortActionBar()\"\n        }");
            supportActionBar.setTitle(title);
        } else {
            throw new IllegalStateException(("Activity " + this.activity + " does not have an ActionBar set via setSupportActionBar()").toString());
        }
    }
}

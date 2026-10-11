package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.LayoutRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class SupportMenuInflater extends MenuInflater {

    /* renamed from: e */
    public static final String f991e = "SupportMenuInflater";

    /* renamed from: f */
    public static final String f992f = "menu";

    /* renamed from: g */
    public static final String f993g = "group";

    /* renamed from: h */
    public static final String f994h = "item";

    /* renamed from: i */
    public static final int f995i = 0;

    /* renamed from: j */
    public static final Class<?>[] f996j;

    /* renamed from: k */
    public static final Class<?>[] f997k;

    /* renamed from: a */
    public final Object[] f998a;

    /* renamed from: b */
    public final Object[] f999b;

    /* renamed from: c */
    public Context f1000c;

    /* renamed from: d */
    public Object f1001d;

    /* renamed from: androidx.appcompat.view.SupportMenuInflater$a */
    /* loaded from: classes3.dex */
    public static class MenuItemOnMenuItemClickListenerC0182a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: g */
        public static final Class<?>[] f1002g = {MenuItem.class};

        /* renamed from: e */
        public Object f1003e;

        /* renamed from: f */
        public Method f1004f;

        public MenuItemOnMenuItemClickListenerC0182a(Object obj, String str) {
            this.f1003e = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f1004f = cls.getMethod(str, f1002g);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f1004f.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f1004f.invoke(this.f1003e, menuItem)).booleanValue();
                }
                this.f1004f.invoke(this.f1003e, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: androidx.appcompat.view.SupportMenuInflater$b */
    /* loaded from: classes3.dex */
    public class C0183b {

        /* renamed from: G */
        public static final int f1005G = 0;

        /* renamed from: H */
        public static final int f1006H = 0;

        /* renamed from: I */
        public static final int f1007I = 0;

        /* renamed from: J */
        public static final int f1008J = 0;

        /* renamed from: K */
        public static final int f1009K = 0;

        /* renamed from: L */
        public static final boolean f1010L = false;

        /* renamed from: M */
        public static final boolean f1011M = true;

        /* renamed from: N */
        public static final boolean f1012N = true;

        /* renamed from: A */
        public ActionProvider f1013A;

        /* renamed from: B */
        public CharSequence f1014B;

        /* renamed from: C */
        public CharSequence f1015C;

        /* renamed from: D */
        public ColorStateList f1016D = null;

        /* renamed from: E */
        public PorterDuff.Mode f1017E = null;

        /* renamed from: a */
        public Menu f1019a;

        /* renamed from: b */
        public int f1020b;

        /* renamed from: c */
        public int f1021c;

        /* renamed from: d */
        public int f1022d;

        /* renamed from: e */
        public int f1023e;

        /* renamed from: f */
        public boolean f1024f;

        /* renamed from: g */
        public boolean f1025g;

        /* renamed from: h */
        public boolean f1026h;

        /* renamed from: i */
        public int f1027i;

        /* renamed from: j */
        public int f1028j;

        /* renamed from: k */
        public CharSequence f1029k;

        /* renamed from: l */
        public CharSequence f1030l;

        /* renamed from: m */
        public int f1031m;

        /* renamed from: n */
        public char f1032n;

        /* renamed from: o */
        public int f1033o;

        /* renamed from: p */
        public char f1034p;

        /* renamed from: q */
        public int f1035q;

        /* renamed from: r */
        public int f1036r;

        /* renamed from: s */
        public boolean f1037s;

        /* renamed from: t */
        public boolean f1038t;

        /* renamed from: u */
        public boolean f1039u;

        /* renamed from: v */
        public int f1040v;

        /* renamed from: w */
        public int f1041w;

        /* renamed from: x */
        public String f1042x;

        /* renamed from: y */
        public String f1043y;

        /* renamed from: z */
        public String f1044z;

        public C0183b(Menu menu) {
            this.f1019a = menu;
            m563h();
        }

        /* renamed from: a */
        public void m556a() {
            this.f1026h = true;
            m564i(this.f1019a.add(this.f1020b, this.f1027i, this.f1028j, this.f1029k));
        }

        /* renamed from: b */
        public SubMenu m557b() {
            this.f1026h = true;
            SubMenu addSubMenu = this.f1019a.addSubMenu(this.f1020b, this.f1027i, this.f1028j, this.f1029k);
            m564i(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: c */
        public final char m558c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: d */
        public boolean m559d() {
            return this.f1026h;
        }

        /* renamed from: e */
        public final <T> T m560e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.f1000c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w(SupportMenuInflater.f991e, "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: f */
        public void m561f(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = SupportMenuInflater.this.f1000c.obtainStyledAttributes(attributeSet, C0118R.styleable.MenuGroup);
            this.f1020b = obtainStyledAttributes.getResourceId(C0118R.styleable.MenuGroup_android_id, 0);
            this.f1021c = obtainStyledAttributes.getInt(C0118R.styleable.MenuGroup_android_menuCategory, 0);
            this.f1022d = obtainStyledAttributes.getInt(C0118R.styleable.MenuGroup_android_orderInCategory, 0);
            this.f1023e = obtainStyledAttributes.getInt(C0118R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f1024f = obtainStyledAttributes.getBoolean(C0118R.styleable.MenuGroup_android_visible, true);
            this.f1025g = obtainStyledAttributes.getBoolean(C0118R.styleable.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: g */
        public void m562g(AttributeSet attributeSet) {
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(SupportMenuInflater.this.f1000c, attributeSet, C0118R.styleable.MenuItem);
            this.f1027i = obtainStyledAttributes.getResourceId(C0118R.styleable.MenuItem_android_id, 0);
            this.f1028j = (obtainStyledAttributes.getInt(C0118R.styleable.MenuItem_android_menuCategory, this.f1021c) & (-65536)) | (obtainStyledAttributes.getInt(C0118R.styleable.MenuItem_android_orderInCategory, this.f1022d) & 65535);
            this.f1029k = obtainStyledAttributes.getText(C0118R.styleable.MenuItem_android_title);
            this.f1030l = obtainStyledAttributes.getText(C0118R.styleable.MenuItem_android_titleCondensed);
            this.f1031m = obtainStyledAttributes.getResourceId(C0118R.styleable.MenuItem_android_icon, 0);
            this.f1032n = m558c(obtainStyledAttributes.getString(C0118R.styleable.MenuItem_android_alphabeticShortcut));
            this.f1033o = obtainStyledAttributes.getInt(C0118R.styleable.MenuItem_alphabeticModifiers, 4096);
            this.f1034p = m558c(obtainStyledAttributes.getString(C0118R.styleable.MenuItem_android_numericShortcut));
            this.f1035q = obtainStyledAttributes.getInt(C0118R.styleable.MenuItem_numericModifiers, 4096);
            if (obtainStyledAttributes.hasValue(C0118R.styleable.MenuItem_android_checkable)) {
                this.f1036r = obtainStyledAttributes.getBoolean(C0118R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f1036r = this.f1023e;
            }
            this.f1037s = obtainStyledAttributes.getBoolean(C0118R.styleable.MenuItem_android_checked, false);
            this.f1038t = obtainStyledAttributes.getBoolean(C0118R.styleable.MenuItem_android_visible, this.f1024f);
            this.f1039u = obtainStyledAttributes.getBoolean(C0118R.styleable.MenuItem_android_enabled, this.f1025g);
            this.f1040v = obtainStyledAttributes.getInt(C0118R.styleable.MenuItem_showAsAction, -1);
            this.f1044z = obtainStyledAttributes.getString(C0118R.styleable.MenuItem_android_onClick);
            this.f1041w = obtainStyledAttributes.getResourceId(C0118R.styleable.MenuItem_actionLayout, 0);
            this.f1042x = obtainStyledAttributes.getString(C0118R.styleable.MenuItem_actionViewClass);
            String string = obtainStyledAttributes.getString(C0118R.styleable.MenuItem_actionProviderClass);
            this.f1043y = string;
            boolean z = string != null;
            if (z && this.f1041w == 0 && this.f1042x == null) {
                this.f1013A = (ActionProvider) m560e(string, SupportMenuInflater.f997k, SupportMenuInflater.this.f999b);
            } else {
                if (z) {
                    Log.w(SupportMenuInflater.f991e, "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f1013A = null;
            }
            this.f1014B = obtainStyledAttributes.getText(C0118R.styleable.MenuItem_contentDescription);
            this.f1015C = obtainStyledAttributes.getText(C0118R.styleable.MenuItem_tooltipText);
            if (obtainStyledAttributes.hasValue(C0118R.styleable.MenuItem_iconTintMode)) {
                this.f1017E = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0118R.styleable.MenuItem_iconTintMode, -1), this.f1017E);
            } else {
                this.f1017E = null;
            }
            if (obtainStyledAttributes.hasValue(C0118R.styleable.MenuItem_iconTint)) {
                this.f1016D = obtainStyledAttributes.getColorStateList(C0118R.styleable.MenuItem_iconTint);
            } else {
                this.f1016D = null;
            }
            obtainStyledAttributes.recycle();
            this.f1026h = false;
        }

        /* renamed from: h */
        public void m563h() {
            this.f1020b = 0;
            this.f1021c = 0;
            this.f1022d = 0;
            this.f1023e = 0;
            this.f1024f = true;
            this.f1025g = true;
        }

        /* renamed from: i */
        public final void m564i(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f1037s).setVisible(this.f1038t).setEnabled(this.f1039u).setCheckable(this.f1036r >= 1).setTitleCondensed(this.f1030l).setIcon(this.f1031m);
            int i = this.f1040v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f1044z != null) {
                if (SupportMenuInflater.this.f1000c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new MenuItemOnMenuItemClickListenerC0182a(SupportMenuInflater.this.m554b(), this.f1044z));
            }
            if (this.f1036r >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
                }
            }
            String str = this.f1042x;
            if (str != null) {
                menuItem.setActionView((View) m560e(str, SupportMenuInflater.f996j, SupportMenuInflater.this.f998a));
                z = true;
            }
            int i2 = this.f1041w;
            if (i2 > 0) {
                if (z) {
                    Log.w(SupportMenuInflater.f991e, "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i2);
                }
            }
            ActionProvider actionProvider = this.f1013A;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.f1014B);
            MenuItemCompat.setTooltipText(menuItem, this.f1015C);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.f1032n, this.f1033o);
            MenuItemCompat.setNumericShortcut(menuItem, this.f1034p, this.f1035q);
            PorterDuff.Mode mode = this.f1017E;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.f1016D;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f996j = clsArr;
        f997k = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.f1000c = context;
        Object[] objArr = {context};
        this.f998a = objArr;
        this.f999b = objArr;
    }

    /* renamed from: a */
    public final Object m553a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? m553a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* renamed from: b */
    public Object m554b() {
        if (this.f1001d == null) {
            this.f1001d = m553a(this.f1000c);
        }
        return this.f1001d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if (r15 == 2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
    
        if (r15 == 3) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
    
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
    
        if (r15.equals(r8) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
    
        r7 = false;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b9, code lost:
    
        r15 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (r15.equals("group") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        r0.m563h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        if (r15.equals("item") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        if (r0.m559d() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        r15 = r0.f1013A;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
    
        if (r15 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
    
        if (r15.hasSubMenu() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
    
        r0.m557b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0082, code lost:
    
        r0.m556a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
    
        if (r15.equals("menu") == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008e, code lost:
    
        if (r7 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0091, code lost:
    
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0099, code lost:
    
        if (r15.equals("group") == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
    
        r0.m561f(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a3, code lost:
    
        if (r15.equals("item") == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a5, code lost:
    
        r0.m562g(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
    
        if (r15.equals("menu") == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00af, code lost:
    
        m555c(r13, r14, r0.m557b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b7, code lost:
    
        r8 = r15;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c5, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c6, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003b, code lost:
    
        r6 = false;
        r7 = false;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
    
        if (r6 != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
    
        if (r15 == 1) goto L61;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m555c(org.xmlpull.v1.XmlPullParser r13, android.util.AttributeSet r14, android.view.Menu r15) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r12 = this;
            androidx.appcompat.view.SupportMenuInflater$b r0 = new androidx.appcompat.view.SupportMenuInflater$b
            r0.<init>(r15)
            int r15 = r13.getEventType()
        L9:
            r1 = 2
            java.lang.String r2 = "menu"
            r3 = 1
            if (r15 != r1) goto L35
            java.lang.String r15 = r13.getName()
            boolean r4 = r15.equals(r2)
            if (r4 == 0) goto L1e
            int r15 = r13.next()
            goto L3b
        L1e:
            java.lang.RuntimeException r12 = new java.lang.RuntimeException
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r14 = "Expecting menu, got "
            r13.append(r14)
            r13.append(r15)
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        L35:
            int r15 = r13.next()
            if (r15 != r3) goto L9
        L3b:
            r4 = 0
            r5 = 0
            r6 = r4
            r7 = r6
            r8 = r5
        L40:
            if (r6 != 0) goto Lc6
            if (r15 == r3) goto Lbe
            java.lang.String r9 = "item"
            java.lang.String r10 = "group"
            if (r15 == r1) goto L8e
            r11 = 3
            if (r15 == r11) goto L4f
            goto Lb9
        L4f:
            java.lang.String r15 = r13.getName()
            if (r7 == 0) goto L5e
            boolean r11 = r15.equals(r8)
            if (r11 == 0) goto L5e
            r7 = r4
            r8 = r5
            goto Lb9
        L5e:
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L68
            r0.m563h()
            goto Lb9
        L68:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto L86
            boolean r15 = r0.m559d()
            if (r15 != 0) goto Lb9
            androidx.core.view.ActionProvider r15 = r0.f1013A
            if (r15 == 0) goto L82
            boolean r15 = r15.hasSubMenu()
            if (r15 == 0) goto L82
            r0.m557b()
            goto Lb9
        L82:
            r0.m556a()
            goto Lb9
        L86:
            boolean r15 = r15.equals(r2)
            if (r15 == 0) goto Lb9
            r6 = r3
            goto Lb9
        L8e:
            if (r7 == 0) goto L91
            goto Lb9
        L91:
            java.lang.String r15 = r13.getName()
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L9f
            r0.m561f(r14)
            goto Lb9
        L9f:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto La9
            r0.m562g(r14)
            goto Lb9
        La9:
            boolean r9 = r15.equals(r2)
            if (r9 == 0) goto Lb7
            android.view.SubMenu r15 = r0.m557b()
            r12.m555c(r13, r14, r15)
            goto Lb9
        Lb7:
            r8 = r15
            r7 = r3
        Lb9:
            int r15 = r13.next()
            goto L40
        Lbe:
            java.lang.RuntimeException r12 = new java.lang.RuntimeException
            java.lang.String r13 = "Unexpected end of document"
            r12.<init>(r13)
            throw r12
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.SupportMenuInflater.m555c(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z = false;
        try {
            try {
                xmlResourceParser = this.f1000c.getResources().getLayout(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof MenuBuilder) {
                    MenuBuilder menuBuilder = (MenuBuilder) menu;
                    if (menuBuilder.isDispatchingItemsChanged()) {
                        menuBuilder.stopDispatchingItemsChanged();
                        z = true;
                    }
                }
                m555c(xmlResourceParser, asAttributeSet, menu);
            } catch (IOException e) {
                throw new InflateException("Error inflating menu XML", e);
            } catch (XmlPullParserException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } finally {
            if (z) {
                ((MenuBuilder) menu).startDispatchingItemsChanged();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }
}

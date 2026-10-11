package androidx.browser.browseractions;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import com.sunia.HTREnginev2.C13789gv;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Deprecated
/* loaded from: classes3.dex */
public class BrowserActionsIntent {
    public static final String ACTION_BROWSER_ACTIONS_OPEN = "androidx.browser.browseractions.browser_action_open";
    public static final String EXTRA_APP_ID = "androidx.browser.browseractions.APP_ID";
    public static final String EXTRA_MENU_ITEMS = "androidx.browser.browseractions.extra.MENU_ITEMS";
    public static final String EXTRA_SELECTED_ACTION_PENDING_INTENT = "androidx.browser.browseractions.extra.SELECTED_ACTION_PENDING_INTENT";
    public static final String EXTRA_TYPE = "androidx.browser.browseractions.extra.TYPE";
    public static final int ITEM_COPY = 3;
    public static final int ITEM_DOWNLOAD = 2;
    public static final int ITEM_INVALID_ITEM = -1;
    public static final int ITEM_OPEN_IN_INCOGNITO = 1;
    public static final int ITEM_OPEN_IN_NEW_TAB = 0;
    public static final int ITEM_SHARE = 4;
    public static final String KEY_ACTION = "androidx.browser.browseractions.ACTION";
    public static final String KEY_ICON_ID = "androidx.browser.browseractions.ICON_ID";
    public static final String KEY_TITLE = "androidx.browser.browseractions.TITLE";

    @SuppressLint({"MinMaxConstant"})
    public static final int MAX_CUSTOM_ITEMS = 5;
    public static final int URL_TYPE_AUDIO = 3;
    public static final int URL_TYPE_FILE = 4;
    public static final int URL_TYPE_IMAGE = 1;
    public static final int URL_TYPE_NONE = 0;
    public static final int URL_TYPE_PLUGIN = 5;
    public static final int URL_TYPE_VIDEO = 2;

    /* renamed from: b */
    public static final String f2326b = "BrowserActions";

    /* renamed from: c */
    public static final String f2327c = "https://www.example.com";

    /* renamed from: d */
    public static final String f2328d = "androidx.browser.browseractions.ICON_URI";

    /* renamed from: e */
    @Nullable
    public static InterfaceC0350a f2329e;

    /* renamed from: a */
    @NonNull
    public final Intent f2330a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface BrowserActionsItemId {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface BrowserActionsUrlType {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    /* renamed from: androidx.browser.browseractions.BrowserActionsIntent$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC0350a {
        /* renamed from: a */
        void m1232a();
    }

    public BrowserActionsIntent(@NonNull Intent intent) {
        this.f2330a = intent;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    /* renamed from: a */
    public static void m1227a(Context context, Intent intent, List<ResolveInfo> list) {
        if (list == null || list.size() == 0) {
            m1228b(context, intent);
            return;
        }
        int i = 0;
        if (list.size() == 1) {
            intent.setPackage(list.get(0).activityInfo.packageName);
        } else {
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(f2327c)), 65536);
            if (resolveActivity != null) {
                String str = resolveActivity.activityInfo.packageName;
                while (true) {
                    if (i >= list.size()) {
                        break;
                    }
                    if (str.equals(list.get(i).activityInfo.packageName)) {
                        intent.setPackage(str);
                        break;
                    }
                    i++;
                }
            }
        }
        ContextCompat.startActivity(context, intent, null);
    }

    /* renamed from: b */
    public static void m1228b(Context context, Intent intent) {
        Uri data = intent.getData();
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(EXTRA_MENU_ITEMS);
        m1229c(context, data, parcelableArrayListExtra != null ? parseBrowserActionItems(parcelableArrayListExtra) : null);
    }

    /* renamed from: c */
    public static void m1229c(Context context, Uri uri, List<BrowserActionItem> list) {
        new C13789gv(context, uri, list).m54355e();
        InterfaceC0350a interfaceC0350a = f2329e;
        if (interfaceC0350a != null) {
            interfaceC0350a.m1232a();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    /* renamed from: d */
    public static void m1230d(InterfaceC0350a interfaceC0350a) {
        f2329e = interfaceC0350a;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static List<ResolveInfo> getBrowserActionsIntentHandlers(@NonNull Context context) {
        return context.getPackageManager().queryIntentActivities(new Intent(ACTION_BROWSER_ACTIONS_OPEN, Uri.parse(f2327c)), 131072);
    }

    @Nullable
    @Deprecated
    public static String getCreatorPackageName(@NonNull Intent intent) {
        return getUntrustedCreatorPackageName(intent);
    }

    @Nullable
    public static String getUntrustedCreatorPackageName(@NonNull Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(EXTRA_APP_ID);
        if (pendingIntent != null) {
            return pendingIntent.getCreatorPackage();
        }
        return null;
    }

    public static void launchIntent(@NonNull Context context, @NonNull Intent intent) {
        m1227a(context, intent, getBrowserActionsIntentHandlers(context));
    }

    public static void openBrowserAction(@NonNull Context context, @NonNull Uri uri) {
        launchIntent(context, new Builder(context, uri).build().getIntent());
    }

    @NonNull
    public static List<BrowserActionItem> parseBrowserActionItems(@NonNull ArrayList<Bundle> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            Bundle bundle = arrayList.get(i);
            String string = bundle.getString(KEY_TITLE);
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(KEY_ACTION);
            int i2 = bundle.getInt(KEY_ICON_ID);
            Uri uri = (Uri) bundle.getParcelable(f2328d);
            if (TextUtils.isEmpty(string) || pendingIntent == null) {
                throw new IllegalArgumentException("Custom item should contain a non-empty title and non-null intent.");
            }
            arrayList2.add(i2 != 0 ? new BrowserActionItem(string, pendingIntent, i2) : new BrowserActionItem(string, pendingIntent, uri));
        }
        return arrayList2;
    }

    @NonNull
    public Intent getIntent() {
        return this.f2330a;
    }

    public static void openBrowserAction(@NonNull Context context, @NonNull Uri uri, int i, @NonNull ArrayList<BrowserActionItem> arrayList, @NonNull PendingIntent pendingIntent) {
        launchIntent(context, new Builder(context, uri).setUrlType(i).setCustomItems(arrayList).setOnItemSelectedAction(pendingIntent).build().getIntent());
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: b */
        public Context f2332b;

        /* renamed from: c */
        public Uri f2333c;

        /* renamed from: a */
        public final Intent f2331a = new Intent(BrowserActionsIntent.ACTION_BROWSER_ACTIONS_OPEN);

        /* renamed from: d */
        public int f2334d = 0;

        /* renamed from: e */
        public ArrayList<Bundle> f2335e = new ArrayList<>();

        /* renamed from: f */
        @Nullable
        public PendingIntent f2336f = null;

        /* renamed from: g */
        public List<Uri> f2337g = new ArrayList();

        public Builder(@NonNull Context context, @NonNull Uri uri) {
            this.f2332b = context;
            this.f2333c = uri;
        }

        @NonNull
        /* renamed from: a */
        public final Bundle m1231a(@NonNull BrowserActionItem browserActionItem) {
            Bundle bundle = new Bundle();
            bundle.putString(BrowserActionsIntent.KEY_TITLE, browserActionItem.getTitle());
            bundle.putParcelable(BrowserActionsIntent.KEY_ACTION, browserActionItem.getAction());
            if (browserActionItem.getIconId() != 0) {
                bundle.putInt(BrowserActionsIntent.KEY_ICON_ID, browserActionItem.getIconId());
            }
            if (browserActionItem.getIconUri() != null) {
                bundle.putParcelable(BrowserActionsIntent.f2328d, browserActionItem.getIconUri());
            }
            return bundle;
        }

        @NonNull
        public BrowserActionsIntent build() {
            this.f2331a.setData(this.f2333c);
            this.f2331a.putExtra(BrowserActionsIntent.EXTRA_TYPE, this.f2334d);
            this.f2331a.putParcelableArrayListExtra(BrowserActionsIntent.EXTRA_MENU_ITEMS, this.f2335e);
            this.f2331a.putExtra(BrowserActionsIntent.EXTRA_APP_ID, PendingIntent.getActivity(this.f2332b, 0, new Intent(), 67108864));
            PendingIntent pendingIntent = this.f2336f;
            if (pendingIntent != null) {
                this.f2331a.putExtra(BrowserActionsIntent.EXTRA_SELECTED_ACTION_PENDING_INTENT, pendingIntent);
            }
            BrowserServiceFileProvider.grantReadPermission(this.f2331a, this.f2337g, this.f2332b);
            return new BrowserActionsIntent(this.f2331a);
        }

        @NonNull
        public Builder setCustomItems(@NonNull ArrayList<BrowserActionItem> arrayList) {
            if (arrayList.size() <= 5) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (!TextUtils.isEmpty(arrayList.get(i).getTitle()) && arrayList.get(i).getAction() != null) {
                        this.f2335e.add(m1231a(arrayList.get(i)));
                        if (arrayList.get(i).getIconUri() != null) {
                            this.f2337g.add(arrayList.get(i).getIconUri());
                        }
                    } else {
                        throw new IllegalArgumentException("Custom item should contain a non-empty title and non-null intent.");
                    }
                }
                return this;
            }
            throw new IllegalStateException("Exceeded maximum toolbar item count of 5");
        }

        @NonNull
        public Builder setOnItemSelectedAction(@NonNull PendingIntent pendingIntent) {
            this.f2336f = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setUrlType(int i) {
            this.f2334d = i;
            return this;
        }

        @NonNull
        public Builder setCustomItems(@NonNull BrowserActionItem... browserActionItemArr) {
            return setCustomItems(new ArrayList<>(Arrays.asList(browserActionItemArr)));
        }
    }
}

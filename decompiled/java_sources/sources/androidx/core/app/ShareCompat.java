package androidx.core.app;

import android.app.Activity;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.IntentCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "androidx.core.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_ACTIVITY_INTEROP = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "androidx.core.app.EXTRA_CALLING_PACKAGE";
    public static final String EXTRA_CALLING_PACKAGE_INTEROP = "android.support.v4.app.EXTRA_CALLING_PACKAGE";

    /* renamed from: a */
    public static final String f5158a = ".sharecompat_";

    /* loaded from: classes3.dex */
    public static class IntentBuilder {

        /* renamed from: a */
        @NonNull
        public final Context f5159a;

        /* renamed from: b */
        @NonNull
        public final Intent f5160b;

        /* renamed from: c */
        @Nullable
        public CharSequence f5161c;

        /* renamed from: d */
        @Nullable
        public ArrayList<String> f5162d;

        /* renamed from: e */
        @Nullable
        public ArrayList<String> f5163e;

        /* renamed from: f */
        @Nullable
        public ArrayList<String> f5164f;

        /* renamed from: g */
        @Nullable
        public ArrayList<Uri> f5165g;

        public IntentBuilder(@NonNull Context context) {
            Activity activity;
            this.f5159a = (Context) Preconditions.checkNotNull(context);
            Intent action = new Intent().setAction("android.intent.action.SEND");
            this.f5160b = action;
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE, context.getPackageName());
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE_INTEROP, context.getPackageName());
            action.addFlags(524288);
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                } else {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            if (activity != null) {
                ComponentName componentName = activity.getComponentName();
                this.f5160b.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY, componentName);
                this.f5160b.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY_INTEROP, componentName);
            }
        }

        @NonNull
        @Deprecated
        public static IntentBuilder from(@NonNull Activity activity) {
            return new IntentBuilder(activity);
        }

        /* renamed from: a */
        public final void m2636a(String str, ArrayList<String> arrayList) {
            String[] stringArrayExtra = this.f5160b.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr = new String[arrayList.size() + length];
            arrayList.toArray(strArr);
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
            }
            this.f5160b.putExtra(str, strArr);
        }

        @NonNull
        public IntentBuilder addEmailBcc(@NonNull String str) {
            if (this.f5164f == null) {
                this.f5164f = new ArrayList<>();
            }
            this.f5164f.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailCc(@NonNull String str) {
            if (this.f5163e == null) {
                this.f5163e = new ArrayList<>();
            }
            this.f5163e.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailTo(@NonNull String str) {
            if (this.f5162d == null) {
                this.f5162d = new ArrayList<>();
            }
            this.f5162d.add(str);
            return this;
        }

        @NonNull
        public IntentBuilder addStream(@NonNull Uri uri) {
            if (this.f5165g == null) {
                this.f5165g = new ArrayList<>();
            }
            this.f5165g.add(uri);
            return this;
        }

        /* renamed from: b */
        public final void m2637b(@Nullable String str, @NonNull String[] strArr) {
            Intent intent = getIntent();
            String[] stringArrayExtra = intent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr2 = new String[strArr.length + length];
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
            }
            System.arraycopy(strArr, 0, strArr2, length, strArr.length);
            intent.putExtra(str, strArr2);
        }

        @NonNull
        /* renamed from: c */
        public Context m2638c() {
            return this.f5159a;
        }

        @NonNull
        public Intent createChooserIntent() {
            return Intent.createChooser(getIntent(), this.f5161c);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        
            if (r0.size() > 1) goto L17;
         */
        @androidx.annotation.NonNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.content.Intent getIntent() {
            /*
                r5 = this;
                java.util.ArrayList<java.lang.String> r0 = r5.f5162d
                r1 = 0
                if (r0 == 0) goto Lc
                java.lang.String r2 = "android.intent.extra.EMAIL"
                r5.m2636a(r2, r0)
                r5.f5162d = r1
            Lc:
                java.util.ArrayList<java.lang.String> r0 = r5.f5163e
                if (r0 == 0) goto L17
                java.lang.String r2 = "android.intent.extra.CC"
                r5.m2636a(r2, r0)
                r5.f5163e = r1
            L17:
                java.util.ArrayList<java.lang.String> r0 = r5.f5164f
                if (r0 == 0) goto L22
                java.lang.String r2 = "android.intent.extra.BCC"
                r5.m2636a(r2, r0)
                r5.f5164f = r1
            L22:
                java.util.ArrayList<android.net.Uri> r0 = r5.f5165g
                r2 = 0
                if (r0 == 0) goto L2f
                int r0 = r0.size()
                r3 = 1
                if (r0 <= r3) goto L2f
                goto L30
            L2f:
                r3 = r2
            L30:
                java.lang.String r0 = "android.intent.extra.STREAM"
                if (r3 != 0) goto L70
                android.content.Intent r3 = r5.f5160b
                java.lang.String r4 = "android.intent.action.SEND"
                r3.setAction(r4)
                java.util.ArrayList<android.net.Uri> r3 = r5.f5165g
                if (r3 == 0) goto L5a
                boolean r3 = r3.isEmpty()
                if (r3 != 0) goto L5a
                android.content.Intent r1 = r5.f5160b
                java.util.ArrayList<android.net.Uri> r3 = r5.f5165g
                java.lang.Object r2 = r3.get(r2)
                android.os.Parcelable r2 = (android.os.Parcelable) r2
                r1.putExtra(r0, r2)
                android.content.Intent r0 = r5.f5160b
                java.util.ArrayList<android.net.Uri> r1 = r5.f5165g
                androidx.core.app.ShareCompat.m2635c(r0, r1)
                goto L85
            L5a:
                android.content.Intent r2 = r5.f5160b
                r2.removeExtra(r0)
                android.content.Intent r0 = r5.f5160b
                r0.setClipData(r1)
                android.content.Intent r0 = r5.f5160b
                int r1 = r0.getFlags()
                r1 = r1 & (-2)
                r0.setFlags(r1)
                goto L85
            L70:
                android.content.Intent r1 = r5.f5160b
                java.lang.String r2 = "android.intent.action.SEND_MULTIPLE"
                r1.setAction(r2)
                android.content.Intent r1 = r5.f5160b
                java.util.ArrayList<android.net.Uri> r2 = r5.f5165g
                r1.putParcelableArrayListExtra(r0, r2)
                android.content.Intent r0 = r5.f5160b
                java.util.ArrayList<android.net.Uri> r1 = r5.f5165g
                androidx.core.app.ShareCompat.m2635c(r0, r1)
            L85:
                android.content.Intent r5 = r5.f5160b
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.ShareCompat.IntentBuilder.getIntent():android.content.Intent");
        }

        @NonNull
        public IntentBuilder setChooserTitle(@Nullable CharSequence charSequence) {
            this.f5161c = charSequence;
            return this;
        }

        @NonNull
        public IntentBuilder setEmailBcc(@Nullable String[] strArr) {
            this.f5160b.putExtra("android.intent.extra.BCC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setEmailCc(@Nullable String[] strArr) {
            this.f5160b.putExtra("android.intent.extra.CC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setEmailTo(@Nullable String[] strArr) {
            if (this.f5162d != null) {
                this.f5162d = null;
            }
            this.f5160b.putExtra("android.intent.extra.EMAIL", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder setHtmlText(@Nullable String str) {
            this.f5160b.putExtra(IntentCompat.EXTRA_HTML_TEXT, str);
            if (!this.f5160b.hasExtra("android.intent.extra.TEXT")) {
                setText(Html.fromHtml(str));
            }
            return this;
        }

        @NonNull
        public IntentBuilder setStream(@Nullable Uri uri) {
            this.f5165g = null;
            if (uri != null) {
                addStream(uri);
            }
            return this;
        }

        @NonNull
        public IntentBuilder setSubject(@Nullable String str) {
            this.f5160b.putExtra("android.intent.extra.SUBJECT", str);
            return this;
        }

        @NonNull
        public IntentBuilder setText(@Nullable CharSequence charSequence) {
            this.f5160b.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        @NonNull
        public IntentBuilder setType(@Nullable String str) {
            this.f5160b.setType(str);
            return this;
        }

        public void startChooser() {
            this.f5159a.startActivity(createChooserIntent());
        }

        @NonNull
        public IntentBuilder setChooserTitle(@StringRes int i) {
            return setChooserTitle(this.f5159a.getText(i));
        }

        @NonNull
        public IntentBuilder addEmailBcc(@NonNull String[] strArr) {
            m2637b("android.intent.extra.BCC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailCc(@NonNull String[] strArr) {
            m2637b("android.intent.extra.CC", strArr);
            return this;
        }

        @NonNull
        public IntentBuilder addEmailTo(@NonNull String[] strArr) {
            m2637b("android.intent.extra.EMAIL", strArr);
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class IntentReader {

        /* renamed from: f */
        public static final String f5166f = "IntentReader";

        /* renamed from: a */
        @NonNull
        public final Context f5167a;

        /* renamed from: b */
        @NonNull
        public final Intent f5168b;

        /* renamed from: c */
        @Nullable
        public final String f5169c;

        /* renamed from: d */
        @Nullable
        public final ComponentName f5170d;

        /* renamed from: e */
        @Nullable
        public ArrayList<Uri> f5171e;

        public IntentReader(@NonNull Activity activity) {
            this((Context) Preconditions.checkNotNull(activity), activity.getIntent());
        }

        @NonNull
        @Deprecated
        public static IntentReader from(@NonNull Activity activity) {
            return new IntentReader(activity);
        }

        @Nullable
        public ComponentName getCallingActivity() {
            return this.f5170d;
        }

        @Nullable
        public Drawable getCallingActivityIcon() {
            if (this.f5170d == null) {
                return null;
            }
            try {
                return this.f5167a.getPackageManager().getActivityIcon(this.f5170d);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f5166f, "Could not retrieve icon for calling activity", e);
                return null;
            }
        }

        @Nullable
        public Drawable getCallingApplicationIcon() {
            if (this.f5169c == null) {
                return null;
            }
            try {
                return this.f5167a.getPackageManager().getApplicationIcon(this.f5169c);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f5166f, "Could not retrieve icon for calling application", e);
                return null;
            }
        }

        @Nullable
        public CharSequence getCallingApplicationLabel() {
            if (this.f5169c == null) {
                return null;
            }
            PackageManager packageManager = this.f5167a.getPackageManager();
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.f5169c, 0));
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f5166f, "Could not retrieve label for calling application", e);
                return null;
            }
        }

        @Nullable
        public String getCallingPackage() {
            return this.f5169c;
        }

        @Nullable
        public String[] getEmailBcc() {
            return this.f5168b.getStringArrayExtra("android.intent.extra.BCC");
        }

        @Nullable
        public String[] getEmailCc() {
            return this.f5168b.getStringArrayExtra("android.intent.extra.CC");
        }

        @Nullable
        public String[] getEmailTo() {
            return this.f5168b.getStringArrayExtra("android.intent.extra.EMAIL");
        }

        @Nullable
        public String getHtmlText() {
            String stringExtra = this.f5168b.getStringExtra(IntentCompat.EXTRA_HTML_TEXT);
            if (stringExtra != null) {
                return stringExtra;
            }
            CharSequence text = getText();
            return text instanceof Spanned ? Html.toHtml((Spanned) text) : text != null ? Html.escapeHtml(text) : stringExtra;
        }

        @Nullable
        public Uri getStream() {
            return (Uri) this.f5168b.getParcelableExtra("android.intent.extra.STREAM");
        }

        public int getStreamCount() {
            if (this.f5171e == null && isMultipleShare()) {
                this.f5171e = this.f5168b.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            ArrayList<Uri> arrayList = this.f5171e;
            return arrayList != null ? arrayList.size() : this.f5168b.hasExtra("android.intent.extra.STREAM") ? 1 : 0;
        }

        @Nullable
        public String getSubject() {
            return this.f5168b.getStringExtra("android.intent.extra.SUBJECT");
        }

        @Nullable
        public CharSequence getText() {
            return this.f5168b.getCharSequenceExtra("android.intent.extra.TEXT");
        }

        @Nullable
        public String getType() {
            return this.f5168b.getType();
        }

        public boolean isMultipleShare() {
            return "android.intent.action.SEND_MULTIPLE".equals(this.f5168b.getAction());
        }

        public boolean isShareIntent() {
            String action = this.f5168b.getAction();
            return "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
        }

        public boolean isSingleShare() {
            return "android.intent.action.SEND".equals(this.f5168b.getAction());
        }

        public IntentReader(@NonNull Context context, @NonNull Intent intent) {
            this.f5167a = (Context) Preconditions.checkNotNull(context);
            this.f5168b = (Intent) Preconditions.checkNotNull(intent);
            this.f5169c = ShareCompat.m2634b(intent);
            this.f5170d = ShareCompat.m2633a(intent);
        }

        @Nullable
        public Uri getStream(int i) {
            if (this.f5171e == null && isMultipleShare()) {
                this.f5171e = this.f5168b.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            ArrayList<Uri> arrayList = this.f5171e;
            if (arrayList != null) {
                return arrayList.get(i);
            }
            if (i == 0) {
                return (Uri) this.f5168b.getParcelableExtra("android.intent.extra.STREAM");
            }
            throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + i);
        }
    }

    @Nullable
    /* renamed from: a */
    public static ComponentName m2633a(@NonNull Intent intent) {
        ComponentName componentName = (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY);
        return componentName == null ? (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY_INTEROP) : componentName;
    }

    @Nullable
    /* renamed from: b */
    public static String m2634b(@NonNull Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_CALLING_PACKAGE);
        return stringExtra == null ? intent.getStringExtra(EXTRA_CALLING_PACKAGE_INTEROP) : stringExtra;
    }

    /* renamed from: c */
    public static void m2635c(@NonNull Intent intent, @NonNull ArrayList<Uri> arrayList) {
        ClipData clipData = new ClipData(null, new String[]{intent.getType()}, new ClipData.Item(intent.getCharSequenceExtra("android.intent.extra.TEXT"), intent.getStringExtra(IntentCompat.EXTRA_HTML_TEXT), null, arrayList.get(0)));
        int size = arrayList.size();
        for (int i = 1; i < size; i++) {
            clipData.addItem(new ClipData.Item(arrayList.get(i)));
        }
        intent.setClipData(clipData);
        intent.addFlags(1);
    }

    @Deprecated
    public static void configureMenuItem(@NonNull MenuItem menuItem, @NonNull IntentBuilder intentBuilder) {
        ShareActionProvider shareActionProvider;
        ActionProvider actionProvider = menuItem.getActionProvider();
        if (!(actionProvider instanceof ShareActionProvider)) {
            shareActionProvider = new ShareActionProvider(intentBuilder.m2638c());
        } else {
            shareActionProvider = (ShareActionProvider) actionProvider;
        }
        shareActionProvider.setShareHistoryFileName(f5158a + intentBuilder.m2638c().getClass().getName());
        shareActionProvider.setShareIntent(intentBuilder.getIntent());
        menuItem.setActionProvider(shareActionProvider);
    }

    @Nullable
    public static ComponentName getCallingActivity(@NonNull Activity activity) {
        Intent intent = activity.getIntent();
        ComponentName callingActivity = activity.getCallingActivity();
        return callingActivity == null ? m2633a(intent) : callingActivity;
    }

    @Nullable
    public static String getCallingPackage(@NonNull Activity activity) {
        Intent intent = activity.getIntent();
        String callingPackage = activity.getCallingPackage();
        return (callingPackage != null || intent == null) ? callingPackage : m2634b(intent);
    }

    @Deprecated
    public static void configureMenuItem(@NonNull Menu menu, @IdRes int i, @NonNull IntentBuilder intentBuilder) {
        MenuItem findItem = menu.findItem(i);
        if (findItem != null) {
            configureMenuItem(findItem, intentBuilder);
            return;
        }
        throw new IllegalArgumentException("Could not find menu item with id " + i + " in the supplied menu");
    }
}

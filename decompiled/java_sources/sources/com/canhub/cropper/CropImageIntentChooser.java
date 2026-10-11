package com.canhub.cropper;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.provider.MediaStore;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.widget.ActivityChooserModel;
import com.canhub.cropper.CropImageIntentChooser;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 +2\u00020\u0001:\u0002+,B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u0012\u0006\u0010\u001f\u001a\u00020\u001d¢\u0006\u0004\b)\u0010*J\"\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\f\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nJ\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\nH\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001eR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010 R\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010!R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\"\u0010(\u001a\u0010\u0012\f\u0012\n &*\u0004\u0018\u00010\u00130\u00130%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010'¨\u0006-"}, m61528d2 = {"Lcom/canhub/cropper/CropImageIntentChooser;", "", "", "includeCamera", "includeGallery", "Landroid/net/Uri;", "cameraImgUri", "", "showChooserIntent", "", "", "appsList", "setupPriorityAppsList", "title", "setIntentChooserTitle", "Landroid/content/Context;", "context", "Landroid/content/pm/PackageManager;", "packageManager", "Landroid/content/Intent;", "b", "action", "c", C6997f.f39671c, "d", "Landroidx/activity/ComponentActivity;", "a", "Landroidx/activity/ComponentActivity;", ActivityChooserModel.f1429r, "Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;", "Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;", "callback", Constants.STRING_SIG, "Ljava/util/List;", "priorityIntentList", "e", "Landroid/net/Uri;", "Landroidx/activity/result/ActivityResultLauncher;", "kotlin.jvm.PlatformType", "Landroidx/activity/result/ActivityResultLauncher;", "intentChooser", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V", "Companion", "ResultCallback", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CropImageIntentChooser {

    @NotNull
    public static final String GOOGLE_PHOTOS = "com.google.android.apps.photos";

    @NotNull
    public static final String GOOGLE_PHOTOS_GO = "com.google.android.apps.photosgo";

    @NotNull
    public static final String MIUI_GALLERY = "com.miui.gallery";

    @NotNull
    public static final String ONEPLUS_GALLERY = "com.oneplus.gallery";

    @NotNull
    public static final String SAMSUNG_GALLERY = "com.sec.android.gallery3d";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ComponentActivity activity;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ResultCallback callback;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String title;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<String> priorityIntentList;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Uri cameraImgUri;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Intent> intentChooser;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&¨\u0006\u0007"}, m61528d2 = {"Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;", "", "onCancelled", "", "onSuccess", "uri", "Landroid/net/Uri;", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface ResultCallback {
        void onCancelled();

        void onSuccess(@Nullable Uri uri);
    }

    public CropImageIntentChooser(@NotNull ComponentActivity activity, @NotNull ResultCallback callback) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.activity = activity;
        this.callback = callback;
        String string = activity.getString(C2055R.string.pick_image_chooser_title);
        Intrinsics.checkNotNullExpressionValue(string, "activity.getString(R.str…pick_image_chooser_title)");
        this.title = string;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GOOGLE_PHOTOS, GOOGLE_PHOTOS_GO, SAMSUNG_GALLERY, ONEPLUS_GALLERY, MIUI_GALLERY});
        this.priorityIntentList = listOf;
        ActivityResultLauncher<Intent> registerForActivityResult = activity.registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.lie
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CropImageIntentChooser.m9238e(CropImageIntentChooser.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "activity.registerForActi…k.onCancelled()\n    }\n  }");
        this.intentChooser = registerForActivityResult;
    }

    /* renamed from: e */
    public static final void m9238e(CropImageIntentChooser this$0, ActivityResult activityResult) {
        Uri uri;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (activityResult.getResultCode() != -1) {
            this$0.callback.onCancelled();
            return;
        }
        Intent data = activityResult.getData();
        if (data == null || (uri = data.getData()) == null) {
            uri = this$0.cameraImgUri;
        }
        this$0.callback.onSuccess(uri);
    }

    public static /* synthetic */ void showChooserIntent$default(CropImageIntentChooser cropImageIntentChooser, boolean z, boolean z2, Uri uri, int i, Object obj) {
        if ((i & 4) != 0) {
            uri = null;
        }
        cropImageIntentChooser.showChooserIntent(z, z2, uri);
    }

    /* renamed from: b */
    public final List<Intent> m9239b(Context context, PackageManager packageManager) {
        List<ResolveInfo> queryIntentActivities;
        PackageManager.ResolveInfoFlags of;
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (Build.VERSION.SDK_INT >= 33) {
            of = PackageManager.ResolveInfoFlags.of(0);
            queryIntentActivities = packageManager.queryIntentActivities(intent, of);
        } else {
            queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        }
        Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "when {\n      SDK_INT >= …ptureIntent, flags)\n    }");
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (context instanceof Activity) {
                context.grantUriPermission(resolveInfo.activityInfo.packageName, this.cameraImgUri, 3);
            }
            intent2.putExtra(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, this.cameraImgUri);
            arrayList.add(intent2);
        }
        return arrayList;
    }

    /* renamed from: c */
    public final List<Intent> m9240c(PackageManager packageManager, String action) {
        List<ResolveInfo> queryIntentActivities;
        Object obj;
        PackageManager.ResolveInfoFlags of;
        ArrayList arrayList = new ArrayList();
        Intent intent = Intrinsics.areEqual(action, "android.intent.action.GET_CONTENT") ? new Intent(action) : new Intent(action, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        if (Build.VERSION.SDK_INT >= 33) {
            of = PackageManager.ResolveInfoFlags.of(0);
            queryIntentActivities = packageManager.queryIntentActivities(intent, of);
        } else {
            queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        }
        Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "when {\n      SDK_INT >= …lleryIntent, flags)\n    }");
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            arrayList.add(intent2);
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : this.priorityIntentList) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((Intent) obj).getPackage(), str)) {
                    break;
                }
            }
            Intent intent3 = (Intent) obj;
            if (intent3 != null) {
                arrayList.remove(intent3);
                arrayList2.add(intent3);
            }
        }
        arrayList.addAll(0, arrayList2);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f A[LOOP:0: B:9:0x0029->B:17:0x003f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003d A[SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9241d(android.content.Context r6) {
        /*
            r5 = this;
            java.lang.String r5 = r6.getPackageName()
            r0 = 0
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            r2 = 33
            r3 = 4096(0x1000, float:5.74E-42)
            if (r1 < r2) goto L1b
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            long r1 = (long) r3     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            android.content.pm.PackageManager$PackageInfoFlags r1 = com.sunia.HTREnginev2.jie.m54921a(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            android.content.pm.PackageInfo r5 = com.sunia.HTREnginev2.kie.m55222a(r6, r5, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            goto L23
        L1b:
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            android.content.pm.PackageInfo r5 = r6.getPackageInfo(r5, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
        L23:
            java.lang.String[] r5 = r5.requestedPermissions     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            if (r5 == 0) goto L46
            int r6 = r5.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            r1 = r0
        L29:
            r2 = 1
            if (r1 >= r6) goto L42
            r3 = r5[r1]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            if (r3 == 0) goto L3a
            java.lang.String r4 = "android.permission.CAMERA"
            boolean r3 = kotlin.text.StringsKt.equals(r3, r4, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            if (r3 != r2) goto L3a
            r3 = r2
            goto L3b
        L3a:
            r3 = r0
        L3b:
            if (r3 == 0) goto L3f
            r5 = r2
            goto L43
        L3f:
            int r1 = r1 + 1
            goto L29
        L42:
            r5 = r0
        L43:
            if (r5 != r2) goto L46
            r0 = r2
        L46:
            return r0
        L47:
            r5 = move-exception
            r5.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageIntentChooser.m9241d(android.content.Context):boolean");
    }

    /* renamed from: f */
    public final boolean m9242f(Context context) {
        return m9241d(context) && context.checkSelfPermission("android.permission.CAMERA") != 0;
    }

    @NotNull
    public final CropImageIntentChooser setIntentChooserTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        return this;
    }

    @NotNull
    public final CropImageIntentChooser setupPriorityAppsList(@NotNull List<String> appsList) {
        Intrinsics.checkNotNullParameter(appsList, "appsList");
        this.priorityIntentList = appsList;
        return this;
    }

    public final void showChooserIntent(boolean includeCamera, boolean includeGallery, @Nullable Uri cameraImgUri) {
        Intent intent;
        this.cameraImgUri = cameraImgUri;
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = this.activity.getPackageManager();
        if (!m9242f(this.activity) && includeCamera) {
            ComponentActivity componentActivity = this.activity;
            Intrinsics.checkNotNullExpressionValue(packageManager, "packageManager");
            arrayList.addAll(m9239b(componentActivity, packageManager));
        }
        if (includeGallery) {
            Intrinsics.checkNotNullExpressionValue(packageManager, "packageManager");
            List<Intent> m9240c = m9240c(packageManager, "android.intent.action.GET_CONTENT");
            if (m9240c.isEmpty()) {
                m9240c = m9240c(packageManager, "android.intent.action.PICK");
            }
            arrayList.addAll(m9240c);
        }
        if (arrayList.isEmpty()) {
            intent = new Intent();
        } else {
            Intent intent2 = new Intent("android.intent.action.CHOOSER", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
            if (includeGallery) {
                intent2.setAction("android.intent.action.PICK");
                intent2.setType("image/*");
            }
            intent = intent2;
        }
        Intent createChooser = Intent.createChooser(intent, this.title);
        Object[] array = arrayList.toArray(new Parcelable[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) array);
        this.intentChooser.launch(createChooser);
    }
}

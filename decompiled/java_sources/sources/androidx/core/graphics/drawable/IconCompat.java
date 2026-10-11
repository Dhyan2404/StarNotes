package androidx.core.graphics.drawable;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.sunia.HTREnginev2.otd;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public class IconCompat extends CustomVersionedParcelable {
    public static final int TYPE_ADAPTIVE_BITMAP = 5;
    public static final int TYPE_BITMAP = 1;
    public static final int TYPE_DATA = 3;
    public static final int TYPE_RESOURCE = 2;
    public static final int TYPE_UNKNOWN = -1;
    public static final int TYPE_URI = 4;
    public static final int TYPE_URI_ADAPTIVE_BITMAP = 6;

    /* renamed from: c */
    public static final String f5425c = "IconCompat";

    /* renamed from: d */
    public static final float f5426d = 0.25f;

    /* renamed from: e */
    public static final float f5427e = 0.6666667f;

    /* renamed from: f */
    public static final float f5428f = 0.9166667f;

    /* renamed from: g */
    public static final float f5429g = 0.010416667f;

    /* renamed from: h */
    public static final float f5430h = 0.020833334f;

    /* renamed from: i */
    public static final int f5431i = 61;

    /* renamed from: j */
    public static final int f5432j = 30;

    /* renamed from: k */
    @VisibleForTesting
    public static final String f5433k = "type";

    /* renamed from: l */
    @VisibleForTesting
    public static final String f5434l = "obj";

    /* renamed from: m */
    @VisibleForTesting
    public static final String f5435m = "int1";

    /* renamed from: n */
    @VisibleForTesting
    public static final String f5436n = "int2";

    /* renamed from: o */
    @VisibleForTesting
    public static final String f5437o = "tint_list";

    /* renamed from: p */
    @VisibleForTesting
    public static final String f5438p = "tint_mode";

    /* renamed from: q */
    @VisibleForTesting
    public static final String f5439q = "string1";

    /* renamed from: r */
    public static final PorterDuff.Mode f5440r = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public Object f5441a;

    /* renamed from: b */
    public PorterDuff.Mode f5442b;

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public byte[] mData;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mInt1;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mInt2;

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Parcelable mParcelable;

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String mString1;

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public ColorStateList mTintList;

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String mTintModeStr;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mType;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface IconType {
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.graphics.drawable.IconCompat$a */
    /* loaded from: classes3.dex */
    public static class C0669a {
        @Nullable
        /* renamed from: a */
        public static IconCompat m2962a(@NonNull Context context, @NonNull Icon icon) {
            int m2966e = m2966e(icon);
            if (m2966e == 2) {
                String m2965d = m2965d(icon);
                try {
                    return IconCompat.createWithResource(IconCompat.m2959b(context, m2965d), m2965d, m2964c(icon));
                } catch (Resources.NotFoundException unused) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            }
            if (m2966e == 4) {
                return IconCompat.createWithContentUri(m2967f(icon));
            }
            if (m2966e == 6) {
                return IconCompat.createWithAdaptiveBitmapContentUri(m2967f(icon));
            }
            IconCompat iconCompat = new IconCompat(-1);
            iconCompat.f5441a = icon;
            return iconCompat;
        }

        /* renamed from: b */
        public static IconCompat m2963b(@NonNull Object obj) {
            Preconditions.checkNotNull(obj);
            int m2966e = m2966e(obj);
            if (m2966e == 2) {
                return IconCompat.createWithResource(null, m2965d(obj), m2964c(obj));
            }
            if (m2966e == 4) {
                return IconCompat.createWithContentUri(m2967f(obj));
            }
            if (m2966e == 6) {
                return IconCompat.createWithAdaptiveBitmapContentUri(m2967f(obj));
            }
            IconCompat iconCompat = new IconCompat(-1);
            iconCompat.f5441a = obj;
            return iconCompat;
        }

        @DrawableRes
        @IdRes
        /* renamed from: c */
        public static int m2964c(@NonNull Object obj) {
            return C0671c.m2972a(obj);
        }

        @Nullable
        /* renamed from: d */
        public static String m2965d(@NonNull Object obj) {
            return C0671c.m2973b(obj);
        }

        /* renamed from: e */
        public static int m2966e(@NonNull Object obj) {
            return C0671c.m2974c(obj);
        }

        @Nullable
        @DoNotInline
        /* renamed from: f */
        public static Uri m2967f(@NonNull Object obj) {
            return C0671c.m2975d(obj);
        }

        @DoNotInline
        /* renamed from: g */
        public static Drawable m2968g(Icon icon, Context context) {
            return icon.loadDrawable(context);
        }

        @DoNotInline
        /* renamed from: h */
        public static Icon m2969h(IconCompat iconCompat, Context context) {
            Icon createWithBitmap;
            switch (iconCompat.mType) {
                case -1:
                    return (Icon) iconCompat.f5441a;
                case 0:
                default:
                    throw new IllegalArgumentException("Unknown type");
                case 1:
                    createWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f5441a);
                    break;
                case 2:
                    createWithBitmap = Icon.createWithResource(iconCompat.getResPackage(), iconCompat.mInt1);
                    break;
                case 3:
                    createWithBitmap = Icon.createWithData((byte[]) iconCompat.f5441a, iconCompat.mInt1, iconCompat.mInt2);
                    break;
                case 4:
                    createWithBitmap = Icon.createWithContentUri((String) iconCompat.f5441a);
                    break;
                case 5:
                    createWithBitmap = C0670b.m2971b((Bitmap) iconCompat.f5441a);
                    break;
                case 6:
                    if (Build.VERSION.SDK_INT >= 30) {
                        createWithBitmap = C0672d.m2976a(iconCompat.getUri());
                        break;
                    } else {
                        if (context == null) {
                            throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.getUri());
                        }
                        InputStream uriInputStream = iconCompat.getUriInputStream(context);
                        if (uriInputStream == null) {
                            throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.getUri());
                        }
                        createWithBitmap = C0670b.m2971b(BitmapFactory.decodeStream(uriInputStream));
                        break;
                    }
            }
            ColorStateList colorStateList = iconCompat.mTintList;
            if (colorStateList != null) {
                createWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f5442b;
            if (mode != IconCompat.f5440r) {
                createWithBitmap.setTintMode(mode);
            }
            return createWithBitmap;
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.graphics.drawable.IconCompat$b */
    /* loaded from: classes3.dex */
    public static class C0670b {
        @DoNotInline
        /* renamed from: a */
        public static Drawable m2970a(Drawable drawable, Drawable drawable2) {
            return new AdaptiveIconDrawable(drawable, drawable2);
        }

        @DoNotInline
        /* renamed from: b */
        public static Icon m2971b(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.graphics.drawable.IconCompat$c */
    /* loaded from: classes3.dex */
    public static class C0671c {
        @DoNotInline
        /* renamed from: a */
        public static int m2972a(Object obj) {
            return ((Icon) obj).getResId();
        }

        @DoNotInline
        /* renamed from: b */
        public static String m2973b(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        @DoNotInline
        /* renamed from: c */
        public static int m2974c(Object obj) {
            return ((Icon) obj).getType();
        }

        @DoNotInline
        /* renamed from: d */
        public static Uri m2975d(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.graphics.drawable.IconCompat$d */
    /* loaded from: classes3.dex */
    public static class C0672d {
        @DoNotInline
        /* renamed from: a */
        public static Icon m2976a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public IconCompat() {
        this.mType = -1;
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.f5442b = f5440r;
        this.mTintModeStr = null;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Bitmap m2958a(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f = min;
        float f2 = 0.5f * f;
        float f3 = 0.9166667f * f2;
        if (z) {
            float f4 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, otd.f80123h);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.setShadowLayer(f4, 0.0f, 0.0f, otd.f80122g);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2.0f, (-(bitmap.getHeight() - min)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f2, f2, f3, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    /* renamed from: b */
    public static Resources m2959b(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(f5425c, String.format("Unable to find pkg=%s for icon", str), e);
            return null;
        }
    }

    @Nullable
    public static IconCompat createFromBundle(@NonNull Bundle bundle) {
        int i = bundle.getInt("type");
        IconCompat iconCompat = new IconCompat(i);
        iconCompat.mInt1 = bundle.getInt(f5435m);
        iconCompat.mInt2 = bundle.getInt(f5436n);
        iconCompat.mString1 = bundle.getString(f5439q);
        if (bundle.containsKey(f5437o)) {
            iconCompat.mTintList = (ColorStateList) bundle.getParcelable(f5437o);
        }
        if (bundle.containsKey(f5438p)) {
            iconCompat.f5442b = PorterDuff.Mode.valueOf(bundle.getString(f5438p));
        }
        switch (i) {
            case -1:
            case 1:
            case 5:
                iconCompat.f5441a = bundle.getParcelable(f5434l);
                return iconCompat;
            case 0:
            default:
                Log.w(f5425c, "Unknown type " + i);
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.f5441a = bundle.getString(f5434l);
                return iconCompat;
            case 3:
                iconCompat.f5441a = bundle.getByteArray(f5434l);
                return iconCompat;
        }
    }

    @Nullable
    @RequiresApi(23)
    public static IconCompat createFromIcon(@NonNull Context context, @NonNull Icon icon) {
        Preconditions.checkNotNull(icon);
        return C0669a.m2962a(context, icon);
    }

    @Nullable
    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static IconCompat createFromIconOrNullIfZeroResId(@NonNull Icon icon) {
        if (C0669a.m2966e(icon) == 2 && C0669a.m2964c(icon) == 0) {
            return null;
        }
        return C0669a.m2963b(icon);
    }

    @NonNull
    public static IconCompat createWithAdaptiveBitmap(@NonNull Bitmap bitmap) {
        ObjectsCompat.requireNonNull(bitmap);
        IconCompat iconCompat = new IconCompat(5);
        iconCompat.f5441a = bitmap;
        return iconCompat;
    }

    @NonNull
    public static IconCompat createWithAdaptiveBitmapContentUri(@NonNull String str) {
        ObjectsCompat.requireNonNull(str);
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.f5441a = str;
        return iconCompat;
    }

    @NonNull
    public static IconCompat createWithBitmap(@NonNull Bitmap bitmap) {
        ObjectsCompat.requireNonNull(bitmap);
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f5441a = bitmap;
        return iconCompat;
    }

    @NonNull
    public static IconCompat createWithContentUri(@NonNull String str) {
        ObjectsCompat.requireNonNull(str);
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.f5441a = str;
        return iconCompat;
    }

    @NonNull
    public static IconCompat createWithData(@NonNull byte[] bArr, int i, int i2) {
        ObjectsCompat.requireNonNull(bArr);
        IconCompat iconCompat = new IconCompat(3);
        iconCompat.f5441a = bArr;
        iconCompat.mInt1 = i;
        iconCompat.mInt2 = i2;
        return iconCompat;
    }

    @NonNull
    public static IconCompat createWithResource(@NonNull Context context, @DrawableRes int i) {
        ObjectsCompat.requireNonNull(context);
        return createWithResource(context.getResources(), context.getPackageName(), i);
    }

    /* renamed from: d */
    public static String m2960d(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return HwrRecognizerConstant.RECOGNIZER_UNKNOWN;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addToShortcutIntent(@NonNull Intent intent, @Nullable Drawable drawable, @NonNull Context context) {
        Bitmap bitmap;
        Bitmap createBitmap;
        checkResource(context);
        int i = this.mType;
        if (i == 1) {
            bitmap = (Bitmap) this.f5441a;
            if (drawable != null) {
                bitmap = bitmap.copy(bitmap.getConfig(), true);
            }
        } else if (i == 2) {
            try {
                Context createPackageContext = context.createPackageContext(getResPackage(), 0);
                if (drawable == null) {
                    intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(createPackageContext, this.mInt1));
                    return;
                }
                Drawable drawable2 = ContextCompat.getDrawable(createPackageContext, this.mInt1);
                if (drawable2.getIntrinsicWidth() > 0 && drawable2.getIntrinsicHeight() > 0) {
                    createBitmap = Bitmap.createBitmap(drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    drawable2.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                    drawable2.draw(new Canvas(createBitmap));
                    bitmap = createBitmap;
                }
                int launcherLargeIconSize = ((ActivityManager) createPackageContext.getSystemService(ActivityChooserModel.f1429r)).getLauncherLargeIconSize();
                createBitmap = Bitmap.createBitmap(launcherLargeIconSize, launcherLargeIconSize, Bitmap.Config.ARGB_8888);
                drawable2.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                drawable2.draw(new Canvas(createBitmap));
                bitmap = createBitmap;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException("Can't find package " + this.f5441a, e);
            }
        } else {
            if (i != 5) {
                throw new IllegalArgumentException("Icon type not supported for intent shortcuts");
            }
            bitmap = m2958a((Bitmap) this.f5441a, true);
        }
        if (drawable != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            drawable.setBounds(width / 2, height / 2, width, height);
            drawable.draw(new Canvas(bitmap));
        }
        intent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final Drawable m2961c(Context context) {
        switch (this.mType) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.f5441a);
            case 2:
                String resPackage = getResPackage();
                if (TextUtils.isEmpty(resPackage)) {
                    resPackage = context.getPackageName();
                }
                try {
                    return ResourcesCompat.getDrawable(m2959b(context, resPackage), this.mInt1, context.getTheme());
                } catch (RuntimeException e) {
                    Log.e(f5425c, String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(this.mInt1), this.f5441a), e);
                    break;
                }
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.f5441a, this.mInt1, this.mInt2));
            case 4:
                InputStream uriInputStream = getUriInputStream(context);
                if (uriInputStream != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(uriInputStream));
                }
                return null;
            case 5:
                return new BitmapDrawable(context.getResources(), m2958a((Bitmap) this.f5441a, false));
            case 6:
                InputStream uriInputStream2 = getUriInputStream(context);
                if (uriInputStream2 != null) {
                    return C0670b.m2970a(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(uriInputStream2)));
                }
                return null;
            default:
                return null;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void checkResource(@NonNull Context context) {
        Object obj;
        if (this.mType != 2 || (obj = this.f5441a) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(":")) {
            String str2 = str.split(":", -1)[1];
            String str3 = str2.split("/", -1)[0];
            String str4 = str2.split("/", -1)[1];
            String str5 = str.split(":", -1)[0];
            if ("0_resource_name_obfuscated".equals(str4)) {
                Log.i(f5425c, "Found obfuscated resource, not trying to update resource id for it");
                return;
            }
            String resPackage = getResPackage();
            int identifier = m2959b(context, resPackage).getIdentifier(str4, str3, str5);
            if (this.mInt1 != identifier) {
                Log.i(f5425c, "Id has changed for " + resPackage + " " + str);
                this.mInt1 = identifier;
            }
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Bitmap getBitmap() {
        int i = this.mType;
        if (i == -1) {
            Object obj = this.f5441a;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i == 1) {
            return (Bitmap) this.f5441a;
        }
        if (i == 5) {
            return m2958a((Bitmap) this.f5441a, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    @DrawableRes
    public int getResId() {
        int i = this.mType;
        if (i == -1) {
            return C0669a.m2964c(this.f5441a);
        }
        if (i == 2) {
            return this.mInt1;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    @NonNull
    public String getResPackage() {
        int i = this.mType;
        if (i == -1) {
            return C0669a.m2965d(this.f5441a);
        }
        if (i == 2) {
            String str = this.mString1;
            return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f5441a).split(":", -1)[0] : this.mString1;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int getType() {
        int i = this.mType;
        return i == -1 ? C0669a.m2966e(this.f5441a) : i;
    }

    @NonNull
    public Uri getUri() {
        int i = this.mType;
        if (i == -1) {
            return C0669a.m2967f(this.f5441a);
        }
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.f5441a);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public InputStream getUriInputStream(@NonNull Context context) {
        Uri uri = getUri();
        String scheme = uri.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uri);
            } catch (Exception e) {
                Log.w(f5425c, "Unable to load image from URI: " + uri, e);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f5441a));
        } catch (FileNotFoundException e2) {
            Log.w(f5425c, "Unable to load image from path: " + uri, e2);
            return null;
        }
    }

    @Nullable
    public Drawable loadDrawable(@NonNull Context context) {
        checkResource(context);
        return C0669a.m2968g(toIcon(context), context);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPostParceling() {
        this.f5442b = PorterDuff.Mode.valueOf(this.mTintModeStr);
        switch (this.mType) {
            case -1:
                Parcelable parcelable = this.mParcelable;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f5441a = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.mParcelable;
                if (parcelable2 != null) {
                    this.f5441a = parcelable2;
                    return;
                }
                byte[] bArr = this.mData;
                this.f5441a = bArr;
                this.mType = 3;
                this.mInt1 = 0;
                this.mInt2 = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.mData, Charset.forName("UTF-16"));
                this.f5441a = str;
                if (this.mType == 2 && this.mString1 == null) {
                    this.mString1 = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f5441a = this.mData;
                return;
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPreParceling(boolean z) {
        this.mTintModeStr = this.f5442b.name();
        switch (this.mType) {
            case -1:
                if (z) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.mParcelable = (Parcelable) this.f5441a;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z) {
                    this.mParcelable = (Parcelable) this.f5441a;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f5441a;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.mData = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.mData = ((String) this.f5441a).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.mData = (byte[]) this.f5441a;
                return;
            case 4:
            case 6:
                this.mData = this.f5441a.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    @NonNull
    public IconCompat setTint(@ColorInt int i) {
        return setTintList(ColorStateList.valueOf(i));
    }

    @NonNull
    public IconCompat setTintList(@Nullable ColorStateList colorStateList) {
        this.mTintList = colorStateList;
        return this;
    }

    @NonNull
    public IconCompat setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f5442b = mode;
        return this;
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        switch (this.mType) {
            case -1:
                bundle.putParcelable(f5434l, (Parcelable) this.f5441a);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable(f5434l, (Bitmap) this.f5441a);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString(f5434l, (String) this.f5441a);
                break;
            case 3:
                bundle.putByteArray(f5434l, (byte[]) this.f5441a);
                break;
        }
        bundle.putInt("type", this.mType);
        bundle.putInt(f5435m, this.mInt1);
        bundle.putInt(f5436n, this.mInt2);
        bundle.putString(f5439q, this.mString1);
        ColorStateList colorStateList = this.mTintList;
        if (colorStateList != null) {
            bundle.putParcelable(f5437o, colorStateList);
        }
        PorterDuff.Mode mode = this.f5442b;
        if (mode != f5440r) {
            bundle.putString(f5438p, mode.name());
        }
        return bundle;
    }

    @NonNull
    @RequiresApi(23)
    @Deprecated
    public Icon toIcon() {
        return toIcon(null);
    }

    @NonNull
    public String toString() {
        if (this.mType == -1) {
            return String.valueOf(this.f5441a);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(m2960d(this.mType));
        switch (this.mType) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f5441a).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f5441a).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.mString1);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(getResId())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.mInt1);
                if (this.mInt2 != 0) {
                    sb.append(" off=");
                    sb.append(this.mInt2);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f5441a);
                break;
        }
        if (this.mTintList != null) {
            sb.append(" tint=");
            sb.append(this.mTintList);
        }
        if (this.f5442b != f5440r) {
            sb.append(" mode=");
            sb.append(this.f5442b);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @NonNull
    @RequiresApi(23)
    public Icon toIcon(@Nullable Context context) {
        return C0669a.m2969h(this, context);
    }

    @Nullable
    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static IconCompat createFromIcon(@NonNull Icon icon) {
        return C0669a.m2963b(icon);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static IconCompat createWithResource(@Nullable Resources resources, @NonNull String str, @DrawableRes int i) {
        ObjectsCompat.requireNonNull(str);
        if (i != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.mInt1 = i;
            if (resources != null) {
                try {
                    iconCompat.f5441a = resources.getResourceName(i);
                } catch (Resources.NotFoundException unused) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f5441a = str;
            }
            iconCompat.mString1 = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    @NonNull
    public static IconCompat createWithAdaptiveBitmapContentUri(@NonNull Uri uri) {
        ObjectsCompat.requireNonNull(uri);
        return createWithAdaptiveBitmapContentUri(uri.toString());
    }

    @NonNull
    public static IconCompat createWithContentUri(@NonNull Uri uri) {
        ObjectsCompat.requireNonNull(uri);
        return createWithContentUri(uri.toString());
    }

    public IconCompat(int i) {
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.f5442b = f5440r;
        this.mTintModeStr = null;
        this.mType = i;
    }
}

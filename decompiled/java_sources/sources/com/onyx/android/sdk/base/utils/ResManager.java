package com.onyx.android.sdk.base.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.lite.extension.IntList;
import com.onyx.android.sdk.base.lite.extension.TypeExtKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import javax.xml.parsers.DocumentBuilderFactory;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.w3c.dom.Document;

@Metadata(m61527d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u000b\u001a\u00020\u0006J\u0006\u0010\f\u001a\u00020\u0002J\b\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0018\u0010\u0012\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ)\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0013\"\u00020\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u0017\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0018\u001a\u00020\u0010J\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u001a\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0010J-\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0016\u0010\u0014\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0013\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0011\u0010\u0016J-\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0016\u0010\u0014\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0013\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0012\u0010\u0016J\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u0018\u0010\u001b\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u001b\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00100\u00132\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b!\u0010\"J!\u0010!\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u00132\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b!\u0010#J\u0010\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010&\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010'\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010)\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000eJ\u0010\u0010+\u001a\u00020*2\b\b\u0001\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010-\u001a\u0004\u0018\u00010,2\u0006\u0010(\u001a\u00020\u000eJ\u000e\u0010/\u001a\u00020.2\u0006\u0010\u000f\u001a\u00020\u000eJ\u001f\u00100\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b0\u00101J\u001f\u00102\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b2\u00103J\u0010\u00105\u001a\u0004\u0018\u00010\u00102\u0006\u00104\u001a\u00020\u0010J\u0010\u00107\u001a\u0004\u0018\u00010\u00102\u0006\u00106\u001a\u00020\u0010J\u000e\u00108\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u00109\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010;\u001a\u00020\u001e2\u0006\u0010:\u001a\u00020\u000eJ\u0012\u0010=\u001a\u0004\u0018\u00010<2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0010J\u0010\u0010=\u001a\u0004\u0018\u00010<2\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010>\u001a\u00020\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\u0010\u0010?\u001a\u00020\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\u0006\u0010@\u001a\u00020\u001eJ\u0006\u0010A\u001a\u00020\u001eJ\u0006\u0010B\u001a\u00020\u001eJ\u0006\u0010C\u001a\u00020\u001eJ\u0006\u0010D\u001a\u00020\u000eJ\u0006\u0010E\u001a\u00020\u000eJ\u0006\u0010G\u001a\u00020FJ\u0006\u0010I\u001a\u00020HJ\u0006\u0010K\u001a\u00020JJ\u0006\u0010L\u001a\u00020\u000eJ\u0006\u0010M\u001a\u00020\u000eJ\u0010\u0010N\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0006\u0010O\u001a\u00020JJ\u0006\u0010P\u001a\u00020JJ\b\u0010Q\u001a\u00020FH\u0007J\u0006\u0010R\u001a\u00020\u000eJ\u0010\u0010R\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010S\u001a\u00020\u000eJ\u0010\u0010S\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010U\u001a\u00020TJ\u0010\u0010V\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010W\u001a\u00020FJ\u0006\u0010X\u001a\u00020\u001eJ\u0006\u0010Y\u001a\u00020\u0002J\u0006\u0010Z\u001a\u00020\u000eJ\u001a\u0010\\\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00102\b\u0010[\u001a\u0004\u0018\u00010\u0010J\u0012\u0010^\u001a\u0004\u0018\u00010]2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0010J\u0010\u0010^\u001a\u0004\u0018\u00010]2\u0006\u0010_\u001a\u00020\u000eJ\u0018\u0010a\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010`\u001a\u00020\u000eJ7\u0010a\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010`\u001a\u00020\u000e2\u0016\u0010\u0014\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0013\"\u0004\u0018\u00010\u0001¢\u0006\u0004\ba\u0010bJ\u000e\u0010c\u001a\u00020T2\u0006\u0010_\u001a\u00020\u000eJ\u0006\u0010e\u001a\u00020dJ\u0010\u0010f\u001a\u0004\u0018\u00010\u00102\u0006\u0010_\u001a\u00020\u000eJ\u0006\u0010g\u001a\u00020\u000eJ\u0006\u0010h\u001a\u00020\u001eJ\u000e\u0010j\u001a\u00020T2\u0006\u0010i\u001a\u00020\u000eJ\"\u0010n\u001a\u0004\u0018\u00010<2\b\u0010k\u001a\u0004\u0018\u00010\u00102\u0006\u0010l\u001a\u00020\u000e2\u0006\u0010m\u001a\u00020\u000eJ\u0010\u0010p\u001a\u00020T2\b\b\u0001\u0010o\u001a\u00020\u000eJ\u0010\u0010s\u001a\u0004\u0018\u00010r2\u0006\u0010q\u001a\u00020\u000eJ\u0006\u0010t\u001a\u00020\u000eJ\u0006\u0010u\u001a\u00020\u000eJ\u0006\u0010v\u001a\u00020\u000eJ\u000e\u0010x\u001a\u00020T2\u0006\u0010w\u001a\u00020\u000eJ\u000e\u0010y\u001a\u00020T2\u0006\u0010w\u001a\u00020\u000eJ\u0006\u0010{\u001a\u00020zJ\u0006\u0010|\u001a\u00020TR\u0014\u0010}\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b}\u0010~R\u0014\u0010\u007f\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u007f\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0007\u0010\u0080\u0001R\"\u0010\u0085\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001¨\u0006\u0088\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ResManager;", "", "Landroid/content/Context;", "context", "Landroid/graphics/Point;", "realSize", "", "a", "init", "uiContext", "installUiContext", "uninstallUiContext", "getContext", "getUiContext", "", HWREngineConstant.Constant.RES_ID, "", "getString", "getStringSafely", "", "formatArgs", "getFormatString", "(I[Ljava/lang/Object;)Ljava/lang/String;", "resName", "default", "name", "getRawIdentifier", "getInteger", "", "getLong", "", "getFloat", "getFraction", "getStringArray", "(I)[Ljava/lang/String;", "(Ljava/lang/String;)[Ljava/lang/String;", "Landroid/content/res/TypedArray;", "getTypedArray", "getDimens", "getDimensSafely", "res", "getColor", "Lcom/onyx/android/sdk/base/lite/extension/IntList;", "getColorList", "Landroid/content/res/ColorStateList;", "getColorStateList", "", "getIntArray", "getIntegerArray", "(I)[Ljava/lang/Integer;", "getFloatArray", "(I)[Ljava/lang/Float;", "rawName", "getUriOfRawName", "htmlName", "getUriOfAssets", "getDimension", "getDimensionPixelSize", "floatDimen", "getFloatValue", "Landroid/graphics/drawable/Drawable;", "getDrawable", "getDrawableResId", "getDrawableResIdSafely", "getScreenWidth", "getScreenHeight", "getLongerScreenSize", "getShorterScreenSize", "getLongerRealScreenSize", "getShorterRealScreenSize", "Landroid/graphics/Rect;", "getScreenRect", "Landroid/graphics/RectF;", "getScreenRectF", "Lcom/onyx/android/sdk/base/data/Size;", "getScreenSize", "getRealScreenArea", "getScreenArea", "getRealScreenHeight", "getScreenRealSize", "getScreenContentSize", "getRealScreenRect", "getWindowDefaultWidth", "getWindowDefaultHeight", "", "isLandscapeWindows", "getWindowDefaultSize", "getWindowDefaultRect", "getAspectRatio", "getAppContext", "getDPI", "type", "getIdentifier", "Ljava/io/InputStream;", "openRawResource", "id", FirebaseAnalytics.Param.QUANTITY, "getQuantityString", "(II[Ljava/lang/Object;)Ljava/lang/String;", "getBoolean", "Landroid/content/res/Resources;", "getResources", "getResourceEntryName", "getDensityDpi", "getDensity", "targetDPI", "isDeviceDpi", MessageConst.KEY_PACKAGE_NAME, CouchFieldKey.KEY_RESOURCE_ID, "density", "getDrawableForDensity", "colorOnBottomInt", "shouldColorOnTopBeLight", "xmlResId", "Lorg/w3c/dom/Document;", "loadXmlWithDom", "getMinDragThreshold", "getScaledTouchSlop", "getRotation", "rotation", "isLandscapeRotation", "isPortraitRotation", "", "getScreenInchSize", "isAppDebuggable", "INVALID_RESOURCE_ID", "I", "INVALID_DIMENS", "Landroid/content/Context;", "appContext", "Ljava/lang/ref/WeakReference;", "b", "Ljava/lang/ref/WeakReference;", "uiContextReference", Constants.CONSTRUCTOR_NAME, "()V", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nResManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResManager.kt\ncom/onyx/android/sdk/base/utils/ResManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,537:1\n1#2:538\n*E\n"})
/* loaded from: classes7.dex */
public final class ResManager {
    public static final int INVALID_DIMENS = -1;
    public static final int INVALID_RESOURCE_ID = 0;

    /* renamed from: a, reason: from kotlin metadata */
    public static Context appContext;

    @NotNull
    public static final ResManager INSTANCE = new ResManager();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static WeakReference<Context> uiContextReference = new WeakReference<>(null);

    public static /* synthetic */ String getStringSafely$default(ResManager resManager, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return resManager.getStringSafely(str, str2);
    }

    /* renamed from: a */
    public final void m32146a(Context context, Point realSize) {
    }

    @NotNull
    public final Context getAppContext() {
        Context context = appContext;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appContext");
        return null;
    }

    public final float getAspectRatio() {
        return getScreenWidth() / getScreenHeight();
    }

    public final boolean getBoolean(int id) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getBoolean(id);
    }

    public final int getColor(int res) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getColor(res);
    }

    @NotNull
    public final IntList getColorList(@ArrayRes int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return TypeExtKt.toIntList(context.getResources().getIntArray(resId));
    }

    @Nullable
    public final ColorStateList getColorStateList(int res) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getColorStateList(res);
    }

    @NotNull
    public final Context getContext() {
        Context context = uiContextReference.get();
        if (context != null) {
            return context;
        }
        Context context2 = appContext;
        if (context2 != null) {
            return context2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appContext");
        return null;
    }

    public final int getDPI() {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public final float getDensity() {
        Context appContext2 = getAppContext();
        Intrinsics.checkNotNull(appContext2);
        return appContext2.getResources().getDisplayMetrics().density;
    }

    public final int getDensityDpi() {
        Context appContext2 = getAppContext();
        Intrinsics.checkNotNull(appContext2);
        return appContext2.getResources().getDisplayMetrics().densityDpi;
    }

    public final int getDimens(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getDimensionPixelSize(resId);
    }

    public final int getDimensSafely(int resId) {
        try {
            return getDimens(resId);
        } catch (Resources.NotFoundException unused) {
            return -1;
        }
    }

    public final float getDimension(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getDimension(resId);
    }

    public final int getDimensionPixelSize(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getDimensionPixelSize(resId);
    }

    @Nullable
    public final Drawable getDrawable(@Nullable String name) {
        int drawableResIdSafely = getDrawableResIdSafely(name);
        if (drawableResIdSafely <= 0) {
            return null;
        }
        return getDrawable(drawableResIdSafely);
    }

    @Nullable
    public final Drawable getDrawableForDensity(@Nullable String packageName, int resourceId, int density) {
        Resources resourcesForApplication;
        if (resourceId > 0) {
            try {
                Context context = getContext();
                Intrinsics.checkNotNull(context);
                PackageManager packageManager = context.getPackageManager();
                Intrinsics.checkNotNull(packageName);
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
                Intrinsics.checkNotNullExpressionValue(packageInfo, "getPackageInfo(...)");
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo == null) {
                    return null;
                }
                Context context2 = getContext();
                Intrinsics.checkNotNull(context2);
                resourcesForApplication = context2.getPackageManager().getResourcesForApplication(applicationInfo);
                Intrinsics.checkNotNullExpressionValue(resourcesForApplication, "getResourcesForApplication(...)");
            } catch (Exception unused) {
                return null;
            }
        }
        return resourcesForApplication.getDrawableForDensity(resourceId, density);
    }

    public final int getDrawableResId(@Nullable String resName) {
        return getIdentifier(resName, ResourceManager.f46830c);
    }

    public final int getDrawableResIdSafely(@Nullable String resName) {
        try {
            return getDrawableResId(resName);
        } catch (Exception unused) {
            return 0;
        }
    }

    public final float getFloat(int resId) {
        TypedValue typedValue = new TypedValue();
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        context.getResources().getValue(resId, typedValue, true);
        return typedValue.getFloat();
    }

    @Nullable
    public final Float[] getFloatArray(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        String[] stringArray = context.getResources().getStringArray(resId);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        Float[] fArr = new Float[stringArray.length];
        int length = stringArray.length;
        for (int i = 0; i < length; i++) {
            com.onyx.android.sdk.base.lite.utils.MathUtils mathUtils = com.onyx.android.sdk.base.lite.utils.MathUtils.INSTANCE;
            String str = stringArray[i];
            Intrinsics.checkNotNullExpressionValue(str, "get(...)");
            fArr[i] = Float.valueOf(mathUtils.parseFloat(str));
        }
        return fArr;
    }

    public final float getFloatValue(int floatDimen) {
        TypedValue typedValue = new TypedValue();
        getResources().getValue(floatDimen, typedValue, true);
        return typedValue.getFloat();
    }

    @NotNull
    public final String getFormatString(int resId, @NotNull Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        try {
            String string = getContext().getResources().getString(resId, Arrays.copyOf(formatArgs, formatArgs.length));
            Intrinsics.checkNotNull(string);
            return string;
        } catch (Exception unused) {
            return "";
        }
    }

    public final float getFraction(int resId) {
        Context context = appContext;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appContext");
            context = null;
        }
        return context.getResources().getFraction(resId, 1, 0);
    }

    public final int getIdentifier(@Nullable String name, @Nullable String type) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        Resources resources = context.getResources();
        Context context2 = getContext();
        Intrinsics.checkNotNull(context2);
        return resources.getIdentifier(name, type, context2.getPackageName());
    }

    @NotNull
    public final int[] getIntArray(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        int[] intArray = context.getResources().getIntArray(resId);
        Intrinsics.checkNotNullExpressionValue(intArray, "getIntArray(...)");
        return intArray;
    }

    public final int getInteger(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getInteger(resId);
    }

    @Nullable
    public final Integer[] getIntegerArray(int resId) {
        int[] intArray = getIntArray(resId);
        Integer[] numArr = new Integer[intArray.length];
        int length = intArray.length;
        for (int i = 0; i < length; i++) {
            numArr[i] = Integer.valueOf(intArray[i]);
        }
        return numArr;
    }

    public final long getLong(int resId) {
        return getInteger(resId);
    }

    public final int getLongerRealScreenSize() {
        Rect realScreenRect = getRealScreenRect();
        return Math.max(realScreenRect.width(), realScreenRect.height());
    }

    public final float getLongerScreenSize() {
        return Math.max(getScreenWidth(), getScreenHeight());
    }

    public final int getMinDragThreshold() {
        return getScaledTouchSlop() / 4;
    }

    @Nullable
    public final String getQuantityString(int resId, int quantity) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getQuantityString(resId, quantity);
    }

    public final int getRawIdentifier(@Nullable String name) {
        return getIdentifier(name, "raw");
    }

    public final int getRealScreenArea() {
        Rect realScreenRect = getRealScreenRect();
        return realScreenRect.width() * realScreenRect.height();
    }

    @TargetApi(17)
    public final int getRealScreenHeight(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Point point = new Point(0, 0);
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getRealSize(point);
        }
        return point.y;
    }

    @TargetApi(17)
    @NotNull
    public final Rect getRealScreenRect() {
        Context context = appContext;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appContext");
            context = null;
        }
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Point point = new Point(0, 0);
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getRealSize(point);
        }
        return new Rect(0, 0, point.x, point.y);
    }

    @Nullable
    public final String getResourceEntryName(int id) {
        if (id > 0) {
            try {
            } catch (Exception unused) {
                return null;
            }
        }
        return getResources().getResourceEntryName(id);
    }

    @NotNull
    public final Resources getResources() {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        return resources;
    }

    public final int getRotation() {
        WindowManager windowManager = (WindowManager) getAppContext().getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        return windowManager.getDefaultDisplay().getRotation();
    }

    public final int getScaledTouchSlop() {
        Context context = appContext;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appContext");
            context = null;
        }
        return ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public final int getScreenArea() {
        return (int) (getScreenWidth() * getScreenHeight());
    }

    @NotNull
    public final Size getScreenContentSize() {
        int i = 0;
        Size size = new Size(i, i, 3, null);
        ResManager resManager = INSTANCE;
        size.m72172setWidth((int) resManager.getScreenWidth());
        size.m72171setHeight((int) resManager.getScreenHeight());
        return size;
    }

    public final float getScreenHeight() {
        Context context = appContext;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appContext");
            context = null;
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public final double getScreenInchSize() {
        Context context = getContext();
        Object systemService = context != null ? context.getSystemService("window") : null;
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getMetrics(displayMetrics);
        if (Build.VERSION.SDK_INT >= 30) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        double d = point.x / displayMetrics.xdpi;
        double d2 = point.y / displayMetrics.ydpi;
        return Math.sqrt((d * d) + (d2 * d2));
    }

    @NotNull
    public final Size getScreenRealSize() {
        Rect realScreenRect = getRealScreenRect();
        return new Size(realScreenRect.width(), realScreenRect.height());
    }

    @NotNull
    public final Rect getScreenRect() {
        return new Rect(0, 0, (int) getShorterScreenSize(), (int) getLongerScreenSize());
    }

    @NotNull
    public final RectF getScreenRectF() {
        return new RectF(0.0f, 0.0f, getShorterScreenSize(), getLongerScreenSize());
    }

    @NotNull
    public final Size getScreenSize() {
        return new Size((int) getShorterScreenSize(), (int) getLongerScreenSize());
    }

    public final float getScreenWidth() {
        Context context = appContext;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appContext");
            context = null;
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public final int getShorterRealScreenSize() {
        Rect realScreenRect = getRealScreenRect();
        return RangesKt.coerceAtMost(realScreenRect.width(), realScreenRect.height());
    }

    public final float getShorterScreenSize() {
        return Math.min(getScreenWidth(), getScreenHeight());
    }

    @Nullable
    public final String getString(int resId) {
        return getString(getContext(), resId);
    }

    @NotNull
    public final String[] getStringArray(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        String[] stringArray = context.getResources().getStringArray(resId);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        return stringArray;
    }

    @NotNull
    public final String getStringSafely(int resId) {
        return getStringSafely(getContext(), resId);
    }

    @Nullable
    public final TypedArray getTypedArray(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().obtainTypedArray(resId);
    }

    @Nullable
    public final Context getUiContext() {
        return uiContextReference.get();
    }

    @Nullable
    public final String getUriOfAssets(@NotNull String htmlName) {
        Intrinsics.checkNotNullParameter(htmlName, "htmlName");
        return "file:///android_asset/" + htmlName;
    }

    @Nullable
    public final String getUriOfRawName(@NotNull String rawName) {
        Intrinsics.checkNotNullParameter(rawName, "rawName");
        return "file:///android_res/raw/" + rawName;
    }

    public final int getWindowDefaultHeight() {
        return getWindowDefaultHeight(getContext());
    }

    @NotNull
    public final Rect getWindowDefaultRect() {
        Point windowDefaultSize = getWindowDefaultSize(getContext());
        return new Rect(0, 0, windowDefaultSize.x, windowDefaultSize.y);
    }

    @NotNull
    public final Point getWindowDefaultSize(@Nullable Context context) {
        Intrinsics.checkNotNull(context);
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Point point = new Point(0, 0);
        ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
        m32146a(context, point);
        return point;
    }

    public final int getWindowDefaultWidth() {
        return getWindowDefaultWidth(getContext());
    }

    public final void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        appContext = context;
    }

    public final void installUiContext(@Nullable Context uiContext) {
        uiContextReference = new WeakReference<>(uiContext);
    }

    public final boolean isAppDebuggable() {
        return (getAppContext().getApplicationInfo().flags & 2) != 0;
    }

    public final boolean isDeviceDpi(int targetDPI) {
        return getDensityDpi() == targetDPI;
    }

    public final boolean isLandscapeRotation(int rotation) {
        return rotation == 1 || rotation == 3;
    }

    public final boolean isLandscapeWindows() {
        return getWindowDefaultWidth() > getWindowDefaultHeight();
    }

    public final boolean isPortraitRotation(int rotation) {
        return rotation == 0 || rotation == 2;
    }

    @Nullable
    public final Document loadXmlWithDom(int xmlResId) {
        try {
            InputStream openRawResource = getResources().openRawResource(xmlResId);
            try {
                Document parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(openRawResource);
                CloseableKt.closeFinally(openRawResource, null);
                return parse;
            } finally {
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final InputStream openRawResource(@Nullable String name) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().openRawResource(getIdentifier(name, "raw"));
    }

    public final boolean shouldColorOnTopBeLight(@ColorInt int colorOnBottomInt) {
        return 186.0d > (((double) Color.red(colorOnBottomInt)) * 0.299d) + ((((double) Color.green(colorOnBottomInt)) * 0.587d) + (((double) Color.blue(colorOnBottomInt)) * 0.114d));
    }

    public final void uninstallUiContext() {
        uiContextReference.clear();
    }

    public final int getInteger(@Nullable Context context, int resId) {
        Resources resources;
        return (context == null || (resources = context.getResources()) == null) ? getInteger(resId) : resources.getInteger(resId);
    }

    @Nullable
    public final String getQuantityString(int resId, int quantity, @NotNull Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getQuantityString(resId, quantity, Arrays.copyOf(formatArgs, formatArgs.length));
    }

    @Nullable
    public final String getString(@Nullable Context context, int resId) {
        Intrinsics.checkNotNull(context);
        return context.getResources().getString(resId);
    }

    @Nullable
    public final String[] getStringArray(@Nullable String resName) {
        int identifier = getIdentifier(resName, "array");
        if (identifier <= 0) {
            return new String[0];
        }
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getStringArray(identifier);
    }

    @NotNull
    public final String getStringSafely(@Nullable Context context, int resId) {
        try {
            String string = getString(context, resId);
            return string == null ? "" : string;
        } catch (Exception unused) {
            return "";
        }
    }

    public final int getWindowDefaultHeight(@Nullable Context context) {
        return getWindowDefaultSize(context).y;
    }

    public final int getWindowDefaultWidth(@Nullable Context context) {
        return getWindowDefaultSize(context).x;
    }

    @Nullable
    public final InputStream openRawResource(int id) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().openRawResource(id);
    }

    @Nullable
    public final Drawable getDrawable(int resId) {
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        return context.getResources().getDrawable(resId);
    }

    @Nullable
    public final String getString(@Nullable String resName) {
        return getString(getIdentifier(resName, "string"));
    }

    @Nullable
    public final String getStringSafely(@Nullable String resName) {
        return getStringSafely(getContext(), resName);
    }

    @NotNull
    public final String getString(int resId, @NotNull Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        String string = context.getResources().getString(resId, Arrays.copyOf(formatArgs, formatArgs.length));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Nullable
    public final String getStringSafely(@Nullable String resName, @NotNull String r3) {
        Intrinsics.checkNotNullParameter(r3, "default");
        int identifier = getIdentifier(resName, "string");
        return identifier <= 0 ? r3 : getStringSafely(identifier);
    }

    @Nullable
    public final String getStringSafely(@Nullable Context context, @Nullable String resName) {
        int identifier = getIdentifier(resName, "string");
        return identifier <= 0 ? "" : getStringSafely(context, identifier);
    }

    @NotNull
    public final String getStringSafely(int resId, @NotNull Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        try {
            return getString(resId, Arrays.copyOf(formatArgs, formatArgs.length));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}

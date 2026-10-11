package com.onyx.android.sdk.base.utils;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.util.LruCache;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010)\u001a\u00020\u0006¢\u0006\u0004\b*\u0010+J\u0006\u0010\u0005\u001a\u00020\u0004J\u001d\u0010\t\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\t\u0010\rJ\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\t\u0010\u0010J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00028\u0000H$¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00152\b\u0010\u0011\u001a\u0004\u0018\u00018\u0000H$¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H$¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00028\u0000H$¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00028\u0000H$¢\u0006\u0004\b\u001e\u0010\u001fJ)\u0010 \u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b \u0010\u001bJ!\u0010!\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\nJ*\u0010#\u001a\u00020\u00152\b\u0010\"\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0002R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;", "T", "Landroid/util/LruCache;", "", "", Constants.CLEAR_ATTRIBUTES, "", "width", "height", "ensureBitmapReference", "(II)Ljava/lang/Object;", "Lcom/onyx/android/sdk/base/data/Size;", "size", "(Lcom/onyx/android/sdk/base/data/Size;)Ljava/lang/Object;", "Landroid/graphics/RectF;", "rectF", "(Landroid/graphics/RectF;)Ljava/lang/Object;", "t", "Landroid/graphics/Bitmap;", "getBitmap", "(Ljava/lang/Object;)Landroid/graphics/Bitmap;", "", "isValid", "(Ljava/lang/Object;)Z", "Landroid/graphics/Bitmap$Config;", AbstractLogger.CONFIG, BaiduYunConstant.CREATE, "(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;", "cloneBitmapReference", "(Ljava/lang/Object;)Ljava/lang/Object;", "clearBitmap", "(Ljava/lang/Object;)V", "b", "a", "bitmap", "c", "Landroid/graphics/Bitmap$Config;", "getConfig", "()Landroid/graphics/Bitmap$Config;", "setConfig", "(Landroid/graphics/Bitmap$Config;)V", "maxSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class BaseBitmapReferenceLruCache<T> extends LruCache<String, T> {

    @NotNull
    private Bitmap.Config config;

    public BaseBitmapReferenceLruCache(int i) {
        super(i);
        this.config = Bitmap.Config.ARGB_8888;
    }

    /* renamed from: a */
    public final T m32016a(int width, int height) {
        return m32017b(width, height, this.config);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final T m32017b(int width, int height, Bitmap.Config config) {
        if (size() < maxSize()) {
            return null;
        }
        Iterator it2 = snapshot().entrySet().iterator();
        if (!it2.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        String str = (String) entry.getKey();
        Object value = entry.getValue();
        if (!isValid(value)) {
            remove(str);
            return null;
        }
        if (!m32018c(getBitmap(value), width, height, config)) {
            return null;
        }
        T t = (T) cloneBitmapReference(value);
        remove(str);
        clearBitmap(t);
        return t;
    }

    /* renamed from: c */
    public final boolean m32018c(Bitmap bitmap, int width, int height, Bitmap.Config config) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.isMutable() && bitmap.getWidth() == width && bitmap.getHeight() == height && bitmap.getConfig() == config;
    }

    public final void clear() {
        Debug.INSTANCE.m32035d(getClass(), Constants.CLEAR_ATTRIBUTES, new Object[0]);
        evictAll();
    }

    public abstract void clearBitmap(T t);

    public abstract T cloneBitmapReference(T t);

    public abstract T create(int width, int height, @NotNull Bitmap.Config config);

    public final T ensureBitmapReference(int width, int height) {
        T m32016a = m32016a(width, height);
        if (!isValid(m32016a)) {
            m32016a = create(width, height, this.config);
        }
        Intrinsics.checkNotNull(m32016a);
        return m32016a;
    }

    @Nullable
    public abstract Bitmap getBitmap(T t);

    @NotNull
    public final Bitmap.Config getConfig() {
        return this.config;
    }

    public abstract boolean isValid(@Nullable T t);

    public final void setConfig(@NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(config, "<set-?>");
        this.config = config;
    }

    public final T ensureBitmapReference(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        return ensureBitmapReference(size.getWidth(), size.getHeight());
    }

    public final T ensureBitmapReference(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return ensureBitmapReference((int) rectF.width(), (int) rectF.height());
    }
}

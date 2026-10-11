package com.onyx.android.sdk.base.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.opengl.GLES10;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.blankj.utilcode.util.ImageUtils;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.SizeF;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.extension.PaintKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b¹\u0001\u0010º\u0001J\"\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000bJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007J\u001a\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\"\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u000bH\u0007J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001b\u001a\u00020\u001aJ$\u0010 \u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001d\u001a\u00020\u001a2\b\b\u0002\u0010\u001e\u001a\u00020\u001a2\b\b\u0002\u0010\u001f\u001a\u00020\u001aJ\u0016\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!J \u0010(\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020\u001aH\u0007J\u0018\u0010-\u001a\u00020\u000b2\b\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010,\u001a\u00020+J\u0016\u0010/\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+J \u00103\u001a\u0004\u0018\u00010\u00072\u0006\u00101\u001a\u0002002\u0006\u0010.\u001a\u00020\u00022\u0006\u00102\u001a\u00020!J\u0018\u0010-\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010,\u001a\u00020+J\u0018\u00104\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010,\u001a\u00020+J\u0010\u00105\u001a\u00020\u001a2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u00106\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007J\u0010\u00107\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007J\u0016\u00107\u001a\u00020\u000e2\u000e\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000708J\u0012\u0010:\u001a\u00020\u001a2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010;\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010<\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0007J.\u0010B\u001a\u00020!2\u0006\u0010=\u001a\u00020\u001a2\u0006\u0010>\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020\u001a2\u0006\u0010A\u001a\u00020\u000bJT\u0010I\u001a\u0004\u0018\u00010\u00072\b\u0010C\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001a2\u0006\u0010E\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\u001a2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0016\u0010L\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020J2\u0006\u0010K\u001a\u00020\u001aJ\u0016\u0010N\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020J2\u0006\u0010K\u001a\u00020MJ\u0016\u0010O\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020J2\u0006\u0010K\u001a\u00020MJ\u001e\u0010S\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\u001a2\u0006\u0010R\u001a\u00020\u001aJ&\u0010S\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010Q\u001a\u00020\u001a2\u0006\u0010R\u001a\u00020\u001aJ\u0016\u0010S\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010Q\u001a\u00020\u001aJ\"\u0010V\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u001aJ*\u0010V\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u001a2\u0006\u0010W\u001a\u00020\u000bJ\u001a\u0010X\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001aJ\u001a\u0010Y\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010T\u001a\u00020\u001aJ \u0010\\\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u001a2\u0006\u0010[\u001a\u00020\u001aH\u0007J\u0016\u0010]\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020\u001a2\u0006\u0010[\u001a\u00020\u001aJ\u0006\u0010^\u001a\u00020\u001aJ6\u0010h\u001a\u0004\u0018\u00010\u00072\u0006\u0010`\u001a\u00020_2\u0006\u0010b\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\b\u0010e\u001a\u0004\u0018\u00010d2\n\b\u0002\u0010g\u001a\u0004\u0018\u00010fJ>\u0010h\u001a\u0004\u0018\u00010\u00072\u0006\u00101\u001a\u0002002\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010b\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\b\u0010e\u001a\u0004\u0018\u00010d2\n\b\u0002\u0010g\u001a\u0004\u0018\u00010fJ\u001a\u0010i\u001a\u0004\u0018\u00010\u00072\b\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001aJ6\u0010p\u001a\u00020\u000e2\u0006\u0010k\u001a\u00020j2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00072\b\u0010l\u001a\u0004\u0018\u00010!2\b\u0010m\u001a\u0004\u0018\u00010!2\b\u0010o\u001a\u0004\u0018\u00010nJ(\u0010r\u001a\u00020\u000e2\u0006\u0010k\u001a\u00020j2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010q\u001a\u00020!2\b\u0010o\u001a\u0004\u0018\u00010nJ\u000e\u0010s\u001a\u00020\u000e2\u0006\u0010`\u001a\u00020_J*\u0010i\u001a\u0004\u0018\u00010\u00072\b\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001aJ;\u0010i\u001a\u0004\u0018\u00010\u00072\b\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a2\b\u0010t\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\bi\u0010uJ,\u0010|\u001a\u0004\u0018\u00010\u00072\b\u0010w\u001a\u0004\u0018\u00010v2\u0006\u0010x\u001a\u00020\u001a2\u0006\u0010y\u001a\u00020\u001a2\b\u0010{\u001a\u0004\u0018\u00010zJ\u000e\u0010\u007f\u001a\u00020~2\u0006\u0010}\u001a\u00020vJ\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00072\b\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\u001d\u001a\u00020\u001aJ%\u0010\u0082\u0001\u001a\u0004\u0018\u00010_2\u0007\u0010\u0081\u0001\u001a\u00020\u001a2\b\u0010t\u001a\u0004\u0018\u00010\u001a¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J&\u0010\u0082\u0001\u001a\u0004\u0018\u00010_2\b\u0010`\u001a\u0004\u0018\u00010_2\b\u0010t\u001a\u0004\u0018\u00010\u001a¢\u0006\u0006\b\u0082\u0001\u0010\u0084\u0001J\u000f\u0010\u0085\u0001\u001a\u00020\u000e2\u0006\u0010o\u001a\u00020nJ\u0007\u0010\u0086\u0001\u001a\u00020nJ*\u0010\u008a\u0001\u001a\u00020\u001a2\u0007\u0010\u0087\u0001\u001a\u00020~2\u0007\u0010\u0088\u0001\u001a\u00020\u001a2\u0007\u0010\u0089\u0001\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001aJ3\u0010\u008c\u0001\u001a\u00020\u000e2\u0007\u0010\u0087\u0001\u001a\u00020~2\u0007\u0010\u0088\u0001\u001a\u00020\u001a2\u0007\u0010\u0089\u0001\u001a\u00020\u001a2\u0007\u0010\u008b\u0001\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001aJ\u0010\u0010\u008e\u0001\u001a\u00020\u000b2\u0007\u0010\u008d\u0001\u001a\u00020\u0002J\u0019\u0010\u0091\u0001\u001a\u00020\u00022\u0007\u0010\u008f\u0001\u001a\u00020\u00022\u0007\u0010\u0090\u0001\u001a\u00020\u001aJ\u0019\u0010\u0094\u0001\u001a\u00020+2\u0007\u0010\u0092\u0001\u001a\u00020+2\u0007\u0010\u0093\u0001\u001a\u00020+J\u0012\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00072\u0007\u0010\u0095\u0001\u001a\u00020aJ\u0010\u0010\u0097\u0001\u001a\u00020\u00072\u0007\u0010\u0095\u0001\u001a\u00020aJ\u0014\u0010V\u001a\u0004\u0018\u00010\u00072\n\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u0001J\u0019\u0010\u009b\u0001\u001a\u00020\u000e2\u0007\u0010\u001e\u001a\u00030\u009a\u00012\u0007\u0010\u001f\u001a\u00030\u009a\u0001J\"\u0010\u009f\u0001\u001a\u00020d2\u0007\u0010\u009c\u0001\u001a\u00020\u00072\u0006\u0010c\u001a\u00020a2\b\u0010\u009e\u0001\u001a\u00030\u009d\u0001J#\u0010\u009f\u0001\u001a\u00020d2\b\u0010¡\u0001\u001a\u00030 \u00012\u0006\u0010c\u001a\u00020a2\b\u0010\u009e\u0001\u001a\u00030\u009d\u0001J\"\u0010\u009f\u0001\u001a\u00020d2\u0007\u0010¢\u0001\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\b\u0010\u009e\u0001\u001a\u00030\u009d\u0001R \u0010¦\u0001\u001a\u000b £\u0001*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u0016\u0010¨\u0001\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b}\u0010§\u0001R\u0017\u0010©\u0001\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u0017\u0010«\u0001\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\b\n\u0006\b«\u0001\u0010ª\u0001R\u0017\u0010¬\u0001\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\b\n\u0006\b¬\u0001\u0010ª\u0001R\u0017\u0010\u00ad\u0001\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\b\n\u0006\b\u00ad\u0001\u0010ª\u0001R\u0017\u0010®\u0001\u001a\u00020\u001a8\u0006X\u0086T¢\u0006\b\n\u0006\b®\u0001\u0010ª\u0001R\u001b\u0010o\u001a\u00020n8\u0006¢\u0006\u0010\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001R\u001b\u0010¶\u0001\u001a\u00020f8\u0006¢\u0006\u000f\n\u0005\b\b\u0010³\u0001\u001a\u0006\b´\u0001\u0010µ\u0001R\u0018\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001¨\u0006»\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/BitmapUtils;", "", "", "path", "Lio/reactivex/rxjava3/functions/Consumer;", "Landroid/graphics/BitmapFactory$Options;", "optionsCallback", "Landroid/graphics/Bitmap;", "d", "outOptions", C6998g.f39679a, "", "isAntiAlias", "antiAlias", "", "setAntiAlias", "loadBitmapFromFile", "Landroid/view/View;", "view", "loadBitmapFromView", "loadBitmapFromDrawingCache", "bitmap", "saveBitmap", "overrideFilePermission", "Landroid/content/res/Resources;", "res", "", "id", "decodeResourceSafely", "drawableId", "width", "height", "decodeVectorBitmap", "Landroid/graphics/Rect;", "srcRect", "dstRect", "getScaleFitCenterRect", "origin", "newWidth", "newHeight", "createScaledBitmap", "Ljava/io/InputStream;", "stream", "Lcom/onyx/android/sdk/base/data/Size;", "size", "decodeBitmapSize", HuaweiYunQueryArgs.FILE_NAME, "decodeAssetResBitmapSize", "Landroid/content/Context;", "context", "bitmapRect", "decodeAssetResToBitmap", "decodeBitmapSizeSupportExif", "getImageOrientation", Constants.CLEAR_ATTRIBUTES, "recycle", "", "bitmaps", "getSizeInBytes", "isValid", "isRecycled", "renderTargetHeight", "renderTargetWidth", "sourceHeight", "sourceWidth", "zoomToWidth", "getScaleInSideAndCenterRect", "targetString", "textSize", "boldText", "saveToDisk", "needRotation", "rotationAngle", "buildBitmapFromText", "Ljava/io/FileOutputStream;", "value", "writeWord", "", "writeDword", "writeLong", "options", "reqWidth", "reqHeight", "calculateInSampleSize", "targetWidth", "targetHeight", "decodeBitmap", "isWhiteBG", "decodeWidthRatioBitmap", "scaleToWidthRatioBitmap", "defaultValue", "limitValue", "calculateBitmapSampleSize", "getMaxImageSize", "getMaxTextureSize", "Landroid/graphics/drawable/Drawable;", ResourceManager.f46830c, "Landroid/graphics/RectF;", "originRectF", "displayRectF", "Landroid/graphics/Matrix;", "matrix", "Landroid/graphics/ColorFilter;", "colorFilter", "getBitmapFromVectorDrawableBySize", "getBitmapFromVectorDrawable", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, Constant.SRC_TAG, "dst", "Landroid/graphics/Paint;", "paint", "safelyDrawBitmap", "rect", "drawCenterBitmap", "invert", "tintColor", "(Landroid/content/Context;IIILjava/lang/Integer;)Landroid/graphics/Bitmap;", "", "data", MessageConst.KEY_IMAGE_WIDTH, MessageConst.KEY_IMAGE_HEIGHT, "Landroid/graphics/Bitmap$Config;", AbstractLogger.CONFIG, "createBitmap", "b", "", "my_bb_to_int_le", "loadBitmapFromResources", "redId", "getTintDrawable", "(ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;", "updateBitmapPaint", "createBitmapPaint", "pixels", "x", "y", "getPixel", "color", "setPixel", "filePath", "isJpegImage", "srcFile", "maxImageSize", "scaleImageFileWithMaxSizeLimit", "pageSize", "defaultThumbSize", "getThumbnailSize", "rectF", "createBitmapOrNull", "ensureBitmapNotNull", "Landroid/net/Uri;", "uri", "", "checkBitmapDecodeSize", "decodedBitmap", "", "rotation", "calculateRotationMatrix", "Lcom/onyx/android/sdk/base/data/SizeF;", "decodedSizeF", "layoutRectF", "kotlin.jvm.PlatformType", "a", Constants.STRING_SIG, "TAG", "Lcom/onyx/android/sdk/base/data/Size;", "ENSURE_BITMAP_NOT_NULL_SIZE", "MASK", "I", "MAX_BITMAP_PIXEL_DECODE_WIDTH", "MAX_BITMAP_PIXEL_DECODE_HEIGHT", "MAX_BITMAP_PIXEL_DECODE_SIZE", "MAX_BITMAP_EXPORT_SIZE", "c", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "Landroid/graphics/ColorFilter;", "getINVERTED_COLOR_FILTER", "()Landroid/graphics/ColorFilter;", "INVERTED_COLOR_FILTER", "e", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBitmapUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapUtils.kt\ncom/onyx/android/sdk/base/utils/BitmapUtils\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,817:1\n32#2,5:818\n*S KotlinDebug\n*F\n+ 1 BitmapUtils.kt\ncom/onyx/android/sdk/base/utils/BitmapUtils\n*L\n780#1:818,5\n*E\n"})
/* loaded from: classes7.dex */
public final class BitmapUtils {
    public static final int MASK = 255;
    public static final int MAX_BITMAP_EXPORT_SIZE = 268435456;
    public static final int MAX_BITMAP_PIXEL_DECODE_HEIGHT = 2048;
    public static final int MAX_BITMAP_PIXEL_DECODE_SIZE = 4194304;
    public static final int MAX_BITMAP_PIXEL_DECODE_WIDTH = 2048;

    @NotNull
    public static final BitmapUtils INSTANCE = new BitmapUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final String TAG = BitmapUtils.class.getSimpleName();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Size ENSURE_BITMAP_NOT_NULL_SIZE = new Size(10, 10);

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Paint paint = new Paint();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final ColorFilter INVERTED_COLOR_FILTER = new ColorMatrixColorFilter(new ColorMatrix(new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, -1.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, -1.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f}));

    /* renamed from: e, reason: from kotlin metadata */
    public static boolean antiAlias = true;

    public static /* synthetic */ Bitmap decodeVectorBitmap$default(BitmapUtils bitmapUtils, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = -1;
        }
        if ((i4 & 4) != 0) {
            i3 = -1;
        }
        return bitmapUtils.decodeVectorBitmap(i, i2, i3);
    }

    /* renamed from: e */
    public static final void m32022e(int i, int i2, BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        options.inSampleSize = INSTANCE.calculateInSampleSize(options, i, i2);
    }

    /* renamed from: f */
    public static final void m32023f(int i, BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        options.inSampleSize = INSTANCE.calculateInSampleSize(options.outWidth, i);
    }

    public static /* synthetic */ Bitmap getBitmapFromVectorDrawableBySize$default(BitmapUtils bitmapUtils, Drawable drawable, RectF rectF, RectF rectF2, Matrix matrix, ColorFilter colorFilter, int i, Object obj) {
        if ((i & 16) != 0) {
            colorFilter = null;
        }
        return bitmapUtils.getBitmapFromVectorDrawableBySize(drawable, rectF, rectF2, matrix, colorFilter);
    }

    /* renamed from: h */
    public static final void m32024h(int i, BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        options.inSampleSize = INSTANCE.calculateInSampleSize(options.outWidth, i);
    }

    @Nullable
    public final Bitmap buildBitmapFromText(@Nullable String targetString, int height, int textSize, boolean boldText, boolean saveToDisk, boolean overrideFilePermission, boolean needRotation, int rotationAngle, @Nullable String path) {
        Paint paint2 = new Paint(1);
        paint2.setStrokeWidth(3.0f);
        paint2.setTextSize(textSize);
        paint2.setColor(-16777216);
        paint2.setFakeBoldText(boldText);
        int textWidth = PaintKt.getTextWidth(paint2, targetString);
        Bitmap createBitmap = Bitmap.createBitmap(textWidth, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Rect rect = new Rect(0, 0, textWidth, height);
        Canvas canvas = new Canvas(createBitmap);
        Paint.FontMetricsInt fontMetricsInt = paint2.getFontMetricsInt();
        int i = ((height - fontMetricsInt.bottom) - fontMetricsInt.top) / 2;
        paint2.setTextAlign(Paint.Align.CENTER);
        Intrinsics.checkNotNull(targetString);
        canvas.drawText(targetString, rect.centerX(), i, paint2);
        if (needRotation) {
            createBitmap = BitmapKt.rotate(createBitmap, rotationAngle);
        }
        if (saveToDisk) {
            saveBitmap(createBitmap, path);
        }
        return createBitmap;
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "use bitmap.calculateSampleSize", imports = {}))
    public final int calculateBitmapSampleSize(@NotNull Bitmap bitmap, int defaultValue, int limitValue) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return BitmapKt.calculateSampleSize(bitmap, defaultValue, limitValue);
    }

    public final int calculateInSampleSize(@NotNull BitmapFactory.Options options, int reqWidth, int reqHeight) {
        Intrinsics.checkNotNullParameter(options, "options");
        return calculateInSampleSize(options.outWidth, options.outHeight, reqWidth, reqHeight);
    }

    @NotNull
    public final Matrix calculateRotationMatrix(@NotNull Bitmap decodedBitmap, @NotNull RectF displayRectF, float rotation) {
        Intrinsics.checkNotNullParameter(decodedBitmap, "decodedBitmap");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        return calculateRotationMatrix(BitmapKt.boundingRectF(decodedBitmap), displayRectF, rotation);
    }

    public final void checkBitmapDecodeSize(@NotNull Number width, @NotNull Number height) {
        Intrinsics.checkNotNullParameter(width, "width");
        Intrinsics.checkNotNullParameter(height, "height");
        if (width.intValue() * height.intValue() > 4194304) {
            throw OnyxException.INSTANCE.m31891of(BaseError.BITMAP_TOO_LARGE);
        }
    }

    public final void clear(@Nullable Bitmap bitmap) {
        BitmapKt.clear$default(bitmap, 0, 1, null);
    }

    @Nullable
    public final Bitmap createBitmap(@Nullable byte[] data, int imageWidth, int imageHeight, @Nullable Bitmap.Config config) {
        if (data == null || data.length == 0) {
            return null;
        }
        return Bitmap.createBitmap(my_bb_to_int_le(data), imageWidth, imageHeight, config);
    }

    @Nullable
    public final Bitmap createBitmapOrNull(@NotNull RectF rectF) {
        int roundToInt;
        int roundToInt2;
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        if (rectF.isEmpty()) {
            return null;
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(rectF.width());
        roundToInt2 = MathKt__MathJVMKt.roundToInt(rectF.height());
        return Bitmap.createBitmap(roundToInt, roundToInt2, Bitmap.Config.ARGB_8888);
    }

    @NotNull
    public final Paint createBitmapPaint() {
        Paint paint2 = new Paint();
        updateBitmapPaint(paint2);
        return paint2;
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "bitmap.createScaledBitmap", imports = {}))
    @NotNull
    public final Bitmap createScaledBitmap(@NotNull Bitmap origin, int newWidth, int newHeight) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        return BitmapKt.createScaledBitmap(origin, newWidth, newHeight, false);
    }

    /* renamed from: d */
    public final Bitmap m32025d(String path, Consumer<BitmapFactory.Options> optionsCallback) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        Size size = new Size(0, 0, 3, null);
        decodeBitmapSizeSupportExif(path, size);
        options.outWidth = size.getWidth();
        options.outHeight = size.getHeight();
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        if (optionsCallback != null) {
            optionsCallback.accept(options);
        }
        return m32026g(path, options);
    }

    public final boolean decodeAssetResBitmapSize(@NotNull String fileName, @NotNull Size size) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(size, "size");
        InputStream inputStream = null;
        try {
            inputStream = ResManager.INSTANCE.getAppContext().getAssets().open(fileName);
            return decodeBitmapSize(inputStream, size);
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    @Nullable
    public final Bitmap decodeAssetResToBitmap(@NotNull Context context, @NotNull String fileName, @NotNull Rect bitmapRect) {
        InputStream inputStream;
        BitmapFactory.Options options;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(bitmapRect, "bitmapRect");
        try {
            AssetManager assets = context.getAssets();
            options = new BitmapFactory.Options();
            options.outWidth = bitmapRect.width();
            options.outHeight = bitmapRect.height();
            inputStream = assets.open(fileName);
        } catch (Exception e) {
            e = e;
            inputStream = null;
        }
        try {
            return BitmapFactory.decodeStream(inputStream, null, options);
        } catch (Exception e2) {
            e = e2;
            if (inputStream != null) {
                inputStream.close();
            }
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final Bitmap decodeBitmap(@Nullable String path, int targetWidth, int targetHeight) {
        return decodeBitmap(path, targetWidth, targetHeight, false);
    }

    public final boolean decodeBitmapSize(@Nullable InputStream stream, @NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeStream(stream, null, options);
            size.m72172setWidth(options.outWidth);
            size.m72171setHeight(options.outHeight);
            return true;
        } catch (Throwable th) {
            Log.w(TAG, th);
            return false;
        }
    }

    public final boolean decodeBitmapSizeSupportExif(@Nullable String path, @NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(path, options);
            int imageOrientation = getImageOrientation(path);
            if (imageOrientation == 5 || imageOrientation == 6 || imageOrientation == 8) {
                size.m72172setWidth(options.outHeight);
                size.m72171setHeight(options.outWidth);
            } else {
                size.m72172setWidth(options.outWidth);
                size.m72171setHeight(options.outHeight);
            }
            return true;
        } catch (Throwable th) {
            Log.w(TAG, th);
            return false;
        }
    }

    @Nullable
    public final Bitmap decodeResourceSafely(@Nullable Resources res, int id) {
        if (id <= 0) {
            return null;
        }
        try {
            return BitmapFactory.decodeResource(res, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final Bitmap decodeVectorBitmap(int drawableId, int width, int height) {
        Drawable drawable = ResManager.INSTANCE.getDrawable(drawableId);
        VectorDrawable vectorDrawable = drawable instanceof VectorDrawable ? (VectorDrawable) drawable : null;
        if (vectorDrawable != null) {
            return DrawableKt.toBitmap(vectorDrawable, width, height);
        }
        return null;
    }

    @Nullable
    public final Bitmap decodeWidthRatioBitmap(@Nullable String path, final int targetWidth) {
        return targetWidth <= 0 ? loadBitmapFromFile(path) : m32025d(path, new Consumer() { // from class: com.sunia.HTREnginev2.ns
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                BitmapUtils.m32023f(targetWidth, (BitmapFactory.Options) obj);
            }
        });
    }

    public final void drawCenterBitmap(@NotNull Canvas canvas, @NotNull Bitmap bitmap, @NotNull Rect rect, @Nullable Paint paint2) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(rect, "rect");
        canvas.drawBitmap(bitmap, rect.centerX() - (bitmap.getWidth() / 2.0f), rect.centerY() - (bitmap.getHeight() / 2.0f), paint2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        if (((java.lang.Float.isInfinite(r0) || java.lang.Float.isNaN(r0)) ? false : true) == false) goto L18;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap ensureBitmapNotNull(@org.jetbrains.annotations.NotNull android.graphics.RectF r4) {
        /*
            r3 = this;
            java.lang.String r3 = "rectF"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r3)
            float r3 = r4.width()
            float r0 = r4.height()
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L36
            boolean r4 = java.lang.Float.isInfinite(r3)
            r1 = 1
            r2 = 0
            if (r4 != 0) goto L23
            boolean r4 = java.lang.Float.isNaN(r3)
            if (r4 != 0) goto L23
            r4 = r1
            goto L24
        L23:
            r4 = r2
        L24:
            if (r4 == 0) goto L36
            boolean r4 = java.lang.Float.isInfinite(r0)
            if (r4 != 0) goto L33
            boolean r4 = java.lang.Float.isNaN(r0)
            if (r4 != 0) goto L33
            goto L34
        L33:
            r1 = r2
        L34:
            if (r1 != 0) goto L43
        L36:
            com.onyx.android.sdk.base.data.Size r3 = com.onyx.android.sdk.base.utils.BitmapUtils.ENSURE_BITMAP_NOT_NULL_SIZE
            int r4 = r3.getWidth()
            float r4 = (float) r4
            int r3 = r3.getHeight()
            float r0 = (float) r3
            r3 = r4
        L43:
            int r3 = kotlin.math.MathKt.roundToInt(r3)
            int r4 = kotlin.math.MathKt.roundToInt(r0)
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r3, r4, r0)
            java.lang.String r4 = "createBitmap(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.BitmapUtils.ensureBitmapNotNull(android.graphics.RectF):android.graphics.Bitmap");
    }

    /* renamed from: g */
    public final Bitmap m32026g(String path, BitmapFactory.Options outOptions) {
        Bitmap decodeFile = BitmapFactory.decodeFile(path, outOptions);
        int imageOrientation = getImageOrientation(path);
        if (imageOrientation == 3) {
            Intrinsics.checkNotNull(decodeFile);
            return BitmapKt.rotate(decodeFile, 180);
        }
        if (imageOrientation == 6) {
            Intrinsics.checkNotNull(decodeFile);
            return BitmapKt.rotate(decodeFile, 90);
        }
        if (imageOrientation != 8) {
            Intrinsics.checkNotNull(decodeFile);
            return decodeFile;
        }
        Intrinsics.checkNotNull(decodeFile);
        return BitmapKt.rotate(decodeFile, 270);
    }

    @Nullable
    public final Bitmap getBitmapFromVectorDrawable(@Nullable Context context, int drawableId) {
        Bitmap bitmap = null;
        if (drawableId <= 0) {
            return null;
        }
        try {
            Intrinsics.checkNotNull(context);
            Drawable drawable = ContextCompat.getDrawable(context, drawableId);
            if (drawable == null) {
                return null;
            }
            bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return bitmap;
        }
    }

    @Nullable
    public final Bitmap getBitmapFromVectorDrawableBySize(@NotNull Drawable drawable, @NotNull RectF originRectF, @NotNull RectF displayRectF, @Nullable Matrix matrix, @Nullable ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        Intrinsics.checkNotNullParameter(originRectF, "originRectF");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        Bitmap bitmap = null;
        try {
            bitmap = Bitmap.createBitmap((int) displayRectF.width(), (int) displayRectF.height(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            canvas.setMatrix(matrix);
            drawable.setColorFilter(colorFilter);
            drawable.setBounds(0, 0, (int) originRectF.width(), (int) originRectF.height());
            drawable.draw(canvas);
            return bitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return bitmap;
        }
    }

    @NotNull
    public final ColorFilter getINVERTED_COLOR_FILTER() {
        return INVERTED_COLOR_FILTER;
    }

    public final int getImageOrientation(@Nullable String path) {
        try {
            Intrinsics.checkNotNull(path);
            return new ExifInterface(path).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
        } catch (Throwable th) {
            Log.w(TAG, th);
            return 1;
        }
    }

    public final int getMaxImageSize(int defaultValue, int limitValue) {
        int maxTextureSize = getMaxTextureSize();
        return maxTextureSize == 0 ? defaultValue : Math.min(maxTextureSize, limitValue);
    }

    public final int getMaxTextureSize() {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        return iArr[0];
    }

    @NotNull
    public final Paint getPaint() {
        return paint;
    }

    public final int getPixel(@NotNull int[] pixels, int x, int y, int width) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        return pixels[x + (y * width)];
    }

    @NotNull
    public final Rect getScaleFitCenterRect(@NotNull Rect srcRect, @NotNull Rect dstRect) {
        int roundToInt;
        int roundToInt2;
        Intrinsics.checkNotNullParameter(srcRect, "srcRect");
        Intrinsics.checkNotNullParameter(dstRect, "dstRect");
        float width = srcRect.width() / srcRect.height();
        if (width >= dstRect.width() / dstRect.height()) {
            roundToInt2 = MathKt__MathJVMKt.roundToInt(dstRect.width() / width);
            int abs = Math.abs((dstRect.height() - roundToInt2) / 2);
            return new Rect(0, abs, dstRect.width(), roundToInt2 + abs);
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(dstRect.height() * width);
        int abs2 = Math.abs((dstRect.width() - roundToInt) / 2);
        return new Rect(abs2, 0, roundToInt + abs2, dstRect.height());
    }

    @NotNull
    public final Rect getScaleInSideAndCenterRect(int renderTargetHeight, int renderTargetWidth, int sourceHeight, int sourceWidth, boolean zoomToWidth) {
        if (zoomToWidth) {
            int i = renderTargetWidth - 1;
            int i2 = (int) ((renderTargetHeight - 1) * (i / (sourceWidth - 1)));
            int i3 = ((sourceHeight - 1) - i2) / 2;
            return new Rect(0, i3, i, i2 + i3);
        }
        int i4 = renderTargetHeight - 1;
        int i5 = (int) ((renderTargetWidth - 1) * (i4 / (sourceHeight - 1)));
        int i6 = ((sourceWidth - 1) - i5) / 2;
        return new Rect(i6, 0, i5 + i6, i4);
    }

    @SuppressLint({"NewApi"})
    public final int getSizeInBytes(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        try {
            return bitmap.getAllocationByteCount();
        } catch (NullPointerException unused) {
            return bitmap.getByteCount();
        }
    }

    @NotNull
    public final Size getThumbnailSize(@NotNull Size pageSize, @NotNull Size defaultThumbSize) {
        int height;
        int width;
        Intrinsics.checkNotNullParameter(pageSize, "pageSize");
        Intrinsics.checkNotNullParameter(defaultThumbSize, "defaultThumbSize");
        if (pageSize.isVertical()) {
            height = defaultThumbSize.getWidth();
            width = defaultThumbSize.getHeight();
        } else {
            height = defaultThumbSize.getHeight();
            width = defaultThumbSize.getWidth();
        }
        float max = Math.max(pageSize.getWidth() / height, pageSize.getHeight() / width);
        return new Size((int) (pageSize.getWidth() / max), (int) (pageSize.getHeight() / max));
    }

    @Nullable
    public final Drawable getTintDrawable(int redId, @Nullable Integer tintColor) {
        return getTintDrawable(ResManager.INSTANCE.getDrawable(redId), tintColor);
    }

    public final void invert(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        drawable.setColorFilter(INVERTED_COLOR_FILTER);
    }

    public final boolean isAntiAlias() {
        return antiAlias;
    }

    public final boolean isJpegImage(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return ImageUtils.getImageType(filePath) == ImageUtils.ImageType.TYPE_JPG;
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "bitmap.isRecycled()", imports = {}))
    public final boolean isRecycled(@Nullable Bitmap bitmap) {
        return BitmapKt.isRecycled(bitmap);
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "bitmap.isValid()", imports = {}))
    public final boolean isValid(@Nullable Bitmap bitmap) {
        return BitmapKt.isValid(bitmap);
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "view.loadBitmapFromDrawingCache()", imports = {}))
    @Nullable
    public final Bitmap loadBitmapFromDrawingCache(@Nullable View view) {
        return ViewKt.loadBitmapFromDrawingCache(view);
    }

    @Nullable
    public final Bitmap loadBitmapFromFile(@Nullable String path) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        if (FileUtils.INSTANCE.fileExist(path)) {
            return BitmapFactory.decodeFile(path, options);
        }
        return null;
    }

    @Nullable
    public final Bitmap loadBitmapFromResources(@Nullable Context context, int drawableId) {
        return getBitmapFromVectorDrawable(context, drawableId);
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "view.loadBitmap()", imports = {}))
    @Nullable
    public final Bitmap loadBitmapFromView(@Nullable View view) {
        return ViewKt.loadBitmap(view);
    }

    @NotNull
    public final int[] my_bb_to_int_le(@NotNull byte[] b) {
        Intrinsics.checkNotNullParameter(b, "b");
        int length = b.length / 4;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 4;
            iArr[i] = (b[i2] & 255) + ((b[i2 + 1] & 255) << 8) + ((b[i2 + 2] & 255) << 16) + ((b[i2 + 3] & 255) << 24);
        }
        return iArr;
    }

    public final void recycle(@Nullable Bitmap bitmap) {
        BitmapKt.recycle(bitmap);
    }

    public final void safelyDrawBitmap(@NotNull Canvas canvas, @Nullable Bitmap bitmap, @Nullable Rect src, @Nullable Rect dst, @Nullable Paint paint2) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (!isValid(bitmap)) {
            Debug.INSTANCE.m32048e(new IllegalArgumentException("invalid bitmap"));
        } else if (dst == null) {
            Debug.INSTANCE.m32048e(new IllegalArgumentException("null dst"));
        } else {
            Intrinsics.checkNotNull(bitmap);
            canvas.drawBitmap(bitmap, src, dst, paint2);
        }
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "Bitmap.save()", imports = {}))
    public final boolean saveBitmap(@NotNull Bitmap bitmap, @Nullable String path) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return saveBitmap(bitmap, path, false);
    }

    @NotNull
    public final String scaleImageFileWithMaxSizeLimit(@NotNull String srcFile, int maxImageSize) {
        Intrinsics.checkNotNullParameter(srcFile, "srcFile");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(srcFile);
        int max = Math.max(decodeFile.getWidth(), decodeFile.getHeight());
        if (max < maxImageSize) {
            return srcFile;
        }
        float f = maxImageSize / max;
        float width = decodeFile.getWidth() * f;
        float height = decodeFile.getHeight() * f;
        options.inJustDecodeBounds = false;
        Bitmap decodeFile2 = BitmapFactory.decodeFile(srcFile);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeFile2, (int) width, (int) height, true);
        Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(...)");
        String str = srcFile + ".output";
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            createScaledBitmap.compress(isJpegImage(srcFile) ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
            decodeFile2.recycle();
            createScaledBitmap.recycle();
            return str;
        } finally {
        }
    }

    @Nullable
    public final Bitmap scaleToWidthRatioBitmap(@Nullable String path, final int targetWidth) {
        return targetWidth <= 0 ? loadBitmapFromFile(path) : BitmapKt.scaleToWidthRatioBitmap(m32025d(path, new Consumer() { // from class: com.sunia.HTREnginev2.ms
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                BitmapUtils.m32024h(targetWidth, (BitmapFactory.Options) obj);
            }
        }), targetWidth);
    }

    public final void setAntiAlias(boolean antiAlias2) {
        antiAlias = antiAlias2;
    }

    public final void setPixel(@NotNull int[] pixels, int x, int y, int color, int width) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        pixels[x + (y * width)] = color;
    }

    public final void updateBitmapPaint(@NotNull Paint paint2) {
        Intrinsics.checkNotNullParameter(paint2, "paint");
        paint2.setAntiAlias(isAntiAlias());
        paint2.setFilterBitmap(true);
        paint2.setDither(true);
    }

    public final void writeDword(@NotNull FileOutputStream stream, long value) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.write(new byte[]{(byte) (value & 255), (byte) ((value >> 8) & 255), (byte) ((value >> 16) & 255), (byte) ((value >> 24) & 255)});
    }

    public final void writeLong(@NotNull FileOutputStream stream, long value) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.write(new byte[]{(byte) (value & 255), (byte) ((value >> 8) & 255), (byte) ((value >> 16) & 255), (byte) ((value >> 24) & 255)});
    }

    public final void writeWord(@NotNull FileOutputStream stream, int value) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.write(new byte[]{(byte) (value & 255), (byte) ((value >> 8) & 255)});
    }

    public static /* synthetic */ Bitmap getBitmapFromVectorDrawableBySize$default(BitmapUtils bitmapUtils, Context context, int i, RectF rectF, RectF rectF2, Matrix matrix, ColorFilter colorFilter, int i2, Object obj) {
        if ((i2 & 32) != 0) {
            colorFilter = null;
        }
        return bitmapUtils.getBitmapFromVectorDrawableBySize(context, i, rectF, rectF2, matrix, colorFilter);
    }

    public final int calculateInSampleSize(int width, int height, int reqWidth, int reqHeight) {
        int i = 1;
        if (height > reqHeight || width > reqWidth) {
            int i2 = height / 2;
            int i3 = width / 2;
            while (i2 / i > reqHeight && i3 / i > reqWidth) {
                i *= 2;
            }
        }
        return i;
    }

    @NotNull
    public final Matrix calculateRotationMatrix(@NotNull SizeF decodedSizeF, @NotNull RectF displayRectF, float rotation) {
        Intrinsics.checkNotNullParameter(decodedSizeF, "decodedSizeF");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        return calculateRotationMatrix(new RectF(0.0f, 0.0f, decodedSizeF.getWidth(), decodedSizeF.getHeight()), displayRectF, rotation);
    }

    @Nullable
    public final Bitmap decodeBitmap(@Nullable String path, final int targetWidth, final int targetHeight, boolean isWhiteBG) {
        Bitmap m32025d = m32025d(path, (targetWidth <= 0 || targetHeight <= 0) ? null : new Consumer() { // from class: com.sunia.HTREnginev2.ls
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                BitmapUtils.m32022e(targetWidth, targetHeight, (BitmapFactory.Options) obj);
            }
        });
        if (isValid(m32025d)) {
            return BitmapKt.createScaledBitmap(m32025d, targetWidth, targetHeight, isWhiteBG);
        }
        return null;
    }

    @Nullable
    public final Drawable getTintDrawable(@Nullable Drawable drawable, @Nullable Integer tintColor) {
        if (drawable == null || tintColor == null) {
            return drawable;
        }
        Drawable mutate = drawable.mutate();
        DrawableCompat.setTint(mutate, tintColor.intValue());
        return mutate;
    }

    public final void recycle(@NotNull List<Bitmap> bitmaps) {
        Intrinsics.checkNotNullParameter(bitmaps, "bitmaps");
        if (bitmaps.isEmpty()) {
            return;
        }
        Iterator<Bitmap> it2 = bitmaps.iterator();
        while (it2.hasNext()) {
            recycle(it2.next());
        }
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "Bitmap.save()", imports = {}))
    public final boolean saveBitmap(@NotNull Bitmap bitmap, @Nullable String path, boolean overrideFilePermission) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return BitmapKt.save$default(bitmap, path, 0, 2, null);
    }

    @NotNull
    public final Matrix calculateRotationMatrix(@NotNull RectF layoutRectF, @NotNull RectF displayRectF, float rotation) {
        Intrinsics.checkNotNullParameter(layoutRectF, "layoutRectF");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        Matrix matrix = new Matrix();
        RectF rotatedSize$default = RectFKt.rotatedSize$default(layoutRectF, rotation, 0.0f, 0.0f, 6, null);
        Pair m61535to = TuplesKt.m61535to(Float.valueOf(rotatedSize$default.width()), Float.valueOf(rotatedSize$default.height()));
        float floatValue = ((Number) m61535to.component1()).floatValue();
        float floatValue2 = ((Number) m61535to.component2()).floatValue();
        float width = displayRectF.width() / floatValue;
        float height = displayRectF.height() / floatValue2;
        matrix.postTranslate(-layoutRectF.centerX(), -layoutRectF.centerY());
        matrix.postRotate(rotation);
        matrix.postScale(width, height);
        matrix.postTranslate(displayRectF.centerX(), displayRectF.centerY());
        return matrix;
    }

    public final int calculateInSampleSize(int width, int reqWidth) {
        int i = 1;
        if (width > reqWidth) {
            while ((width / 2) / i > reqWidth) {
                i *= 2;
            }
        }
        return i;
    }

    @Nullable
    public final Bitmap decodeBitmap(@Nullable Uri uri) {
        ParcelFileDescriptor openFileDescriptor;
        FileDescriptor fileDescriptor;
        if ((uri == null) || (openFileDescriptor = ResManager.INSTANCE.getAppContext().getContentResolver().openFileDescriptor(uri, "r")) == null || (fileDescriptor = openFileDescriptor.getFileDescriptor()) == null) {
            return null;
        }
        return BitmapFactory.decodeFileDescriptor(fileDescriptor);
    }

    public final boolean decodeBitmapSize(@Nullable String path, @NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(path);
            try {
                boolean decodeBitmapSize = decodeBitmapSize(fileInputStream2, size);
                FileUtils.INSTANCE.closeQuietly(fileInputStream2);
                return decodeBitmapSize;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                try {
                    Log.w(TAG, th);
                    FileUtils.INSTANCE.closeQuietly(fileInputStream);
                    return false;
                } catch (Throwable th2) {
                    FileUtils.INSTANCE.closeQuietly(fileInputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Nullable
    public final Bitmap getBitmapFromVectorDrawable(@Nullable Context context, int drawableId, int width, int height) {
        return getBitmapFromVectorDrawable(context, drawableId, width, height, null);
    }

    @Nullable
    public final Bitmap getBitmapFromVectorDrawable(@Nullable Context context, int drawableId, int width, int height, @Nullable Integer tintColor) {
        Bitmap bitmap = null;
        if (drawableId <= 0) {
            return null;
        }
        try {
            Drawable tintDrawable = getTintDrawable(drawableId, tintColor);
            if (tintDrawable == null) {
                return null;
            }
            bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            tintDrawable.setBounds(0, 0, width, height);
            tintDrawable.draw(canvas);
            return bitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return bitmap;
        }
    }

    @Nullable
    public final Bitmap getBitmapFromVectorDrawableBySize(@NotNull Context context, int drawableId, @NotNull RectF originRectF, @NotNull RectF displayRectF, @Nullable Matrix matrix, @Nullable ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(originRectF, "originRectF");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        if (drawableId <= 0) {
            return null;
        }
        Drawable drawable = ContextCompat.getDrawable(context, drawableId);
        Intrinsics.checkNotNull(drawable);
        return getBitmapFromVectorDrawableBySize(drawable, originRectF, displayRectF, matrix, colorFilter);
    }
}

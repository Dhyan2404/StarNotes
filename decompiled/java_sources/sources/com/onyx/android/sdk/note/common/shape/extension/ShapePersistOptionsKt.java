package com.onyx.android.sdk.note.common.shape.extension;

import android.graphics.RectF;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.o6o;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\"\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u001a\u0010\b\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005\u001a\n\u0010\n\u001a\u00020\t*\u00020\u0000\u001a\u0014\u0010\u000b\u001a\u00020\t*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\f\u001a\u00020\u0001*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\r\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0001\u001a\n\u0010\u000f\u001a\u00020\u000e*\u00020\u0000\u001a\u0012\u0010\u0011\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000e\u001a+\u0010\u0016\u001a\u00020\u0007\"\b\b\u0000\u0010\u0013*\u00020\u0012*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a8\u0010\u001a\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0013\u0018\u0001*\u00020\u0012*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018H\u0086\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a\n\u0010\u001c\u001a\u00020\t*\u00020\u0000\u001a\u0012\u0010\u001d\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u001d\u001a\u00020\t\u001a\n\u0010\u001e\u001a\u00020\t*\u00020\u0000\u001a\u0012\u0010 \u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u001f\u001a\u00020\t\u001a\f\u0010\"\u001a\u0004\u0018\u00010!*\u00020\u0000\u001a\u0012\u0010$\u001a\u00020\u0007*\u00020\u00002\u0006\u0010#\u001a\u00020!\u001a\n\u0010%\u001a\u00020\t*\u00020\u0000\u001a\u0012\u0010'\u001a\u00020\u0007*\u00020\u00002\u0006\u0010&\u001a\u00020\t\u001a\u0014\u0010(\u001a\u00020\t*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\t\u001a\u0012\u0010*\u001a\u00020\u0007*\u00020\u00002\u0006\u0010)\u001a\u00020\t\u001a\f\u0010,\u001a\u0004\u0018\u00010+*\u00020\u0000\u001a\u0012\u0010-\u001a\u00020\u0007*\u00020\u00002\u0006\u0010#\u001a\u00020+\u001a\n\u0010.\u001a\u00020\u0005*\u00020\u0000\u001a\n\u0010/\u001a\u00020\t*\u00020\u0000\u001a\n\u00101\u001a\u000200*\u00020\u0000\u001a\n\u00102\u001a\u00020\u0001*\u00020\u0000\u001a\u0012\u00104\u001a\u00020\u0007*\u00020\u00002\u0006\u00103\u001a\u00020\u0001\u001a\n\u00105\u001a\u00020\u0001*\u00020\u0000\u001a\u0012\u00106\u001a\u00020\u0007*\u00020\u00002\u0006\u00103\u001a\u00020\u0001\"\u0014\u00109\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u00108\"\u0014\u0010;\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b:\u00108\"\u0014\u0010=\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b<\u00108\"\u0014\u0010?\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b>\u00108\"\u0014\u0010A\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b@\u00108\"\u0014\u0010C\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bB\u00108\"\u0014\u0010E\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bD\u00108\"\u0014\u0010G\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bF\u00108\"\u0014\u0010I\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bH\u00108\"\u0014\u0010K\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bJ\u00108\"\u0014\u0010M\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bL\u00108\"\u0014\u0010O\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bN\u00108\"\u0014\u0010Q\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\bP\u00108¨\u0006R"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/Shape;", "", "defaultValue", "getTapeSubShapeType", "subShapeType", "", "fillShapeStyle", "", "setTapeSubShapeType", "", "isInvalidSubShapeType", "isLineSubShapeType", "getSubShapeType", "setSubShapeType", "Landroid/graphics/RectF;", "getQuoteIndicatorAnchorRect", "rectF", "setQuoteIndicatorAnchorRect", "", "T", "key", "value", "putPersistObject", "(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Object;)V", "Ljava/lang/Class;", "cls", "getPersistObject", "(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "isLocked", DevicePushAction.LOCK_DEVICE, "isRoundCorner", Keywords.FUNC_ROUND_STRING, "setRoundCorner", "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "getAnnotationInfoBean", PrivilegedApp.f6532i, "setAnnotationInfoBean", "isBottom", "bottom", "setBottom", "isUnderContent", o6o.f79403m, "setUnderContent", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "setExcerptInfoBean", "getTapeShapeFillStyle", "isInvalidExcerptShape", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "clonePersistOptions", "getHWRTextShapeLayoutVersion", "version", "setHWRTextShapeLayoutVersion", "getShapeVersion", "setShapeVersion", "a", Constants.STRING_SIG, "KEY_OLD_SUB_SHAPE_TYPE", "b", ShapePersistOptionsKt.f43670a, "c", ShapePersistOptionsKt.f43672c, "d", ShapePersistOptionsKt.f43673d, "e", ShapePersistOptionsKt.f43674e, C6997f.f39671c, "KEY_ANNOTATION_INFO", C6998g.f39679a, ShapePersistOptionsKt.f43676g, C6999h.f39688c, ShapePersistOptionsKt.f43677h, "i", "KEY_EXCERPT_INFO", "j", ShapePersistOptionsKt.f43679j, C4921e.f26537n, ShapePersistOptionsKt.f43680k, "l", ShapePersistOptionsKt.f43681l, "m", ShapePersistOptionsKt.f43682m, "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapePersistOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapePersistOptions.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt\n+ 2 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,171:1\n78#1,2:172\n82#1,7:175\n78#1,2:183\n82#1,7:186\n78#1,2:193\n82#1,7:196\n19#2:174\n19#2:182\n19#2:185\n19#2:195\n*S KotlinDebug\n*F\n+ 1 ShapePersistOptions.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt\n*L\n65#1:172,2\n65#1:175,7\n108#1:183,2\n108#1:186,7\n135#1:193,2\n135#1:196,7\n65#1:174\n79#1:182\n108#1:185\n135#1:195\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapePersistOptionsKt {

    /* renamed from: a */
    @NotNull
    public static final String f43670a = "KEY_SUB_SHAPE_TYPE";

    /* renamed from: b */
    @NotNull
    public static final String f43671b = "KEY_NEW_SUB_SHAPE_TYPE";

    /* renamed from: c */
    @NotNull
    public static final String f43672c = "KEY_QUOTE_INDICATOR_ANCHOR_RECT";

    /* renamed from: d */
    @NotNull
    public static final String f43673d = "KEY_LOCKED";

    /* renamed from: e */
    @NotNull
    public static final String f43674e = "KEY_ROUND_CORNER";

    /* renamed from: f */
    @NotNull
    public static final String f43675f = "KEY_ANNOTATION_INFO";

    /* renamed from: g */
    @NotNull
    public static final String f43676g = "KEY_BOTTOM";

    /* renamed from: h */
    @NotNull
    public static final String f43677h = "KEY_UNDER_CONTENT";

    /* renamed from: i */
    @NotNull
    public static final String f43678i = "KEY_EXCERPT_INFO";

    /* renamed from: j */
    @NotNull
    public static final String f43679j = "KEY_TAPE_FILL_STYLE";

    /* renamed from: k */
    @NotNull
    public static final String f43680k = "KEY_PORTERDUFF_MODE";

    /* renamed from: l */
    @NotNull
    public static final String f43681l = "KEY_HWR_TEXT_SHAPE_LAYOUT_VERSION";

    /* renamed from: m */
    @NotNull
    public static final String f43682m = "KEY_SHAPE_VERSION";

    @NotNull
    public static final OptionsRepo clonePersistOptions(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return OptionsRepo.Companion.cloneOptionsRepo$default(OptionsRepo.INSTANCE, shape.getPersistOptions(), null, 2, null);
    }

    @Nullable
    public static final AnnotationInfoBean getAnnotationInfoBean(@NotNull Shape shape) {
        Object parseObject;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        if (shape.getRuntimeOptions().contains("KEY_ANNOTATION_INFO")) {
            Object obj = shape.getRuntimeOptions().getRepo().get("KEY_ANNOTATION_INFO");
            r2 = (AnnotationInfoBean) (obj instanceof AnnotationInfoBean ? obj : null);
        } else {
            String string = shape.getPersistOptions().getString("KEY_ANNOTATION_INFO", "");
            if (!(string.length() == 0) && (parseObject = JSONUtils.INSTANCE.parseObject(string, (Class<Object>) AnnotationInfoBean.class)) != null) {
                shape.getRuntimeOptions().put("KEY_ANNOTATION_INFO", parseObject);
                r2 = parseObject;
            }
        }
        return (AnnotationInfoBean) r2;
    }

    @Nullable
    public static final ExcerptInfoBean getExcerptInfoBean(@NotNull Shape shape) {
        Object parseObject;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Date createdAt = shape.getCreatedAt();
        long time = createdAt != null ? createdAt.getTime() : 0L;
        long time2 = shape.getUpdatedAt().getTime();
        if (shape.getRuntimeOptions().contains("KEY_EXCERPT_INFO")) {
            Object obj = shape.getRuntimeOptions().getRepo().get("KEY_EXCERPT_INFO");
            if (!(obj instanceof ExcerptInfoBean)) {
                obj = null;
            }
            parseObject = (ExcerptInfoBean) obj;
        } else {
            String string = shape.getPersistOptions().getString("KEY_EXCERPT_INFO", "");
            if ((string.length() == 0) || (parseObject = JSONUtils.INSTANCE.parseObject(string, (Class<Object>) ExcerptInfoBean.class)) == null) {
                parseObject = null;
            } else {
                shape.getRuntimeOptions().put("KEY_EXCERPT_INFO", parseObject);
            }
        }
        ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) parseObject;
        if (excerptInfoBean == null) {
            return null;
        }
        excerptInfoBean.setUniqueId(shape.getShapeUniqueId());
        excerptInfoBean.setPageUniqueId(shape.getPageUniqueId());
        excerptInfoBean.setCreatedAt(time);
        excerptInfoBean.setUpdatedAt(time2);
        return excerptInfoBean;
    }

    public static final int getHWRTextShapeLayoutVersion(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().getInt(f43681l, 0);
    }

    public static final /* synthetic */ <T> T getPersistObject(Shape shape, String key, Class<T> cls) {
        T t;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(cls, "cls");
        if (shape.getRuntimeOptions().contains(key)) {
            T t2 = (T) shape.getRuntimeOptions().getRepo().get(key);
            Intrinsics.reifiedOperationMarker(2, "T?");
            return t2;
        }
        String string = shape.getPersistOptions().getString(key, "");
        if ((string.length() == 0) || (t = (T) JSONUtils.INSTANCE.parseObject(string, cls)) == null) {
            return null;
        }
        shape.getRuntimeOptions().put(key, t);
        return t;
    }

    @NotNull
    public static final RectF getQuoteIndicatorAnchorRect(@NotNull Shape shape) {
        Object parseObject;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        if (shape.getRuntimeOptions().contains(f43672c)) {
            Object obj = shape.getRuntimeOptions().getRepo().get(f43672c);
            r2 = (RectF) (obj instanceof RectF ? obj : null);
        } else {
            String string = shape.getPersistOptions().getString(f43672c, "");
            if (!(string.length() == 0) && (parseObject = JSONUtils.INSTANCE.parseObject(string, (Class<Object>) RectF.class)) != null) {
                shape.getRuntimeOptions().put(f43672c, parseObject);
                r2 = parseObject;
            }
        }
        RectF rectF = (RectF) r2;
        return rectF == null ? new RectF() : rectF;
    }

    public static final int getShapeVersion(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().getInt(f43682m, 0);
    }

    public static final int getSubShapeType(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().getInt(f43671b, i);
    }

    public static /* synthetic */ int getSubShapeType$default(Shape shape, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 7;
        }
        return getSubShapeType(shape, i);
    }

    @NotNull
    public static final String getTapeShapeFillStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        String persistOption = shape.getPersistOption(f43679j);
        return persistOption == null ? "" : persistOption;
    }

    public static final int getTapeSubShapeType(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().contains(f43670a) ? shape.getPersistOptions().getInt(f43670a, i) : getSubShapeType(shape, i);
    }

    public static /* synthetic */ int getTapeSubShapeType$default(Shape shape, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 7;
        }
        return getTapeSubShapeType(shape, i);
    }

    public static final boolean isBottom(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().getBoolean(f43676g, false);
    }

    public static final boolean isInvalidExcerptShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return !shape.getPersistOptions().contains("KEY_EXCERPT_INFO");
    }

    public static final boolean isInvalidSubShapeType(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return getSubShapeType(shape, -1) == -1;
    }

    public static final boolean isLineSubShapeType(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return getSubShapeType(shape, i) == 7;
    }

    public static /* synthetic */ boolean isLineSubShapeType$default(Shape shape, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 7;
        }
        return isLineSubShapeType(shape, i);
    }

    public static final boolean isLocked(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().getBoolean(f43673d, false);
    }

    public static final boolean isRoundCorner(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().getBoolean(f43674e, true);
    }

    public static final boolean isUnderContent(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getPersistOptions().getBoolean(f43677h, z);
    }

    public static /* synthetic */ boolean isUnderContent$default(Shape shape, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return isUnderContent(shape, z);
    }

    public static final void lock(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getPersistOptions().putBoolean(f43673d, z);
    }

    public static final <T> void putPersistObject(@NotNull Shape shape, @NotNull String key, @NotNull T value) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        shape.getRuntimeOptions().put(key, value);
        OptionsRepo persistOptions = shape.getPersistOptions();
        String jSONString = JSONUtils.INSTANCE.toJSONString(value);
        if (jSONString == null) {
            jSONString = "";
        }
        persistOptions.putString(key, jSONString);
    }

    public static final void setAnnotationInfoBean(@NotNull Shape shape, @NotNull AnnotationInfoBean info) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(info, "info");
        putPersistObject(shape, "KEY_ANNOTATION_INFO", info);
    }

    public static final void setBottom(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getPersistOptions().putBoolean(f43676g, z);
    }

    public static final void setExcerptInfoBean(@NotNull Shape shape, @NotNull ExcerptInfoBean info) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(info, "info");
        putPersistObject(shape, "KEY_EXCERPT_INFO", info);
    }

    public static final void setHWRTextShapeLayoutVersion(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getPersistOptions().putInt(f43681l, i);
    }

    public static final void setQuoteIndicatorAnchorRect(@NotNull Shape shape, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        putPersistObject(shape, f43672c, rectF);
    }

    public static final void setRoundCorner(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getPersistOptions().putBoolean(f43674e, z);
    }

    public static final void setShapeVersion(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getPersistOptions().putInt(f43682m, i);
    }

    public static final void setSubShapeType(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getPersistOptions().putInt(f43671b, i);
    }

    public static final void setTapeSubShapeType(@NotNull Shape shape, int i, @NotNull String fillShapeStyle) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(fillShapeStyle, "fillShapeStyle");
        if (shape.getPersistOptions().contains(f43670a)) {
            shape.getPersistOptions().remove(f43670a);
        }
        shape.getPersistOptions().putString(f43679j, fillShapeStyle);
        setSubShapeType(shape, i);
    }

    public static final void setUnderContent(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getPersistOptions().putBoolean(f43677h, z);
    }
}

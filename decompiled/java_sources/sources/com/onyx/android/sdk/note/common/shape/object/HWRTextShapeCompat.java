package com.onyx.android.sdk.note.common.shape.object;

import com.onyx.android.sdk.base.data.Migration;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.data.common.path.FontPaths;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gfh;
import com.sunia.HTREnginev2.hfh;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\u000f\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\r\u0010\u000eR \u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "shape", "", "updateHWRTextShapeChange", "c", "", "d", "b", "a", "", "Lkotlin/Lazy;", "getAppFontDirPath", "()Ljava/lang/String;", "appFontDirPath", "", "Lcom/onyx/android/sdk/base/data/Migration;", "Ljava/util/List;", "migrators", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRTextShapeCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRTextShapeCompat.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1855#2:118\n1856#2:120\n1#3:119\n*S KotlinDebug\n*F\n+ 1 HWRTextShapeCompat.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat\n*L\n47#1:118\n47#1:120\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRTextShapeCompat {

    @NotNull
    public static final HWRTextShapeCompat INSTANCE = new HWRTextShapeCompat();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy appFontDirPath;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final List<Migration<HWRTextShape>> migrators;

    static {
        Lazy lazy;
        List<Migration<HWRTextShape>> listOf;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.onyx.android.sdk.note.common.shape.object.HWRTextShapeCompat$appFontDirPath$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return AppPaths.INSTANCE.appFontDir().toAbsolutePath().toString();
            }
        });
        appFontDirPath = lazy;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Migration[]{new gfh(), new hfh()});
        migrators = listOf;
    }

    /* renamed from: a */
    public final boolean m33856a(HWRTextShape shape) {
        String fontFace;
        boolean startsWith$default;
        String resolveLocalFont;
        ShapeTextStyle textStyle = shape.getTextStyle();
        if (textStyle == null || (fontFace = textStyle.getFontFace()) == null) {
            return false;
        }
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(fontFace, getAppFontDirPath(), false, 2, null);
        if (startsWith$default || (resolveLocalFont = FontPaths.INSTANCE.resolveLocalFont(fontFace)) == null) {
            return false;
        }
        textStyle.setFontFace(resolveLocalFont);
        return true;
    }

    /* renamed from: b */
    public final boolean m33857b(HWRTextShape shape) {
        return shape.loadRenderPath().getUnionFontRect().width() - shape.getPointsBoundingRect().width() > 1.0f;
    }

    /* renamed from: c */
    public final boolean m33858c(HWRTextShape shape) {
        int hWRTextShapeLayoutVersion = ShapePersistOptionsKt.getHWRTextShapeLayoutVersion(shape);
        if (hWRTextShapeLayoutVersion >= 3) {
            return false;
        }
        m33859d(shape);
        Iterator<T> it2 = migrators.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Migration migration = (Migration) it2.next();
            Integer valueOf = Integer.valueOf(ShapePersistOptionsKt.getHWRTextShapeLayoutVersion(shape));
            if (!(valueOf.intValue() == migration.getVersion())) {
                valueOf = null;
            }
            if (valueOf != null) {
                valueOf.intValue();
                migration.beforeMigration(shape);
                migration.migrate(shape);
                migration.afterMigration(shape);
            }
        }
        return ShapePersistOptionsKt.getHWRTextShapeLayoutVersion(shape) != hWRTextShapeLayoutVersion;
    }

    /* renamed from: d */
    public final void m33859d(HWRTextShape shape) {
        if (ShapePersistOptionsKt.getHWRTextShapeLayoutVersion(shape) == 0) {
            int i = m33857b(shape) ? 1 : 2;
            shape.setExtraBean(new ShapeExtraBean());
            ShapePersistOptionsKt.setHWRTextShapeLayoutVersion(shape, i);
        }
    }

    @NotNull
    public final String getAppFontDirPath() {
        return (String) appFontDirPath.getValue();
    }

    public final boolean updateHWRTextShapeChange(@NotNull HWRTextShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        boolean m33858c = m33858c(shape);
        if (m33858c) {
            shape.setRevisionId("");
        }
        boolean m33856a = m33856a(shape);
        if (m33856a) {
            shape.setInfoRevisionId("");
        }
        return m33858c || m33856a;
    }
}

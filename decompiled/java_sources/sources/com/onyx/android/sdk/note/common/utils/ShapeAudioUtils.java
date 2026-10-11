package com.onyx.android.sdk.note.common.utils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.object.AudioShape;
import com.onyx.android.sdk.note.common.utils.ShapeAudioUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J,\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\"\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\rH\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\rH\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0014H\u0002R\u0014\u0010\u001f\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;", "", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "resource", "", "width", "height", "", "renderScale", "Landroid/view/View;", "createAudioView", "Landroid/graphics/Bitmap;", "createAudioBitmap", "", "getAudioName", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "audioShape", "", "deleteAudioTextFiles", "", "Ljava/io/File;", "c", "fileDir", "shapeId", "e", "d", "file", "", C6999h.f39688c, "a", Constants.STRING_SIG, "RECORD_TEXT_PREFIX_NAME", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeAudioUtils {

    @NotNull
    public static final ShapeAudioUtils INSTANCE = new ShapeAudioUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String RECORD_TEXT_PREFIX_NAME = "shape-";

    /* renamed from: f */
    public static final boolean m34038f(String prefixName, File file, String str) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(prefixName, "$prefixName");
        Intrinsics.checkNotNull(str);
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, prefixName, false, 2, null);
        return startsWith$default;
    }

    /* renamed from: g */
    public static final int m34039g(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: c */
    public final List<File> m34040c(Shape audioShape) {
        return m34042e(ResourcePaths.INSTANCE.appResourceDataDir(audioShape.getDocumentUniqueId()).toAbsolutePath().toString(), audioShape.getShapeUniqueId());
    }

    @Nullable
    public final Bitmap createAudioBitmap(@Nullable ShapeResource resource, int width, int height) {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return ViewKt.loadBitmap(createAudioView(resource, width, height, FLOAT_ONE.floatValue()));
    }

    @SuppressLint({"InflateParams"})
    @Nullable
    public final View createAudioView(@Nullable ShapeResource resource, int width, int height, float renderScale) {
        if (resource == null || width <= 0 || height <= 0) {
            return null;
        }
        View inflate = LayoutInflater.from(ResManager.INSTANCE.getAppContext()).inflate(C7485R.layout.layout_audio_shape, (ViewGroup) null);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        View findViewById = inflate.findViewById(C7485R.id.audioName);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        ((TextView) findViewById).setText(getAudioName(resource, renderScale));
        View findViewById2 = inflate.findViewById(C7485R.id.audioDuration);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        ((TextView) findViewById2).setText(DateTimeUtil.formatDurationSecondRoundUp$default(DateTimeUtil.INSTANCE, resource.getAudioDuration(), false, null, null, 14, null));
        View findViewById3 = inflate.findViewById(C7485R.id.audioSize);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        ((TextView) findViewById3).setText(FileUtils.INSTANCE.getDisplayFileSize(resource.getPath()));
        inflate.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(height, 1073741824));
        inflate.layout(0, 0, inflate.getMeasuredWidth(), inflate.getMeasuredHeight());
        return inflate;
    }

    /* renamed from: d */
    public final String m34041d(String shapeId) {
        return "shape-" + shapeId;
    }

    public final void deleteAudioTextFiles(@NotNull Shape audioShape) {
        Intrinsics.checkNotNullParameter(audioShape, "audioShape");
        Iterator<File> it2 = m34040c(audioShape).iterator();
        while (it2.hasNext()) {
            FileUtils.INSTANCE.deleteFile(it2.next());
        }
    }

    /* renamed from: e */
    public final List<File> m34042e(String fileDir, String shapeId) {
        final String m34041d = m34041d(shapeId);
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(fileDir, new FilenameFilter() { // from class: com.sunia.HTREnginev2.slm
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m34038f;
                m34038f = ShapeAudioUtils.m34038f(m34041d, file, str);
                return m34038f;
            }
        });
        final ShapeAudioUtils$getAudioTextInDir$1 shapeAudioUtils$getAudioTextInDir$1 = new Function2<File, File, Integer>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeAudioUtils$getAudioTextInDir$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull File o1, @NotNull File o2) {
                long m34043h;
                long m34043h2;
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                ShapeAudioUtils shapeAudioUtils = ShapeAudioUtils.INSTANCE;
                m34043h = shapeAudioUtils.m34043h(o1);
                m34043h2 = shapeAudioUtils.m34043h(o2);
                return Integer.valueOf((int) (m34043h - m34043h2));
            }
        };
        Collections.sort(listAllFiles, new Comparator() { // from class: com.sunia.HTREnginev2.tlm
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m34039g;
                m34039g = ShapeAudioUtils.m34039g(Function2.this, obj, obj2);
                return m34039g;
            }
        });
        return listAllFiles;
    }

    @Nullable
    public final String getAudioName(@Nullable ShapeResource resource, float renderScale) {
        if (resource == null || StringUtils.isBlank(resource.getPath())) {
            return null;
        }
        String title = resource.getTitle();
        if (title == null) {
            return "";
        }
        AudioShape.Companion companion = AudioShape.INSTANCE;
        companion.getTextPaint().setTextSize(companion.getAUDIO_SHAPE_TEXT_SIZE() * renderScale);
        float measureText = companion.getTextPaint().measureText(title);
        if (measureText < companion.getAUDIO_SHAPE_TEXT_MAX_WIDTH()) {
            return title;
        }
        float audio_shape_text_max_width = (companion.getAUDIO_SHAPE_TEXT_MAX_WIDTH() / measureText) * title.length();
        StringBuilder sb = new StringBuilder();
        String substring = title.substring(0, (int) audio_shape_text_max_width);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        sb.append(substring);
        sb.append(RemoveAudioAction.f58149k);
        return sb.toString();
    }

    /* renamed from: h */
    public final long m34043h(File file) {
        int lastIndexOf$default;
        String baseName = FilenameUtils.getBaseName(file.getName());
        Intrinsics.checkNotNullExpressionValue(baseName, "getBaseName(...)");
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) baseName, "-", 0, false, 6, (Object) null);
        String substring = baseName.substring(lastIndexOf$default + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return Long.parseLong(substring);
    }
}

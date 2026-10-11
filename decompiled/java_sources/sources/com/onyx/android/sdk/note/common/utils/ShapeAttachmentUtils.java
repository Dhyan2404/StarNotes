package com.onyx.android.sdk.note.common.utils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.C7485R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeAttachmentUtils;", "", "()V", "createAttachmentBitmap", "Landroid/graphics/Bitmap;", "filePath", "", "getAttachmentResId", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeAttachmentUtils {

    @NotNull
    public static final ShapeAttachmentUtils INSTANCE = new ShapeAttachmentUtils();

    @SuppressLint({"InflateParams"})
    @Nullable
    public final Bitmap createAttachmentBitmap(@Nullable String filePath) {
        if (filePath == null || StringUtils.isBlank(filePath)) {
            Debug.INSTANCE.m32044e(ShapeUtils.class, "null file path", new Object[0]);
            return null;
        }
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7485R.dimen.attachment_shape_width);
        int dimens2 = resManager.getDimens(C7485R.dimen.attachment_shape_height);
        View inflate = LayoutInflater.from(resManager.getAppContext()).inflate(C7485R.layout.layout_attachment_shape, (ViewGroup) null);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        ImageView imageView = (ImageView) inflate.findViewById(C7485R.id.ic_attachment);
        View findViewById = inflate.findViewById(C7485R.id.fileName);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        View findViewById2 = inflate.findViewById(C7485R.id.fileSize);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        ((TextView) findViewById).setText(FilenameUtils.getName(filePath));
        ((TextView) findViewById2).setText(FileUtils.INSTANCE.getDisplayFileSize(filePath));
        imageView.setImageResource(getAttachmentResId(filePath));
        inflate.measure(View.MeasureSpec.makeMeasureSpec(dimens, 1073741824), View.MeasureSpec.makeMeasureSpec(dimens2, 1073741824));
        inflate.layout(0, 0, inflate.getMeasuredWidth(), inflate.getMeasuredHeight());
        return ViewKt.loadBitmap(inflate);
    }

    public final int getAttachmentResId(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        return fileExtensionUtils.isImageFile(filePath) ? C7485R.drawable.ic_attachment_picture : ShapeMediaUtils.INSTANCE.isSupportMediaFile(filePath) ? C7485R.drawable.ic_attachment_audio : fileExtensionUtils.isEpubFile(filePath) ? C7485R.drawable.ic_attachment_epub : fileExtensionUtils.isOffice(filePath) ? C7485R.drawable.ic_attachment_office : C7485R.drawable.ic_attachment_doc;
    }
}

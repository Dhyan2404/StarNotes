package com.onyx.galaxy.note.editor.view.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RadioGroup;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import com.canhub.cropper.CropImageOptions;
import com.canhub.cropper.CropImageView;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.image.CreateHQCroppedBitmapAction;
import com.onyx.android.sdk.universal.editor.action.image.CropImageShapeAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogImageCropperBinding;
import com.onyx.galaxy.note.editor.view.FreeCropImageView;
import com.onyx.galaxy.note.editor.view.dialog.DialogImageCropper;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e¢\u0006\u0004\b2\u00103J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\nH\u0002J\b\u0010\u000f\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\nH\u0002J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u0017H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010+R\u0014\u00101\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u00100¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "onStart", "H0", "E0", "B0", "C0", "", "checkedId", "J0", "Landroid/graphics/Bitmap;", "bitmap", "I0", "x0", "Landroid/graphics/RectF;", "limitRect", "w0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "z1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "A1", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "B1", "Landroid/graphics/Bitmap;", "shapeBitmap", "Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;", "C1", "Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;", "binding", "Lio/reactivex/rxjava3/disposables/Disposable;", "D1", "Lio/reactivex/rxjava3/disposables/Disposable;", "cropDisposable", "E1", "decodeDisposable", "A0", "()I", "windowSize", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDialogImageCropper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogImageCropper.kt\ncom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,206:1\n32#2,5:207\n*S KotlinDebug\n*F\n+ 1 DialogImageCropper.kt\ncom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper\n*L\n146#1:207,5\n*E\n"})
/* loaded from: classes9.dex */
public final class DialogImageCropper extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: B1, reason: from kotlin metadata */
    public Bitmap shapeBitmap;

    /* renamed from: C1, reason: from kotlin metadata */
    public DialogImageCropperBinding binding;

    /* renamed from: D1, reason: from kotlin metadata */
    @Nullable
    public Disposable cropDisposable;

    /* renamed from: E1, reason: from kotlin metadata */
    @Nullable
    public Disposable decodeDisposable;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.DialogImageCropper$a */
    /* loaded from: classes9.dex */
    public static final class C12303a<T, R> implements Function {
        public C12303a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Shape> apply(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CropImageShapeAction(DialogImageCropper.this.editorBundle, DialogImageCropper.this.shape, it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.DialogImageCropper$b */
    /* loaded from: classes9.dex */
    public static final class C12304b<T, R> implements Function {
        public C12304b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull DialogImageCropper it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap m47945w0 = DialogImageCropper.this.m47945w0(new RectF(0.0f, 0.0f, DialogImageCropper.this.m47938A0(), DialogImageCropper.this.m47938A0()));
            Intrinsics.checkNotNull(m47945w0);
            return m47945w0;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.DialogImageCropper$d */
    /* loaded from: classes9.dex */
    public static final class C12306d<T> implements Consumer {
        public C12306d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DialogImageCropper.this.dismiss();
        }
    }

    public DialogImageCropper(@NotNull EditorBundle editorBundle, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.editorBundle = editorBundle;
        this.shape = shape;
    }

    /* renamed from: D0 */
    public static final void m47928D0(DialogImageCropper this$0, RadioGroup radioGroup, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47944J0(i);
    }

    /* renamed from: F0 */
    public static final void m47929F0(DialogImageCropper this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RxjavaKt.safelyDispose(this$0.cropDisposable);
        RxjavaKt.safelyDispose(this$0.decodeDisposable);
        this$0.dismiss();
    }

    /* renamed from: G0 */
    public static final void m47930G0(DialogImageCropper this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47946x0();
    }

    /* renamed from: y0 */
    public static final void m47936y0(DialogImageCropper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: z0 */
    public static final void m47937z0(DialogImageCropper this$0, CommonDialog loadingDialog) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        this$0.cropDisposable = null;
        loadingDialog.dismiss();
    }

    /* renamed from: A0 */
    public final int m47938A0() {
        ResManager resManager = ResManager.INSTANCE;
        return ((int) resManager.getShorterScreenSize()) - (resManager.getDimens(C7384R.dimen.dp_70) * 2);
    }

    /* renamed from: B0 */
    public final void m47939B0() {
        CropImageOptions cropImageOptions = new CropImageOptions(false, false, null, null, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -1, -1, 31, null);
        cropImageOptions.borderCornerColor = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        cropImageOptions.borderLineColor = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        ResManager resManager = ResManager.INSTANCE;
        cropImageOptions.borderCornerOffset = resManager.getDimensSafely(C7384R.dimen.dp_5);
        cropImageOptions.borderLineThickness = resManager.getDimensSafely(C7384R.dimen.dp_1);
        cropImageOptions.autoZoomEnabled = false;
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        dialogImageCropperBinding.rectCropView.setImageCropOptions(cropImageOptions);
    }

    /* renamed from: C0 */
    public final void m47940C0() {
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        dialogImageCropperBinding.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.q4f
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                DialogImageCropper.m47928D0(DialogImageCropper.this, radioGroup, i);
            }
        });
    }

    /* renamed from: E0 */
    public final void m47941E0() {
        setCancelable(false);
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        DialogImageCropperBinding dialogImageCropperBinding2 = null;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        TintTextView btnCancel = dialogImageCropperBinding.btnCancel;
        Intrinsics.checkNotNullExpressionValue(btnCancel, "btnCancel");
        ViewKt.click$default(btnCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogImageCropper.m47929F0(DialogImageCropper.this, view);
            }
        }, 1, null);
        DialogImageCropperBinding dialogImageCropperBinding3 = this.binding;
        if (dialogImageCropperBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogImageCropperBinding2 = dialogImageCropperBinding3;
        }
        TintTextView finish = dialogImageCropperBinding2.finish;
        Intrinsics.checkNotNullExpressionValue(finish, "finish");
        ViewKt.click$default(finish, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogImageCropper.m47930G0(DialogImageCropper.this, view);
            }
        }, 1, null);
        m47939B0();
        m47940C0();
    }

    /* renamed from: H0 */
    public final void m47942H0() {
        if (ShapeTypes.INSTANCE.isImageShape(this.shape)) {
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable doOnError = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C12304b()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.view.dialog.DialogImageCropper.c
                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Bitmap p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    DialogImageCropper.this.m47943I0(p0);
                }
            }).doOnError(new C12306d());
            Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
            this.decodeDisposable = OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
            return;
        }
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(dialogImageCropperBinding.imageContainer, false);
    }

    /* renamed from: I0 */
    public final void m47943I0(Bitmap bitmap) {
        this.shapeBitmap = bitmap;
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        DialogImageCropperBinding dialogImageCropperBinding2 = null;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        dialogImageCropperBinding.rectCropView.setImageBitmap(bitmap);
        DialogImageCropperBinding dialogImageCropperBinding3 = this.binding;
        if (dialogImageCropperBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding3 = null;
        }
        dialogImageCropperBinding3.freeCropView.setImageBitmap(bitmap);
        DialogImageCropperBinding dialogImageCropperBinding4 = this.binding;
        if (dialogImageCropperBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogImageCropperBinding2 = dialogImageCropperBinding4;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(dialogImageCropperBinding2.imageContainer, BitmapKt.isValid(bitmap));
    }

    /* renamed from: J0 */
    public final void m47944J0(int checkedId) {
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        DialogImageCropperBinding dialogImageCropperBinding2 = null;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        if (com.onyx.android.sdk.base.extension.ViewKt.isVisible(dialogImageCropperBinding.imageContainer)) {
            DialogImageCropperBinding dialogImageCropperBinding3 = this.binding;
            if (dialogImageCropperBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding3 = null;
            }
            dialogImageCropperBinding3.rectCropView.resetCropRect();
            DialogImageCropperBinding dialogImageCropperBinding4 = this.binding;
            if (dialogImageCropperBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding4 = null;
            }
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(dialogImageCropperBinding4.rectCropView, checkedId == C10651R.id.rect_crop);
            DialogImageCropperBinding dialogImageCropperBinding5 = this.binding;
            if (dialogImageCropperBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding5 = null;
            }
            FreeCropImageView freeCropView = dialogImageCropperBinding5.freeCropView;
            Intrinsics.checkNotNullExpressionValue(freeCropView, "freeCropView");
            FreeCropImageView.reset$default(freeCropView, false, 1, null);
            DialogImageCropperBinding dialogImageCropperBinding6 = this.binding;
            if (dialogImageCropperBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogImageCropperBinding2 = dialogImageCropperBinding6;
            }
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(dialogImageCropperBinding2.freeCropView, checkedId == C10651R.id.free_crop);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        DialogImageCropperBinding inflate = DialogImageCropperBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        m47941E0();
        m47942H0();
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        View root = dialogImageCropperBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(m47938A0(), m47938A0());
    }

    /* renamed from: w0 */
    public final Bitmap m47945w0(RectF limitRect) {
        String path;
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(this.shape);
        if (resource == null || (path = resource.getPath()) == null) {
            return null;
        }
        ImageManager imageManager = ImageManager.INSTANCE;
        if (imageManager.decodeSize(path).isEmpty()) {
            return null;
        }
        RectF rectF = new RectF(0.0f, 0.0f, r2.getWidth(), r2.getHeight());
        if (SvgUtil.INSTANCE.isSvgImage(path)) {
            RectFKt.scaleToPage(rectF, limitRect);
        } else {
            RectFKt.fitWithinRect(rectF, limitRect);
        }
        if (rectF.width() * rectF.height() > 4194304.0f) {
            RectFKt.scaleToPage(rectF, new RectF(0.0f, 0.0f, 2048.0f, 2048.0f));
        }
        return imageManager.decodeImageAsBitmap(path, (int) rectF.width(), (int) rectF.height(), false);
    }

    /* renamed from: x0 */
    public final void m47946x0() {
        Rect cropRect;
        if (this.cropDisposable != null) {
            return;
        }
        DialogImageCropperBinding dialogImageCropperBinding = this.binding;
        Bitmap bitmap = null;
        if (dialogImageCropperBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding = null;
        }
        if (com.onyx.android.sdk.base.extension.ViewKt.isVisible(dialogImageCropperBinding.rectCropView)) {
            DialogImageCropperBinding dialogImageCropperBinding2 = this.binding;
            if (dialogImageCropperBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding2 = null;
            }
            cropRect = dialogImageCropperBinding2.rectCropView.getCropRect();
        } else {
            DialogImageCropperBinding dialogImageCropperBinding3 = this.binding;
            if (dialogImageCropperBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding3 = null;
            }
            cropRect = dialogImageCropperBinding3.freeCropView.getCropRect();
        }
        if (cropRect == null) {
            dismiss();
            return;
        }
        CreateHQCroppedBitmapAction.Companion.CropImageData cropImageData = new CreateHQCroppedBitmapAction.Companion.CropImageData();
        cropImageData.setRect(cropRect);
        DialogImageCropperBinding dialogImageCropperBinding4 = this.binding;
        if (dialogImageCropperBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding4 = null;
        }
        if (com.onyx.android.sdk.base.extension.ViewKt.isVisible(dialogImageCropperBinding4.freeCropView)) {
            DialogImageCropperBinding dialogImageCropperBinding5 = this.binding;
            if (dialogImageCropperBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding5 = null;
            }
            cropImageData.setPath(dialogImageCropperBinding5.freeCropView.getCropPath());
        }
        DialogImageCropperBinding dialogImageCropperBinding6 = this.binding;
        if (dialogImageCropperBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding6 = null;
        }
        if (com.onyx.android.sdk.base.extension.ViewKt.isVisible(dialogImageCropperBinding6.rectCropView)) {
            DialogImageCropperBinding dialogImageCropperBinding7 = this.binding;
            if (dialogImageCropperBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding7 = null;
            }
            CropImageView rectCropView = dialogImageCropperBinding7.rectCropView;
            Intrinsics.checkNotNullExpressionValue(rectCropView, "rectCropView");
            cropImageData.setBitmap(CropImageView.getCroppedImage$default(rectCropView, 0, 0, null, 7, null));
        } else {
            DialogImageCropperBinding dialogImageCropperBinding8 = this.binding;
            if (dialogImageCropperBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogImageCropperBinding8 = null;
            }
            cropImageData.setBitmap(dialogImageCropperBinding8.freeCropView.getCroppedImage());
        }
        if (!BitmapKt.isValid(cropImageData.getBitmap())) {
            dismiss();
            return;
        }
        DialogImageCropperBinding dialogImageCropperBinding9 = this.binding;
        if (dialogImageCropperBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogImageCropperBinding9 = null;
        }
        Context context = dialogImageCropperBinding9.getRoot().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        final CommonDialog create = new CommonDialog.Builder(context).setDialogType(1).create();
        create.show();
        EditorBundle editorBundle = this.editorBundle;
        Shape shape = this.shape;
        Bitmap bitmap2 = this.shapeBitmap;
        if (bitmap2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeBitmap");
        } else {
            bitmap = bitmap2;
        }
        Observable<Bitmap> build = new CreateHQCroppedBitmapAction(editorBundle, shape, bitmap, cropImageData).build();
        Bitmap bitmap3 = cropImageData.getBitmap();
        Intrinsics.checkNotNull(bitmap3);
        this.cropDisposable = RxjavaKt.onErrorReturnItemWithLog(build, bitmap3).flatMap(new C12303a()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.o4f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DialogImageCropper.m47936y0(DialogImageCropper.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.p4f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DialogImageCropper.m47937z0(DialogImageCropper.this, create);
            }
        }).subscribe();
    }
}

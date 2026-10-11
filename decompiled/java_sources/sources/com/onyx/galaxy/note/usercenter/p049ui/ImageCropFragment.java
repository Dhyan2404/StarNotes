package com.onyx.galaxy.note.usercenter.p049ui;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import com.canhub.cropper.CropImageView;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.extension.FragmentKt;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentImageCropBinding;
import com.onyx.galaxy.note.usercenter.p049ui.ImageCropFragment;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "q0", "n0", "r0", "Lcom/onyx/galaxy/note/databinding/FragmentImageCropBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentImageCropBinding;", "binding", "Landroid/net/Uri;", "e1", "Landroid/net/Uri;", "uri", "", "f1", Constants.STRING_SIG, "savePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class ImageCropFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentImageCropBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    public Uri uri;

    /* renamed from: f1, reason: from kotlin metadata */
    public String savePath;

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.ImageCropFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12872a<T> implements Consumer {
        public C12872a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImageCropFragment it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FragmentImageCropBinding fragmentImageCropBinding = ImageCropFragment.this.binding;
            if (fragmentImageCropBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentImageCropBinding = null;
            }
            CropImageView cropImageView = fragmentImageCropBinding.cropImageView;
            Intrinsics.checkNotNullExpressionValue(cropImageView, "cropImageView");
            Bitmap croppedImage$default = CropImageView.getCroppedImage$default(cropImageView, 512, 512, null, 4, null);
            if (croppedImage$default != null) {
                String str = ImageCropFragment.this.savePath;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("savePath");
                    str = null;
                }
                BitmapKt.save$default(croppedImage$default, str, 0, 2, null);
            }
            ImageCropFragment imageCropFragment = ImageCropFragment.this;
            String str2 = imageCropFragment.savePath;
            if (str2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("savePath");
                str2 = null;
            }
            FragmentKt.setNavigationResult$default(imageCropFragment, null, str2, 1, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.ui.ImageCropFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12873b<T> implements Consumer {
        public C12873b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImageCropFragment it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            androidx.navigation.fragment.FragmentKt.findNavController(ImageCropFragment.this).navigateUp();
        }
    }

    /* renamed from: o0 */
    public static final void m51664o0(ImageCropFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* renamed from: p0 */
    public static final void m51665p0(ImageCropFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51668r0();
    }

    /* renamed from: n0 */
    public final void m51666n0() {
        FragmentImageCropBinding fragmentImageCropBinding = this.binding;
        FragmentImageCropBinding fragmentImageCropBinding2 = null;
        if (fragmentImageCropBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentImageCropBinding = null;
        }
        fragmentImageCropBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ngi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageCropFragment.m51664o0(ImageCropFragment.this, view);
            }
        });
        FragmentImageCropBinding fragmentImageCropBinding3 = this.binding;
        if (fragmentImageCropBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentImageCropBinding2 = fragmentImageCropBinding3;
        }
        fragmentImageCropBinding2.finishButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ogi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageCropFragment.m51665p0(ImageCropFragment.this, view);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063253, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentImageCropBinding inflate = FragmentImageCropBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentImageCropBinding fragmentImageCropBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentImageCropBinding fragmentImageCropBinding2 = this.binding;
        if (fragmentImageCropBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentImageCropBinding = fragmentImageCropBinding2;
        }
        View root = fragmentImageCropBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51667q0();
        m51666n0();
    }

    /* renamed from: q0 */
    public final void m51667q0() {
        FragmentImageCropBinding fragmentImageCropBinding = this.binding;
        Uri uri = null;
        if (fragmentImageCropBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentImageCropBinding = null;
        }
        fragmentImageCropBinding.cropImageView.setAspectRatio(1, 1);
        FragmentImageCropBinding fragmentImageCropBinding2 = this.binding;
        if (fragmentImageCropBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentImageCropBinding2 = null;
        }
        CropImageView cropImageView = fragmentImageCropBinding2.cropImageView;
        Uri uri2 = this.uri;
        if (uri2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("uri");
        } else {
            uri = uri2;
        }
        cropImageView.setImageUriAsync(uri);
    }

    /* renamed from: r0 */
    public final void m51668r0() {
        Observable.just(this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12872a()).subscribe(new C12873b());
    }
}

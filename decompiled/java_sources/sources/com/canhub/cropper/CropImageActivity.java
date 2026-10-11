package com.canhub.cropper;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import androidx.fragment.app.C1126e;
import androidx.transition.Transition;
import com.blankj.utilcode.constant.PermissionConstants;
import com.canhub.cropper.CropImage;
import com.canhub.cropper.CropImageActivity;
import com.canhub.cropper.CropImageIntentChooser;
import com.canhub.cropper.CropImageView;
import com.canhub.cropper.databinding.CropImageActivityBinding;
import com.canhub.cropper.utils.GetUriForFileKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0016\u0018\u0000 R2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002STB\u0007¢\u0006\u0004\bP\u0010QJ\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\bH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004H\u0014J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0012\u0010\u0019\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0014J(\u0010 \u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00172\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001eH\u0016J\u0018\u0010#\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020!H\u0016J\b\u0010$\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u001aH\u0016J\u0010\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016J*\u0010+\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001e2\u0006\u0010*\u001a\u00020'H\u0016J\b\u0010,\u001a\u00020\u0006H\u0016J*\u0010.\u001a\u00020-2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001e2\u0006\u0010*\u001a\u00020'H\u0016J \u00101\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010/\u001a\u00020'2\u0006\u00100\u001a\u00020'H\u0016J \u00102\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010/\u001a\u00020'2\u0006\u00100\u001a\u00020'H\u0016J\b\u00103\u001a\u00020\u0006H\u0002J\b\u00104\u001a\u00020\u0006H\u0002J\u0010\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u00020\tH\u0002J\b\u00107\u001a\u00020\u0006H\u0002J\b\u00108\u001a\u00020\u0017H\u0002R\u0018\u0010;\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010%\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010G\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010:R\"\u0010M\u001a\u0010\u0012\f\u0012\n J*\u0004\u0018\u00010I0I0H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\"\u0010O\u001a\u0010\u0012\f\u0012\n J*\u0004\u0018\u00010\u00170\u00170H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010L¨\u0006U"}, m61528d2 = {"Lcom/canhub/cropper/CropImageActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;", "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Lkotlin/Function1;", "Lcom/canhub/cropper/CropImageActivity$Source;", "openSource", "showImageSourceDialog", "onStart", "onStop", "outState", "onSaveInstanceState", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "Landroid/net/Uri;", "resultUri", "onPickImageResult", "Lcom/canhub/cropper/CropImageView;", "view", "uri", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "onSetImageUriComplete", "Lcom/canhub/cropper/CropImageView$CropResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "onCropImageComplete", "cropImage", "cropImageView", "setCropImageView", "", "degrees", "rotateImage", "sampleSize", "setResult", "setResultCancel", "Landroid/content/Intent;", "getResultIntent", Transition.f10629M0, "color", "updateMenuItemIconColor", "updateMenuItemTextColor", "K", "N", "source", "I", "H", "G", "w0", "Landroid/net/Uri;", "cropImageUri", "Lcom/canhub/cropper/CropImageOptions;", "x0", "Lcom/canhub/cropper/CropImageOptions;", "cropImageOptions", "y0", "Lcom/canhub/cropper/CropImageView;", "Lcom/canhub/cropper/databinding/CropImageActivityBinding;", "z0", "Lcom/canhub/cropper/databinding/CropImageActivityBinding;", "binding", "A0", "latestTmpUri", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "B0", "Landroidx/activity/result/ActivityResultLauncher;", "pickImageGallery", "C0", "takePicture", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "D0", "a", "Source", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class CropImageActivity extends AppCompatActivity implements CropImageView.OnSetImageUriCompleteListener, CropImageView.OnCropImageCompleteListener {

    @Deprecated
    @NotNull
    public static final String BUNDLE_KEY_TMP_URI = "bundle_key_tmp_uri";

    /* renamed from: A0, reason: from kotlin metadata */
    @Nullable
    public Uri latestTmpUri;

    /* renamed from: B0, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<String> pickImageGallery;

    /* renamed from: C0, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Uri> takePicture;

    /* renamed from: w0, reason: from kotlin metadata */
    @Nullable
    public Uri cropImageUri;

    /* renamed from: x0, reason: from kotlin metadata */
    public CropImageOptions cropImageOptions;

    /* renamed from: y0, reason: from kotlin metadata */
    @Nullable
    public CropImageView cropImageView;

    /* renamed from: z0, reason: from kotlin metadata */
    public CropImageActivityBinding binding;

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/canhub/cropper/CropImageActivity$Source;", "", "(Ljava/lang/String;I)V", PermissionConstants.CAMERA, "GALLERY", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public enum Source {
        CAMERA,
        GALLERY
    }

    @Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Source.values().length];
            try {
                iArr[Source.CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Source.GALLERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CropImageActivity() {
        ActivityResultLauncher<String> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.GetContent(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.fie
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CropImageActivity.m9228J(CropImageActivity.this, (Uri) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…nPickImageResult(uri)\n  }");
        this.pickImageGallery = registerForActivityResult;
        ActivityResultLauncher<Uri> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.TakePicture(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.gie
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CropImageActivity.m9231O(CropImageActivity.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…ageResult(null)\n    }\n  }");
        this.takePicture = registerForActivityResult2;
    }

    /* renamed from: J */
    public static final void m9228J(CropImageActivity this$0, Uri uri) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onPickImageResult(uri);
    }

    /* renamed from: L */
    public static final boolean m9229L(CropImageActivity this$0, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == 4 && keyEvent.getAction() == 1) {
            this$0.setResultCancel();
            this$0.finish();
        }
        return true;
    }

    /* renamed from: M */
    public static final void m9230M(Function1 openSource, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(openSource, "$openSource");
        openSource.invoke(i == 0 ? Source.CAMERA : Source.GALLERY);
    }

    /* renamed from: O */
    public static final void m9231O(CropImageActivity this$0, Boolean it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it2, "it");
        if (it2.booleanValue()) {
            this$0.onPickImageResult(this$0.latestTmpUri);
        } else {
            this$0.onPickImageResult(null);
        }
    }

    /* renamed from: G */
    public final Uri m9232G() {
        File tmpFile = File.createTempFile("tmp_image_file", ".png", getCacheDir());
        tmpFile.createNewFile();
        tmpFile.deleteOnExit();
        Intrinsics.checkNotNullExpressionValue(tmpFile, "tmpFile");
        return GetUriForFileKt.getUriForFile(this, tmpFile);
    }

    /* renamed from: H */
    public final void m9233H() {
        Uri m9232G = m9232G();
        this.latestTmpUri = m9232G;
        this.takePicture.launch(m9232G);
    }

    /* renamed from: I */
    public final void m9234I(Source source) {
        int i = WhenMappings.$EnumSwitchMapping$0[source.ordinal()];
        if (i == 1) {
            m9233H();
        } else {
            if (i != 2) {
                return;
            }
            this.pickImageGallery.launch("image/*");
        }
    }

    /* renamed from: K */
    public final void m9235K() {
        CropImageOptions cropImageOptions = this.cropImageOptions;
        CropImageOptions cropImageOptions2 = null;
        if (cropImageOptions == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            cropImageOptions = null;
        }
        int i = cropImageOptions.activityBackgroundColor;
        CropImageActivityBinding cropImageActivityBinding = this.binding;
        if (cropImageActivityBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cropImageActivityBinding = null;
        }
        cropImageActivityBinding.getRoot().setBackgroundColor(i);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            CropImageOptions cropImageOptions3 = this.cropImageOptions;
            if (cropImageOptions3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions3 = null;
            }
            CharSequence charSequence = cropImageOptions3.activityTitle;
            if (charSequence.length() == 0) {
                charSequence = "";
            }
            setTitle(charSequence);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            CropImageOptions cropImageOptions4 = this.cropImageOptions;
            if (cropImageOptions4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions4 = null;
            }
            Integer num = cropImageOptions4.toolbarColor;
            if (num != null) {
                supportActionBar.setBackgroundDrawable(new ColorDrawable(num.intValue()));
            }
            CropImageOptions cropImageOptions5 = this.cropImageOptions;
            if (cropImageOptions5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions5 = null;
            }
            Integer num2 = cropImageOptions5.toolbarTitleColor;
            if (num2 != null) {
                int intValue = num2.intValue();
                SpannableString spannableString = new SpannableString(getTitle());
                spannableString.setSpan(new ForegroundColorSpan(intValue), 0, spannableString.length(), 33);
                setTitle(spannableString);
            }
            CropImageOptions cropImageOptions6 = this.cropImageOptions;
            if (cropImageOptions6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            } else {
                cropImageOptions2 = cropImageOptions6;
            }
            Integer num3 = cropImageOptions2.toolbarBackButtonColor;
            if (num3 != null) {
                int intValue2 = num3.intValue();
                try {
                    Drawable drawable = ContextCompat.getDrawable(this, C2055R.drawable.ic_arrow_back_24);
                    if (drawable != null) {
                        drawable.setColorFilter(new PorterDuffColorFilter(intValue2, PorterDuff.Mode.SRC_ATOP));
                    }
                    supportActionBar.setHomeAsUpIndicator(drawable);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: N */
    public final void m9236N() {
        boolean isBlank;
        CropImageIntentChooser cropImageIntentChooser = new CropImageIntentChooser(this, new CropImageIntentChooser.ResultCallback() { // from class: com.canhub.cropper.CropImageActivity$showIntentChooser$ciIntentChooser$1
            @Override // com.canhub.cropper.CropImageIntentChooser.ResultCallback
            public void onCancelled() {
                CropImageActivity.this.setResultCancel();
            }

            @Override // com.canhub.cropper.CropImageIntentChooser.ResultCallback
            public void onSuccess(@Nullable Uri uri) {
                CropImageActivity.this.onPickImageResult(uri);
            }
        });
        CropImageOptions cropImageOptions = this.cropImageOptions;
        if (cropImageOptions == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            cropImageOptions = null;
        }
        String str = cropImageOptions.intentChooserTitle;
        if (str != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (!(!isBlank)) {
                str = null;
            }
            if (str != null) {
                cropImageIntentChooser.setIntentChooserTitle(str);
            }
        }
        List<String> list = cropImageOptions.intentChooserPriorityList;
        if (list != null) {
            if (!(!list.isEmpty())) {
                list = null;
            }
            if (list != null) {
                cropImageIntentChooser.setupPriorityAppsList(list);
            }
        }
        cropImageIntentChooser.showChooserIntent(cropImageOptions.imageSourceIncludeCamera, cropImageOptions.imageSourceIncludeGallery, cropImageOptions.imageSourceIncludeCamera ? m9232G() : null);
    }

    public void cropImage() {
        CropImageOptions cropImageOptions = this.cropImageOptions;
        CropImageOptions cropImageOptions2 = null;
        if (cropImageOptions == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            cropImageOptions = null;
        }
        if (cropImageOptions.noOutputImage) {
            setResult(null, null, 1);
            return;
        }
        CropImageView cropImageView = this.cropImageView;
        if (cropImageView != null) {
            CropImageOptions cropImageOptions3 = this.cropImageOptions;
            if (cropImageOptions3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions3 = null;
            }
            Bitmap.CompressFormat compressFormat = cropImageOptions3.outputCompressFormat;
            CropImageOptions cropImageOptions4 = this.cropImageOptions;
            if (cropImageOptions4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions4 = null;
            }
            int i = cropImageOptions4.outputCompressQuality;
            CropImageOptions cropImageOptions5 = this.cropImageOptions;
            if (cropImageOptions5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions5 = null;
            }
            int i2 = cropImageOptions5.outputRequestWidth;
            CropImageOptions cropImageOptions6 = this.cropImageOptions;
            if (cropImageOptions6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions6 = null;
            }
            int i3 = cropImageOptions6.outputRequestHeight;
            CropImageOptions cropImageOptions7 = this.cropImageOptions;
            if (cropImageOptions7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions7 = null;
            }
            CropImageView.RequestSizeOptions requestSizeOptions = cropImageOptions7.outputRequestSizeOptions;
            CropImageOptions cropImageOptions8 = this.cropImageOptions;
            if (cropImageOptions8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            } else {
                cropImageOptions2 = cropImageOptions8;
            }
            cropImageView.croppedImageAsync(compressFormat, i, i2, i3, requestSizeOptions, cropImageOptions2.customOutputUri);
        }
    }

    @NotNull
    public Intent getResultIntent(@Nullable Uri uri, @Nullable Exception error, int sampleSize) {
        CropImageView cropImageView = this.cropImageView;
        Uri imageUri = cropImageView != null ? cropImageView.getImageUri() : null;
        CropImageView cropImageView2 = this.cropImageView;
        float[] cropPoints = cropImageView2 != null ? cropImageView2.getCropPoints() : null;
        CropImageView cropImageView3 = this.cropImageView;
        Rect cropRect = cropImageView3 != null ? cropImageView3.getCropRect() : null;
        CropImageView cropImageView4 = this.cropImageView;
        int mDegreesRotated = cropImageView4 != null ? cropImageView4.getMDegreesRotated() : 0;
        CropImageView cropImageView5 = this.cropImageView;
        CropImage.ActivityResult activityResult = new CropImage.ActivityResult(imageUri, uri, error, cropPoints, cropRect, mDegreesRotated, cropImageView5 != null ? cropImageView5.getWholeImageRect() : null, sampleSize);
        Intent intent = new Intent();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        intent.putExtra(CropImage.CROP_IMAGE_EXTRA_RESULT, activityResult);
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
    
        if (r2 == null) goto L22;
     */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(@org.jetbrains.annotations.Nullable android.os.Bundle r80) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageActivity.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0102  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onCreateOptionsMenu(@org.jetbrains.annotations.NotNull android.view.Menu r9) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageActivity.onCreateOptionsMenu(android.view.Menu):boolean");
    }

    @Override // com.canhub.cropper.CropImageView.OnCropImageCompleteListener
    public void onCropImageComplete(@NotNull CropImageView view, @NotNull CropImageView.CropResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(result, "result");
        setResult(result.getUriContent(), result.getError(), result.getSampleSize());
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == C2055R.id.crop_image_menu_crop) {
            cropImage();
            return true;
        }
        CropImageOptions cropImageOptions = null;
        if (itemId == C2055R.id.ic_rotate_left_24) {
            CropImageOptions cropImageOptions2 = this.cropImageOptions;
            if (cropImageOptions2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            } else {
                cropImageOptions = cropImageOptions2;
            }
            rotateImage(-cropImageOptions.rotationDegrees);
            return true;
        }
        if (itemId == C2055R.id.ic_rotate_right_24) {
            CropImageOptions cropImageOptions3 = this.cropImageOptions;
            if (cropImageOptions3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            } else {
                cropImageOptions = cropImageOptions3;
            }
            rotateImage(cropImageOptions.rotationDegrees);
            return true;
        }
        if (itemId == C2055R.id.ic_flip_24_horizontally) {
            CropImageView cropImageView = this.cropImageView;
            if (cropImageView == null) {
                return true;
            }
            cropImageView.flipImageHorizontally();
            return true;
        }
        if (itemId != C2055R.id.ic_flip_24_vertically) {
            if (itemId != 16908332) {
                return super.onOptionsItemSelected(item);
            }
            setResultCancel();
            return true;
        }
        CropImageView cropImageView2 = this.cropImageView;
        if (cropImageView2 == null) {
            return true;
        }
        cropImageView2.flipImageVertically();
        return true;
    }

    public void onPickImageResult(@Nullable Uri resultUri) {
        if (resultUri == null) {
            setResultCancel();
            return;
        }
        this.cropImageUri = resultUri;
        CropImageView cropImageView = this.cropImageView;
        if (cropImageView != null) {
            cropImageView.setImageUriAsync(resultUri);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString(BUNDLE_KEY_TMP_URI, String.valueOf(this.latestTmpUri));
    }

    @Override // com.canhub.cropper.CropImageView.OnSetImageUriCompleteListener
    public void onSetImageUriComplete(@NotNull CropImageView view, @NotNull Uri uri, @Nullable Exception error) {
        CropImageView cropImageView;
        CropImageView cropImageView2;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(uri, "uri");
        CropImageOptions cropImageOptions = null;
        if (error != null) {
            setResult(null, error, 1);
            return;
        }
        CropImageOptions cropImageOptions2 = this.cropImageOptions;
        if (cropImageOptions2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            cropImageOptions2 = null;
        }
        if (cropImageOptions2.initialCropWindowRectangle != null && (cropImageView2 = this.cropImageView) != null) {
            CropImageOptions cropImageOptions3 = this.cropImageOptions;
            if (cropImageOptions3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions3 = null;
            }
            cropImageView2.setCropRect(cropImageOptions3.initialCropWindowRectangle);
        }
        CropImageOptions cropImageOptions4 = this.cropImageOptions;
        if (cropImageOptions4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
            cropImageOptions4 = null;
        }
        if (cropImageOptions4.initialRotation > 0 && (cropImageView = this.cropImageView) != null) {
            CropImageOptions cropImageOptions5 = this.cropImageOptions;
            if (cropImageOptions5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
                cropImageOptions5 = null;
            }
            cropImageView.setRotatedDegrees(cropImageOptions5.initialRotation);
        }
        CropImageOptions cropImageOptions6 = this.cropImageOptions;
        if (cropImageOptions6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropImageOptions");
        } else {
            cropImageOptions = cropImageOptions6;
        }
        if (cropImageOptions.skipEditing) {
            cropImage();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        CropImageView cropImageView = this.cropImageView;
        if (cropImageView != null) {
            cropImageView.setOnSetImageUriCompleteListener(this);
        }
        CropImageView cropImageView2 = this.cropImageView;
        if (cropImageView2 != null) {
            cropImageView2.setOnCropImageCompleteListener(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        CropImageView cropImageView = this.cropImageView;
        if (cropImageView != null) {
            cropImageView.setOnSetImageUriCompleteListener(null);
        }
        CropImageView cropImageView2 = this.cropImageView;
        if (cropImageView2 != null) {
            cropImageView2.setOnCropImageCompleteListener(null);
        }
    }

    public void rotateImage(int degrees) {
        CropImageView cropImageView = this.cropImageView;
        if (cropImageView != null) {
            cropImageView.rotateImage(degrees);
        }
    }

    public void setCropImageView(@NotNull CropImageView cropImageView) {
        Intrinsics.checkNotNullParameter(cropImageView, "cropImageView");
        this.cropImageView = cropImageView;
    }

    public void setResult(@Nullable Uri uri, @Nullable Exception error, int sampleSize) {
        setResult(error != null ? 204 : -1, getResultIntent(uri, error, sampleSize));
        finish();
    }

    public void setResultCancel() {
        setResult(0);
        finish();
    }

    public void showImageSourceDialog(@NotNull final Function1<? super Source, Unit> openSource) {
        Intrinsics.checkNotNullParameter(openSource, "openSource");
        new AlertDialog.Builder(this).setCancelable(false).setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.sunia.HTREnginev2.die
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                boolean m9229L;
                m9229L = CropImageActivity.m9229L(CropImageActivity.this, dialogInterface, i, keyEvent);
                return m9229L;
            }
        }).setTitle(C2055R.string.pick_image_chooser_title).setItems(new String[]{getString(C2055R.string.pick_image_camera), getString(C2055R.string.pick_image_gallery)}, new DialogInterface.OnClickListener() { // from class: com.sunia.HTREnginev2.eie
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CropImageActivity.m9230M(Function1.this, dialogInterface, i);
            }
        }).show();
    }

    public void updateMenuItemIconColor(@NotNull Menu menu, int itemId, int color) {
        Drawable icon;
        Intrinsics.checkNotNullParameter(menu, "menu");
        MenuItem findItem = menu.findItem(itemId);
        if (findItem == null || (icon = findItem.getIcon()) == null) {
            return;
        }
        try {
            icon.mutate();
            icon.setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(color, BlendModeCompat.SRC_ATOP));
            findItem.setIcon(icon);
        } catch (Exception e) {
            Log.w("AIC", "Failed to update menu item color", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if ((!r0) == true) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateMenuItemTextColor(@org.jetbrains.annotations.NotNull android.view.Menu r3, int r4, int r5) {
        /*
            r2 = this;
            java.lang.String r2 = "menu"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r2)
            android.view.MenuItem r2 = r3.findItem(r4)
            java.lang.CharSequence r3 = r2.getTitle()
            r4 = 0
            if (r3 == 0) goto L19
            boolean r0 = kotlin.text.StringsKt.isBlank(r3)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 != r1) goto L19
            goto L1a
        L19:
            r1 = r4
        L1a:
            if (r1 == 0) goto L3b
            android.text.SpannableString r0 = new android.text.SpannableString     // Catch: java.lang.Exception -> L33
            r0.<init>(r3)     // Catch: java.lang.Exception -> L33
            android.text.style.ForegroundColorSpan r3 = new android.text.style.ForegroundColorSpan     // Catch: java.lang.Exception -> L33
            r3.<init>(r5)     // Catch: java.lang.Exception -> L33
            int r5 = r0.length()     // Catch: java.lang.Exception -> L33
            r1 = 33
            r0.setSpan(r3, r4, r5, r1)     // Catch: java.lang.Exception -> L33
            r2.setTitle(r0)     // Catch: java.lang.Exception -> L33
            goto L3b
        L33:
            r2 = move-exception
            java.lang.String r3 = "AIC"
            java.lang.String r4 = "Failed to update menu item color"
            android.util.Log.w(r3, r4, r2)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageActivity.updateMenuItemTextColor(android.view.Menu, int, int):void");
    }
}

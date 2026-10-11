package com.onyx.galaxy.note.editor.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import com.github.chrisbanes.photoview.OnScaleChangedListener;
import com.github.chrisbanes.photoview.PhotoView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogViewImageBinding;
import com.onyx.galaxy.note.editor.view.dialog.ViewImageDialog;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0019\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0012\u0010\f\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u001b\u0010\r\u001a\u00020\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0018\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0013\u0010\u0017¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;", "Landroid/app/Dialog;", "", C6998g.f39679a, "", "diff", GoogleApiAvailabilityLight.f29016b, "m", "scale", "p", "Landroid/graphics/Bitmap;", "bitmap", C4921e.f26528e, "q", "(Ljava/lang/Float;)V", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", C6997f.f39671c, "Landroid/graphics/Bitmap;", "Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/graphics/Bitmap;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ViewImageDialog extends Dialog {

    /* renamed from: h */
    public static final float f59954h = 1.0f;

    /* renamed from: i */
    public static final float f59955i = 16.0f;

    /* renamed from: j */
    public static final float f59956j = 0.5f;

    /* renamed from: k */
    public static final float f59957k = 0.25f;

    /* renamed from: l */
    public static final float f59958l = 0.5f;

    /* renamed from: m */
    public static final float f59959m = 8.0f;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Bitmap bitmap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewImageDialog(@NotNull Context context, @Nullable Bitmap bitmap) {
        super(context, C10651R.style.fullScreenDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.bitmap = bitmap;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogViewImageBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.ViewImageDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogViewImageBinding invoke() {
                Context context2;
                context2 = ViewImageDialog.this.context;
                return DialogViewImageBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        setContentView(m48247f().getRoot());
        m48248g();
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
        }
    }

    /* renamed from: h */
    public static final void m48241h(ViewImageDialog this$0, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m48246r(this$0, null, 1, null);
    }

    /* renamed from: i */
    public static final void m48242i(ViewImageDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48249m();
    }

    /* renamed from: j */
    public static final void m48243j(ViewImageDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48250n(0.25f);
    }

    /* renamed from: k */
    public static final void m48244k(ViewImageDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48250n(-0.25f);
    }

    /* renamed from: l */
    public static final void m48245l(ViewImageDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: r */
    public static /* synthetic */ void m48246r(ViewImageDialog viewImageDialog, Float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = null;
        }
        viewImageDialog.m48253q(f);
    }

    /* renamed from: f */
    public final DialogViewImageBinding m48247f() {
        return (DialogViewImageBinding) this.binding.getValue();
    }

    /* renamed from: g */
    public final void m48248g() {
        m48247f().image.setMinimumScale(0.5f);
        m48247f().image.setMaximumScale(8.0f);
        m48247f().image.setOnScaleChangeListener(new OnScaleChangedListener() { // from class: com.sunia.HTREnginev2.n3o
            @Override // com.github.chrisbanes.photoview.OnScaleChangedListener
            public final void onScaleChange(float f, float f2, float f3) {
                ViewImageDialog.m48241h(ViewImageDialog.this, f, f2, f3);
            }
        });
        m48247f().scaleRestore.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o3o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ViewImageDialog.m48242i(ViewImageDialog.this, view);
            }
        });
        m48247f().scaleUp.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p3o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ViewImageDialog.m48243j(ViewImageDialog.this, view);
            }
        });
        m48247f().scaleDown.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q3o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ViewImageDialog.m48244k(ViewImageDialog.this, view);
            }
        });
        m48247f().quit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r3o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ViewImageDialog.m48245l(ViewImageDialog.this, view);
            }
        });
        m48251o(this.bitmap);
    }

    /* renamed from: m */
    public final void m48249m() {
        m48252p(0.5f);
    }

    /* renamed from: n */
    public final void m48250n(float diff) {
        m48252p(m48247f().image.getScale() + diff);
    }

    /* renamed from: o */
    public final void m48251o(Bitmap bitmap) {
        m48247f().image.setImageBitmap(bitmap);
        m48249m();
    }

    /* renamed from: p */
    public final void m48252p(float scale) {
        final float floatValue = ((Number) MathUtils.INSTANCE.clamp(Float.valueOf(scale), Float.valueOf(0.5f), Float.valueOf(8.0f))).floatValue();
        ViewKt.postSelf(m48247f().image, new Function1<PhotoView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.ViewImageDialog$setScale$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PhotoView photoView) {
                invoke2(photoView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PhotoView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.setScale(floatValue, true);
                this.m48253q(Float.valueOf(floatValue));
            }
        });
    }

    /* renamed from: q */
    public final void m48253q(Float scale) {
        float floatValue = ((Number) MathUtils.INSTANCE.clamp(Float.valueOf((scale != null ? scale.floatValue() : m48247f().image.getScale()) / 0.5f), Float.valueOf(1.0f), Float.valueOf(16.0f))).floatValue() * 100;
        TintTextView tintTextView = m48247f().percent;
        StringBuilder sb = new StringBuilder();
        sb.append((int) floatValue);
        sb.append('%');
        tintTextView.setText(sb.toString());
    }
}

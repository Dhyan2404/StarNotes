package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewModelProvider;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.LayoutParamRes;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyConvertType;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.databinding.PopupRealtimeBeautifyTypesetBinding;
import com.onyx.galaxy.note.editor.event.InkFontFetchedEvent;
import com.onyx.galaxy.note.editor.event.InkFontLoadedEvent;
import com.onyx.galaxy.note.editor.event.InkFontSelectedEvent;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.RealtimeBeautifySettingsPopup;
import com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b&\u0010'J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/RealtimeBeautifySettingsPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;", "", "onShow", "onDismiss", "x", "t", "z", "y", "", NotificationCompat.CATEGORY_EVENT, "s", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", "A", "Landroidx/appcompat/app/AppCompatActivity;", "Landroidx/appcompat/app/AppCompatActivity;", ActivityChooserModel.f1429r, "Landroid/view/View;", "Landroid/view/View;", "anchorView", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "u", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupRealtimeBeautifyTypesetBinding;", "v", "Lkotlin/Lazy;", "r", "()Lcom/onyx/galaxy/note/databinding/PopupRealtimeBeautifyTypesetBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "w", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "viewModel", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "typesetArgs", Constants.CONSTRUCTOR_NAME, "(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRealtimeBeautifySettingsPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealtimeBeautifySettingsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/RealtimeBeautifySettingsPopup\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n64#2:150\n288#3,2:151\n*S KotlinDebug\n*F\n+ 1 RealtimeBeautifySettingsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/RealtimeBeautifySettingsPopup\n*L\n48#1:150\n134#1:151,2\n*E\n"})
/* loaded from: classes9.dex */
public final class RealtimeBeautifySettingsPopup extends BaseShortcutPopup {

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final AppCompatActivity activity;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final InkBeautifyViewModel viewModel;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public ShapeTypesetArgs typesetArgs;

    public /* synthetic */ RealtimeBeautifySettingsPopup(AppCompatActivity appCompatActivity, View view, EditorBundle editorBundle, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(appCompatActivity, view, (i & 4) != 0 ? null : editorBundle);
    }

    /* renamed from: u */
    public static final void m49339u(RealtimeBeautifySettingsPopup this$0, View view) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InkBeautifyHelpPopup inkBeautifyHelpPopup = new InkBeautifyHelpPopup(this$0.activity);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        TintImageView hintButton = this$0.m49343r().hintButton;
        Intrinsics.checkNotNullExpressionValue(hintButton, "hintButton");
        windowLocation = popupLocator.getWindowLocation((PopupLocator) inkBeautifyHelpPopup, hintButton, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_CENTER, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.BOTTOM_CENTER, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        PopupLocator.show$default(popupLocator, inkBeautifyHelpPopup, windowLocation, null, 2, null);
    }

    /* renamed from: v */
    public static final void m49340v(RealtimeBeautifySettingsPopup this$0, View view) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayoutParamRes layoutParamRes = new LayoutParamRes();
        layoutParamRes.setPopupWidthRes(C7384R.dimen.dp_258);
        InkFontListPopup inkFontListPopup = new InkFontListPopup(this$0.activity, layoutParamRes);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        TintLinearLayout fontSelectLayout = this$0.m49343r().fontSelectLayout;
        Intrinsics.checkNotNullExpressionValue(fontSelectLayout, "fontSelectLayout");
        windowLocation = popupLocator.getWindowLocation((PopupLocator) inkFontListPopup, fontSelectLayout, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : null, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : null, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        PopupLocator.show$default(popupLocator, inkFontListPopup, windowLocation, null, 2, null);
    }

    /* renamed from: w */
    public static final void m49341w(RealtimeBeautifySettingsPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49348z();
    }

    /* renamed from: A */
    public final void m49342A(FontModel model) {
        String cachedInkTitleThumbnailFile = FontModelExt.INSTANCE.getCachedInkTitleThumbnailFile(model);
        String inkTitleThumbnail = model.getInkTitleThumbnail();
        GlideExt glideExt = GlideExt.INSTANCE;
        TintImageView thumbnail = m49343r().thumbnail;
        Intrinsics.checkNotNullExpressionValue(thumbnail, "thumbnail");
        GlideExt.loadOrFallback$default(glideExt, thumbnail, cachedInkTitleThumbnailFile, inkTitleThumbnail, null, 4, null);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.unregister(editorBundle, this);
        }
        float pt2px = DimenUtils.INSTANCE.pt2px(ResManager.INSTANCE.getAppContext(), m49343r().fontSizeSeekbar.getProgressValue());
        this.typesetArgs.setEnableUnifiedParams(!m49343r().followScribbleSwitch.isChecked());
        this.typesetArgs.setTypeface(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, this.viewModel.getSelectedFont(), null, 1, null));
        this.typesetArgs.setFontSize(Float.valueOf(pt2px));
        this.typesetArgs.setCharSpacing(Float.valueOf(m49343r().charSpacingSeekbar.getProgressValue() / 100));
        this.typesetArgs.setLineSpacing(Float.valueOf(m49343r().lineSpacingSeekbar.getProgressValue()));
        MMKVNote.INSTANCE.getRealtimeBeautifyTypesetOption().put(this.typesetArgs);
        this.viewModel.clear();
        this.editorBundle = null;
        super.onDismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        m49346x();
        m49345t();
        m49347y();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.register(editorBundle, this);
        }
    }

    /* renamed from: r */
    public final PopupRealtimeBeautifyTypesetBinding m49343r() {
        return (PopupRealtimeBeautifyTypesetBinding) this.binding.getValue();
    }

    /* renamed from: s */
    public final void m49344s(Object event) {
        Object obj;
        if (!(event instanceof InkFontLoadedEvent)) {
            if (event instanceof InkFontFetchedEvent) {
                this.viewModel.loadFromLocal();
                return;
            } else {
                if (event instanceof InkFontSelectedEvent) {
                    m49342A(((InkFontSelectedEvent) event).getModel());
                    return;
                }
                return;
            }
        }
        String typeface = this.typesetArgs.getTypeface();
        if (typeface == null) {
            typeface = "";
        }
        Iterator<T> it2 = ((InkFontLoadedEvent) event).getModels().iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (Intrinsics.areEqual(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, (FontModel) next, null, 1, null), typeface)) {
                obj = next;
                break;
            }
        }
        FontModel fontModel = (FontModel) obj;
        if (fontModel == null) {
            return;
        }
        this.viewModel.selectFont(fontModel);
    }

    /* renamed from: t */
    public final void m49345t() {
        TintImageView hintButton = m49343r().hintButton;
        Intrinsics.checkNotNullExpressionValue(hintButton, "hintButton");
        ViewKt.click$default(hintButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ael
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RealtimeBeautifySettingsPopup.m49339u(RealtimeBeautifySettingsPopup.this, view);
            }
        }, 1, null);
        TintLinearLayout fontSelectLayout = m49343r().fontSelectLayout;
        Intrinsics.checkNotNullExpressionValue(fontSelectLayout, "fontSelectLayout");
        ViewKt.click$default(fontSelectLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bel
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RealtimeBeautifySettingsPopup.m49340v(RealtimeBeautifySettingsPopup.this, view);
            }
        }, 1, null);
        m49343r().followScribbleSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.cel
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                RealtimeBeautifySettingsPopup.m49341w(RealtimeBeautifySettingsPopup.this, compoundButton, z);
            }
        });
    }

    /* renamed from: x */
    public final void m49346x() {
        this.typesetArgs = MMKVNote.INSTANCE.getRealtimeBeautifyTypesetArgs();
        m49343r().followScribbleSwitch.setChecked(!this.typesetArgs.getEnableUnifiedParams());
        Float fontSize = this.typesetArgs.getFontSize();
        if (fontSize != null) {
            m49343r().fontSizeSeekbar.setProgressValue(DimenUtils.INSTANCE.px2pt(ResManager.INSTANCE.getAppContext(), fontSize.floatValue()));
        }
        Float charSpacing = this.typesetArgs.getCharSpacing();
        if (charSpacing != null) {
            m49343r().charSpacingSeekbar.setProgressValue(charSpacing.floatValue() * 100);
        }
        Float lineSpacing = this.typesetArgs.getLineSpacing();
        if (lineSpacing != null) {
            m49343r().lineSpacingSeekbar.setProgressValue(lineSpacing.floatValue());
        }
        m49348z();
    }

    /* renamed from: y */
    public final void m49347y() {
        this.viewModel.setConvertType(InkBeautifyConvertType.REALTIME_CONVERT);
        DataBindingKt.observeOnce(this.viewModel.getEvent(), this, new RealtimeBeautifySettingsPopup$initViewModel$1(this));
        this.viewModel.loadFromLocal();
        this.viewModel.fetchFromCloud();
    }

    /* renamed from: z */
    public final void m49348z() {
        boolean isChecked = m49343r().followScribbleSwitch.isChecked();
        StickSeekBarContainer fontSizeSeekbar = m49343r().fontSizeSeekbar;
        Intrinsics.checkNotNullExpressionValue(fontSizeSeekbar, "fontSizeSeekbar");
        com.onyx.android.sdk.base.extension.ViewKt.enableAll(fontSizeSeekbar, !isChecked);
        StickSeekBarContainer charSpacingSeekbar = m49343r().charSpacingSeekbar;
        Intrinsics.checkNotNullExpressionValue(charSpacingSeekbar, "charSpacingSeekbar");
        com.onyx.android.sdk.base.extension.ViewKt.enableAll(charSpacingSeekbar, !isChecked);
        StickSeekBarContainer lineSpacingSeekbar = m49343r().lineSpacingSeekbar;
        Intrinsics.checkNotNullExpressionValue(lineSpacingSeekbar, "lineSpacingSeekbar");
        com.onyx.android.sdk.base.extension.ViewKt.enableAll(lineSpacingSeekbar, !isChecked);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimeBeautifySettingsPopup(@NotNull AppCompatActivity activity, @NotNull View anchorView, @Nullable EditorBundle editorBundle) {
        super(anchorView, false, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        this.activity = activity;
        this.anchorView = anchorView;
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupRealtimeBeautifyTypesetBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.RealtimeBeautifySettingsPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupRealtimeBeautifyTypesetBinding invoke() {
                AppCompatActivity appCompatActivity;
                appCompatActivity = RealtimeBeautifySettingsPopup.this.activity;
                return PopupRealtimeBeautifyTypesetBinding.inflate(LayoutInflater.from(appCompatActivity));
            }
        });
        this.binding = lazy;
        this.viewModel = (InkBeautifyViewModel) new ViewModelProvider(activity).get(InkBeautifyViewModel.class);
        this.typesetArgs = new ShapeTypesetArgs();
        setOutsideTouchable(true);
        setFocusable(true);
        TintLinearLayout root = m49343r().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }
}

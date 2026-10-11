package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.gson.JsonObject;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.event.StatisticsNoteToolbarExcerptEvent;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.note.common.data.shape.ExcerptType;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.RedrawNoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.SwitchExcerptTypeEvent;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.action.LoadGuideInfoAction;
import com.onyx.galaxy.note.common.constant.GuideInfoConst;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupExcerptPenMenuBinding;
import com.onyx.galaxy.note.editor.view.popup.ExcerptPenMenuPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.p048ui.dialog.GuideWebViewDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 52\u00020\u0001:\u00015B\u001f\u0012\u0006\u0010 \u001a\u00020\u0019\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201¢\u0006\u0004\b3\u00104J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0003J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0016\u0010\r\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010*\u001a\u00020&8\u0006¢\u0006\f\n\u0004\b\u000e\u0010'\u001a\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00066"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;", NotificationCompat.CATEGORY_EVENT, "", "reportEvent", "", "eventType", "reportData", "w", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", OcrValues.LANG_ITALIAN, "p", "s", "r", "", "isChecked", "y", "x", "z", "B", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "type", "A", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupExcerptPenMenuBinding;", "Lkotlin/Lazy;", C4921e.f26528e, "()Lcom/onyx/galaxy/note/databinding/PopupExcerptPenMenuBinding;", "binding", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "getOption", "()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "option", "Lcom/onyx/galaxy/note/ui/dialog/GuideWebViewDialog;", "t", "Lcom/onyx/galaxy/note/ui/dialog/GuideWebViewDialog;", "guideWebViewDialog", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExcerptPenMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptPenMenuPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,177:1\n256#2,2:178\n*S KotlinDebug\n*F\n+ 1 ExcerptPenMenuPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup\n*L\n73#1:178,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ExcerptPenMenuPopup extends BasePopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final ExcerptAttr option;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public GuideWebViewDialog guideWebViewDialog;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ExcerptPenMenuPopup$Companion;", "", "()V", "onExcerptAttrSelected", "", "excerptAttr", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void onExcerptAttrSelected(@NotNull ExcerptAttr excerptAttr) {
            Intrinsics.checkNotNullParameter(excerptAttr, "excerptAttr");
            MMKVNote.INSTANCE.setExcerptShapeAttrOption(excerptAttr);
            DocCollectionBundle.INSTANCE.postEvent(new SwitchExcerptTypeEvent(excerptAttr.getType()));
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ExcerptPenMenuPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12384a<T> implements Consumer {
        public C12384a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<GuideInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExcerptPenMenuPopup.this.m48761p(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExcerptPenMenuPopup(@NotNull EditorBundle editorBundle, @NotNull final Context context, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupExcerptPenMenuBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ExcerptPenMenuPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupExcerptPenMenuBinding invoke() {
                return PopupExcerptPenMenuBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.option = MMKVNote.INSTANCE.getExcerptShapeAttrOption().get();
        m48763s();
        m48764w();
        m48762r();
    }

    /* renamed from: q */
    public static final void m48754q(ExcerptPenMenuPopup this$0, GuideInfo excerptGuideInfo, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(excerptGuideInfo, "$excerptGuideInfo");
        if (this$0.guideWebViewDialog == null) {
            this$0.guideWebViewDialog = new GuideWebViewDialog(this$0.getContext(), excerptGuideInfo);
        }
        GuideWebViewDialog guideWebViewDialog = this$0.guideWebViewDialog;
        if (guideWebViewDialog != null) {
            guideWebViewDialog.show();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    private final void reportEvent(SwitchExcerptTypeEvent event) {
        reportData(OnyxStatisticConstant.EVENT_TYPE_CLICK);
    }

    /* renamed from: t */
    public static final void m48755t(ExcerptPenMenuPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48767z();
    }

    /* renamed from: u */
    public static final void m48756u(ExcerptPenMenuPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48765x();
    }

    /* renamed from: v */
    public static final void m48757v(ExcerptPenMenuPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48766y(z);
    }

    /* renamed from: A */
    public final void m48758A(ExcerptType type) {
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        String lowerCase = type.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        statisticsBundle.postEvent(new StatisticsNoteToolbarExcerptEvent(lowerCase));
    }

    /* renamed from: B */
    public final void m48759B() {
        m48760o().textExcerptLayout.setSelected(this.option.getType() == ExcerptType.TEXT);
        m48760o().rectExcerptLayout.setSelected(this.option.getType() == ExcerptType.RECTANGLE);
        m48760o().switchIndicator.setChecked(this.option.getShowIndicator());
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final ExcerptAttr getOption() {
        return this.option;
    }

    /* renamed from: o */
    public final PopupExcerptPenMenuBinding m48760o() {
        return (PopupExcerptPenMenuBinding) this.binding.getValue();
    }

    /* renamed from: p */
    public final void m48761p(List<GuideInfo> it2) {
        if (!it2.isEmpty()) {
            final GuideInfo guideInfo = it2.get(0);
            if (guideInfo.getEnable()) {
                TintImageView ivGuide = m48760o().ivGuide;
                Intrinsics.checkNotNullExpressionValue(ivGuide, "ivGuide");
                ivGuide.setVisibility(0);
                m48760o().ivGuide.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kyf
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ExcerptPenMenuPopup.m48754q(ExcerptPenMenuPopup.this, guideInfo, view);
                    }
                });
            }
        }
    }

    /* renamed from: r */
    public final void m48762r() {
        getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.ExcerptPenMenuPopup$initReportListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                ExcerptPenMenuPopup.this.reportData("view");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }
        });
    }

    public final void reportData(@NotNull String eventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        JsonObject jsonObject = new JsonObject();
        int i = this.option.getType() == ExcerptType.TEXT ? 1 : 0;
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_EXCERPT_TEXT_EXCERPT, Integer.valueOf(i));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_EXCERPT_FRAME_EXCERPT, Integer.valueOf(i ^ 1));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_EXCERPT_ICON_EXCERPT, Integer.valueOf(this.option.getShowIndicator() ? 1 : 0));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(OnyxStatisticConstant.KEY_NOTE_EXCERPT_DATA, jsonObject.toString()));
        StatisticsBundle.INSTANCE.reportEvent(this.editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_EXCERPT_BTN_DOUBLE_CLICK_SHOW_MENU, eventType, arrayList);
    }

    /* renamed from: s */
    public final void m48763s() {
        View root = m48760o().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        m48759B();
        m48760o().textExcerptLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hyf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcerptPenMenuPopup.m48755t(ExcerptPenMenuPopup.this, view);
            }
        });
        m48760o().rectExcerptLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.iyf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcerptPenMenuPopup.m48756u(ExcerptPenMenuPopup.this, view);
            }
        });
        m48760o().switchIndicator.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.jyf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ExcerptPenMenuPopup.m48757v(ExcerptPenMenuPopup.this, compoundButton, z);
            }
        });
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    /* renamed from: w */
    public final void m48764w() {
        new LoadGuideInfoAction(GuideInfoConst.GUIDE_FUN_EXCERPT, 0L, 2, null).build().doOnNext(new C12384a()).subscribe();
    }

    /* renamed from: x */
    public final void m48765x() {
        ExcerptType type = this.option.getType();
        ExcerptType excerptType = ExcerptType.RECTANGLE;
        if (type == excerptType) {
            return;
        }
        this.option.setType(excerptType);
        INSTANCE.onExcerptAttrSelected(this.option);
        m48758A(this.option.getType());
        m48759B();
    }

    /* renamed from: y */
    public final void m48766y(boolean isChecked) {
        if (this.option.getShowIndicator() == isChecked) {
            return;
        }
        this.option.setShowIndicator(isChecked);
        MMKVNote.INSTANCE.setExcerptShapeAttrOption(this.option);
        m48759B();
        DocCollectionBundle.INSTANCE.postEvent(new RedrawNoteEvent());
    }

    /* renamed from: z */
    public final void m48767z() {
        ExcerptType type = this.option.getType();
        ExcerptType excerptType = ExcerptType.TEXT;
        if (type == excerptType) {
            return;
        }
        this.option.setType(excerptType);
        INSTANCE.onExcerptAttrSelected(this.option);
        m48758A(this.option.getType());
        m48759B();
    }
}

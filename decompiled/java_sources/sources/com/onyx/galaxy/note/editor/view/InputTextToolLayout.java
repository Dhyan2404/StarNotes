package com.onyx.galaxy.note.editor.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ListPopupWindow;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onegravity.rteditor.fonts.FontManager;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.data.text.TextInputConfig;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.textbox.data.EditorStyleInfo;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.fonts.LoadFontInfoAction;
import com.onyx.android.sdk.universal.editor.action.fonts.LoadFontModelsAction;
import com.onyx.android.sdk.universal.editor.events.note.TextAlignEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextBoldEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextFontEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextItalicEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextSizeEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextSpacingEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextUnderlineEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateTextInputMenuEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.helper.TextInputHelper;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutInputTextToolBinding;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.InputTextToolLayout;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.onyx.galaxy.note.editor.view.popup.KeyboardAwareSeekBarPopup;
import com.onyx.galaxy.note.editor.view.popup.TextFontListPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt__MathJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 d2\u00020\u0001:\u0001dB\u001d\b\u0016\u0012\u0006\u0010]\u001a\u00020\\\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010^¢\u0006\u0004\b`\u0010aB'\b\u0017\u0012\u0006\u0010]\u001a\u00020\\\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010^\u0012\b\b\u0002\u0010b\u001a\u00020\u0013¢\u0006\u0004\b`\u0010cJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J3\u0010'\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042!\u0010&\u001a\u001d\u0012\u0013\u0012\u00110\"¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00020!H\u0002J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0002J\b\u0010-\u001a\u00020\nH\u0002J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\b\u00100\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u0013H\u0002J \u00107\u001a\u00020\u00022\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0013H\u0002J\b\u00108\u001a\u00020\nH\u0002J\u0010\u00109\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0002J \u0010;\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J\u0010\u0010=\u001a\u00020<2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>H\u0002J\u000e\u0010C\u001a\b\u0012\u0004\u0012\u00020B0AH\u0002J\u000e\u0010F\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DJ\u000e\u0010I\u001a\u00020\u00022\u0006\u0010H\u001a\u00020GJ\u0006\u0010J\u001a\u00020GJ\u0006\u0010K\u001a\u00020\u0002J\u0006\u0010L\u001a\u00020\u0002J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010?\u001a\u00020MH\u0007R\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010W\u001a\u00020G8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010[\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010\u001d¨\u0006e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;", "Landroid/widget/FrameLayout;", "", "t", "Landroid/view/View;", "view", "w", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "currentFont", "A", "", "fontFace", "v", "setEditorFontInfo", "N", "M", "l", "r", C4921e.f26528e, "", "step", GoogleApiAvailabilityLight.f29016b, "size", "y", "p", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "E", "H", "I", "G", "alignType", "F", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "selected", BreakpointSQLiteHelper.f39283i, "B", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", "Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;", "styleInfo", "P", "getTextStyleFontFace", "J", "L", "u", "color", "m", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;", "colorLayout", "originColor", "colorIndex", "x", "s", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "currentType", "K", "Landroid/widget/ListPopupWindow;", "q", "", NotificationCompat.CATEGORY_EVENT, "z", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", "getTextInputConfig", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;", "helper", "setTextInputHelper", "getTextInputHelper", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;", "onUpdateTextInputMenuEvent", "Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;", "e", "Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;", "binding", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;", "inputHelper", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "i", "selectColor", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InputTextToolLayout extends FrameLayout {
    public static final int TEXT_SIZE_CHANGE_STEP = 1;

    /* renamed from: e, reason: from kotlin metadata */
    public LayoutInputTextToolBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    public TextInputHelper inputHelper;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ShapeTextStyle textStyle;

    /* renamed from: i, reason: from kotlin metadata */
    public int selectColor;

    /* renamed from: com.onyx.galaxy.note.editor.view.InputTextToolLayout$a */
    /* loaded from: classes9.dex */
    public static final class C12246a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f59313f;

        public C12246a(String str) {
            this.f59313f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<FontModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InputTextToolLayout.this.m47349A(FontModelExt.INSTANCE.findByDisplayName(it2, this.f59313f));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.InputTextToolLayout$b */
    /* loaded from: classes9.dex */
    public static final class C12247b<T> implements Consumer {
        public C12247b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<FontInfo> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = InputTextToolLayout.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            EditorBundleKt.postEvent(editorBundle, new TextFontEvent((FontInfo) firstOrNull));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputTextToolLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.textStyle = new ShapeTextStyle();
        this.selectColor = -16777216;
        m47373t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONObjectOption<TextInputConfig> getTextInputConfig() {
        return MMKVNote.INSTANCE.getTextInputConfigOption();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getTextStyleFontFace() {
        String fontFace = this.textStyle.getFontFace();
        if (fontFace == null) {
            fontFace = "";
        }
        return (String) AnyKt.takeIf(fontFace, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$getTextStyleFontFace$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(FontManager.getTypeFaceByCustomFontPath(it2) == null);
            }
        }, new Function1<String, String>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$getTextStyleFontFace$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return "";
            }
        });
    }

    private final void setEditorFontInfo(String fontFace) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(fontFace);
        new LoadFontInfoAction(listOf).build().doOnNext(new C12247b()).subscribe();
    }

    /* renamed from: A */
    public final void m47349A(FontModel currentFont) {
        EditorBundle editorBundle;
        if (currentFont == null) {
            currentFont = FontModelExt.INSTANCE.createDefault();
        }
        FontModel fontModel = currentFont;
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        LayoutInputTextToolBinding layoutInputTextToolBinding2 = null;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        TintTextView tvFontName = layoutInputTextToolBinding.tvFontName;
        Intrinsics.checkNotNullExpressionValue(tvFontName, "tvFontName");
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        TextFontListPopup textFontListPopup = new TextFontListPopup(tvFontName, editorBundle, fontModel, null, 8, null);
        textFontListPopup.setItemSelectedListener(new BaseSelectableQuickAdapter.ItemSelectionListener<FontModel>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$showTextFontListPopup$1
            @Override // com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter.ItemSelectionListener
            public void onItemSelected(@NotNull List<? extends FontModel> list) {
                Object firstOrNull;
                Intrinsics.checkNotNullParameter(list, "list");
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
                FontModel fontModel2 = (FontModel) firstOrNull;
                if (fontModel2 == null) {
                    return;
                }
                InputTextToolLayout.this.m47375v(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, fontModel2, null, 1, null));
            }
        });
        textFontListPopup.setMaxFontPopupHeight();
        LayoutInputTextToolBinding layoutInputTextToolBinding3 = this.binding;
        if (layoutInputTextToolBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutInputTextToolBinding2 = layoutInputTextToolBinding3;
        }
        TintTextView tvFontName2 = layoutInputTextToolBinding2.tvFontName;
        Intrinsics.checkNotNullExpressionValue(tvFontName2, "tvFontName");
        textFontListPopup.show(tvFontName2);
    }

    /* renamed from: B */
    public final void m47350B(View view, Function1<? super Boolean, Unit> block) {
        view.setSelected(!view.isSelected());
        block.invoke(Boolean.valueOf(view.isSelected()));
    }

    /* renamed from: C */
    public final void m47351C(View view) {
        m47350B(view, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$toggleTextBold$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(final boolean z) {
                JSONObjectOption textInputConfig;
                InputTextToolLayout.this.m47379z(new TextBoldEvent(z));
                textInputConfig = InputTextToolLayout.this.getTextInputConfig();
                textInputConfig.getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$toggleTextBold$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig2) {
                        invoke2(textInputConfig2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable TextInputConfig textInputConfig2) {
                        if (textInputConfig2 == null) {
                            return;
                        }
                        textInputConfig2.setBold(z);
                    }
                });
            }
        });
    }

    /* renamed from: D */
    public final void m47352D(View view) {
        m47350B(view, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$toggleTextItalic$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(final boolean z) {
                JSONObjectOption textInputConfig;
                InputTextToolLayout.this.m47379z(new TextItalicEvent(z));
                textInputConfig = InputTextToolLayout.this.getTextInputConfig();
                textInputConfig.getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$toggleTextItalic$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig2) {
                        invoke2(textInputConfig2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable TextInputConfig textInputConfig2) {
                        if (textInputConfig2 == null) {
                            return;
                        }
                        textInputConfig2.setItalic(z);
                    }
                });
            }
        });
    }

    /* renamed from: E */
    public final void m47353E(View view) {
        m47350B(view, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$toggleTextUnderline$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(final boolean z) {
                JSONObjectOption textInputConfig;
                InputTextToolLayout.this.m47379z(new TextUnderlineEvent(z));
                textInputConfig = InputTextToolLayout.this.getTextInputConfig();
                textInputConfig.getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$toggleTextUnderline$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig2) {
                        invoke2(textInputConfig2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable TextInputConfig textInputConfig2) {
                        if (textInputConfig2 == null) {
                            return;
                        }
                        textInputConfig2.setUnderline(z);
                    }
                });
            }
        });
    }

    /* renamed from: F */
    public final void m47354F(final int alignType) {
        m47379z(new TextAlignEvent(alignType));
        m47358J(alignType);
        getTextInputConfig().getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$triggerTextAlign$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig) {
                invoke2(textInputConfig);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable TextInputConfig textInputConfig) {
                if (textInputConfig == null) {
                    return;
                }
                textInputConfig.setAlignType(alignType);
            }
        });
    }

    /* renamed from: G */
    public final void m47355G(View view) {
        m47354F(2);
    }

    /* renamed from: H */
    public final void m47356H(View view) {
        m47354F(0);
    }

    /* renamed from: I */
    public final void m47357I(View view) {
        m47354F(1);
    }

    /* renamed from: J */
    public final void m47358J(int alignType) {
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        LayoutInputTextToolBinding layoutInputTextToolBinding2 = null;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        TintImageView textAlignLeft = layoutInputTextToolBinding.textAlignLeft;
        Intrinsics.checkNotNullExpressionValue(textAlignLeft, "textAlignLeft");
        m47359K(textAlignLeft, alignType, 0);
        LayoutInputTextToolBinding layoutInputTextToolBinding3 = this.binding;
        if (layoutInputTextToolBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding3 = null;
        }
        TintImageView textAlignCenter = layoutInputTextToolBinding3.textAlignCenter;
        Intrinsics.checkNotNullExpressionValue(textAlignCenter, "textAlignCenter");
        m47359K(textAlignCenter, alignType, 2);
        LayoutInputTextToolBinding layoutInputTextToolBinding4 = this.binding;
        if (layoutInputTextToolBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutInputTextToolBinding2 = layoutInputTextToolBinding4;
        }
        TintImageView textAlignRight = layoutInputTextToolBinding2.textAlignRight;
        Intrinsics.checkNotNullExpressionValue(textAlignRight, "textAlignRight");
        m47359K(textAlignRight, alignType, 1);
    }

    /* renamed from: K */
    public final void m47359K(View view, int currentType, int alignType) {
        view.setSelected(currentType == alignType);
    }

    /* renamed from: L */
    public final void m47360L(EditorStyleInfo styleInfo) {
        this.selectColor = styleInfo.getHasSelection() ? 0 : styleInfo.getTextColor();
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        layoutInputTextToolBinding.colorLayout.updateColorViewSelection(this.selectColor);
    }

    /* renamed from: M */
    public final void m47361M() {
        m47362N(getTextInputConfig().get().getFontFace());
    }

    /* renamed from: N */
    public final void m47362N(final String fontFace) {
        Debug.INSTANCE.m32035d(InputTextToolLayout.class, "updateFontFace:" + fontFace, new Object[0]);
        String ifEmpty = StringKt.ifEmpty((String) AnyKt.takeIf(AnyKt.transform(fontFace, new Function1<String, String>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$updateFontFaceView$text$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return FilenameUtils.getBaseName(fontFace);
            }
        }), new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$updateFontFaceView$text$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(String str) {
                return Boolean.valueOf(Intrinsics.areEqual(str, "default"));
            }
        }, new Function1<String, String>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$updateFontFaceView$text$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String str) {
                return InputTextToolLayout.this.getContext().getString(C7594R.string.default_font);
            }
        }), new Function0<String>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$updateFontFaceView$text$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String string = InputTextToolLayout.this.getContext().getString(C7594R.string.default_font);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return string;
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        layoutInputTextToolBinding.tvFontName.setText(ifEmpty);
    }

    /* renamed from: O */
    public final void m47363O(ShapeTextStyle textStyle) {
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        layoutInputTextToolBinding.textSpacing.setText(m47372s() + ResManager.INSTANCE.getStringSafely(C10651R.string.line_space_format));
    }

    /* renamed from: P */
    public final void m47364P(ShapeTextStyle textStyle, EditorStyleInfo styleInfo) {
        int roundToInt;
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        LayoutInputTextToolBinding layoutInputTextToolBinding2 = null;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        layoutInputTextToolBinding.textBold.setSelected(textStyle.getTextBold());
        LayoutInputTextToolBinding layoutInputTextToolBinding3 = this.binding;
        if (layoutInputTextToolBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding3 = null;
        }
        layoutInputTextToolBinding3.textItalic.setSelected(textStyle.getTextItalic());
        LayoutInputTextToolBinding layoutInputTextToolBinding4 = this.binding;
        if (layoutInputTextToolBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding4 = null;
        }
        layoutInputTextToolBinding4.textUnderline.setSelected(textStyle.getTextUnderline());
        LayoutInputTextToolBinding layoutInputTextToolBinding5 = this.binding;
        if (layoutInputTextToolBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutInputTextToolBinding2 = layoutInputTextToolBinding5;
        }
        TintTextView tintTextView = layoutInputTextToolBinding2.textSize;
        roundToInt = MathKt__MathJVMKt.roundToInt(textStyle.getTextSizeInPt());
        tintTextView.setText(String.valueOf(roundToInt));
        m47358J(textStyle.getAlignType());
        m47363O(textStyle);
        m47360L(styleInfo);
        m47362N(StringKt.ifEmpty(styleInfo.getFontFamily(), new Function0<String>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$updateView$typeface$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String textStyleFontFace;
                textStyleFontFace = InputTextToolLayout.this.getTextStyleFontFace();
                return textStyleFontFace;
            }
        }));
    }

    public final void active() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.register(editorBundle, this);
    }

    public final void destroy() {
        EditorBundle editorBundle = this.editorBundle;
        TextInputHelper textInputHelper = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.unregister(editorBundle, this);
        TextInputHelper textInputHelper2 = this.inputHelper;
        if (textInputHelper2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputHelper");
        } else {
            textInputHelper = textInputHelper2;
        }
        textInputHelper.destroy();
    }

    @NotNull
    public final TextInputHelper getTextInputHelper() {
        TextInputHelper textInputHelper = this.inputHelper;
        if (textInputHelper != null) {
            return textInputHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("inputHelper");
        return null;
    }

    /* renamed from: l */
    public final void m47365l(View view) {
        m47367n(1);
    }

    /* renamed from: m */
    public final void m47366m(final int color) {
        this.selectColor = color;
        ShapeAttributesBean shapeAttributesBean = new ShapeAttributesBean();
        shapeAttributesBean.setColor(color);
        getTextInputConfig().getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$changeColor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig) {
                invoke2(textInputConfig);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable TextInputConfig textInputConfig) {
                if (textInputConfig == null) {
                    return;
                }
                textInputConfig.setColor(color);
            }
        });
        TextInputHelper textInputHelper = this.inputHelper;
        if (textInputHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputHelper");
            textInputHelper = null;
        }
        textInputHelper.postChangeShapeAttributesEvent(shapeAttributesBean);
    }

    /* renamed from: n */
    public final void m47367n(int step) {
        int roundToInt;
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C7485R.integer.font_size_min);
        int integer2 = resManager.getInteger(C7485R.integer.font_size_max);
        roundToInt = MathKt__MathJVMKt.roundToInt(this.textStyle.getTextSizeInPt());
        m47378y(((Number) MathUtils.INSTANCE.clamp(Integer.valueOf(roundToInt + step), Integer.valueOf(integer), Integer.valueOf(integer2))).intValue());
    }

    /* renamed from: o */
    public final void m47368o(View view) {
        int roundToInt;
        ResManager resManager = ResManager.INSTANCE;
        final int integer = resManager.getInteger(C7485R.integer.font_size_min);
        final int integer2 = resManager.getInteger(C7485R.integer.font_size_max);
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        TintLinearLayout textSizeLayout = layoutInputTextToolBinding.textSizeLayout;
        Intrinsics.checkNotNullExpressionValue(textSizeLayout, "textSizeLayout");
        final KeyboardAwareSeekBarPopup keyboardAwareSeekBarPopup = new KeyboardAwareSeekBarPopup(textSizeLayout);
        roundToInt = MathKt__MathJVMKt.roundToInt(this.textStyle.getTextSizeInPt());
        keyboardAwareSeekBarPopup.setValueText(String.valueOf(roundToInt));
        keyboardAwareSeekBarPopup.setProgressChangeListener(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$changeTextSize$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                int intValue = ((Number) MathUtils.INSTANCE.clamp(Integer.valueOf((int) (f2 + 0.5f)), Integer.valueOf(integer), Integer.valueOf(integer2))).intValue();
                keyboardAwareSeekBarPopup.setValueText(String.valueOf(intValue));
                this.m47378y(intValue);
            }
        });
        keyboardAwareSeekBarPopup.setBound(Integer.valueOf(integer), Integer.valueOf(integer2), Float.valueOf(this.textStyle.getTextSizeInPt()));
        keyboardAwareSeekBarPopup.showLeftAbove();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateTextInputMenuEvent(@NotNull UpdateTextInputMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ShapeTextStyle textStyle = event.getTextStyle();
        this.textStyle = textStyle;
        m47364P(textStyle, event.getStyleInfo());
        m47363O(this.textStyle);
    }

    /* renamed from: p */
    public final void m47369p(View view) {
        ResManager resManager = ResManager.INSTANCE;
        float f = resManager.getFloat(C7485R.fraction.font_line_spacing_min);
        float f2 = resManager.getFloat(C7485R.fraction.font_line_spacing_max);
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        TintTextView textSpacing = layoutInputTextToolBinding.textSpacing;
        Intrinsics.checkNotNullExpressionValue(textSpacing, "textSpacing");
        final KeyboardAwareSeekBarPopup keyboardAwareSeekBarPopup = new KeyboardAwareSeekBarPopup(textSpacing);
        keyboardAwareSeekBarPopup.setValueText(m47372s());
        keyboardAwareSeekBarPopup.setProgressChangeListener(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$changeTextSpacing$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f3, Float f4, Boolean bool) {
                invoke(f3.floatValue(), f4.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f3, final float f4, boolean z) {
                ShapeTextStyle shapeTextStyle;
                TextInputHelper textInputHelper;
                String m47372s;
                JSONObjectOption textInputConfig;
                ShapeTextStyle shapeTextStyle2;
                shapeTextStyle = InputTextToolLayout.this.textStyle;
                shapeTextStyle.setTextSpacing(f4);
                textInputHelper = InputTextToolLayout.this.inputHelper;
                if (textInputHelper == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("inputHelper");
                    textInputHelper = null;
                }
                textInputHelper.postEvent(new TextSpacingEvent(f4));
                KeyboardAwareSeekBarPopup keyboardAwareSeekBarPopup2 = keyboardAwareSeekBarPopup;
                m47372s = InputTextToolLayout.this.m47372s();
                keyboardAwareSeekBarPopup2.setValueText(m47372s);
                textInputConfig = InputTextToolLayout.this.getTextInputConfig();
                textInputConfig.getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$changeTextSpacing$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig2) {
                        invoke2(textInputConfig2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable TextInputConfig textInputConfig2) {
                        if (textInputConfig2 == null) {
                            return;
                        }
                        textInputConfig2.setTextSpacing(f4);
                    }
                });
                InputTextToolLayout inputTextToolLayout = InputTextToolLayout.this;
                shapeTextStyle2 = inputTextToolLayout.textStyle;
                inputTextToolLayout.m47363O(shapeTextStyle2);
            }
        });
        keyboardAwareSeekBarPopup.setBound(Float.valueOf(f), Float.valueOf(f2), Float.valueOf(this.textStyle.getTextSpacing()));
        keyboardAwareSeekBarPopup.showLeftAbove();
    }

    /* renamed from: q */
    public final ListPopupWindow m47370q(View view) {
        ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        listPopupWindow.setAnchorView(view);
        listPopupWindow.setModal(true);
        listPopupWindow.setInputMethodMode(2);
        return listPopupWindow;
    }

    /* renamed from: r */
    public final void m47371r(View view) {
        m47367n(-1);
    }

    /* renamed from: s */
    public final String m47372s() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(this.textStyle.getTextSpacing())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setTextInputHelper(@NotNull TextInputHelper helper) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        this.inputHelper = helper;
    }

    /* renamed from: t */
    public final void m47373t() {
        LayoutInputTextToolBinding inflate = LayoutInputTextToolBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        LayoutInputTextToolBinding layoutInputTextToolBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.textSize.setText("14");
        LayoutInputTextToolBinding layoutInputTextToolBinding2 = this.binding;
        if (layoutInputTextToolBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding2 = null;
        }
        layoutInputTextToolBinding2.tvFontName.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47376w(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding3 = this.binding;
        if (layoutInputTextToolBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding3 = null;
        }
        layoutInputTextToolBinding3.textBold.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47351C(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding4 = this.binding;
        if (layoutInputTextToolBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding4 = null;
        }
        layoutInputTextToolBinding4.textItalic.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47352D(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding5 = this.binding;
        if (layoutInputTextToolBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding5 = null;
        }
        layoutInputTextToolBinding5.textUnderline.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47353E(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding6 = this.binding;
        if (layoutInputTextToolBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding6 = null;
        }
        layoutInputTextToolBinding6.textAlignLeft.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ili
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47356H(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding7 = this.binding;
        if (layoutInputTextToolBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding7 = null;
        }
        layoutInputTextToolBinding7.textAlignRight.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47357I(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding8 = this.binding;
        if (layoutInputTextToolBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding8 = null;
        }
        layoutInputTextToolBinding8.textAlignCenter.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47355G(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding9 = this.binding;
        if (layoutInputTextToolBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding9 = null;
        }
        layoutInputTextToolBinding9.textSizeAdd.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47365l(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding10 = this.binding;
        if (layoutInputTextToolBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding10 = null;
        }
        layoutInputTextToolBinding10.textSizeDecrease.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47371r(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding11 = this.binding;
        if (layoutInputTextToolBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding11 = null;
        }
        layoutInputTextToolBinding11.textSize.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47368o(view);
            }
        });
        LayoutInputTextToolBinding layoutInputTextToolBinding12 = this.binding;
        if (layoutInputTextToolBinding12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutInputTextToolBinding = layoutInputTextToolBinding12;
        }
        layoutInputTextToolBinding.textSpacing.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.eli
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputTextToolLayout.this.m47369p(view);
            }
        });
        m47361M();
        m47374u();
    }

    /* renamed from: u */
    public final void m47374u() {
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        LayoutInputTextToolBinding layoutInputTextToolBinding2 = null;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        layoutInputTextToolBinding.colorLayout.setShape(16);
        this.selectColor = getTextInputConfig().get().getColor();
        LayoutInputTextToolBinding layoutInputTextToolBinding3 = this.binding;
        if (layoutInputTextToolBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding3 = null;
        }
        layoutInputTextToolBinding3.colorLayout.updateColorViewSelection(this.selectColor);
        LayoutInputTextToolBinding layoutInputTextToolBinding4 = this.binding;
        if (layoutInputTextToolBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutInputTextToolBinding2 = layoutInputTextToolBinding4;
        }
        layoutInputTextToolBinding2.colorLayout.setListener(new ShapeColorPropertyLayout.ColorSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$initColorLayout$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout.ColorSelectedListener
            public void onSelected(int color, int colorIndex) {
                int i;
                LayoutInputTextToolBinding layoutInputTextToolBinding5;
                i = InputTextToolLayout.this.selectColor;
                if (color != i) {
                    InputTextToolLayout.this.m47366m(color);
                    return;
                }
                InputTextToolLayout inputTextToolLayout = InputTextToolLayout.this;
                layoutInputTextToolBinding5 = inputTextToolLayout.binding;
                if (layoutInputTextToolBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutInputTextToolBinding5 = null;
                }
                ShapeColorPropertyLayout colorLayout = layoutInputTextToolBinding5.colorLayout;
                Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
                inputTextToolLayout.m47377x(colorLayout, color, colorIndex);
            }
        });
    }

    /* renamed from: v */
    public final void m47375v(String fontFace) {
        setEditorFontInfo(fontFace);
        m47362N(fontFace);
    }

    /* renamed from: w */
    public final void m47376w(View view) {
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        EditorBundle editorBundle = null;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        String obj = layoutInputTextToolBinding.tvFontName.getText().toString();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        new LoadFontModelsAction(editorBundle).build().doOnNext(new C12246a(obj)).subscribe();
    }

    /* renamed from: x */
    public final void m47377x(ShapeColorPropertyLayout colorLayout, int originColor, int colorIndex) {
        EditorBundle editorBundle;
        EditorBundle editorBundle2 = this.editorBundle;
        LayoutInputTextToolBinding layoutInputTextToolBinding = null;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        ShapeToolType shapeToolType = ShapeToolType.EDIT_TEXT;
        LayoutInputTextToolBinding layoutInputTextToolBinding2 = this.binding;
        if (layoutInputTextToolBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutInputTextToolBinding = layoutInputTextToolBinding2;
        }
        RxBaseAction.execute$default(new InputTextToolLayout$pickColor$1(colorLayout, originColor, colorIndex, this, editorBundle, shapeToolType, layoutInputTextToolBinding.colorLayout, colorLayout.getViewColors()), null, null, null, 7, null);
    }

    /* renamed from: y */
    public final void m47378y(int size) {
        final float f = size;
        this.textStyle.setTextSizeInPt(f);
        LayoutInputTextToolBinding layoutInputTextToolBinding = this.binding;
        TextInputHelper textInputHelper = null;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        layoutInputTextToolBinding.textSize.setText(String.valueOf(size));
        TextInputHelper textInputHelper2 = this.inputHelper;
        if (textInputHelper2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputHelper");
        } else {
            textInputHelper = textInputHelper2;
        }
        textInputHelper.postEvent(new TextSizeEvent(f));
        getTextInputConfig().getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.InputTextToolLayout$postAndSaveTextSize$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig) {
                invoke2(textInputConfig);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable TextInputConfig textInputConfig) {
                if (textInputConfig == null) {
                    return;
                }
                textInputConfig.setTextSize(f);
            }
        });
    }

    /* renamed from: z */
    public final void m47379z(Object event) {
        TextInputHelper textInputHelper = this.inputHelper;
        if (textInputHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputHelper");
            textInputHelper = null;
        }
        textInputHelper.postEvent(event);
    }

    public /* synthetic */ InputTextToolLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"SetJavaScriptEnabled"})
    public InputTextToolLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.textStyle = new ShapeTextStyle();
        this.selectColor = -16777216;
        m47373t();
    }

    public /* synthetic */ InputTextToolLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}

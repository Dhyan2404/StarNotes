package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import androidx.transition.ChangeScroll;
import androidx.transition.TransitionManager;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.onyx.android.sdk.universal.editor.events.app.ChangeLayoutTypeEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangePageColumnCountEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangeScrollerGravityEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableAdaptiveStrokeWidthEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableContinuousPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ReloadBoxManagerWithSettingsEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.LayoutNoteCommonSettingsBinding;
import com.onyx.galaxy.note.editor.event.ChangeDockTypeEvent;
import com.onyx.galaxy.note.editor.event.ChangeScrollerConfigEvent;
import com.onyx.galaxy.note.editor.view.popup.SwitchNoteSettingsPopup;
import com.onyx.galaxy.note.editor.view.popup.TipsPopup;
import com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001NB\u0011\b\u0016\u0012\u0006\u0010F\u001a\u00020E¢\u0006\u0004\bG\u0010HB\u001d\b\u0016\u0012\u0006\u0010F\u001a\u00020E\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010I¢\u0006\u0004\bG\u0010KB%\b\u0016\u0012\u0006\u0010F\u001a\u00020E\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010I\u0012\u0006\u0010L\u001a\u00020\u000f¢\u0006\u0004\bG\u0010MJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J \u0010\r\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\nH\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J#\u0010&\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b&\u0010'J\b\u0010(\u001a\u00020\u0002H\u0002J\b\u0010)\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020$H\u0002J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010-\u001a\u00020$H\u0002J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u00102\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u00101\u001a\u00020$H\u0002J\u000e\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u000203J\u0010\u00108\u001a\u00020\u00022\b\u00107\u001a\u0004\u0018\u000106R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006O"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;", "Landroid/widget/FrameLayout;", "", "Y", "s", "W", "S", "L", "Landroid/view/View;", "view", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "currentDockType", "targetDockType", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Q", "", "layoutType", "w", "z", "U", NotificationCompat.WearableExtender.f5060z, "setPageScrollerGravity", "I", "R", "dockType", "r", "newDockType", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "P", "V", "H", "", NotificationCompat.CATEGORY_EVENT, "E", "", "eventId", "", "switch", "F", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "K", "J", "Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;", "pageColumn", "p", "enable", "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "isHorizontal", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;", "binding", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "NoteCommonSettingListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteCommonSettingsLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteCommonSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,390:1\n298#2,2:391\n*S KotlinDebug\n*F\n+ 1 NoteCommonSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout\n*L\n303#1:391,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteCommonSettingsLayout extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public NoteCommonSettingListener listener;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public DockType dockType;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;", "", "onChangeTheme", "", "view", "Landroid/view/View;", "onMoreSettings", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface NoteCommonSettingListener {
        void onChangeTheme(@NotNull View view);

        void onMoreSettings();
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteCommonSettingsLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: A */
    public static final void m49928A(NoteCommonSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setPageScrollerGravity(GravityCompat.START);
    }

    /* renamed from: B */
    public static final void m49929B(NoteCommonSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setPageScrollerGravity(8388613);
    }

    /* renamed from: D */
    public static final void m49930D(NoteCommonSettingsLayout this$0, DockType targetDockType, View view) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(targetDockType, "$targetDockType");
        this$0.m49975r(targetDockType);
        this$0.m49961O(targetDockType);
        int i = WhenMappings.$EnumSwitchMapping$0[targetDockType.ordinal()];
        if (i == 1) {
            str = OnyxStatisticConstant.ID_CLICK_DOCSSETTING_TOOLBARPOSITION_LEFT;
        } else if (i == 2) {
            str = OnyxStatisticConstant.ID_CLICK_DOCSSETTING_TOOLBARPOSITION_TOP;
        } else if (i == 3) {
            str = OnyxStatisticConstant.ID_CLICK_DOCSSETTING_TOOLBARPOSITION_RIGHT;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            str = OnyxStatisticConstant.ID_CLICK_DOCSSETTING_TOOLBARPOSITION_BOTTOM;
        }
        m49931G(this$0, str, null, 2, null);
    }

    /* renamed from: G */
    public static /* synthetic */ void m49931G(NoteCommonSettingsLayout noteCommonSettingsLayout, String str, Boolean bool, int i, Object obj) {
        if ((i & 2) != 0) {
            bool = null;
        }
        noteCommonSettingsLayout.m49955F(str, bool);
    }

    /* renamed from: M */
    public static final void m49932M(NoteCommonSettingsLayout this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49970m(z);
    }

    /* renamed from: N */
    public static final void m49933N(NoteCommonSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49956H();
    }

    /* renamed from: T */
    public static final void m49934T(NoteCommonSettingsLayout this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49971n(z);
        m49931G(this$0, OnyxStatisticConstant.ID_VIEW_DOCSSETTING_SCROLLING, null, 2, null);
        this$0.m49955F(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_SCROLLING, Boolean.valueOf(z));
    }

    /* renamed from: X */
    public static final void m49935X(NoteCommonSettingsLayout this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49973p(z ? GlobalDocSettings.PageColumn.DOUBLE : GlobalDocSettings.PageColumn.SINGLE);
        this$0.m49955F(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_TWOPAGEVIEW, Boolean.valueOf(z));
    }

    private final LayoutNoteCommonSettingsBinding getBinding() {
        return (LayoutNoteCommonSettingsBinding) this.binding.getValue();
    }

    private final void setPageScrollerGravity(int gravity) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        boolean z = DocOptionsActionsKt.getLayoutType(editorBundle) == 0;
        if (gravity == 48 || gravity == 80 || gravity == 8388611 || gravity == 8388613) {
            m49974q(gravity, z);
        }
        m49957I();
        boolean z2 = gravity == 8388611;
        getBinding().pageNumberPanelDirectionStart.setSelected(z2);
        getBinding().pageNumberPanelDirectionEnd.setSelected(!z2);
    }

    /* renamed from: t */
    public static final void m49948t(NoteCommonSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteCommonSettingListener noteCommonSettingListener = this$0.listener;
        if (noteCommonSettingListener != null) {
            Intrinsics.checkNotNull(view);
            noteCommonSettingListener.onChangeTheme(view);
        }
    }

    /* renamed from: u */
    public static final void m49949u(NoteCommonSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteCommonSettingListener noteCommonSettingListener = this$0.listener;
        if (noteCommonSettingListener != null) {
            noteCommonSettingListener.onMoreSettings();
        }
    }

    /* renamed from: v */
    public static final void m49950v(NoteCommonSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49958J();
    }

    /* renamed from: x */
    public static final void m49951x(final NoteCommonSettingsLayout this$0, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49972o(i);
        this$0.m49962P(i);
        m49931G(this$0, i == 0 ? OnyxStatisticConstant.ID_CLICK_DOCSSETTING_PAGETURNDIRECTION_HORIZONTAL : OnyxStatisticConstant.ID_CLICK_DOCSSETTING_PAGETURNDIRECTION_VERTICAL, null, 2, null);
        this$0.getBinding().getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.zuj
            @Override // java.lang.Runnable
            public final void run() {
                NoteCommonSettingsLayout.m49952y(NoteCommonSettingsLayout.this);
            }
        }, 200L);
    }

    /* renamed from: y */
    public static final void m49952y(NoteCommonSettingsLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49964R();
        this$0.m49957I();
    }

    /* renamed from: C */
    public final void m49953C(View view, DockType currentDockType, final DockType targetDockType) {
        view.setSelected(currentDockType == targetDockType);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ruj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NoteCommonSettingsLayout.m49930D(NoteCommonSettingsLayout.this, targetDockType, view2);
            }
        });
    }

    /* renamed from: E */
    public final void m49954E(Object event) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, event);
    }

    /* renamed from: F */
    public final void m49955F(String eventId, Boolean r4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        if (r4 != null) {
            boolean booleanValue = r4.booleanValue();
            linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_PAGE_MOVE_SWITCH, Integer.valueOf(booleanValue ? 1 : 0));
            linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_PAGE_MOVE_STATE, Integer.valueOf(booleanValue ? 1 : 0));
        }
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: H */
    public final void m49956H() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        DockType dockType = DockType.TOP;
        String string = ResManager.INSTANCE.getString(C10651R.string.adapt_pen_stroke_width_tip);
        TintImageView ivAdaptStrokeWidthGuide = getBinding().ivAdaptStrokeWidthGuide;
        Intrinsics.checkNotNullExpressionValue(ivAdaptStrokeWidthGuide, "ivAdaptStrokeWidthGuide");
        TipsPopup tipsPopup = new TipsPopup(new TipsPopup.TipContext(context, dockType, string, ivAdaptStrokeWidthGuide, null, 0, 48, null));
        TintImageView ivAdaptStrokeWidthGuide2 = getBinding().ivAdaptStrokeWidthGuide;
        Intrinsics.checkNotNullExpressionValue(ivAdaptStrokeWidthGuide2, "ivAdaptStrokeWidthGuide");
        tipsPopup.show(ivAdaptStrokeWidthGuide2);
    }

    /* renamed from: I */
    public final void m49957I() {
        DocCollectionBundle.INSTANCE.postEvent(new ChangeScrollerConfigEvent(Boolean.TRUE, Integer.valueOf(this.dockType == DockType.LEFT ? ResManager.INSTANCE.getDimens(C10651R.dimen.drag_tool_width) : 0), null, null, null, 28, null));
    }

    /* renamed from: J */
    public final void m49958J() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        SwitchNoteSettingsPopup switchNoteSettingsPopup = new SwitchNoteSettingsPopup(context, DocOptionsActionsKt.isEnabledDocConfig(editorBundle), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout$showSwitchNoteSettingsPopup$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NoteCommonSettingsLayout.this.m49959K();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        });
        TintTextView tvCommonSettingsTitle = getBinding().tvCommonSettingsTitle;
        Intrinsics.checkNotNullExpressionValue(tvCommonSettingsTitle, "tvCommonSettingsTitle");
        switchNoteSettingsPopup.show(tvCommonSettingsTitle);
    }

    /* renamed from: K */
    public final void m49959K() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        DocOptionsActionsKt.toggleDocFetchPolicy(editorBundle);
        DocCollectionBundle.INSTANCE.postEvent(new ReloadBoxManagerWithSettingsEvent());
        m49969Y();
    }

    /* renamed from: L */
    public final void m49960L() {
        TintSwitchCompat tintSwitchCompat = getBinding().adaptStrokeWidth;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        tintSwitchCompat.setChecked(DocOptionsActionsKt.isEnabledAdaptiveStrokeWidth(editorBundle));
        getBinding().adaptStrokeWidth.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.avj
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NoteCommonSettingsLayout.m49932M(NoteCommonSettingsLayout.this, compoundButton, z);
            }
        });
        TintImageView ivAdaptStrokeWidthGuide = getBinding().ivAdaptStrokeWidthGuide;
        Intrinsics.checkNotNullExpressionValue(ivAdaptStrokeWidthGuide, "ivAdaptStrokeWidthGuide");
        ViewKt.click$default(ivAdaptStrokeWidthGuide, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.quj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteCommonSettingsLayout.m49933N(NoteCommonSettingsLayout.this, view);
            }
        }, 1, null);
    }

    /* renamed from: O */
    public final void m49961O(DockType newDockType) {
        this.dockType = newDockType;
        getBinding().toolbarBottom.setSelected(newDockType == DockType.BOTTOM);
        getBinding().toolbarTop.setSelected(newDockType == DockType.TOP);
        getBinding().toolbarLeft.setSelected(newDockType == DockType.LEFT);
        getBinding().toolbarRight.setSelected(newDockType == DockType.RIGHT);
    }

    /* renamed from: P */
    public final void m49962P(int layoutType) {
        getBinding().layoutTypeHorizontal.setSelected(layoutType == 0);
        getBinding().layoutTypeVertical.setSelected(layoutType == 1);
    }

    /* renamed from: Q */
    public final void m49963Q() {
        TintImageView layoutTypeHorizontal = getBinding().layoutTypeHorizontal;
        Intrinsics.checkNotNullExpressionValue(layoutTypeHorizontal, "layoutTypeHorizontal");
        m49977w(layoutTypeHorizontal, 0);
        TintImageView layoutTypeVertical = getBinding().layoutTypeVertical;
        Intrinsics.checkNotNullExpressionValue(layoutTypeVertical, "layoutTypeVertical");
        m49977w(layoutTypeVertical, 1);
    }

    /* renamed from: R */
    public final void m49964R() {
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        int scrollerGravity = DocOptionsActionsKt.getScrollerGravity(editorBundle);
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle3 = null;
        }
        boolean isVerticalLayoutType = DocOptionsActionsKt.isVerticalLayoutType(editorBundle3);
        getBinding().pageNumberPanelDirectionStart.setEnabled(isVerticalLayoutType);
        getBinding().pageNumberPanelDirectionEnd.setEnabled(isVerticalLayoutType);
        getBinding().pageNumberPanelDirectionStart.setSelected(false);
        getBinding().pageNumberPanelDirectionEnd.setSelected(false);
        if (!isVerticalLayoutType) {
            m49974q(48, false);
            getBinding().pageNumberPanelDirection.setAlpha(0.5f);
            return;
        }
        if (scrollerGravity != 8388611 && scrollerGravity != 8388613) {
            EditorBundle editorBundle4 = this.editorBundle;
            if (editorBundle4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle2 = editorBundle4;
            }
            int scrollerGravity2 = DocOptionsActionsKt.getScrollerGravity(editorBundle2, 0);
            if (scrollerGravity2 == 8388611) {
                getBinding().pageNumberPanelDirectionStart.setSelected(true);
            } else if (scrollerGravity2 == 8388613) {
                getBinding().pageNumberPanelDirectionEnd.setSelected(true);
            }
            m49974q(scrollerGravity2, false);
        } else if (scrollerGravity == 8388611) {
            getBinding().pageNumberPanelDirectionStart.setSelected(true);
        } else if (scrollerGravity == 8388613) {
            getBinding().pageNumberPanelDirectionEnd.setSelected(true);
        }
        getBinding().pageNumberPanelDirection.setAlpha(1.0f);
    }

    /* renamed from: S */
    public final void m49965S() {
        TintSwitchCompat tintSwitchCompat = getBinding().singlePaging;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        tintSwitchCompat.setChecked(DocOptionsActionsKt.isEnabledContinuousPage(editorBundle));
        getBinding().singlePaging.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.vuj
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NoteCommonSettingsLayout.m49934T(NoteCommonSettingsLayout.this, compoundButton, z);
            }
        });
    }

    /* renamed from: U */
    public final void m49966U() {
        String string;
        String string2;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (DocOptionsActionsKt.isEnabledDocConfig(editorBundle)) {
            ResManager resManager = ResManager.INSTANCE;
            string = resManager.getString(C10651R.string.doc_local_settings);
            string2 = resManager.getString(C10651R.string.apply_for_this_doc);
        } else {
            ResManager resManager2 = ResManager.INSTANCE;
            string = resManager2.getString(C10651R.string.common_settings);
            string2 = resManager2.getString(C10651R.string.apply_for_all_doc);
        }
        getBinding().tvCommonSettingsTitle.setText(string);
        getBinding().tvCommonSettingsSubTitle.setText(string2);
    }

    /* renamed from: V */
    public final void m49967V() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        boolean isEnabledDocConfig = DocOptionsActionsKt.isEnabledDocConfig(editorBundle);
        View root = getBinding().getRoot();
        Intrinsics.checkNotNull(root, "null cannot be cast to non-null type android.view.ViewGroup");
        TransitionManager.beginDelayedTransition((ViewGroup) root, new ChangeScroll());
        ConstraintLayout toolbar = getBinding().toolbar;
        Intrinsics.checkNotNullExpressionValue(toolbar, "toolbar");
        toolbar.setVisibility(isEnabledDocConfig ? 8 : 0);
    }

    /* renamed from: W */
    public final void m49968W() {
        TintSwitchCompat tintSwitchCompat = getBinding().twoPageBrowsing;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        tintSwitchCompat.setChecked(DocOptionsActionsKt.isEnabledPageMultiColumn(editorBundle));
        getBinding().twoPageBrowsing.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.puj
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NoteCommonSettingsLayout.m49935X(NoteCommonSettingsLayout.this, compoundButton, z);
            }
        });
    }

    /* renamed from: Y */
    public final void m49969Y() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        boolean supportMultiPage = EditorBundleKt.getUiFeature(editorBundle).supportMultiPage();
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().pageOrientation, supportMultiPage);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().pageNumberPanelDirection, supportMultiPage);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().itemSinglePaging, supportMultiPage);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().itemTwoPageBrowsing, supportMultiPage);
        m49963Q();
        m49964R();
        m49965S();
        m49968W();
        m49960L();
        m49966U();
        m49967V();
    }

    /* renamed from: m */
    public final void m49970m(boolean enable) {
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (!DocOptionsActionsKt.isEnabledDocConfig(editorBundle)) {
            GlobalDocSettings.INSTANCE.setEnabledAdaptiveStrokeWidth(enable);
            DocCollectionBundle.INSTANCE.postEvent(new ReloadBoxManagerWithSettingsEvent());
            return;
        }
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        EditorBundleKt.postEvent(editorBundle2, new EnableAdaptiveStrokeWidthEvent(enable));
    }

    /* renamed from: n */
    public final void m49971n(boolean enable) {
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (!DocOptionsActionsKt.isEnabledDocConfig(editorBundle)) {
            GlobalDocSettings.INSTANCE.setEnabledContinuousPage(enable);
            DocCollectionBundle.INSTANCE.postEvent(new ReloadBoxManagerWithSettingsEvent());
            return;
        }
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        EditorBundleKt.postEvent(editorBundle2, new EnableContinuousPageEvent(enable));
    }

    /* renamed from: o */
    public final void m49972o(int layoutType) {
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (!DocOptionsActionsKt.isEnabledDocConfig(editorBundle)) {
            GlobalDocSettings.INSTANCE.setLayoutType(layoutType);
            DocCollectionBundle.INSTANCE.postEvent(new ReloadBoxManagerWithSettingsEvent());
            return;
        }
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        EditorBundleKt.postEvent(editorBundle2, new ChangeLayoutTypeEvent(layoutType));
    }

    /* renamed from: p */
    public final void m49973p(GlobalDocSettings.PageColumn pageColumn) {
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (!DocOptionsActionsKt.isEnabledDocConfig(editorBundle)) {
            GlobalDocSettings.INSTANCE.setPageColumnCount(pageColumn.getCount());
            DocCollectionBundle.INSTANCE.postEvent(new ReloadBoxManagerWithSettingsEvent());
            return;
        }
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        EditorBundleKt.postEvent(editorBundle2, new ChangePageColumnCountEvent(pageColumn.getCount()));
    }

    /* renamed from: q */
    public final void m49974q(int gravity, boolean isHorizontal) {
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        if (!DocOptionsActionsKt.isEnabledDocConfig(editorBundle)) {
            GlobalDocSettings.INSTANCE.setGlobalDocScrollerGravity(gravity, isHorizontal);
            return;
        }
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        EditorBundleKt.postEvent(editorBundle2, new ChangeScrollerGravityEvent(gravity, isHorizontal));
    }

    /* renamed from: r */
    public final void m49975r(DockType dockType) {
        m49954E(new ChangeDockTypeEvent(dockType));
        m49961O(dockType);
    }

    /* renamed from: s */
    public final void m49976s() {
        DockType ensureDockType = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().ensureDockType();
        TintImageView toolbarBottom = getBinding().toolbarBottom;
        Intrinsics.checkNotNullExpressionValue(toolbarBottom, "toolbarBottom");
        m49953C(toolbarBottom, ensureDockType, DockType.BOTTOM);
        TintImageView toolbarTop = getBinding().toolbarTop;
        Intrinsics.checkNotNullExpressionValue(toolbarTop, "toolbarTop");
        m49953C(toolbarTop, ensureDockType, DockType.TOP);
        TintImageView toolbarLeft = getBinding().toolbarLeft;
        Intrinsics.checkNotNullExpressionValue(toolbarLeft, "toolbarLeft");
        m49953C(toolbarLeft, ensureDockType, DockType.LEFT);
        TintImageView toolbarRight = getBinding().toolbarRight;
        Intrinsics.checkNotNullExpressionValue(toolbarRight, "toolbarRight");
        m49953C(toolbarRight, ensureDockType, DockType.RIGHT);
        m49978z();
        TintFrameLayout changeTheme = getBinding().changeTheme;
        Intrinsics.checkNotNullExpressionValue(changeTheme, "changeTheme");
        ViewKt.click$default(changeTheme, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.suj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteCommonSettingsLayout.m49948t(NoteCommonSettingsLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout moreSettings = getBinding().moreSettings;
        Intrinsics.checkNotNullExpressionValue(moreSettings, "moreSettings");
        ViewKt.click$default(moreSettings, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tuj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteCommonSettingsLayout.m49949u(NoteCommonSettingsLayout.this, view);
            }
        }, 1, null);
        TintTextView tvCommonSettingsTitle = getBinding().tvCommonSettingsTitle;
        Intrinsics.checkNotNullExpressionValue(tvCommonSettingsTitle, "tvCommonSettingsTitle");
        ViewKt.click$default(tvCommonSettingsTitle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uuj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteCommonSettingsLayout.m49950v(NoteCommonSettingsLayout.this, view);
            }
        }, 1, null);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        m49969Y();
    }

    public final void setListener(@Nullable NoteCommonSettingListener listener) {
        this.listener = listener;
    }

    /* renamed from: w */
    public final void m49977w(View view, final int layoutType) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        view.setSelected(DocOptionsActionsKt.getLayoutType(editorBundle) == layoutType);
        ViewKt.click$default(view, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yuj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NoteCommonSettingsLayout.m49951x(NoteCommonSettingsLayout.this, layoutType, view2);
            }
        }, 1, null);
    }

    /* renamed from: z */
    public final void m49978z() {
        getBinding().pageNumberPanelDirectionStart.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wuj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteCommonSettingsLayout.m49928A(NoteCommonSettingsLayout.this, view);
            }
        });
        getBinding().pageNumberPanelDirectionEnd.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xuj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteCommonSettingsLayout.m49929B(NoteCommonSettingsLayout.this, view);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteCommonSettingsLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NoteCommonSettingsLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteCommonSettingsLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutNoteCommonSettingsBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutNoteCommonSettingsBinding invoke() {
                return LayoutNoteCommonSettingsBinding.inflate(LayoutInflater.from(NoteCommonSettingsLayout.this.getContext()), NoteCommonSettingsLayout.this, true);
            }
        });
        this.binding = lazy;
        m49976s();
    }

    public /* synthetic */ NoteCommonSettingsLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

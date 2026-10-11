package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.event.StatisticsAppThemeEvent;
import com.onyx.android.sdk.extension.ActivityExtKt;
import com.onyx.android.sdk.theme.SkinBean;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupThemeBinding;
import com.onyx.galaxy.note.editor.view.adapter.ThemeAdapter;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.member.action.OpenMemberChargeAction;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.ThemeExt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010\u0016\u001a\u00020\u0010¢\u0006\u0004\b+\u0010,J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u001c\u0010\f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\"\u0010\u0016\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "dismiss", "m", "Lcom/onyx/android/sdk/theme/SkinBean;", "themeBean", "q", "l", "", "eventId", "styleName", C4921e.f26528e, "skinBean", C4921e.f26537n, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;", "r", "Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;)V", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;", "s", "Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;", "getAdapter", "()Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;", "setAdapter", "(Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;)V", "adapter", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ThemePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public PopupThemeBinding binding;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public ThemeAdapter adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThemePopup(@NotNull Context context, @NotNull DockType dockType, @NotNull EditorBundle editorBundle) {
        super(context, dockType);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        PopupThemeBinding inflate = PopupThemeBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        this.adapter = new ThemeAdapter();
        m49685m();
        m49682p(this, OnyxStatisticConstant.ID_VIEW_DOCSSETTING_CHANGETHEME_POPUP, null, 2, null);
    }

    /* renamed from: p */
    public static /* synthetic */ void m49682p(ThemePopup themePopup, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        themePopup.m49687o(str, str2);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        m49682p(this, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CHANGETHEME_CANCEL, null, 2, null);
    }

    @NotNull
    public final ThemeAdapter getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final PopupThemeBinding getBinding() {
        return this.binding;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: k */
    public final void m49683k(SkinBean skinBean) {
        if (skinBean.getThemeStyle().isVipStyle()) {
            if (AccountDataBundle.INSTANCE.isVIPPermanent()) {
                m49688q(skinBean);
            } else {
                m49686n(skinBean);
            }
        }
    }

    /* renamed from: l */
    public final void m49684l() {
        DisplayActionsKt.display$default(this.editorBundle, false, 1, null).subscribe();
    }

    /* renamed from: m */
    public final void m49685m() {
        this.binding.rlThemeList.setLayoutManager(new GridLayoutManager(getContext(), ResManager.INSTANCE.getInteger(C10651R.integer.theme_popup_span_count)));
        this.binding.rlThemeList.setAdapter(this.adapter);
        this.adapter.setSelectTheme(ThemeUtils.getTheme().getThemeType());
        this.adapter.submitList(SkinType.Companion.getDisplayList$default(SkinType.INSTANCE, null, 1, null));
        this.adapter.setCallback(new Function1<SkinBean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.ThemePopup$initView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SkinBean skinBean) {
                invoke2(skinBean);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SkinBean skinBean) {
                Intrinsics.checkNotNullParameter(skinBean, "skinBean");
                if (skinBean.isFree()) {
                    ThemePopup.this.m49688q(skinBean);
                } else {
                    ThemePopup.this.m49683k(skinBean);
                }
            }
        });
    }

    /* renamed from: n */
    public final void m49686n(SkinBean themeBean) {
        FeatureChargeArgs featureChargeArgs = new FeatureChargeArgs();
        featureChargeArgs.setFunctionFrom(OnyxStatisticConstant.TRIGGER_NOTEEDITOR_OTHERSETTING_PROSTYLE + themeBean.getThemeType());
        RxBaseAction.execute$default(new OpenMemberChargeAction(featureChargeArgs).setActivityContext(getContext()), null, null, null, 7, null);
    }

    /* renamed from: o */
    public final void m49687o(String eventId, String styleName) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        if (styleName != null) {
            linkedHashMap.put(OnyxStatisticConstant.KEY_APP_STYLE_NAME, styleName);
        }
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: q */
    public final void m49688q(SkinBean themeBean) {
        this.adapter.setSelectTheme(themeBean.getThemeType());
        ThemeExt.INSTANCE.resetTheme(themeBean.getThemeType(), this.binding.getRoot());
        m49684l();
        GlobalBundle.INSTANCE.postEvent(new ThemeChangedEvent());
        ResManager resManager = ResManager.INSTANCE;
        m49687o(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CHANGETHEME_CONFIRM, resManager.getString(themeBean.getTitle()));
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        String string = resManager.getString(themeBean.getTitle());
        if (string == null) {
            string = "";
        }
        statisticsBundle.postEvent(new StatisticsAppThemeEvent(string));
        ActivityExtKt.updateFullScreenStyle(NoteConfigManager.INSTANCE.getStatusBarHideOption().get());
    }

    public final void setAdapter(@NotNull ThemeAdapter themeAdapter) {
        Intrinsics.checkNotNullParameter(themeAdapter, "<set-?>");
        this.adapter = themeAdapter;
    }

    public final void setBinding(@NotNull PopupThemeBinding popupThemeBinding) {
        Intrinsics.checkNotNullParameter(popupThemeBinding, "<set-?>");
        this.binding = popupThemeBinding;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}

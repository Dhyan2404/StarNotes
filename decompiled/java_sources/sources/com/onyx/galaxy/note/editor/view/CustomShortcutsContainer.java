package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.ViewKt;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.bean.ScreenDisplayType;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeature;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutCustomShortcutsViewBinding;
import com.onyx.galaxy.note.editor.data.ShortcutBarData;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.view.CustomShortcutsContainer;
import com.onyx.galaxy.note.editor.viewmodel.AudioViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u00107\u001a\u000206¢\u0006\u0004\b8\u00109B\u001b\b\u0016\u0012\u0006\u00107\u001a\u000206\u0012\b\u0010;\u001a\u0004\u0018\u00010:¢\u0006\u0004\b8\u0010<B#\b\u0016\u0012\u0006\u00107\u001a\u000206\u0012\b\u0010;\u001a\u0004\u0018\u00010:\u0012\u0006\u0010=\u001a\u00020\u0003¢\u0006\u0004\b8\u0010>J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\r\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eJ\u0012\u0010\u0013\u001a\u00020\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000eJ\u0006\u0010\u0016\u001a\u00020\tJ\b\u0010\u0017\u001a\u00020\tH\u0014J\b\u0010\u0018\u001a\u00020\tH\u0002J\b\u0010\u0019\u001a\u00020\tH\u0002J\b\u0010\u001a\u001a\u00020\tH\u0002J\u0016\u0010\u001e\u001a\u00020\t2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J\u0016\u0010 \u001a\u00020\t2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J&\u0010%\u001a\u00020\t2\u0006\u0010\"\u001a\u00020!2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00022\u0006\u0010$\u001a\u00020\u000eH\u0002J\u0014\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030&H\u0002J*\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010+\u001a\u00020\t2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J\u0010\u0010,\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010.\u001a\u00020\t2\u0006\u0010-\u001a\u00020\u001cH\u0002R\u0016\u00100\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010/R \u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001c0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00101R \u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u00101R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00104R\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u00105¨\u0006?"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;", "Landroid/widget/FrameLayout;", "", "", "getRemoveFunList", "Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;", "getViewBinding", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;", "audioViewModel", "bindAudioModule", "", "isPlayLayoutVisible", "updateShortcutViews", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchModeIcon", "enable", "shortcutsEnable", "updateEncryptionIcon", "onDetachedFromWindow", C6999h.f39688c, "r", C4921e.f26528e, "", "Landroid/view/View;", "leftSideViews", "m", "rightSideViews", GoogleApiAvailabilityLight.f29016b, "Landroid/widget/LinearLayout;", "shortcutContainer", "viewList", "isLeftSide", "e", "", C6997f.f39671c, "filterShortcutTypes", "removeList", C6998g.f39679a, "i", "l", "childView", "j", "Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;", "binding", "Ljava/util/Map;", "allViewsMap", "shortcutByViewIdTypeMap", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCustomShortcutsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomShortcutsContainer.kt\ncom/onyx/galaxy/note/editor/view/CustomShortcutsContainer\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1313#2,2:322\n1313#2,2:324\n1313#2:360\n1314#2:363\n1313#2:364\n1314#2:367\n1313#2:368\n1314#2:371\n1313#2:374\n1314#2:377\n1864#3,2:326\n1866#3:330\n1603#3,9:331\n1855#3:340\n1856#3:342\n1612#3:343\n766#3:344\n857#3,2:345\n1603#3,9:347\n1855#3:356\n1856#3:358\n1612#3:359\n1855#3,2:372\n256#4,2:328\n256#4,2:361\n256#4,2:365\n256#4,2:369\n256#4,2:375\n256#4,2:378\n256#4,2:380\n1#5:341\n1#5:357\n*S KotlinDebug\n*F\n+ 1 CustomShortcutsContainer.kt\ncom/onyx/galaxy/note/editor/view/CustomShortcutsContainer\n*L\n66#1:322,2\n70#1:324,2\n266#1:360\n266#1:363\n275#1:364\n275#1:367\n289#1:368\n289#1:371\n312#1:374\n312#1:377\n195#1:326,2\n195#1:330\n244#1:331,9\n244#1:340\n244#1:342\n244#1:343\n245#1:344\n245#1:345,2\n246#1:347,9\n246#1:356\n246#1:358\n246#1:359\n304#1:372,2\n197#1:328,2\n267#1:361,2\n276#1:365,2\n290#1:369,2\n313#1:375,2\n169#1:378,2\n173#1:380,2\n244#1:341\n246#1:357\n*E\n"})
/* loaded from: classes9.dex */
public final class CustomShortcutsContainer extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public LayoutCustomShortcutsViewBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, View> allViewsMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, Integer> shortcutByViewIdTypeMap;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public AudioViewModel audioViewModel;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomShortcutsContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final List<Integer> getRemoveFunList() {
        UIFeature uiFeature;
        ArrayList arrayList = new ArrayList();
        EditorBundle editorBundle = this.editorBundle;
        if ((editorBundle == null || (uiFeature = EditorBundleKt.getUiFeature(editorBundle)) == null || uiFeature.supportEditPage()) ? false : true) {
            arrayList.add(Integer.valueOf(C10651R.id.iv_add_page));
            arrayList.add(Integer.valueOf(C10651R.id.iv_adjust_page_whitespace));
        }
        AudioViewModel audioViewModel = this.audioViewModel;
        if ((audioViewModel == null || audioViewModel.hasRecordFile()) ? false : true) {
            arrayList.add(Integer.valueOf(C10651R.id.iv_audio_set));
        }
        if (!TouchModeFeatureManager.INSTANCE.getCurrentTouchModeFeature().supportEdit()) {
            arrayList.add(Integer.valueOf(C10651R.id.iv_touch_mode));
            arrayList.add(Integer.valueOf(C10651R.id.iv_screen_shot));
            arrayList.add(Integer.valueOf(C10651R.id.iv_camera));
            arrayList.add(Integer.valueOf(C10651R.id.iv_realtime_beautify));
        }
        return arrayList;
    }

    /* renamed from: k */
    public static final void m47148k(CustomShortcutsContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47162r();
    }

    /* renamed from: p */
    public static final void m47149p(CustomShortcutsContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this$0.binding;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = null;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        TintView leftSideDivider = layoutCustomShortcutsViewBinding.leftSideDivider;
        Intrinsics.checkNotNullExpressionValue(leftSideDivider, "leftSideDivider");
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding3 = this$0.binding;
        if (layoutCustomShortcutsViewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding3 = null;
        }
        int measuredWidth = layoutCustomShortcutsViewBinding3.leftScrollView.getMeasuredWidth();
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding4 = this$0.binding;
        if (layoutCustomShortcutsViewBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutCustomShortcutsViewBinding2 = layoutCustomShortcutsViewBinding4;
        }
        leftSideDivider.setVisibility(measuredWidth < layoutCustomShortcutsViewBinding2.leftShortcutContainer.getMeasuredWidth() ? 0 : 8);
    }

    /* renamed from: q */
    public static final void m47150q(CustomShortcutsContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this$0.binding;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = null;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        TintView rightSideDivider = layoutCustomShortcutsViewBinding.rightSideDivider;
        Intrinsics.checkNotNullExpressionValue(rightSideDivider, "rightSideDivider");
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding3 = this$0.binding;
        if (layoutCustomShortcutsViewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding3 = null;
        }
        int measuredWidth = layoutCustomShortcutsViewBinding3.rightScrollView.getMeasuredWidth();
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding4 = this$0.binding;
        if (layoutCustomShortcutsViewBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutCustomShortcutsViewBinding2 = layoutCustomShortcutsViewBinding4;
        }
        rightSideDivider.setVisibility(measuredWidth < layoutCustomShortcutsViewBinding2.rightShortcutContainer.getMeasuredWidth() ? 0 : 8);
    }

    /* renamed from: s */
    public static final void m47151s(CustomShortcutsContainer this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this$0.binding;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        layoutCustomShortcutsViewBinding.leftShortcutContainer.removeAllViews();
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = this$0.binding;
        if (layoutCustomShortcutsViewBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding2 = null;
        }
        layoutCustomShortcutsViewBinding2.rightShortcutContainer.removeAllViews();
        List<Integer> removeFunList = this$0.getRemoveFunList();
        ShortcutBarData shortcutBarData = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData();
        List<View> m47154g = this$0.m47154g(shortcutBarData.getLeftSideList(), removeFunList);
        this$0.m47160n(this$0.m47154g(shortcutBarData.getRightSideList(), removeFunList));
        this$0.m47159m(m47154g);
        this$0.m47158l(z);
        updateTouchModeIcon$default(this$0, null, 1, null);
        this$0.m47156i(m47154g);
        this$0.m47162r();
    }

    public static /* synthetic */ void updateTouchModeIcon$default(CustomShortcutsContainer customShortcutsContainer, EditorTouchMode editorTouchMode, int i, Object obj) {
        if ((i & 1) != 0) {
            editorTouchMode = null;
        }
        customShortcutsContainer.updateTouchModeIcon(editorTouchMode);
    }

    public final void bindAudioModule(@Nullable AudioViewModel audioViewModel) {
        this.audioViewModel = audioViewModel;
    }

    /* renamed from: e */
    public final void m47152e(LinearLayout shortcutContainer, List<? extends View> viewList, boolean isLeftSide) {
        int dimension = (int) (DeviceFactory.INSTANCE.getScreenDevice().getScreenInfo().getScreenDisplayType() == ScreenDisplayType.PHONE ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_32) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_40));
        int dimension2 = (int) ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12);
        int i = 0;
        for (Object obj : viewList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            View view = (View) obj;
            shortcutContainer.addView(view);
            view.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(0);
            if (isLeftSide && i != 0) {
                marginLayoutParams.setMarginStart(dimension2);
            }
            if (!isLeftSide && i != viewList.size() - 1) {
                marginLayoutParams.setMarginEnd(dimension2);
            }
            if (view.getId() != C10651R.id.record_layout) {
                marginLayoutParams.width = dimension;
                marginLayoutParams.height = dimension;
            }
            view.setLayoutParams(marginLayoutParams);
            i = i2;
        }
        shortcutContainer.requestLayout();
    }

    /* renamed from: f */
    public final Map<Integer, Integer> m47153f() {
        Map<Integer, Integer> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_CAMERA.getShortcutType()), Integer.valueOf(C10651R.id.iv_camera)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_SCREEN_SHOT.getShortcutType()), Integer.valueOf(C10651R.id.iv_screen_shot)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_AUDIO.getShortcutType()), Integer.valueOf(C10651R.id.record_layout)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_AUDIO_SET.getShortcutType()), Integer.valueOf(C10651R.id.iv_audio_set)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_OTHER_SETTINGS.getShortcutType()), Integer.valueOf(C10651R.id.iv_title_more)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_DOC_OVERVIEW.getShortcutType()), Integer.valueOf(C10651R.id.iv_slide)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_ADD_PAGE.getShortcutType()), Integer.valueOf(C10651R.id.iv_add_page)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_LAYER.getShortcutType()), Integer.valueOf(C10651R.id.iv_title_layer)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_WRITING_MODE.getShortcutType()), Integer.valueOf(C10651R.id.iv_touch_mode)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT.getShortcutType()), Integer.valueOf(C10651R.id.iv_adjust_page_whitespace)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_DOC_OVERVIEW_FULL.getShortcutType()), Integer.valueOf(C10651R.id.iv_doc_overview_full)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_EXPORT_DOC.getShortcutType()), Integer.valueOf(C10651R.id.iv_export_doc)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_COUNTER.getShortcutType()), Integer.valueOf(C10651R.id.iv_counter)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_READING_MODE.getShortcutType()), Integer.valueOf(C10651R.id.iv_reading_mode)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_ENCRYPTION.getShortcutType()), Integer.valueOf(C10651R.id.iv_encryption)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_NOTE_OVERVIEW.getShortcutType()), Integer.valueOf(C10651R.id.iv_note_overview)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_NOTE_MODE.getShortcutType()), Integer.valueOf(C10651R.id.iv_note_mode)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_FULL_SCREEN.getShortcutType()), Integer.valueOf(C10651R.id.iv_full_screen)), TuplesKt.m61535to(Integer.valueOf(ShortcutType.SHORTCUT_REALTIME_BEAUTIFY.getShortcutType()), Integer.valueOf(C10651R.id.iv_realtime_beautify)));
        return mutableMapOf;
    }

    /* renamed from: g */
    public final List<View> m47154g(List<Integer> filterShortcutTypes, List<Integer> removeList) {
        List<View> mutableList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = filterShortcutTypes.iterator();
        while (it2.hasNext()) {
            Integer num = this.shortcutByViewIdTypeMap.get(Integer.valueOf(((Number) it2.next()).intValue()));
            if (num != null) {
                arrayList.add(num);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!removeList.contains(Integer.valueOf(((Number) obj).intValue()))) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            View view = this.allViewsMap.get(Integer.valueOf(((Number) it3.next()).intValue()));
            if (view != null) {
                arrayList3.add(view);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
        return mutableList;
    }

    @NotNull
    public final LayoutCustomShortcutsViewBinding getViewBinding() {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        if (layoutCustomShortcutsViewBinding != null) {
            return layoutCustomShortcutsViewBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    /* renamed from: h */
    public final void m47155h() {
        LayoutCustomShortcutsViewBinding inflate = LayoutCustomShortcutsViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        LinearLayout leftShortcutContainer = inflate.leftShortcutContainer;
        Intrinsics.checkNotNullExpressionValue(leftShortcutContainer, "leftShortcutContainer");
        for (View view : ViewKt.getAllViews(leftShortcutContainer)) {
            this.allViewsMap.put(Integer.valueOf(view.getId()), view);
        }
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = this.binding;
        if (layoutCustomShortcutsViewBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutCustomShortcutsViewBinding = layoutCustomShortcutsViewBinding2;
        }
        LinearLayout rightShortcutContainer = layoutCustomShortcutsViewBinding.rightShortcutContainer;
        Intrinsics.checkNotNullExpressionValue(rightShortcutContainer, "rightShortcutContainer");
        for (View view2 : ViewKt.getAllViews(rightShortcutContainer)) {
            this.allViewsMap.put(Integer.valueOf(view2.getId()), view2);
        }
    }

    /* renamed from: i */
    public final void m47156i(List<View> leftSideViews) {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = null;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        PalmCollectionImageView palmCollectionImageView = layoutCustomShortcutsViewBinding.ivSlide;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding3 = this.binding;
        if (layoutCustomShortcutsViewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutCustomShortcutsViewBinding2 = layoutCustomShortcutsViewBinding3;
        }
        palmCollectionImageView.setRotationY(leftSideViews.contains(layoutCustomShortcutsViewBinding2.ivSlide) ? 180.0f : 0.0f);
    }

    /* renamed from: j */
    public final void m47157j(View childView) {
        childView.post(new Runnable() { // from class: com.sunia.HTREnginev2.soe
            @Override // java.lang.Runnable
            public final void run() {
                CustomShortcutsContainer.m47148k(CustomShortcutsContainer.this);
            }
        });
    }

    /* renamed from: l */
    public final void m47158l(boolean isPlayLayoutVisible) {
        int i;
        MutableLiveData<Boolean> newRecordTip;
        if (isPlayLayoutVisible) {
            i = C10651R.id.iv_audio_set_preview;
        } else {
            AudioViewModel audioViewModel = this.audioViewModel;
            i = (audioViewModel == null || (newRecordTip = audioViewModel.getNewRecordTip()) == null) ? false : Intrinsics.areEqual(newRecordTip.getValue(), Boolean.TRUE) ? C10651R.id.iv_audio_set_new_record : C10651R.id.iv_audio_set_normal;
        }
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        TintFrameLayout ivAudioSet = layoutCustomShortcutsViewBinding.ivAudioSet;
        Intrinsics.checkNotNullExpressionValue(ivAudioSet, "ivAudioSet");
        for (View view : ViewGroupKt.getChildren(ivAudioSet)) {
            view.setVisibility(view.getId() == i ? 0 : 8);
            if (com.onyx.android.sdk.base.extension.ViewKt.isVisible(view)) {
                m47157j(view);
            }
        }
    }

    /* renamed from: m */
    public final void m47159m(List<View> leftSideViews) {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        LinearLayout leftShortcutContainer = layoutCustomShortcutsViewBinding.leftShortcutContainer;
        Intrinsics.checkNotNullExpressionValue(leftShortcutContainer, "leftShortcutContainer");
        m47152e(leftShortcutContainer, leftSideViews, true);
    }

    /* renamed from: n */
    public final void m47160n(List<View> rightSideViews) {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        LinearLayout rightShortcutContainer = layoutCustomShortcutsViewBinding.rightShortcutContainer;
        Intrinsics.checkNotNullExpressionValue(rightShortcutContainer, "rightShortcutContainer");
        m47152e(rightShortcutContainer, rightSideViews, false);
    }

    /* renamed from: o */
    public final void m47161o() {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = null;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        layoutCustomShortcutsViewBinding.leftScrollView.post(new Runnable() { // from class: com.sunia.HTREnginev2.toe
            @Override // java.lang.Runnable
            public final void run() {
                CustomShortcutsContainer.m47149p(CustomShortcutsContainer.this);
            }
        });
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding3 = this.binding;
        if (layoutCustomShortcutsViewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutCustomShortcutsViewBinding2 = layoutCustomShortcutsViewBinding3;
        }
        layoutCustomShortcutsViewBinding2.rightScrollView.post(new Runnable() { // from class: com.sunia.HTREnginev2.uoe
            @Override // java.lang.Runnable
            public final void run() {
                CustomShortcutsContainer.m47150q(CustomShortcutsContainer.this);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.allViewsMap.clear();
    }

    /* renamed from: r */
    public final void m47162r() {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = null;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        LinearLayout leftShortcutContainer = layoutCustomShortcutsViewBinding.leftShortcutContainer;
        Intrinsics.checkNotNullExpressionValue(leftShortcutContainer, "leftShortcutContainer");
        int width = com.onyx.android.sdk.base.extension.ViewKt.getMeasureSize$default(leftShortcutContainer, 0, 0, 3, null).getWidth();
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding3 = this.binding;
        if (layoutCustomShortcutsViewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding3 = null;
        }
        LinearLayout rightShortcutContainer = layoutCustomShortcutsViewBinding3.rightShortcutContainer;
        Intrinsics.checkNotNullExpressionValue(rightShortcutContainer, "rightShortcutContainer");
        int width2 = com.onyx.android.sdk.base.extension.ViewKt.getMeasureSize$default(rightShortcutContainer, 0, 0, 3, null).getWidth();
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding4 = this.binding;
        if (layoutCustomShortcutsViewBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding4 = null;
        }
        ViewGroup.LayoutParams layoutParams = layoutCustomShortcutsViewBinding4.leftScrollView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding5 = this.binding;
        if (layoutCustomShortcutsViewBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding5 = null;
        }
        ViewGroup.LayoutParams layoutParams2 = layoutCustomShortcutsViewBinding5.rightScrollView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        ScreenDisplayType screenDisplayType = DeviceFactory.INSTANCE.getScreenDevice().getScreenInfo().getScreenDisplayType();
        ScreenDisplayType screenDisplayType2 = ScreenDisplayType.PHONE;
        int dimension = (int) (screenDisplayType == screenDisplayType2 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_40) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_32));
        int dimension2 = (int) (screenDisplayType == screenDisplayType2 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_32) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_40));
        int i = -2;
        if (width + width2 + dimension < getMeasuredWidth() || getMeasuredWidth() < (ResManager.INSTANCE.getInteger(C10651R.integer.twice) * dimension2) + dimension) {
            layoutParams.width = -2;
            layoutParams2.width = -2;
            LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding6 = this.binding;
            if (layoutCustomShortcutsViewBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutCustomShortcutsViewBinding6 = null;
            }
            layoutCustomShortcutsViewBinding6.rightScrollView.setLayoutParams(layoutParams2);
            LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding7 = this.binding;
            if (layoutCustomShortcutsViewBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutCustomShortcutsViewBinding2 = layoutCustomShortcutsViewBinding7;
            }
            layoutCustomShortcutsViewBinding2.leftScrollView.setLayoutParams(layoutParams);
            m47161o();
            return;
        }
        boolean z = width > width2;
        int measuredWidth = z ? (getMeasuredWidth() - width2) - dimension : (getMeasuredWidth() - width) - dimension;
        if (measuredWidth < dimension2) {
            i = (getMeasuredWidth() - dimension2) - dimension;
        } else {
            dimension2 = measuredWidth;
        }
        if (z) {
            layoutParams.width = dimension2;
            layoutParams2.width = i;
        } else {
            layoutParams.width = i;
            layoutParams2.width = dimension2;
        }
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding8 = this.binding;
        if (layoutCustomShortcutsViewBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding8 = null;
        }
        layoutCustomShortcutsViewBinding8.rightScrollView.setLayoutParams(layoutParams2);
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding9 = this.binding;
        if (layoutCustomShortcutsViewBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutCustomShortcutsViewBinding2 = layoutCustomShortcutsViewBinding9;
        }
        layoutCustomShortcutsViewBinding2.leftScrollView.setLayoutParams(layoutParams);
        m47161o();
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void shortcutsEnable(boolean enable) {
        Iterator<T> it2 = this.allViewsMap.values().iterator();
        while (it2.hasNext()) {
            com.onyx.android.sdk.base.extension.ViewKt.enableAll((View) it2.next(), enable);
        }
    }

    public final void updateEncryptionIcon() {
        NoteBundle noteBundle;
        NoteDocument noteDoc;
        SyncNoteModel noteModel;
        EditorBundle editorBundle = this.editorBundle;
        int i = (editorBundle == null || (noteBundle = EditorBundleKt.noteBundle(editorBundle)) == null || (noteDoc = noteBundle.getNoteDoc()) == null || (noteModel = noteDoc.getNoteModel()) == null) ? false : noteModel.hasEncryption() ? C10651R.id.iv_encryption_unlock : C10651R.id.iv_encryption_lock;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        PalmCollectionFrameLayout ivEncryption = layoutCustomShortcutsViewBinding.ivEncryption;
        Intrinsics.checkNotNullExpressionValue(ivEncryption, "ivEncryption");
        for (View view : ViewGroupKt.getChildren(ivEncryption)) {
            view.setVisibility(view.getId() == i ? 0 : 8);
        }
    }

    public final void updateShortcutViews(final boolean isPlayLayoutVisible) {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.binding;
        if (layoutCustomShortcutsViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutCustomShortcutsViewBinding = null;
        }
        layoutCustomShortcutsViewBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.roe
            @Override // java.lang.Runnable
            public final void run() {
                CustomShortcutsContainer.m47151s(CustomShortcutsContainer.this, isPlayLayoutVisible);
            }
        });
    }

    public final void updateTouchModeIcon(@Nullable EditorTouchMode touchMode) {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = null;
        if (touchMode == null) {
            touchMode = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null);
        }
        TouchModeFeature touchModeFeature = TouchModeFeatureManager.INSTANCE.getTouchModeFeature(touchMode);
        boolean supportEdit = touchModeFeature.supportEdit();
        if (supportEdit) {
            int i = touchModeFeature.supportFingerEdit() ? C10651R.id.iv_touch_mode_finger : C10651R.id.iv_touch_mode_stylus;
            LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding2 = this.binding;
            if (layoutCustomShortcutsViewBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutCustomShortcutsViewBinding2 = null;
            }
            PalmCollectionFrameLayout ivTouchMode = layoutCustomShortcutsViewBinding2.ivTouchMode;
            Intrinsics.checkNotNullExpressionValue(ivTouchMode, "ivTouchMode");
            for (View view : ViewGroupKt.getChildren(ivTouchMode)) {
                view.setVisibility(view.getId() == i ? 0 : 8);
            }
        }
        int i2 = supportEdit ? C10651R.id.iv_reading_mode_note : C10651R.id.iv_reading_mode_reading;
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding3 = this.binding;
        if (layoutCustomShortcutsViewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutCustomShortcutsViewBinding = layoutCustomShortcutsViewBinding3;
        }
        PalmCollectionFrameLayout ivReadingMode = layoutCustomShortcutsViewBinding.ivReadingMode;
        Intrinsics.checkNotNullExpressionValue(ivReadingMode, "ivReadingMode");
        for (View view2 : ViewGroupKt.getChildren(ivReadingMode)) {
            view2.setVisibility(view2.getId() == i2 ? 0 : 8);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomShortcutsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomShortcutsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.allViewsMap = new LinkedHashMap();
        this.shortcutByViewIdTypeMap = m47153f();
        m47155h();
    }
}

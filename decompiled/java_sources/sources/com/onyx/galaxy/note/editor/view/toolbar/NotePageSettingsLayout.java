package com.onyx.galaxy.note.editor.view.toolbar;

import android.app.Dialog;
import android.content.Context;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.NoteOutlineAddFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.PageInkCreateFrom;
import com.onyx.android.sdk.event.StatisticsNoteMarginsEditEvent;
import com.onyx.android.sdk.event.StatisticsNoteOutlineAddEvent;
import com.onyx.android.sdk.event.StatisticsPageInkCreateEvent;
import com.onyx.android.sdk.event.StatisticsPageSkipEvent;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction;
import com.onyx.android.sdk.universal.editor.action.link.CreatePageLinkBeanAction;
import com.onyx.android.sdk.universal.editor.data.RotatePageArgs;
import com.onyx.android.sdk.universal.editor.data.RotationType;
import com.onyx.android.sdk.universal.editor.events.app.GotoPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemovePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.LayoutNotePageSettingsBinding;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.event.ChangeTemplateEvent;
import com.onyx.galaxy.note.editor.view.dialog.AddToDocTocDialog;
import com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog;
import com.onyx.galaxy.note.editor.view.popup.ContextMenuPopup;
import com.onyx.galaxy.note.editor.view.popup.PageRecycleBinPopup;
import com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 32\u00020\u0001:\u000234B\u0011\b\u0016\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,B\u001d\b\u0016\u0012\u0006\u0010*\u001a\u00020)\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-¢\u0006\u0004\b+\u0010/B%\b\u0016\u0012\u0006\u0010*\u001a\u00020)\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\u0006\u00101\u001a\u000200¢\u0006\u0004\b+\u00102J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0016\u0010\u0014\u001a\u00020\u00022\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012H\u0002J\u001c\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\r2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\rH\u0002J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bJ\u0006\u0010\u001e\u001a\u00020\u0002R\u001b\u0010$\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;", "Landroid/widget/FrameLayout;", "", "t", GoogleApiAvailabilityLight.f29016b, "m", "F", C4921e.f26528e, "Landroid/view/View;", "view", "L", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "p", "", "page", "s", "I", "q", "Lkotlin/Function0;", "action", "K", "eventId", "pageIndex", "G", "Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "updateView", "Lcom/onyx/galaxy/note/databinding/LayoutNotePageSettingsBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutNotePageSettingsBinding;", "binding", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "NotePageSettingChangedListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePageSettingsLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout\n+ 2 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,300:1\n28#2:301\n256#3,2:302\n*S KotlinDebug\n*F\n+ 1 NotePageSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout\n*L\n187#1:301\n220#1:302,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NotePageSettingsLayout extends FrameLayout {

    @NotNull
    public static final String TAG = "NotePageSettingsLayout";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public NotePageSettingChangedListener listener;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;", "", "close", "", "onCurrentPageChanged", "pageIndex", "", "onCurrentPageLinkCreated", "linkBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "onShowedAddTocView", "onShowedTemplateView", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface NotePageSettingChangedListener {
        void close();

        void onCurrentPageChanged(int pageIndex);

        void onCurrentPageLinkCreated(@NotNull ShapeLinkBean linkBean);

        void onShowedAddTocView();

        void onShowedTemplateView();
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$a */
    /* loaded from: classes9.dex */
    public static final class C12514a<T> implements Consumer {

        /* renamed from: e */
        public static final C12514a<T> f60817e = new C12514a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapeLink(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$b */
    /* loaded from: classes9.dex */
    public static final class C12515b<T> implements Consumer {

        /* renamed from: e */
        public static final C12515b<T> f60818e = new C12515b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.create_page_link_success, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$c */
    /* loaded from: classes9.dex */
    public static final class C12516c<T> implements Consumer {
        public C12516c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotePageSettingChangedListener notePageSettingChangedListener = NotePageSettingsLayout.this.listener;
            if (notePageSettingChangedListener != null) {
                notePageSettingChangedListener.onCurrentPageLinkCreated(it2);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotePageSettingsLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: A */
    public static final void m50005A(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m50035L(view);
    }

    /* renamed from: B */
    public static final void m50006B(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50031F();
    }

    /* renamed from: D */
    public static final void m50007D(NotePageSettingsLayout this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            m50009H(this$0, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_JUMPPAGE, null, 2, null);
        }
    }

    /* renamed from: E */
    public static final boolean m50008E(NotePageSettingsLayout this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 6) {
            return true;
        }
        this$0.m50041s(this$0.getBinding().pageEdittext.getText().toString());
        this$0.m50032G(OnyxStatisticConstant.ID_CLICK_DOCSSETTING_JUMPPAGE_SUCCEED, this$0.getBinding().pageEdittext.getText().toString());
        StatisticsBundle.INSTANCE.postEvent(new StatisticsPageSkipEvent());
        ViewKt.hideInputKeyboard(this$0);
        return true;
    }

    /* renamed from: H */
    public static /* synthetic */ void m50009H(NotePageSettingsLayout notePageSettingsLayout, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        notePageSettingsLayout.m50032G(str, str2);
    }

    /* renamed from: J */
    public static final void m50010J(ContextMenuPopup pop, View view, DockType dockType) {
        Intrinsics.checkNotNullParameter(pop, "$pop");
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(dockType, "$dockType");
        BasePopupWindow.INSTANCE.showByDockType(pop, view, dockType, (r16 & 4) != 0 ? 0 : 0, (r16 & 8) != 0 ? 0 : 0, (r16 & 16) != 0 ? Activity.INSTANCE.getTopContentView() : null);
    }

    /* renamed from: r */
    public static final void m50023r(final NotePageSettingsLayout this$0, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50034K(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$deleteCurPage$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditorBundle editorBundle;
                editorBundle = NotePageSettingsLayout.this.editorBundle;
                if (editorBundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle = null;
                }
                EditorBundleKt.postEvent(editorBundle, new RemovePageEvent(i));
                NotePageSettingsLayout.NotePageSettingChangedListener notePageSettingChangedListener = NotePageSettingsLayout.this.listener;
                if (notePageSettingChangedListener != null) {
                    notePageSettingChangedListener.onCurrentPageChanged(i);
                }
            }
        });
        m50009H(this$0, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_DELETE, null, 2, null);
    }

    /* renamed from: u */
    public static final void m50024u(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50040q();
    }

    /* renamed from: v */
    public static final void m50025v(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m50033I(view);
    }

    /* renamed from: w */
    public static final void m50026w(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50039p();
    }

    /* renamed from: x */
    public static final void m50027x(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50038o();
    }

    /* renamed from: y */
    public static final void m50028y(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50037n();
    }

    /* renamed from: z */
    public static final void m50029z(NotePageSettingsLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50036m();
    }

    /* renamed from: C */
    public final void m50030C() {
        getBinding().pageEdittext.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.k0k
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m50008E;
                m50008E = NotePageSettingsLayout.m50008E(NotePageSettingsLayout.this, textView, i, keyEvent);
                return m50008E;
            }
        });
        getBinding().pageEdittext.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.l0k
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                NotePageSettingsLayout.m50007D(NotePageSettingsLayout.this, view, z);
            }
        });
    }

    /* renamed from: F */
    public final void m50031F() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteMarginsEditEvent());
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        new PageMarginAdjustDialog(context, editorBundle).show();
        m50009H(this, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_LEAVEBLANK, null, 2, null);
    }

    /* renamed from: G */
    public final void m50032G(String eventId, String pageIndex) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        if (pageIndex != null) {
            linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_PAGENUMBER, pageIndex);
        }
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: I */
    public final void m50033I(final View view) {
        EditorBundle editorBundle;
        List listOf;
        List listOf2;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        BoxInfo currentVisibleBoxInfo = EditorBundleKt.currentVisibleBoxInfo(editorBundle2);
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle3 = null;
        }
        final int currentPageIndex = EditorBundleKt.currentPageIndex(editorBundle3);
        EditorBundle editorBundle4 = this.editorBundle;
        if (editorBundle4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle4;
        }
        String id = currentVisibleBoxInfo.getId();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(currentVisibleBoxInfo.getOriginRectFWithMargin());
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(listOf);
        RxBaseAction.execute$default(new ShowRectHighlightAnimationAction(editorBundle, id, listOf2, 500L), null, null, null, 7, null);
        final DockType horizontalDockType = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData().getHorizontalDockType(ShortcutType.SHORTCUT_OTHER_SETTINGS, ViewExtKt.isLayoutDirectionRtl(this));
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        final ContextMenuPopup contextMenuPopup = new ContextMenuPopup(context, C10651R.menu.rotate_page_action_menu, new Function1<MenuItem, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$rotateCurPage$pop$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MenuItem menuItem) {
                invoke2(menuItem);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MenuItem it2) {
                RotationType rotationType;
                EditorBundle editorBundle5;
                List mutableListOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                int itemId = it2.getItemId();
                if (itemId == C10651R.id.rotate_90_anticlockwise) {
                    rotationType = RotationType.ANTI_CLOCKWISE_90;
                } else {
                    rotationType = itemId == C10651R.id.rotate_180_clockwise ? RotationType.CLOCKWISE_180 : RotationType.CLOCKWISE_90;
                }
                int degrees = rotationType.getDegrees();
                editorBundle5 = NotePageSettingsLayout.this.editorBundle;
                if (editorBundle5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle5 = null;
                }
                mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(currentPageIndex));
                EditorBundleKt.postEvent(editorBundle5, new RotatePageEvent(new RotatePageArgs(mutableListOf, degrees, false, 4, null)));
            }
        }, null, 8, null);
        getBinding().getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.u0k
            @Override // java.lang.Runnable
            public final void run() {
                NotePageSettingsLayout.m50010J(ContextMenuPopup.this, view, horizontalDockType);
            }
        }, 500L);
    }

    /* renamed from: K */
    public final void m50034K(final Function0<Unit> action) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new CommonDialog.Builder(context).setTitle(C10651R.string.delete).setWarning(true).setMessage(C10651R.string.delete_current_page_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$showDeleteConfirmDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editTextStr) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editTextStr, "editTextStr");
                action.invoke();
                NotePageSettingsLayout.m50009H(this, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_DELETE_CONFIRM, null, 2, null);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$showDeleteConfirmDialog$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                NotePageSettingsLayout.m50009H(NotePageSettingsLayout.this, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_DELETE_CANCEL, null, 2, null);
            }
        }).create().show();
        m50009H(this, OnyxStatisticConstant.ID_VIEW_DOCSSETTING_DELETE_POPUP, null, 2, null);
    }

    /* renamed from: L */
    public final void m50035L(View view) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new PageRecycleBinPopup(editorBundle, docManagerBundle, context).show();
        NotePageSettingChangedListener notePageSettingChangedListener = this.listener;
        if (notePageSettingChangedListener != null) {
            notePageSettingChangedListener.close();
        }
    }

    @NotNull
    public final LayoutNotePageSettingsBinding getBinding() {
        return (LayoutNotePageSettingsBinding) this.binding.getValue();
    }

    /* renamed from: m */
    public final void m50036m() {
        EditorBundle editorBundle;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        VirtualTocModel virtualTocModel = new VirtualTocModel("", EditorBundleKt.currentPageIndex(editorBundle2));
        virtualTocModel.ensureUniqueIdExist();
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle3;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new AddToDocTocDialog(editorBundle, context, virtualTocModel, OnyxStatisticConstant.ID_VIEW_OUTLINE_ADD_DOCSSETTING, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$addToDoc$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteOutlineAddEvent(NoteOutlineAddFrom.OTHER_SETTINGS));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }).show();
        NotePageSettingChangedListener notePageSettingChangedListener = this.listener;
        if (notePageSettingChangedListener != null) {
            notePageSettingChangedListener.onShowedAddTocView();
        }
        m50009H(this, OnyxStatisticConstant.ID_CLICK_OUTLINE_ADD_DOCSSETTING, null, 2, null);
    }

    /* renamed from: n */
    public final void m50037n() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new ChangeTemplateEvent(7));
        NotePageSettingChangedListener notePageSettingChangedListener = this.listener;
        if (notePageSettingChangedListener != null) {
            notePageSettingChangedListener.onShowedTemplateView();
        }
    }

    /* renamed from: o */
    public final void m50038o() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new ChangeTemplateEvent(1));
        NotePageSettingChangedListener notePageSettingChangedListener = this.listener;
        if (notePageSettingChangedListener != null) {
            notePageSettingChangedListener.onShowedTemplateView();
        }
    }

    /* renamed from: p */
    public final void m50039p() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsPageInkCreateEvent(PageInkCreateFrom.OTHER_SETTING));
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        new CreatePageLinkBeanAction(editorBundle, EditorBundleKt.currentPageIndex(editorBundle2)).build().doOnNext(C12514a.f60817e).doOnNext(C12515b.f60818e).doOnNext(new C12516c()).subscribe();
        m50009H(this, OnyxStatisticConstant.ID_CLICK_DOCSSETTING_CREATEPAGELINK, null, 2, null);
    }

    /* renamed from: q */
    public final void m50040q() {
        EditorBundle editorBundle;
        List listOf;
        List listOf2;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        if (EditorBundleKt.pageCount(editorBundle2) <= 1) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.prohibit_delete_all_page_warning, false, 2, (Object) null);
            return;
        }
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle3 = null;
        }
        BoxInfo currentVisibleBoxInfo = EditorBundleKt.currentVisibleBoxInfo(editorBundle3);
        EditorBundle editorBundle4 = this.editorBundle;
        if (editorBundle4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle4 = null;
        }
        final int currentPageIndex = EditorBundleKt.currentPageIndex(editorBundle4);
        EditorBundle editorBundle5 = this.editorBundle;
        if (editorBundle5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle5;
        }
        String id = currentVisibleBoxInfo.getId();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(currentVisibleBoxInfo.getOriginRectFWithMargin());
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(listOf);
        RxBaseAction.execute$default(new ShowRectHighlightAnimationAction(editorBundle, id, listOf2, 1000 * 2), null, null, null, 7, null);
        getBinding().getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.t0k
            @Override // java.lang.Runnable
            public final void run() {
                NotePageSettingsLayout.m50023r(NotePageSettingsLayout.this, currentPageIndex);
            }
        }, 1000L);
    }

    /* renamed from: s */
    public final void m50041s(String page) {
        if ((page.length() == 0) || !TextUtils.isDigitsOnly(page)) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        int pageCount = EditorBundleKt.pageCount(editorBundle);
        MathUtils mathUtils = MathUtils.INSTANCE;
        int intValue = ((Number) mathUtils.clamp(Integer.valueOf(mathUtils.parseInt(page) - 1), 0, Integer.valueOf(pageCount - 1))).intValue();
        getBinding().pageEdittext.setText(String.valueOf(intValue + 1));
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle3;
        }
        EditorBundleKt.postEvent(editorBundle2, new GotoPageEvent(intValue));
        NotePageSettingChangedListener notePageSettingChangedListener = this.listener;
        if (notePageSettingChangedListener != null) {
            notePageSettingChangedListener.onCurrentPageChanged(intValue);
        }
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        updateView();
    }

    public final void setListener(@NotNull NotePageSettingChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    /* renamed from: t */
    public final void m50042t() {
        FrameLayout deleteCurrentPage = getBinding().deleteCurrentPage;
        Intrinsics.checkNotNullExpressionValue(deleteCurrentPage, "deleteCurrentPage");
        com.onyx.android.sdk.extension.ViewKt.click(deleteCurrentPage, 1000L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50024u(NotePageSettingsLayout.this, view);
            }
        });
        TintFrameLayout rotatePage = getBinding().rotatePage;
        Intrinsics.checkNotNullExpressionValue(rotatePage, "rotatePage");
        com.onyx.android.sdk.extension.ViewKt.click$default(rotatePage, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50025v(NotePageSettingsLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout createPageLink = getBinding().createPageLink;
        Intrinsics.checkNotNullExpressionValue(createPageLink, "createPageLink");
        com.onyx.android.sdk.extension.ViewKt.click$default(createPageLink, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50026w(NotePageSettingsLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout changeTemplate = getBinding().changeTemplate;
        Intrinsics.checkNotNullExpressionValue(changeTemplate, "changeTemplate");
        com.onyx.android.sdk.extension.ViewKt.click$default(changeTemplate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50027x(NotePageSettingsLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout changeNewPageTemplate = getBinding().changeNewPageTemplate;
        Intrinsics.checkNotNullExpressionValue(changeNewPageTemplate, "changeNewPageTemplate");
        com.onyx.android.sdk.extension.ViewKt.click$default(changeNewPageTemplate, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50028y(NotePageSettingsLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout addToOutline = getBinding().addToOutline;
        Intrinsics.checkNotNullExpressionValue(addToOutline, "addToOutline");
        com.onyx.android.sdk.extension.ViewKt.click$default(addToOutline, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50029z(NotePageSettingsLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout pageRecycleBin = getBinding().pageRecycleBin;
        Intrinsics.checkNotNullExpressionValue(pageRecycleBin, "pageRecycleBin");
        com.onyx.android.sdk.extension.ViewKt.click$default(pageRecycleBin, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50005A(NotePageSettingsLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout whitespaceAdjustment = getBinding().whitespaceAdjustment;
        Intrinsics.checkNotNullExpressionValue(whitespaceAdjustment, "whitespaceAdjustment");
        com.onyx.android.sdk.extension.ViewKt.click$default(whitespaceAdjustment, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotePageSettingsLayout.m50006B(NotePageSettingsLayout.this, view);
            }
        }, 1, null);
        m50030C();
    }

    public final void updateView() {
        TintTextView tintTextView = getBinding().page;
        Context context = getContext();
        int i = C10651R.string.which_page_format;
        Object[] objArr = new Object[1];
        EditorBundle editorBundle = this.editorBundle;
        EditorBundle editorBundle2 = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        objArr[0] = Integer.valueOf(EditorBundleKt.currentPageNumber(editorBundle));
        tintTextView.setText(context.getString(i, objArr));
        EditorBundle editorBundle3 = this.editorBundle;
        if (editorBundle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle3 = null;
        }
        int pageCount = EditorBundleKt.pageCount(editorBundle3);
        String str = "1";
        if (pageCount > 1) {
            str = "1-" + pageCount;
        }
        getBinding().pageEdittext.setHint(str);
        getBinding().pageEdittext.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(String.valueOf(pageCount).length())});
        EditorBundle editorBundle4 = this.editorBundle;
        if (editorBundle4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle4 = null;
        }
        boolean supportEditPage = EditorBundleKt.getUiFeature(editorBundle4).supportEditPage();
        EditorBundle editorBundle5 = this.editorBundle;
        if (editorBundle5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle2 = editorBundle5;
        }
        boolean supportMultiPage = EditorBundleKt.getUiFeature(editorBundle2).supportMultiPage();
        ViewKt.setViewVisibleOrGone(getBinding().page, supportEditPage);
        ViewKt.setViewVisibleOrGone(getBinding().llJumpPage, supportMultiPage);
        ViewKt.setViewVisibleOrGone(getBinding().whitespaceAdjustment, supportEditPage);
        ViewKt.setViewVisibleOrGone(getBinding().addToOutline, supportEditPage);
        ViewKt.setViewVisibleOrGone(getBinding().createPageLink, supportEditPage);
        ViewKt.setViewVisibleOrGone(getBinding().deleteCurrentPage, supportEditPage);
        ViewKt.setViewVisibleOrGone(getBinding().rotatePage, supportEditPage);
        ViewKt.setViewVisibleOrGone(getBinding().pageRecycleBin, supportEditPage);
        TintFrameLayout changeNewPageTemplate = getBinding().changeNewPageTemplate;
        Intrinsics.checkNotNullExpressionValue(changeNewPageTemplate, "changeNewPageTemplate");
        changeNewPageTemplate.setVisibility(supportEditPage ? 0 : 8);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotePageSettingsLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NotePageSettingsLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotePageSettingsLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutNotePageSettingsBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutNotePageSettingsBinding invoke() {
                return LayoutNotePageSettingsBinding.inflate(LayoutInflater.from(NotePageSettingsLayout.this.getContext()), NotePageSettingsLayout.this, true);
            }
        });
        this.binding = lazy;
        m50042t();
    }

    public /* synthetic */ NotePageSettingsLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

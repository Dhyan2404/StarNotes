package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.os.Bundle;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import androidx.core.app.NotificationCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.GraphFillToggleFrom;
import com.onyx.android.sdk.data.SettingToggleKt;
import com.onyx.android.sdk.event.StatisticsNoteToolbarGraphEvent;
import com.onyx.android.sdk.event.StatisticsNoteToolbarGraphFillToggleEvent;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.p039ui.ShadowCreateArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.PopupUniversalShapeBinding;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.data.UniversalShapeType;
import com.onyx.galaxy.note.editor.view.adapter.UniversalShapeTypeAdapter;
import com.onyx.galaxy.note.editor.view.adapter.UniversalShapeViewPagerAdapter;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.p048ui.view.PageIndicatorView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010&\u001a\u00020#\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b=\u0010>J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\bH\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\b\u0010 \u001a\u00020\u0002H\u0002J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\bH\u0002R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001b\u0010\u0015\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001b\u0010/\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010(\u001a\u0004\b-\u0010.R\u001c\u00104\u001a\b\u0012\u0004\u0012\u000201008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u0006?"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;", "", "P", "G", "F", "Landroid/view/DragEvent;", NotificationCompat.CATEGORY_EVENT, "", "E", "Y", "V", "R", "W", "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;", "adapter", "L", "", "oldType", "S", "Lcom/onyx/galaxy/note/databinding/PopupUniversalShapeBinding;", "binding", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Lcom/onyx/galaxy/note/editor/data/UniversalShapeType;", GeoConstant.KEY_Universal_Shape_Type, "U", "H", "b0", "isChecked", "T", "a0", Constants.HASIDCALL_INDEX_SIG, "c0", "enable", "X", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "x", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "toolType", "y", "Lkotlin/Lazy;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "()Lcom/onyx/galaxy/note/databinding/PopupUniversalShapeBinding;", "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "z", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "()Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "universalShapeAttr", "", "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;", "J", "Ljava/util/List;", "pageDataList", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUniversalShapePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n*L\n1#1,287:1\n1#2:288\n256#3,2:289\n65#3,4:316\n37#3:320\n53#3:321\n72#3:322\n256#3,2:323\n1549#4:291\n1620#4,3:292\n1864#4,2:295\n350#4,7:297\n1866#4:304\n1855#4:305\n1855#4,2:309\n1856#4:315\n19#5,3:306\n22#5,4:311\n*S KotlinDebug\n*F\n+ 1 UniversalShapePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup\n*L\n123#1:289,2\n256#1:316,4\n256#1:320\n256#1:321\n256#1:322\n264#1:323,2\n137#1:291\n137#1:292,3\n157#1:295,2\n158#1:297,7\n157#1:304\n186#1:305\n187#1:309,2\n186#1:315\n187#1:306,3\n187#1:311,4\n*E\n"})
/* loaded from: classes9.dex */
public final class UniversalShapePopup extends BasePenPopup {

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public List<UniversalShapeViewPagerAdapter.UniversalShapePageData> pageDataList;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final ShapeToolType toolType;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final Lazy universalShapeAttr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalShapePopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull ShapeToolType toolType, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(context, toolType, editorBundle, penViewModel, dockType);
        Lazy lazy;
        Lazy lazy2;
        List<UniversalShapeViewPagerAdapter.UniversalShapePageData> emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(toolType, "toolType");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.toolType = toolType;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupUniversalShapeBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupUniversalShapeBinding invoke() {
                return PopupUniversalShapeBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<UniversalShapeAttr>() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$universalShapeAttr$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UniversalShapeAttr invoke() {
                return MMKVNote.INSTANCE.getGraphShapeOption().get();
            }
        });
        this.universalShapeAttr = lazy2;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.pageDataList = emptyList;
        setFocusable(true);
        m49774P();
    }

    /* renamed from: I */
    public static final void m49756I(UniversalShapePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49767D().setLineStyleType(0);
        this$0.m49786c0();
        this$0.m49785b0();
    }

    /* renamed from: J */
    public static final void m49757J(UniversalShapePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49767D().setLineStyleType(1);
        this$0.m49786c0();
        this$0.m49785b0();
    }

    /* renamed from: K */
    public static final void m49758K(UniversalShapePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49767D().setLineStyleType(2);
        this$0.m49786c0();
        this$0.m49785b0();
    }

    /* renamed from: M */
    public static final boolean m49759M(UniversalShapePopup this$0, BaseQuickAdapter adapter, View itemView, int i) {
        String type;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        UniversalShapeType universalShapeType = (UniversalShapeType) adapter.getItem(i);
        if (universalShapeType != null && (type = universalShapeType.getType()) != null) {
            DragAndDropUtils.INSTANCE.dragAndDropOnce(itemView, DragAndDropUtils.DRAG_DROP_TYPE_UNIVERSAL_ITEM, type, (r25 & 4) != 0 ? new ShadowCreateArgs(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 127, null) : null, (r25 & 8) != 0 ? null : this$0.m49766C().favoriteGroup, (r25 & 16) != 0 ? new Function1<DragEvent, Unit>() { // from class: com.onyx.android.sdk.universal.common.drag.DragAndDropUtils$dragAndDropOnce$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull DragEvent it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(DragEvent dragEvent) {
                    invoke2(dragEvent);
                    return Unit.INSTANCE;
                }
            } : new UniversalShapePopup$initSecondaryAdapter$2$1(this$0));
        }
        return true;
    }

    /* renamed from: N */
    public static final void m49760N(UniversalShapePopup this$0, UniversalShapeTypeAdapter adapter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "$adapter");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        String type = this$0.m49767D().getType();
        if (type == null) {
            type = "";
        }
        UniversalShapeType item = adapter.getItem(i);
        if (item == null) {
            return;
        }
        this$0.m49778U(item);
        this$0.m49776S(type);
        this$0.getPenViewModel().forceNotifyPenTypeChanged();
    }

    /* renamed from: Q */
    public static final void m49761Q(UniversalShapePopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PopupUniversalShapeBinding m49766C = this$0.m49766C();
        Intrinsics.checkNotNullExpressionValue(m49766C, "<get-binding>(...)");
        this$0.m49777T(m49766C, z);
    }

    /* renamed from: C */
    public final PopupUniversalShapeBinding m49766C() {
        return (PopupUniversalShapeBinding) this.binding.getValue();
    }

    /* renamed from: D */
    public final UniversalShapeAttr m49767D() {
        return (UniversalShapeAttr) this.universalShapeAttr.getValue();
    }

    /* renamed from: E */
    public final boolean m49768E(DragEvent event) {
        int action = event.getAction();
        if (action == 3) {
            m49766C().favoriteGroup.setSelected(false);
            DragAndDropUtils dragAndDropUtils = DragAndDropUtils.INSTANCE;
            Bundle dataBundle = dragAndDropUtils.getDataBundle(event);
            if (dataBundle == null) {
                return true;
            }
            String dataType = dragAndDropUtils.getDataType(event);
            if (!Intrinsics.areEqual(dataType, DragAndDropUtils.DRAG_DROP_TYPE_UNIVERSAL_ITEM)) {
                dataType = null;
            }
            if (dataType == null) {
                return true;
            }
            String string = dataBundle.getString(DragAndDropUtils.KEY_DRAG_DROP_DATA);
            if (string == null) {
                string = "";
            }
            m49766C().favoriteLayout.addItem(string);
            m49782Y();
        } else if (action == 5) {
            m49766C().favoriteGroup.setSelected(true);
        } else if (action == 6) {
            m49766C().favoriteGroup.setSelected(false);
        }
        return true;
    }

    /* renamed from: F */
    public final void m49769F() {
        m49782Y();
        m49766C().favoriteLayout.setItemCallback(new Callback() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$initFavoriteLayout$callback$1
            @Override // com.onyx.galaxy.note.editor.view.popup.Callback
            public void onItemDeleted(@NotNull String data) {
                Intrinsics.checkNotNullParameter(data, "data");
                UniversalShapePopup.this.m49782Y();
                UniversalShapePopup.this.getPenViewModel().forceNotifyPenTypeChanged();
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.Callback
            public void onItemSelected(@NotNull String newType) {
                UniversalShapeAttr m49767D;
                UniversalShapeAttr m49767D2;
                UniversalShapeAttr m49767D3;
                Intrinsics.checkNotNullParameter(newType, "newType");
                m49767D = UniversalShapePopup.this.m49767D();
                String type = m49767D.getType();
                if (type == null) {
                    type = "";
                }
                m49767D2 = UniversalShapePopup.this.m49767D();
                m49767D2.setType(newType);
                m49767D3 = UniversalShapePopup.this.m49767D();
                m49767D3.setFavorited(true);
                UniversalShapePopup.this.m49786c0();
                UniversalShapePopup.this.m49776S(type);
                UniversalShapePopup.this.getPenViewModel().forceNotifyPenTypeChanged();
            }
        });
    }

    /* renamed from: G */
    public final void m49770G() {
        m49784a0();
        m49766C().fillColorLayout.setShapeType(this.toolType.getShapeType());
        ShapeFillColorPropertyLayout shapeFillColorPropertyLayout = m49766C().fillColorLayout;
        EditorBundle editorBundle = getEditorBundle();
        View root = m49766C().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        shapeFillColorPropertyLayout.initFillColorLayout(editorBundle, root, getDockType(), this.toolType, new Function3<Integer, Integer, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$initFillColorList$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2, Boolean bool) {
                invoke(num.intValue(), num2.intValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int i2, boolean z) {
                UniversalShapePopup.this.m49786c0();
                UniversalShapePopup.this.m49779V();
            }
        });
        m49783Z();
    }

    /* renamed from: H */
    public final void m49771H() {
        m49785b0();
        TintImageView solidStyle = m49766C().solidStyle;
        Intrinsics.checkNotNullExpressionValue(solidStyle, "solidStyle");
        ViewKt.click$default(solidStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jtn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UniversalShapePopup.m49756I(UniversalShapePopup.this, view);
            }
        }, 1, null);
        TintImageView dashStyle = m49766C().dashStyle;
        Intrinsics.checkNotNullExpressionValue(dashStyle, "dashStyle");
        ViewKt.click$default(dashStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ktn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UniversalShapePopup.m49757J(UniversalShapePopup.this, view);
            }
        }, 1, null);
        TintImageView dotStyle = m49766C().dotStyle;
        Intrinsics.checkNotNullExpressionValue(dotStyle, "dotStyle");
        ViewKt.click$default(dotStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ltn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UniversalShapePopup.m49758K(UniversalShapePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: L */
    public final void m49772L(final UniversalShapeTypeAdapter adapter) {
        adapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.ntn
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                UniversalShapePopup.m49760N(UniversalShapePopup.this, adapter, baseQuickAdapter, view, i);
            }
        });
        adapter.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.otn
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m49759M;
                m49759M = UniversalShapePopup.m49759M(UniversalShapePopup.this, baseQuickAdapter, view, i);
                return m49759M;
            }
        });
    }

    /* renamed from: O */
    public final void m49773O(PopupUniversalShapeBinding binding) {
        StickSeekBarContainer stickSeekBarContainer = binding.seekBarThickness;
        Range<Float> between = Range.between(Float.valueOf(PensizeConvertExtKt.sizeToValue(20.0f)), Float.valueOf(PensizeConvertExtKt.sizeToValue(1.0f)));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        stickSeekBarContainer.setRange(between);
        binding.seekBarThickness.setProgressValue(PensizeConvertExtKt.sizeToValue(getPenArgsOption().get().getWidth()));
        binding.seekBarThickness.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$initStrokeColorList$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                ShapeToolType shapeToolType;
                if (z) {
                    return;
                }
                final float valueToSize = PensizeConvertExtKt.valueToSize(f2);
                UniversalShapePopup.this.getPenArgsOption().getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$initStrokeColorList$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable PenArgs penArgs) {
                        if (penArgs == null) {
                            return;
                        }
                        penArgs.setWidth(valueToSize);
                    }
                });
                PenPropertyBean penProperty = UniversalShapePopup.this.getPenProperty();
                shapeToolType = UniversalShapePopup.this.toolType;
                penProperty.updateSizeList(shapeToolType.getShapeType(), valueToSize);
                UniversalShapePopup.this.getPenViewModel().getSize().postValue(Float.valueOf(valueToSize));
            }
        });
    }

    /* renamed from: P */
    public final void m49774P() {
        View root = m49766C().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49766C().enableFill.setChecked(m49767D().getFillColorEnable());
        m49766C().enableFill.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.mtn
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                UniversalShapePopup.m49761Q(UniversalShapePopup.this, compoundButton, z);
            }
        });
        ShapeColorPropertyLayout colorLayout = m49766C().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        BasePenPopup.initColorLayout$default(this, colorLayout, null, 2, null);
        m49775R();
        m49771H();
        PopupUniversalShapeBinding m49766C = m49766C();
        Intrinsics.checkNotNullExpressionValue(m49766C, "<get-binding>(...)");
        m49773O(m49766C);
        m49770G();
        m49769F();
    }

    /* renamed from: R */
    public final void m49775R() {
        List asList;
        int collectionSizeOrDefault;
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.universal_popup_type_row_count) * resManager.getInteger(C10651R.integer.universal_popup_type_column_count);
        asList = ArraysKt___ArraysJvmKt.asList(UniversalShapeType.values());
        List<List> split = CollectionKt.split(asList, integer);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(split, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (List list : split) {
            UniversalShapeTypeAdapter universalShapeTypeAdapter = new UniversalShapeTypeAdapter(m49767D());
            m49772L(universalShapeTypeAdapter);
            arrayList.add(new UniversalShapeViewPagerAdapter.UniversalShapePageData(universalShapeTypeAdapter, list));
        }
        this.pageDataList = arrayList;
        UniversalShapeViewPagerAdapter universalShapeViewPagerAdapter = new UniversalShapeViewPagerAdapter();
        m49766C().viewPager.setAdapter(universalShapeViewPagerAdapter);
        universalShapeViewPagerAdapter.submitList(this.pageDataList);
        m49766C().viewPager.setOffscreenPageLimit(this.pageDataList.size());
        m49766C().viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$initViewPager$2
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                PopupUniversalShapeBinding m49766C;
                List list2;
                m49766C = UniversalShapePopup.this.m49766C();
                PageIndicatorView pageIndicatorView = m49766C.pageIndicator;
                list2 = UniversalShapePopup.this.pageDataList;
                pageIndicatorView.setIndicatorIndex(position, list2.size());
            }
        });
        m49780W();
    }

    /* renamed from: S */
    public final void m49776S(final String oldType) {
        Iterator<T> it2 = this.pageDataList.iterator();
        while (it2.hasNext()) {
            UniversalShapeTypeAdapter secondaryAdapter = ((UniversalShapeViewPagerAdapter.UniversalShapePageData) it2.next()).getSecondaryAdapter();
            try {
                Iterator<T> it3 = CollectionKt.indexesOf(secondaryAdapter.getItems(), new Function1<UniversalShapeType, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$notifyShapeTypeChanged$lambda$12$$inlined$notifyItemChangedSafely$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull UniversalShapeType it4) {
                        UniversalShapeAttr m49767D;
                        List listOf;
                        Intrinsics.checkNotNullParameter(it4, "it");
                        UniversalShapeType universalShapeType = it4;
                        String[] strArr = new String[2];
                        strArr[0] = oldType;
                        m49767D = this.m49767D();
                        String type = m49767D.getType();
                        if (type == null) {
                            type = "";
                        }
                        strArr[1] = type;
                        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) strArr);
                        return Boolean.valueOf(listOf.contains(universalShapeType.getType()));
                    }
                }).iterator();
                while (it3.hasNext()) {
                    secondaryAdapter.notifyItemChanged(((Number) it3.next()).intValue());
                }
            } catch (Throwable unused) {
                Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
            }
        }
    }

    /* renamed from: T */
    public final void m49777T(final PopupUniversalShapeBinding binding, boolean isChecked) {
        if (isChecked) {
            getPenProperty().selectFirstFillColorIfInvalid(getViewShapeType().getShapeType());
        }
        m49781X(isChecked);
        m49784a0();
        m49783Z();
        m49767D().setFillColorEnable(isChecked);
        m49786c0();
        if (isChecked) {
            ScrollView scrollView = binding.scrollView;
            Intrinsics.checkNotNullExpressionValue(scrollView, "scrollView");
            if (!scrollView.isLaidOut() || scrollView.isLayoutRequested()) {
                scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup$onFillEnabledClick$$inlined$doOnLayout$1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(@NotNull View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                        view.removeOnLayoutChangeListener(this);
                        ScrollView scrollView2 = PopupUniversalShapeBinding.this.scrollView;
                        scrollView2.setScrollY(scrollView2.getMaxScrollAmount());
                    }
                });
            } else {
                ScrollView scrollView2 = binding.scrollView;
                scrollView2.setScrollY(scrollView2.getMaxScrollAmount());
            }
        }
    }

    /* renamed from: U */
    public final void m49778U(UniversalShapeType universalShapeType) {
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        String lowerCase = universalShapeType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        statisticsBundle.postEvent(new StatisticsNoteToolbarGraphEvent(lowerCase));
        m49767D().setType(universalShapeType.getType());
        m49767D().setFavorited(false);
        m49786c0();
        m49766C().favoriteLayout.clearSelection();
    }

    /* renamed from: V */
    public final void m49779V() {
        StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(getEditorBundle(), "figure_data", "click_galaxy_pen_param_0002", getPenArgsOption().get());
    }

    /* renamed from: W */
    public final void m49780W() {
        Boolean valueOf = Boolean.valueOf(m49767D().getFavorited());
        if (!valueOf.booleanValue()) {
            valueOf = null;
        }
        if (valueOf != null) {
            valueOf.booleanValue();
            return;
        }
        int i = 0;
        for (Object obj : this.pageDataList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Iterator<UniversalShapeType> it2 = ((UniversalShapeViewPagerAdapter.UniversalShapePageData) obj).getUniversalShapeTypeList().iterator();
            int i3 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i3 = -1;
                    break;
                } else if (Intrinsics.areEqual(it2.next().getType(), m49767D().getType())) {
                    break;
                } else {
                    i3++;
                }
            }
            Integer valueOf2 = Integer.valueOf(i3);
            if (!(valueOf2.intValue() < 0)) {
                valueOf2 = null;
            }
            if (valueOf2 != null) {
                valueOf2.intValue();
            } else {
                m49766C().viewPager.setCurrentItem(i);
                m49766C().pageIndicator.setIndicatorIndex(i, this.pageDataList.size());
            }
            i = i2;
        }
    }

    /* renamed from: X */
    public final void m49781X(boolean enable) {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteToolbarGraphFillToggleEvent(SettingToggleKt.getSettingToggle(enable), GraphFillToggleFrom.EDIT_GRAPH));
    }

    /* renamed from: Y */
    public final void m49782Y() {
        m49766C().favoriteGroup.setSelected(false);
        TintTextView favoriteHintText = m49766C().favoriteHintText;
        Intrinsics.checkNotNullExpressionValue(favoriteHintText, "favoriteHintText");
        favoriteHintText.setVisibility(m49766C().favoriteLayout.isEmpty() ? 0 : 8);
    }

    /* renamed from: Z */
    public final void m49783Z() {
        Integer num;
        int lastIndex;
        IntList value = getPenProperty().getFillColorListOption(getViewShapeType().getShapeType()).getValue();
        int i = getPenProperty().getFillColorIndexOption(getViewShapeType().getShapeType()).get();
        if (i >= 0) {
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(value);
            if (i <= lastIndex) {
                num = value.get(i);
                m49766C().fillColorLayout.updateFillColor(num.intValue(), i);
            }
        }
        num = 0;
        m49766C().fillColorLayout.updateFillColor(num.intValue(), i);
    }

    /* renamed from: a0 */
    public final void m49784a0() {
        boolean isChecked = m49766C().enableFill.isChecked();
        ShapeFillColorPropertyLayout fillColorLayout = m49766C().fillColorLayout;
        Intrinsics.checkNotNullExpressionValue(fillColorLayout, "fillColorLayout");
        fillColorLayout.setVisibility(isChecked ? 0 : 8);
    }

    /* renamed from: b0 */
    public final void m49785b0() {
        int lineStyleType = m49767D().getLineStyleType();
        m49766C().solidStyle.setSelected(lineStyleType == 0);
        m49766C().dashStyle.setSelected(lineStyleType == 1);
        m49766C().dotStyle.setSelected(lineStyleType == 2);
        getPenViewModel().getLineStyleType().setValue(Integer.valueOf(lineStyleType));
    }

    /* renamed from: c0 */
    public final void m49786c0() {
        m49767D().setFillColor(m49766C().fillColorLayout.getFillColor());
        MMKVNote.INSTANCE.setGraphShapeOption(m49767D());
    }
}

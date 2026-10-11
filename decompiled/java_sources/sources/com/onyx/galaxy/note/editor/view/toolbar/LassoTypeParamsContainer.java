package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.HorizontalScrollView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.LassoPropertyOption;
import com.onyx.galaxy.note.common.statistics.LassoPopupMenuEventBean;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.LayoutLassoTypeParamsContainerBinding;
import com.onyx.galaxy.note.editor.view.popup.LassoPopup;
import com.onyx.galaxy.note.editor.view.toolbar.LassoTypeParamsContainer;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
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

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fB\u001d\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\u001e\u0010\"B%\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 \u0012\u0006\u0010#\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010$J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001a\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0013\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u001b¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;", "Landroid/widget/HorizontalScrollView;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "", "lassoType", "updateLassoTypeUi", "visibility", "setVisibility", "", "rotation", "setOrientationChanged", "c", C6997f.f39671c, C6998g.f39679a, "Lcom/onyx/galaxy/note/databinding/LayoutLassoTypeParamsContainerBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutLassoTypeParamsContainerBinding;", "binding", "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "getLassoProperty", "()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "lassoProperty", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLassoTypeParamsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LassoTypeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 LassoTypeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer\n*L\n81#1:115,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LassoTypeParamsContainer extends HorizontalScrollView {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy lassoProperty;

    /* renamed from: g, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LassoTypeParamsContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: d */
    public static final void m49923d(LassoTypeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49926f(0);
    }

    /* renamed from: e */
    public static final void m49924e(LassoTypeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49926f(2);
    }

    private final LayoutLassoTypeParamsContainerBinding getBinding() {
        return (LayoutLassoTypeParamsContainerBinding) this.binding.getValue();
    }

    private final LassoPropertyOption getLassoProperty() {
        return (LassoPropertyOption) this.lassoProperty.getValue();
    }

    /* renamed from: c */
    public final void m49925c() {
        getBinding().freeLassoType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LassoTypeParamsContainer.m49923d(LassoTypeParamsContainer.this, view);
            }
        });
        getBinding().rectangleLassoType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ivi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LassoTypeParamsContainer.m49924e(LassoTypeParamsContainer.this, view);
            }
        });
        updateLassoTypeUi(getLassoProperty().getLassoType());
    }

    /* renamed from: f */
    public final void m49926f(int lassoType) {
        LassoPopup.INSTANCE.onLassoTypeSelected(getLassoProperty(), lassoType);
        updateLassoTypeUi(lassoType);
        m49927g();
    }

    /* renamed from: g */
    public final void m49927g() {
        LassoPopupMenuEventBean lassoPopupMenuEventBean;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        LassoPopupMenuEventBean lassoPopupMenuEventBean2 = new LassoPopupMenuEventBean(editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_LASSO_SHORTCUT_MENU_CLICK, OnyxStatisticConstant.EVENT_TYPE_CLICK, false, false, false, false, false, false, false, false, false, false, 8184, null);
        if (getLassoProperty().getLassoType() == 0) {
            lassoPopupMenuEventBean = lassoPopupMenuEventBean2;
            lassoPopupMenuEventBean.setFreeLasso(true);
            lassoPopupMenuEventBean.setRectLasso(false);
        } else {
            lassoPopupMenuEventBean = lassoPopupMenuEventBean2;
            lassoPopupMenuEventBean.setFreeLasso(false);
            lassoPopupMenuEventBean.setRectLasso(true);
        }
        Iterator it2 = ((Iterable) getLassoProperty().getLassoElementsOption().get()).iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            if (intValue == 1) {
                lassoPopupMenuEventBean.setShape(true);
            } else if (intValue == 5) {
                lassoPopupMenuEventBean.setHandwriting(true);
            } else if (intValue == 19) {
                lassoPopupMenuEventBean.setPic(true);
            } else if (intValue == 33) {
                lassoPopupMenuEventBean.setLink(true);
            } else if (intValue == 39) {
                lassoPopupMenuEventBean.setTape(true);
            } else if (intValue == 45) {
                lassoPopupMenuEventBean.setTag(true);
            } else if (intValue == 15) {
                lassoPopupMenuEventBean.setHighLighter(true);
            } else if (intValue == 16) {
                lassoPopupMenuEventBean.setTextBox(true);
            }
        }
        StatisticsBundle.INSTANCE.reportLassoPopupMenuEvent(lassoPopupMenuEventBean);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setOrientationChanged(float rotation) {
        getBinding().freeLassoType.setRotation(rotation);
        getBinding().rectangleLassoType.setRotation(rotation);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 0) {
            updateLassoTypeUi(getLassoProperty().getLassoType());
        }
    }

    public final void updateLassoTypeUi(int lassoType) {
        getBinding().freeLassoType.setSelected(lassoType == 0);
        getBinding().rectangleLassoType.setSelected(lassoType == 2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LassoTypeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ LassoTypeParamsContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LassoTypeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutLassoTypeParamsContainerBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.LassoTypeParamsContainer$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutLassoTypeParamsContainerBinding invoke() {
                return LayoutLassoTypeParamsContainerBinding.inflate(LayoutInflater.from(LassoTypeParamsContainer.this.getContext()), LassoTypeParamsContainer.this, true);
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LassoPropertyOption>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.LassoTypeParamsContainer$lassoProperty$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LassoPropertyOption invoke() {
                return NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getLassoProperty();
            }
        });
        this.lassoProperty = lazy2;
        m49925c();
    }

    public /* synthetic */ LassoTypeParamsContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.HorizontalScrollView;
import com.google.gson.JsonObject;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.note.common.data.shape.ExcerptType;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.LayoutExcerptTypeParamsContainerBinding;
import com.onyx.galaxy.note.editor.view.popup.ExcerptPenMenuPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ExcerptTypeParamsContainer;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$B\u001d\b\u0016\u0012\u0006\u0010\"\u001a\u00020!\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%¢\u0006\u0004\b#\u0010'B%\b\u0016\u0012\u0006\u0010\"\u001a\u00020!\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\u0006\u0010(\u001a\u00020\b¢\u0006\u0004\b#\u0010)J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0007\u001a\u00020\u0005J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\u0005H\u0016J\b\u0010\u000f\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00130\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010 ¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;", "Landroid/widget/HorizontalScrollView;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "updateExcerptTypeUi", "", "visibility", "setVisibility", "", "rotation", "setOrientationChanged", "tint", "c", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "type", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "excerptAttr", C6998g.f39679a, C6999h.f39688c, "Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutExcerptTypeParamsContainerBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "excerptAttrOption", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ExcerptTypeParamsContainer extends HorizontalScrollView implements Tintable {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final JSONObjectOption<ExcerptAttr> excerptAttrOption;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExcerptTypeParamsContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: d */
    public static final void m49903d(ExcerptTypeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49906f(ExcerptType.TEXT);
    }

    /* renamed from: e */
    public static final void m49904e(ExcerptTypeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49906f(ExcerptType.RECTANGLE);
    }

    private final LayoutExcerptTypeParamsContainerBinding getBinding() {
        return (LayoutExcerptTypeParamsContainerBinding) this.binding.getValue();
    }

    /* renamed from: c */
    public final void m49905c() {
        getBinding().textExcerptContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lyf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcerptTypeParamsContainer.m49903d(ExcerptTypeParamsContainer.this, view);
            }
        });
        getBinding().rectExcerptContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.myf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcerptTypeParamsContainer.m49904e(ExcerptTypeParamsContainer.this, view);
            }
        });
        m49908h(this.excerptAttrOption.forceGet().getType());
    }

    /* renamed from: f */
    public final void m49906f(ExcerptType type) {
        ExcerptAttr forceGet = this.excerptAttrOption.forceGet();
        forceGet.setType(type);
        ExcerptPenMenuPopup.INSTANCE.onExcerptAttrSelected(forceGet);
        m49908h(type);
        m49907g(forceGet);
    }

    /* renamed from: g */
    public final void m49907g(ExcerptAttr excerptAttr) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            ArrayList arrayList = new ArrayList();
            int i = excerptAttr.getType() == ExcerptType.TEXT ? 1 : 0;
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_EXCERPT_TEXT_EXCERPT, Integer.valueOf(i));
            jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_EXCERPT_FRAME_EXCERPT, Integer.valueOf(i ^ 1));
            jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_EXCERPT_ICON_EXCERPT, Integer.valueOf(excerptAttr.getShowIndicator() ? 1 : 0));
            arrayList.add(new Pair(OnyxStatisticConstant.KEY_NOTE_EXCERPT_DATA, jsonObject.toString()));
            StatisticsBundle.INSTANCE.reportEvent(EditorBundleKt.docId(editorBundle), String.valueOf(EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteModel().getTitle()), OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_EXCERPT_SHORTCUT_MENU_CLICK, OnyxStatisticConstant.EVENT_TYPE_CLICK, arrayList);
        }
    }

    /* renamed from: h */
    public final void m49908h(ExcerptType type) {
        getBinding().textExcerptContainer.setSelected(type == ExcerptType.TEXT);
        getBinding().rectExcerptContainer.setSelected(type == ExcerptType.RECTANGLE);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setOrientationChanged(float rotation) {
        getBinding().textExcerptContainer.setRotation(rotation);
        getBinding().rectExcerptContainer.setRotation(rotation);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 0) {
            m49908h(this.excerptAttrOption.forceGet().getType());
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        getBinding().textExcerptLayout.tint();
    }

    public final void updateExcerptTypeUi() {
        m49908h(this.excerptAttrOption.forceGet().getType());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExcerptTypeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ExcerptTypeParamsContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExcerptTypeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutExcerptTypeParamsContainerBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ExcerptTypeParamsContainer$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutExcerptTypeParamsContainerBinding invoke() {
                return LayoutExcerptTypeParamsContainerBinding.inflate(LayoutInflater.from(ExcerptTypeParamsContainer.this.getContext()), ExcerptTypeParamsContainer.this, true);
            }
        });
        this.binding = lazy;
        this.excerptAttrOption = MMKVNote.INSTANCE.getExcerptShapeAttrOption();
        m49905c();
    }

    public /* synthetic */ ExcerptTypeParamsContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

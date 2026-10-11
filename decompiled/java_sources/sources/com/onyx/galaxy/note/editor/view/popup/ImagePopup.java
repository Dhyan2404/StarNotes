package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.image.LoadMediaStoreRecentImagesAction;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickInsertImageShapesEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakePictureEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.GridDividerItemDecoration;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.databinding.PopupImageBinding;
import com.onyx.galaxy.note.editor.view.adapter.ImageAdapter;
import com.onyx.galaxy.note.editor.view.popup.ImagePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u0012\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0016\u0010\r\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\u0016\u0010\u0011\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u0013\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ImagePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "x", "p", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Landroid/view/View;", "clickView", "B", "r", "", "Landroid/net/Uri;", "list", "y", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "z", OcrValues.LANG_ITALIAN, "A", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", Constants.HASIDCALL_INDEX_SIG, "isMultiSelect", "", "s", "F", "popupHeight", "Lcom/onyx/galaxy/note/databinding/PopupImageBinding;", "t", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupImageBinding;", "binging", "Lcom/onyx/galaxy/note/editor/view/adapter/ImageAdapter;", "u", "Lcom/onyx/galaxy/note/editor/view/adapter/ImageAdapter;", "adapter", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImagePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ImagePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,180:1\n256#2,2:181\n256#2,2:183\n256#2,2:185\n256#2,2:187\n*S KotlinDebug\n*F\n+ 1 ImagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ImagePopup\n*L\n162#1:181,2\n164#1:183,2\n165#1:185,2\n176#1:187,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ImagePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean isMultiSelect;

    /* renamed from: s, reason: from kotlin metadata */
    public float popupHeight;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binging;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public ImageAdapter adapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ImagePopup$a */
    /* loaded from: classes9.dex */
    public static final class C12386a<T> implements Consumer {
        public C12386a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImagePopup.this.m48782A(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImagePopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.editorBundle = editorBundle;
        this.popupHeight = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_490);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupImageBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ImagePopup$binging$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupImageBinding invoke() {
                PopupImageBinding inflate = PopupImageBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binging = lazy;
        this.adapter = new ImageAdapter();
        View root = m48787q().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setFocusable(true);
        setBackgroundDrawable(null);
        m48789x();
        m48788r();
        m48791z();
    }

    /* renamed from: s */
    public static final void m48777s(ImagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.editorBundle, new PickInsertImageShapesEvent(1006));
        this$0.dismiss();
        TintTextView tvInsertFromGallery = this$0.m48787q().tvInsertFromGallery;
        Intrinsics.checkNotNullExpressionValue(tvInsertFromGallery, "tvInsertFromGallery");
        this$0.m48783B(tvInsertFromGallery);
    }

    /* renamed from: t */
    public static final void m48778t(ImagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.editorBundle, new TakePictureEvent());
        this$0.dismiss();
        TintTextView tvCamera = this$0.m48787q().tvCamera;
        Intrinsics.checkNotNullExpressionValue(tvCamera, "tvCamera");
        this$0.m48783B(tvCamera);
    }

    /* renamed from: u */
    public static final void m48779u(ImagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48784C();
    }

    /* renamed from: v */
    public static final void m48780v(ImagePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48790y(this$0.adapter.getSelectList());
    }

    /* renamed from: w */
    public static final void m48781w(ImagePopup this$0, BaseQuickAdapter adapter, View view, int i) {
        List<? extends Uri> listOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        Uri uri = (Uri) adapter.getItem(i);
        if (uri == null) {
            return;
        }
        if (this$0.isMultiSelect) {
            ((ImageAdapter) adapter).toggleSelect(uri, i);
            this$0.m48785D();
        } else {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(uri);
            this$0.m48790y(listOf);
        }
    }

    /* renamed from: A */
    public final void m48782A(List<? extends Uri> it2) {
        TintTextView tvEmpty = m48787q().tvEmpty;
        Intrinsics.checkNotNullExpressionValue(tvEmpty, "tvEmpty");
        tvEmpty.setVisibility(it2.isEmpty() ? 0 : 8);
        this.adapter.submitList(it2);
    }

    /* renamed from: B */
    public final void m48783B(View clickView) {
        String str = Intrinsics.areEqual(clickView, m48787q().tvInsertFromGallery) ? OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_MENU_INSERT_FROM_GALLERY_CLICK : Intrinsics.areEqual(clickView, m48787q().tvCamera) ? OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_MENU_INSERT_FROM_CAMERA_CLICK : null;
        if (str != null) {
            StatisticsBundle.INSTANCE.reportEvent(this.editorBundle, str, OnyxStatisticConstant.EVENT_TYPE_CLICK, null);
        }
    }

    /* renamed from: C */
    public final void m48784C() {
        ResManager resManager;
        int i;
        this.isMultiSelect = !this.isMultiSelect;
        TintTextView tintTextView = m48787q().tvSelect;
        if (this.isMultiSelect) {
            resManager = ResManager.INSTANCE;
            i = C10651R.string.cancel;
        } else {
            resManager = ResManager.INSTANCE;
            i = C10651R.string.select;
        }
        tintTextView.setText(resManager.getStringSafely(i));
        this.adapter.setMultiSelect(this.isMultiSelect);
        TintTextView tvBatchInsert = m48787q().tvBatchInsert;
        Intrinsics.checkNotNullExpressionValue(tvBatchInsert, "tvBatchInsert");
        tvBatchInsert.setVisibility(this.isMultiSelect ? 0 : 8);
        m48785D();
        TintTextView tvCamera = m48787q().tvCamera;
        Intrinsics.checkNotNullExpressionValue(tvCamera, "tvCamera");
        tvCamera.setVisibility(this.isMultiSelect ^ true ? 0 : 8);
        TintTextView tvInsertFromGallery = m48787q().tvInsertFromGallery;
        Intrinsics.checkNotNullExpressionValue(tvInsertFromGallery, "tvInsertFromGallery");
        tvInsertFromGallery.setVisibility(this.isMultiSelect ^ true ? 0 : 8);
    }

    /* renamed from: D */
    public final void m48785D() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.batch_insert_counter), Arrays.copyOf(new Object[]{Integer.valueOf(this.adapter.getSelectList().size()), Integer.valueOf(this.adapter.getMaxSelectCount())}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        m48787q().tvBatchInsert.setText(format);
        m48787q().tvBatchInsert.setEnabled(!this.adapter.getSelectList().isEmpty());
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: p */
    public final void m48786p() {
        if (getDockType() == DockType.TOP) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            m48787q().flContentLayout.setLayoutParams(layoutParams);
            FrameLayout flHeight = m48787q().flHeight;
            Intrinsics.checkNotNullExpressionValue(flHeight, "flHeight");
            ViewKt.setLayoutHeight(flHeight, Integer.valueOf((int) this.popupHeight));
        }
    }

    /* renamed from: q */
    public final PopupImageBinding m48787q() {
        return (PopupImageBinding) this.binging.getValue();
    }

    /* renamed from: r */
    public final void m48788r() {
        m48787q().tvInsertFromGallery.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sgi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImagePopup.m48777s(ImagePopup.this, view);
            }
        });
        m48787q().tvCamera.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tgi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImagePopup.m48778t(ImagePopup.this, view);
            }
        });
        m48787q().tvSelect.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ugi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImagePopup.m48779u(ImagePopup.this, view);
            }
        });
        m48787q().tvBatchInsert.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vgi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImagePopup.m48780v(ImagePopup.this, view);
            }
        });
        this.adapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.wgi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ImagePopup.m48781w(ImagePopup.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: x */
    public final void m48789x() {
        MaxHeightRecyclerView maxHeightRecyclerView = m48787q().imageList;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        maxHeightRecyclerView.setLayoutManager(new GridLayoutManager(context, resManager.getInteger(C10651R.integer.image_picker_span_count)));
        m48787q().imageList.setAdapter(this.adapter);
        m48787q().imageList.addItemDecoration(new GridDividerItemDecoration(resManager.getDimens(C7384R.dimen.dp_3), 0, false, false, 0, 14, null));
        m48785D();
        m48786p();
    }

    /* renamed from: y */
    public final void m48790y(List<? extends Uri> list) {
        if (list.isEmpty()) {
            return;
        }
        EditorBundleKt.postEvent(this.editorBundle, new InsertImagesEvent(list));
        dismiss();
    }

    /* renamed from: z */
    public final void m48791z() {
        new LoadMediaStoreRecentImagesAction(0, 1, null).build().doOnNext(new C12386a()).subscribe();
    }
}

package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.image.LoadMediaStoreRecentImagesAction;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickInsertImageShapesEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.databinding.LayoutImageShapeParamsContainerBinding;
import com.onyx.galaxy.note.editor.view.adapter.MediaStoreImageAdapter;
import com.onyx.galaxy.note.editor.view.toolbar.ImageShapeParamsContainer;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.permissionx.guolindev.PermissionX;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,B\u001d\b\u0016\u0012\u0006\u0010*\u001a\u00020)\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-¢\u0006\u0004\b+\u0010/B%\b\u0016\u0012\u0006\u0010*\u001a\u00020)\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\u0006\u00100\u001a\u00020\u0007¢\u0006\u0004\b+\u00101J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\u0004H\u0002J\u0012\u0010\u0011\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\u0016\u0010\u0015\u001a\u00020\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u001b\u0010(\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b&\u0010'¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;", "Landroid/widget/FrameLayout;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "onFinishInflate", "", "visibility", "setVisibility", "onWindowVisibilityChanged", "", "rotation", "setOrientationChanged", "d", "Landroid/net/Uri;", "uri", "j", C6999h.f39688c, "", "list", "i", "", "show", C4921e.f26537n, "", "e", Constants.STRING_SIG, "permission", "Lcom/onyx/galaxy/note/databinding/LayoutImageShapeParamsContainerBinding;", C6997f.f39671c, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutImageShapeParamsContainerBinding;", "binding", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/galaxy/note/editor/view/adapter/MediaStoreImageAdapter;", "getAdapter", "()Lcom/onyx/galaxy/note/editor/view/adapter/MediaStoreImageAdapter;", "adapter", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImageShapeParamsContainer extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String permission;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: g, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ImageShapeParamsContainer$a */
    /* loaded from: classes9.dex */
    public static final class C12505a<T> implements Consumer {
        public C12505a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Uri> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImageShapeParamsContainer.this.m49917i(it2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageShapeParamsContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: e */
    public static final void m49912e(ImageShapeParamsContainer this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m49918j((Uri) it2.getItem(i));
    }

    /* renamed from: f */
    public static final void m49913f(final ImageShapeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestImagePermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.zgi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ImageShapeParamsContainer.m49914g(ImageShapeParamsContainer.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: g */
    public static final void m49914g(ImageShapeParamsContainer this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, new PickInsertImageShapesEvent(1007));
    }

    private final MediaStoreImageAdapter getAdapter() {
        return (MediaStoreImageAdapter) this.adapter.getValue();
    }

    private final LayoutImageShapeParamsContainerBinding getBinding() {
        return (LayoutImageShapeParamsContainerBinding) this.binding.getValue();
    }

    /* renamed from: d */
    public final void m49915d() {
        ItemClickUtilsKt.setOnDebouncedItemClick$default(getAdapter(), 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.xgi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ImageShapeParamsContainer.m49912e(ImageShapeParamsContainer.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        getBinding().listview.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        RecyclerView listview = getBinding().listview;
        Intrinsics.checkNotNullExpressionValue(listview, "listview");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RecyclerViewKt.addMaterialItemDecoration$default(listview, context, 0, ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_8), false, 8, null);
        getBinding().listview.setAdapter(getAdapter());
        getBinding().add.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ygi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageShapeParamsContainer.m49913f(ImageShapeParamsContainer.this, view);
            }
        });
    }

    /* renamed from: h */
    public final void m49916h() {
        new LoadMediaStoreRecentImagesAction(0, 1, null).build().doOnNext(new C12505a()).subscribe();
    }

    /* renamed from: i */
    public final void m49917i(List<? extends Uri> list) {
        getAdapter().submitList(list);
        if (CollectionKt.isNonBlank(list)) {
            m49919k(true);
        } else {
            m49919k(PermissionX.isGranted(getContext(), this.permission));
        }
    }

    /* renamed from: j */
    public final void m49918j(Uri uri) {
        List listOf;
        if (uri == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(uri);
        EditorBundleKt.postEvent(editorBundle, new InsertImagesEvent(listOf));
    }

    /* renamed from: k */
    public final void m49919k(boolean show) {
        ViewKt.setViewVisibleOrInvisible(getBinding().listview, show);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m49916h();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (visibility == 0 && ViewKt.isVisible(this)) {
            m49916h();
        }
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setOrientationChanged(float rotation) {
        getAdapter().setOrientationChanged(rotation);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 0) {
            m49916h();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageShapeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ImageShapeParamsContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageShapeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.permission = "android.permission.READ_EXTERNAL_STORAGE";
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutImageShapeParamsContainerBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ImageShapeParamsContainer$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutImageShapeParamsContainerBinding invoke() {
                return LayoutImageShapeParamsContainerBinding.inflate(LayoutInflater.from(ImageShapeParamsContainer.this.getContext()), ImageShapeParamsContainer.this, true);
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<MediaStoreImageAdapter>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ImageShapeParamsContainer$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MediaStoreImageAdapter invoke() {
                return new MediaStoreImageAdapter();
            }
        });
        this.adapter = lazy2;
        m49915d();
    }

    public /* synthetic */ ImageShapeParamsContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

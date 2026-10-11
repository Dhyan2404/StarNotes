package com.onyx.galaxy.note.editor.view.toolbar;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Observer;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.colorset.action.QueryColorSetAction;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.theme.widgets.TintHorizontalScrollView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutShapeParamsContainerBinding;
import com.onyx.galaxy.note.editor.action.colorset.CreateColorSetAction;
import com.onyx.galaxy.note.editor.action.colorset.DeleteColorSetAction;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.event.DeleteColorSetModelEvent;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107B\u001d\b\u0016\u0012\u0006\u00105\u001a\u000204\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u000108¢\u0006\u0004\b6\u0010:B%\b\u0016\u0012\u0006\u00105\u001a\u000204\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u000108\u0012\u0006\u0010;\u001a\u00020\u000e¢\u0006\u0004\b6\u0010<J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u000e\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0019\u001a\u00020\u0002J\u0006\u0010\u001a\u001a\u00020\u0002J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001f\u001a\u00020\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u0004J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0007J\u0018\u0010&\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u000eH\u0014J\b\u0010'\u001a\u00020\u0002H\u0014J\b\u0010(\u001a\u00020\u0002H\u0014J\b\u0010)\u001a\u00020\u0002H\u0016R\"\u0010+\u001a\u00020*8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\f\u00103¨\u0006="}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;", "Lcom/onyx/android/sdk/theme/widgets/TintHorizontalScrollView;", "", C6997f.f39671c, "", "animate", "b", "Lcom/onyx/android/sdk/base/extension/IntList;", "colorSet", "j", "collected", "i", C6999h.f39688c, "", "", "d", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "colorSetModel", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "setPenViewModel", "colorChange", "sizeChange", "", "rotation", "setOrientationChanged", "isShow", "setShowSizeContainer", "Lcom/onyx/galaxy/note/editor/event/DeleteColorSetModelEvent;", NotificationCompat.CATEGORY_EVENT, "onDeleteColorSetModelEvent", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "onAttachedToWindow", "onDetachedFromWindow", "tint", "Lcom/onyx/galaxy/note/databinding/LayoutShapeParamsContainerBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/LayoutShapeParamsContainerBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutShapeParamsContainerBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/LayoutShapeParamsContainerBinding;)V", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeParamsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,208:1\n91#2,14:209\n326#3,4:223\n*S KotlinDebug\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer\n*L\n115#1:209,14\n164#1:223,4\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeParamsContainer extends TintHorizontalScrollView {
    public LayoutShapeParamsContainerBinding binding;

    /* renamed from: g, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    public PenViewModel penViewModel;

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer$a */
    /* loaded from: classes9.dex */
    public static final class C12526a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Integer> f60944f;

        public C12526a(List<Integer> list) {
            this.f60944f = list;
        }

        /* renamed from: a */
        public final void m50187a(boolean z) {
            ShapeParamsContainer.this.m50186j(TypeExtKt.toIntList(this.f60944f), true);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50187a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer$b */
    /* loaded from: classes9.dex */
    public static final class C12527b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f60945a;

        public C12527b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f60945a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f60945a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f60945a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer$c */
    /* loaded from: classes9.dex */
    public static final class C12528c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Integer> f60947f;

        public C12528c(List<Integer> list) {
            this.f60947f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ColorSetModel> it2) {
            Object first;
            Object first2;
            Intrinsics.checkNotNullParameter(it2, "it");
            if (CollectionKt.isNullOrEmpty(it2)) {
                ShapeParamsContainer.this.m50181d(this.f60947f);
                return;
            }
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            if (((ColorSetModel) first).getPreset()) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.unfavored_preset_color_set_tips, false, 2, (Object) null);
                return;
            }
            ShapeParamsContainer shapeParamsContainer = ShapeParamsContainer.this;
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            shapeParamsContainer.m50182e((ColorSetModel) first2);
        }
    }

    @SourceDebugExtension({"SMAP\nShapeParamsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$updateColorSetStatus$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1726#2,3:209\n*S KotlinDebug\n*F\n+ 1 ShapeParamsContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$updateColorSetStatus$1\n*L\n97#1:209,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer$d */
    /* loaded from: classes9.dex */
    public static final class C12529d<T, R> implements io.reactivex.rxjava3.functions.Function {

        /* renamed from: e */
        public static final C12529d<T, R> f60948e = new C12529d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<ColorSetModel> it2) {
            boolean z;
            Intrinsics.checkNotNullParameter(it2, "it");
            boolean z2 = false;
            if (CollectionKt.isNonBlank(it2)) {
                List<ColorSetModel> list = it2;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it3 = list.iterator();
                    while (it3.hasNext()) {
                        if (!(!((ColorSetModel) it3.next()).getPreset())) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (z) {
                    z2 = true;
                }
            }
            return Boolean.valueOf(z2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer$e */
    /* loaded from: classes9.dex */
    public static final class C12530e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ boolean f60950f;

        public C12530e(boolean z) {
            this.f60950f = z;
        }

        /* renamed from: a */
        public final void m50190a(boolean z) {
            ShapeParamsContainer.this.m50185i(z, this.f60950f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50190a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeParamsContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: c */
    public static /* synthetic */ void m50178c(ShapeParamsContainer shapeParamsContainer, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        shapeParamsContainer.m50180b(z);
    }

    /* renamed from: g */
    public static final void m50179g(ShapeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50184h();
    }

    public static /* synthetic */ void setShowSizeContainer$default(ShapeParamsContainer shapeParamsContainer, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        shapeParamsContainer.setShowSizeContainer(z);
    }

    /* renamed from: b */
    public final void m50180b(boolean animate) {
        PenViewModel penViewModel = this.penViewModel;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        ShapeToolType value = penViewModel.getPenType().getValue();
        if (value != null) {
            m50186j(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getColorListOption(value.getShapeType()).getValue(), animate);
        }
    }

    public final void colorChange() {
        if (getBinding().shapeSizeContainer.isShown()) {
            getBinding().colorSizeProperty.colorChange();
        }
    }

    /* renamed from: d */
    public final void m50181d(List<Integer> colorSet) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new CreateColorSetAction(context, colorSet).build().doOnNext(new C12526a(colorSet)).subscribe();
    }

    /* renamed from: e */
    public final void m50182e(ColorSetModel colorSetModel) {
        List listOf;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(colorSetModel.getUniqueId());
        RxBaseAction.execute$default(new DeleteColorSetAction(context, listOf), null, null, null, 7, null);
    }

    /* renamed from: f */
    public final void m50183f() {
        LayoutShapeParamsContainerBinding inflate = LayoutShapeParamsContainerBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
    }

    @NotNull
    public final LayoutShapeParamsContainerBinding getBinding() {
        LayoutShapeParamsContainerBinding layoutShapeParamsContainerBinding = this.binding;
        if (layoutShapeParamsContainerBinding != null) {
            return layoutShapeParamsContainerBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    /* renamed from: h */
    public final void m50184h() {
        List<Integer> viewColors = getBinding().colorSizeProperty.getViewColors();
        new QueryColorSetAction(viewColors).build().doOnNext(new C12528c(viewColors)).subscribe();
    }

    /* renamed from: i */
    public final void m50185i(boolean collected, boolean animate) {
        getBinding().ivColorSetStatus.setSelected(collected);
        if (animate) {
            Drawable drawable = getBinding().ivColorSetStatus.getDrawable();
            Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.StateListDrawable");
            Drawable current = ((StateListDrawable) drawable).getCurrent();
            Intrinsics.checkNotNull(current, "null cannot be cast to non-null type android.graphics.drawable.AnimatedVectorDrawable");
            final AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) current;
            Animator loadAnimator = AnimatorInflater.loadAnimator(getContext(), C10651R.animator.color_set_scale_bounce_head);
            Intrinsics.checkNotNull(loadAnimator, "null cannot be cast to non-null type android.animation.AnimatorSet");
            AnimatorSet animatorSet = (AnimatorSet) loadAnimator;
            Animator loadAnimator2 = AnimatorInflater.loadAnimator(getContext(), C10651R.animator.color_set_scale_bounce);
            Intrinsics.checkNotNull(loadAnimator2, "null cannot be cast to non-null type android.animation.AnimatorSet");
            final AnimatorSet animatorSet2 = (AnimatorSet) loadAnimator2;
            animatorSet.setTarget(getBinding().ivColorSetStatus);
            animatorSet2.setTarget(getBinding().ivColorSetStatus);
            animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer$toggleColorSetFavored$$inlined$addListener$default$1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(@NotNull Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(@NotNull Animator animator) {
                    animatedVectorDrawable.start();
                    animatorSet2.start();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(@NotNull Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(@NotNull Animator animator) {
                }
            });
            animatorSet.start();
        }
    }

    /* renamed from: j */
    public final void m50186j(IntList colorSet, boolean animate) {
        new QueryColorSetAction(colorSet).build().map(C12529d.f60948e).doOnNext(new C12530e(animate)).subscribe();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        GlobalBundle.INSTANCE.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteColorSetModelEvent(@NotNull DeleteColorSetModelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m50180b(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NotNull View changedView, int visibility) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == 0) {
            setShowSizeContainer$default(this, false, 1, null);
        }
    }

    public final void setBinding(@NotNull LayoutShapeParamsContainerBinding layoutShapeParamsContainerBinding) {
        Intrinsics.checkNotNullParameter(layoutShapeParamsContainerBinding, "<set-?>");
        this.binding = layoutShapeParamsContainerBinding;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        getBinding().colorSizeProperty.setEditorBundle(editorBundle);
    }

    public final void setOrientationChanged(float rotation) {
        getBinding().colorSizeProperty.setOrientationChanged(rotation);
        getBinding().ivColorSetStatus.setRotation(rotation);
    }

    public final void setPenViewModel(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        this.penViewModel = penViewModel;
        getBinding().colorSizeProperty.setPenViewModel(penViewModel);
        TintImageView ivColorSetStatus = getBinding().ivColorSetStatus;
        Intrinsics.checkNotNullExpressionValue(ivColorSetStatus, "ivColorSetStatus");
        ViewKt.click$default(ivColorSetStatus, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.emm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapeParamsContainer.m50179g(ShapeParamsContainer.this, view);
            }
        }, 1, null);
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return;
        }
        penViewModel.getColor().observe(appCompatActivity, new C12527b(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer$setPenViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                ShapeParamsContainer.m50178c(ShapeParamsContainer.this, false, 1, null);
            }
        }));
    }

    public final void setShowSizeContainer(boolean isShow) {
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().shapeSizeContainer, isShow);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().viewLine, isShow);
    }

    public final void sizeChange() {
        if (getBinding().colorSizeProperty.isShown()) {
            getBinding().colorSizeProperty.sizeChange();
            TintImageView ivColorSetStatus = getBinding().ivColorSetStatus;
            Intrinsics.checkNotNullExpressionValue(ivColorSetStatus, "ivColorSetStatus");
            ViewGroup.LayoutParams layoutParams = ivColorSetStatus.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            int i = C7384R.dimen.dp_24;
            layoutParams.width = i;
            layoutParams.height = i;
            ivColorSetStatus.setLayoutParams(layoutParams);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintHorizontalScrollView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        super.tint();
        m50178c(this, false, 1, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapeParamsContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m50183f();
    }

    public /* synthetic */ ShapeParamsContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

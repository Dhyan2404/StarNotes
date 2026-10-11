package com.onyx.galaxy.note.editor.menu;

import android.content.Context;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByShapeIdAction;
import com.onyx.android.sdk.universal.editor.events.note.DismissExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowQuoteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.event.EditExcerptCommentArgs;
import com.onyx.galaxy.note.editor.event.EditExcerptCommentEvent;
import com.onyx.galaxy.note.editor.event.OpenSlideBarEvents;
import com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup;
import com.onyx.galaxy.note.editor.view.popup.ExcerptJumpModelListPopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0002J\b\u0010\u0013\u001a\u00020\u0006H\u0002R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "Landroid/view/View;", "itemView", "", "onMenuClick", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;", "args", "updateExcerptSelection", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "c", "b", "e", C6997f.f39671c, C6998g.f39679a, "d", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;", "getArgs", "()Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;", "setArgs", "(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "manager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ExcerptSelectionMenuHandler extends BaseSelectionMenuHandler {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ShowExcerptPopupArgs args;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectionMenuType.values().length];
            try {
                iArr[SelectionMenuType.DELETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionMenuType.JUMP_TO_QUOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SelectionMenuType.COMMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExcerptSelectionMenuHandler(@NotNull SelectionMenuHandlerManager manager) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
    }

    /* renamed from: a */
    public final void m46365a() {
        EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new QuitExcerptSelectionEvent(false, new ExcerptSelectionMenuHandler$commentExcerpt$1(this), 1, null));
    }

    /* renamed from: b */
    public final void m46366b(final ShowExcerptPopupArgs args) {
        PagedSelectionMenu menuView = getManager().getMenuView();
        Context context = menuView != null ? menuView.getContext() : null;
        if (context == null) {
            return;
        }
        DocExcerptActionPopup.Companion.delete$default(DocExcerptActionPopup.INSTANCE, context, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.menu.ExcerptSelectionMenuHandler$deleteExcerpt$1

            /* renamed from: com.onyx.galaxy.note.editor.menu.ExcerptSelectionMenuHandler$deleteExcerpt$1$a */
            /* loaded from: classes9.dex */
            public static final class C12127a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ ExcerptSelectionMenuHandler f58909e;

                public C12127a(ExcerptSelectionMenuHandler excerptSelectionMenuHandler) {
                    this.f58909e = excerptSelectionMenuHandler;
                }

                /* renamed from: a */
                public final void m46372a(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    EditorBundleKt.appEventBus(this.f58909e.getEditorBundle$note_overseasRelease()).post(new QuitExcerptSelectionEvent(false, null, 2, null));
                    EditorBundleKt.appEventBus(this.f58909e.getEditorBundle$note_overseasRelease()).post(new DismissExcerptPopupEvent());
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    m46372a(obj);
                    return Unit.INSTANCE;
                }
            }

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
                Observable just = Observable.just(ExcerptSelectionMenuHandler.this);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                final ShowExcerptPopupArgs showExcerptPopupArgs = args;
                Function1<ExcerptSelectionMenuHandler, Boolean> function1 = new Function1<ExcerptSelectionMenuHandler, Boolean>() { // from class: com.onyx.galaxy.note.editor.menu.ExcerptSelectionMenuHandler$deleteExcerpt$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull ExcerptSelectionMenuHandler it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(ShowExcerptPopupArgs.this.getHitTestShape().getShapeUniqueId().length() > 0);
                    }
                };
                final ExcerptSelectionMenuHandler excerptSelectionMenuHandler = ExcerptSelectionMenuHandler.this;
                final ShowExcerptPopupArgs showExcerptPopupArgs2 = args;
                Observable<R> map = RxjavaKt.flatMapIf(just, function1, new Function1<ExcerptSelectionMenuHandler, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.menu.ExcerptSelectionMenuHandler$deleteExcerpt$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Observable<? extends Object> invoke(@NotNull ExcerptSelectionMenuHandler it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return new DeleteExcerptByShapeIdAction(ExcerptSelectionMenuHandler.this.getEditorBundle$note_overseasRelease(), showExcerptPopupArgs2.getHitTestVirtualPage(), showExcerptPopupArgs2.getHitTestShape().getShapeUniqueId(), showExcerptPopupArgs2.getHitTestShape()).build();
                    }
                }).map(new C12127a(ExcerptSelectionMenuHandler.this));
                Intrinsics.checkNotNullExpressionValue(map, "map(...)");
                RxjavaKt.subscribeWithDefault$default(map, null, null, null, 7, null);
            }
        }, null, 4, null);
    }

    /* renamed from: c */
    public final void m46367c(Shape shape) {
        if (this.args != null) {
            EditorBundleKt.postEvent(getEditorBundle$note_overseasRelease(), new OpenSlideBarEvents(SlideBarType.SLIDE_OUTLINE, new EditExcerptCommentEvent(new EditExcerptCommentArgs(shape))));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final void m46368d() {
        EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new QuitExcerptSelectionEvent(false, null, 3, 0 == true ? 1 : 0));
        EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new DismissExcerptPopupEvent());
    }

    /* renamed from: e */
    public final void m46369e() {
        Debug.INSTANCE.m32059w(ExcerptSelectionMenuHandler.class, "excerptCollectionList is empty", new Object[0]);
        m46368d();
    }

    /* renamed from: f */
    public final void m46370f(ShowExcerptPopupArgs args) {
        Context context;
        PagedSelectionMenu menuView = getManager().getMenuView();
        if (menuView == null || (context = menuView.getContext()) == null) {
            return;
        }
        View view = getEditorBundle$note_overseasRelease().getDisplayBundle().getView();
        ExcerptJumpModelListPopup excerptJumpModelListPopup = new ExcerptJumpModelListPopup(context, getEditorBundle$note_overseasRelease(), CollectionKt.copy(args.getExcerptCollectionList()), CollectionKt.copy(args.getNoteModelList()));
        Intrinsics.checkNotNull(view);
        PopupWindowKt.showAtShapeTop$default(excerptJumpModelListPopup, view, menuView, args.getHitTestShape(), args.getHitTestVirtualPage(), 0, 0, 48, null);
        m46368d();
    }

    /* renamed from: g */
    public final void m46371g() {
        EditorBundleKt.appEventBus(getEditorBundle$note_overseasRelease()).post(new QuitExcerptSelectionEvent(true, new Function1<Shape, Unit>() { // from class: com.onyx.galaxy.note.editor.menu.ExcerptSelectionMenuHandler$splitScreenShowQuote$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Shape shape) {
                invoke2(shape);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Shape it2) {
                List<ExcerptCollectionModel> excerptCollectionList;
                Object firstOrNull;
                Intrinsics.checkNotNullParameter(it2, "it");
                ShowExcerptPopupArgs args = ExcerptSelectionMenuHandler.this.getArgs();
                if (args == null || (excerptCollectionList = args.getExcerptCollectionList()) == null) {
                    return;
                }
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) excerptCollectionList);
                ExcerptCollectionModel excerptCollectionModel = (ExcerptCollectionModel) firstOrNull;
                if (excerptCollectionModel == null) {
                    return;
                }
                EditorBundleKt.postEvent(ExcerptSelectionMenuHandler.this.getEditorBundle$note_overseasRelease(), new SplitScreenShowQuoteEvent(excerptCollectionModel.getSourceShapeId(), excerptCollectionModel.getQuoteDocId(), excerptCollectionModel.getQuoteShapeId()));
            }
        }));
    }

    @Nullable
    public final ShowExcerptPopupArgs getArgs() {
        return this.args;
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        ShowExcerptPopupArgs showExcerptPopupArgs = this.args;
        if (showExcerptPopupArgs == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[menu.ordinal()];
        if (i == 1) {
            m46366b(showExcerptPopupArgs);
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            m46365a();
            return;
        }
        int size = showExcerptPopupArgs.getExcerptCollectionList().size();
        if (size == 0) {
            m46369e();
        } else if (size != 1) {
            m46370f(showExcerptPopupArgs);
        } else {
            m46371g();
        }
    }

    public final void setArgs(@Nullable ShowExcerptPopupArgs showExcerptPopupArgs) {
        this.args = showExcerptPopupArgs;
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void updateExcerptSelection(@NotNull ShowExcerptPopupArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.updateExcerptSelection(args);
        this.args = args;
    }
}

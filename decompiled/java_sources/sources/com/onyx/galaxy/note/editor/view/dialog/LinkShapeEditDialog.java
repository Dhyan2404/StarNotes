package com.onyx.galaxy.note.editor.view.dialog;

import android.app.Dialog;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.DialogExtKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeLinkUtils;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction;
import com.onyx.android.sdk.universal.editor.action.doc.CheckNotePageExistAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelAction;
import com.onyx.android.sdk.universal.editor.action.link.UpdateLinkShapeAction;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIndexFromIdAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.PopupShapeLinkEditBinding;
import com.onyx.galaxy.note.editor.event.KeyboardCloseEvent;
import com.onyx.galaxy.note.editor.event.KeyboardOpenEvent;
import com.onyx.galaxy.note.editor.menu.PagedSelectionMenu;
import com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010/\u001a\u00020,\u0012\u0006\u00103\u001a\u000200¢\u0006\u0004\bI\u0010JJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J,\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\u0012\u0010\u001e\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014J\u0006\u0010\u001f\u001a\u00020\u0000J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010 \u001a\u00020\u0002H\u0016J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0007J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020$H\u0007R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u00105\u001a\u0004\b6\u00107R\u0016\u0010;\u001a\u0002098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010:R\u0016\u0010>\u001a\u00020<8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010=R=\u0010H\u001a\u001d\u0012\u0013\u0012\u001109¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010G¨\u0006K"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;", "Landroid/app/Dialog;", "", "w", "A", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "j", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;", "docBean", "", CouchFieldKey.KEY_TOC_PAGE_ID, "Lio/reactivex/rxjava3/core/Observable;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "u", C4921e.f26528e, "l", "", "show", "z", "Landroid/view/View;", "editText", "m", C4921e.f26537n, "i", "x", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "updateLocation", "dismiss", "Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;", NotificationCompat.CATEGORY_EVENT, "onKeyboardOpen", "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;", "onKeyboardClose", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "e", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "parentView", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/databinding/PopupShapeLinkEditBinding;", "binding", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "shapeLinkBean", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "linkModel", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "linkBean", "Lkotlin/jvm/functions/Function1;", "getUpdatedCallback", "()Lkotlin/jvm/functions/Function1;", "setUpdatedCallback", "(Lkotlin/jvm/functions/Function1;)V", "updatedCallback", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class LinkShapeEditDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PagedSelectionMenu parentView;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: j, reason: from kotlin metadata */
    public ShapeLinkBean shapeLinkBean;

    /* renamed from: k, reason: from kotlin metadata */
    public LinkModel linkModel;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Function1<? super ShapeLinkBean, Unit> updatedCallback;

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12313a<T> implements Consumer {
        public C12313a() {
        }

        /* renamed from: a */
        public final void m48019a(boolean z) {
            ViewKt.setViewVisibleOrGone(LinkShapeEditDialog.this.m48013n().linkPositionInvalidTip, !z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48019a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12314b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LinkDocBean f59868e;

        public C12314b(LinkDocBean linkDocBean) {
            this.f59868e = linkDocBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PageNameList.Companion companion = PageNameList.INSTANCE;
            return Boolean.valueOf(companion.contains(it2.getPageNameList(), this.f59868e.getPageId()) && this.f59868e.getPageIndex() < companion.getSize(it2.getPageNameList()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$c */
    /* loaded from: classes9.dex */
    public static final class C12315c<T> implements Consumer {
        public C12315c() {
        }

        /* renamed from: a */
        public final void m48021a(boolean z) {
            ViewKt.setViewVisibleOrGone(LinkShapeEditDialog.this.m48013n().linkPositionInvalidTip, !z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48021a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$d */
    /* loaded from: classes9.dex */
    public static final class C12316d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f59870e;

        public C12316d(EditorBundle editorBundle) {
            this.f59870e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloseDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59870e.destroy();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$e */
    /* loaded from: classes9.dex */
    public static final class C12317e<T> implements Consumer {
        public C12317e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateLinkShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Function1<ShapeLinkBean, Unit> updatedCallback = LinkShapeEditDialog.this.getUpdatedCallback();
            ShapeLinkBean shapeLinkBean = LinkShapeEditDialog.this.shapeLinkBean;
            if (shapeLinkBean == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
                shapeLinkBean = null;
            }
            updatedCallback.invoke(shapeLinkBean);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$f */
    /* loaded from: classes9.dex */
    public static final class C12318f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ LinkDocBean f59873f;

        /* renamed from: g */
        public final /* synthetic */ String f59874g;

        public C12318f(LinkDocBean linkDocBean, String str) {
            this.f59873f = linkDocBean;
            this.f59874g = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LinkShapeEditDialog linkShapeEditDialog = LinkShapeEditDialog.this;
            return linkShapeEditDialog.m48007C(linkShapeEditDialog.editorBundle, it2, this.f59873f, this.f59874g);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$g */
    /* loaded from: classes9.dex */
    public static final class C12319g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f59875e;

        /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$g$a */
        /* loaded from: classes9.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ SyncNoteModel f59876e;

            public a(SyncNoteModel syncNoteModel) {
                this.f59876e = syncNoteModel;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final SyncNoteModel apply(@NotNull OpenDocumentDataAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f59876e;
            }
        }

        public C12319g(EditorBundle editorBundle) {
            this.f59875e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull SyncNoteModel noteModel) {
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            return new OpenDocumentDataAction(this.f59875e, OpenDocArgs.INSTANCE.createFrom(noteModel)).build().map(new a(noteModel));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$h */
    /* loaded from: classes9.dex */
    public static final class C12320h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f59878f;

        /* renamed from: g */
        public final /* synthetic */ LinkDocBean f59879g;

        /* renamed from: h */
        public final /* synthetic */ String f59880h;

        public C12320h(EditorBundle editorBundle, LinkDocBean linkDocBean, String str) {
            this.f59878f = editorBundle;
            this.f59879g = linkDocBean;
            this.f59880h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LinkShapeEditDialog.this.m48007C(this.f59878f, it2, this.f59879g, this.f59880h);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$i */
    /* loaded from: classes9.dex */
    public static final class C12321i<T> implements Predicate {

        /* renamed from: e */
        public static final C12321i<T> f59881e = new C12321i<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<Integer> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$j */
    /* loaded from: classes9.dex */
    public static final class C12322j<T, R> implements Function {

        /* renamed from: e */
        public static final C12322j<T, R> f59882e = new C12322j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull List<Integer> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            return (Integer) first;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$k */
    /* loaded from: classes9.dex */
    public static final class C12323k<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ LinkDocBean f59884f;

        /* renamed from: g */
        public final /* synthetic */ SyncNoteModel f59885g;

        public C12323k(LinkDocBean linkDocBean, SyncNoteModel syncNoteModel) {
            this.f59884f = linkDocBean;
            this.f59885g = syncNoteModel;
        }

        /* renamed from: a */
        public final void m48030a(int i) {
            ShapeLinkBean shapeLinkBean = LinkShapeEditDialog.this.shapeLinkBean;
            if (shapeLinkBean == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
                shapeLinkBean = null;
            }
            shapeLinkBean.setValue(String.valueOf(i));
            this.f59884f.setTitle(this.f59885g.getTitle());
            this.f59884f.setPageIndex(i);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48030a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$l */
    /* loaded from: classes9.dex */
    public static final class C12324l<T> implements Consumer {
        public C12324l() {
        }

        /* renamed from: a */
        public final void m48031a(int i) {
            LinkShapeEditDialog.this.m48011l();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48031a(((Number) obj).intValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkShapeEditDialog(@NotNull PagedSelectionMenu parentView, @NotNull EditorBundle editorBundle, @NotNull Shape shape, @NotNull TouchPoint touchPoint) {
        super(parentView.getContext(), C10651R.style.Custom_NoTitle_Dialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.parentView = parentView;
        this.editorBundle = editorBundle;
        this.shape = shape;
        this.touchPoint = touchPoint;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupShapeLinkEditBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupShapeLinkEditBinding invoke() {
                return PopupShapeLinkEditBinding.inflate(LayoutInflater.from(LinkShapeEditDialog.this.getContext()));
            }
        });
        this.binding = lazy;
        this.updatedCallback = new Function1<ShapeLinkBean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.LinkShapeEditDialog$updatedCallback$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShapeLinkBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeLinkBean shapeLinkBean) {
                invoke2(shapeLinkBean);
                return Unit.INSTANCE;
            }
        };
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(shape.getText(), ShapeLinkBean.class);
        if (shapeLinkBean != null) {
            this.shapeLinkBean = shapeLinkBean;
            LinkModel createLinkModel = ShapeLinkUtils.INSTANCE.createLinkModel(shape);
            Intrinsics.checkNotNull(createLinkModel);
            this.linkModel = createLinkModel;
            m48016w();
        }
    }

    /* renamed from: B */
    public static final void m47990B(LinkShapeEditDialog this$0, EditorBundle targetDocBundle) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(targetDocBundle, "$targetDocBundle");
        this$0.m48009j(targetDocBundle);
    }

    /* renamed from: p */
    public static final void m47999p(LinkShapeEditDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48013n().edittext.setText("");
    }

    /* renamed from: q */
    public static final void m48000q(LinkShapeEditDialog this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewKt.setViewVisibleOrGone(this$0.m48013n().close, z);
    }

    /* renamed from: r */
    public static final boolean m48001r(LinkShapeEditDialog this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 6) {
            return true;
        }
        Intrinsics.checkNotNull(textView);
        this$0.m48012m(textView);
        return true;
    }

    /* renamed from: s */
    public static final void m48002s(LinkShapeEditDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48018z(true);
    }

    /* renamed from: t */
    public static final void m48003t(LinkShapeEditDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48017x();
    }

    /* renamed from: v */
    public static final void m48004v(LinkShapeEditDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48010k();
    }

    /* renamed from: y */
    public static final void m48005y(LinkShapeEditDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: A */
    public final void m48006A() {
        String pageId;
        ShapeLinkBean shapeLinkBean = this.shapeLinkBean;
        ShapeLinkBean shapeLinkBean2 = null;
        if (shapeLinkBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean = null;
        }
        if (shapeLinkBean.isLinkPageType()) {
            ShapeLinkBean shapeLinkBean3 = this.shapeLinkBean;
            if (shapeLinkBean3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            } else {
                shapeLinkBean2 = shapeLinkBean3;
            }
            LinkDocBean docBean = shapeLinkBean2.getDocBean();
            if (docBean == null || (pageId = docBean.getPageId()) == null) {
                return;
            }
            if (Intrinsics.areEqual(EditorBundleKt.docId(this.editorBundle), docBean.getDocumentId())) {
                Observable<R> flatMap = new LoadNoteModelAction(this.editorBundle, String.valueOf(docBean.getDocumentId())).build().flatMap(new C12318f(docBean, pageId));
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                RxjavaKt.subscribeWithDefault$default(flatMap, null, null, null, 7, null);
            } else {
                final EditorBundle createInstance = EditorBundle.INSTANCE.createInstance();
                Observable doFinally = new LoadNoteModelAction(this.editorBundle, String.valueOf(docBean.getDocumentId())).build().flatMap(new C12319g(createInstance)).flatMap(new C12320h(createInstance, docBean, pageId)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.izi
                    @Override // io.reactivex.rxjava3.functions.Action
                    public final void run() {
                        LinkShapeEditDialog.m47990B(LinkShapeEditDialog.this, createInstance);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
                RxjavaKt.subscribeWithDefault$default(doFinally, null, null, null, 7, null);
            }
        }
    }

    /* renamed from: C */
    public final Observable<?> m48007C(EditorBundle editorBundle, SyncNoteModel noteModel, LinkDocBean docBean, String pageId) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        Observable<?> doOnNext = new GetPageIndexFromIdAction(editorBundle, listOf).build().filter(C12321i.f59881e).map(C12322j.f59882e).doOnNext(new C12323k(docBean, noteModel)).doOnNext(new C12324l());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        GlobalBundle.INSTANCE.unregister(this);
        super.dismiss();
    }

    @NotNull
    public final Function1<ShapeLinkBean, Unit> getUpdatedCallback() {
        return this.updatedCallback;
    }

    /* renamed from: i */
    public final void m48008i() {
        ShapeLinkBean shapeLinkBean = this.shapeLinkBean;
        ShapeLinkBean shapeLinkBean2 = null;
        if (shapeLinkBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean = null;
        }
        if (shapeLinkBean.isLinkNoteType()) {
            ShapeLinkBean shapeLinkBean3 = this.shapeLinkBean;
            if (shapeLinkBean3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            } else {
                shapeLinkBean2 = shapeLinkBean3;
            }
            LinkDocBean docBean = shapeLinkBean2.getDocBean();
            if (docBean == null) {
                return;
            }
            if (!docBean.isLinkPageValid()) {
                ViewKt.setViewVisibleOrGone(m48013n().linkPositionInvalidTip, true);
                return;
            }
            if (!Intrinsics.areEqual(EditorBundleKt.docId(this.editorBundle), docBean.getDocumentId())) {
                new LoadNoteModelAction(this.editorBundle, String.valueOf(docBean.getDocumentId())).build().map(new C12314b(docBean)).doOnNext(new C12315c()).subscribe();
                return;
            }
            EditorBundle editorBundle = this.editorBundle;
            String pageId = docBean.getPageId();
            if (pageId == null) {
                pageId = "";
            }
            new CheckNotePageExistAction(editorBundle, pageId).build().doOnNext(new C12313a()).subscribe();
        }
    }

    /* renamed from: j */
    public final void m48009j(EditorBundle editorBundle) {
        Observable<CloseDocumentAction> doOnNext = new CloseDocumentAction(editorBundle, false, false, 4, null).build().doOnNext(new C12316d(editorBundle));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: k */
    public final void m48010k() {
        String obj = m48013n().valueEdittext.getText().toString();
        ShapeLinkBean shapeLinkBean = this.shapeLinkBean;
        if (shapeLinkBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean = null;
        }
        if (shapeLinkBean.isLinkUrlType() && StringKt.isEmpty(obj)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C7106R.string.input_empty, false, 2, (Object) null);
            return;
        }
        ShapeLinkBean shapeLinkBean2 = this.shapeLinkBean;
        if (shapeLinkBean2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean2 = null;
        }
        if (shapeLinkBean2.isLinkUrlType() && !StringKt.isUrl(obj)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C7153R.string.please_input_correct_url, false, 2, (Object) null);
        } else {
            m48013n().linkPosition.setText(obj);
            m48018z(false);
        }
    }

    /* renamed from: l */
    public final void m48011l() {
        ShapeLinkBean shapeLinkBean = this.shapeLinkBean;
        LinkModel linkModel = null;
        if (shapeLinkBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean = null;
        }
        if (shapeLinkBean.isLinkUrlType()) {
            m48013n().linkTo.setText(C10651R.string.website);
            TintTextView tintTextView = m48013n().linkPosition;
            LinkModel linkModel2 = this.linkModel;
            if (linkModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("linkModel");
                linkModel2 = null;
            }
            tintTextView.setText(linkModel2.getContent());
        } else {
            m48013n().linkTo.setText(C10651R.string.note);
            TintTextView tintTextView2 = m48013n().linkPosition;
            ShapeLinkUtils shapeLinkUtils = ShapeLinkUtils.INSTANCE;
            ShapeLinkBean shapeLinkBean2 = this.shapeLinkBean;
            if (shapeLinkBean2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
                shapeLinkBean2 = null;
            }
            tintTextView2.setText(shapeLinkUtils.getLinkValue(shapeLinkBean2));
            m48013n().linkTargetLayout.setEnabled(false);
        }
        TouchModeMaxLengthEditText touchModeMaxLengthEditText = m48013n().edittext;
        LinkModel linkModel3 = this.linkModel;
        if (linkModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linkModel");
        } else {
            linkModel = linkModel3;
        }
        touchModeMaxLengthEditText.setText(linkModel.loadDisplayTitle());
    }

    /* renamed from: m */
    public final void m48012m(View editText) {
        editText.clearFocus();
        ViewKt.hideInputKeyboard(editText);
    }

    /* renamed from: n */
    public final PopupShapeLinkEditBinding m48013n() {
        return (PopupShapeLinkEditBinding) this.binding.getValue();
    }

    /* renamed from: o */
    public final void m48014o() {
        m48013n().close.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bzi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkShapeEditDialog.m47999p(LinkShapeEditDialog.this, view);
            }
        });
        m48013n().edittext.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.czi
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                LinkShapeEditDialog.m48000q(LinkShapeEditDialog.this, view, z);
            }
        });
        m48013n().edittext.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.dzi
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m48001r;
                m48001r = LinkShapeEditDialog.m48001r(LinkShapeEditDialog.this, textView, i, keyEvent);
                return m48001r;
            }
        });
        m48013n().linkTargetLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ezi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkShapeEditDialog.m48002s(LinkShapeEditDialog.this, view);
            }
        });
        m48013n().finish.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fzi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkShapeEditDialog.m48003t(LinkShapeEditDialog.this, view);
            }
        });
        m48011l();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063278, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardClose(@NotNull KeyboardCloseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        updateLocation();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardOpen(@NotNull KeyboardOpenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DialogExtKt.moveAboveKeyboard(this, this.parentView, Integer.valueOf(event.getKeyboardHeight()));
    }

    public final void setUpdatedCallback(@NotNull Function1<? super ShapeLinkBean, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.updatedCallback = function1;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: u */
    public final void m48015u() {
        TintEditText tintEditText = m48013n().valueEdittext;
        ShapeLinkBean shapeLinkBean = this.shapeLinkBean;
        if (shapeLinkBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean = null;
        }
        tintEditText.setText(shapeLinkBean.getValue());
        m48013n().back.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hzi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LinkShapeEditDialog.m48004v(LinkShapeEditDialog.this, view);
            }
        });
    }

    @NotNull
    public final LinkShapeEditDialog updateLocation() {
        RectF copy = RectFKt.copy(this.parentView.getSelectionRect());
        ResManager resManager = ResManager.INSTANCE;
        copy.offset(0.0f, resManager.getDimension(C7384R.dimen.dp_48));
        RectF rectF = resManager.getScreenContentSize().toRectF();
        float dimens = resManager.getDimens(C7384R.dimen.dp_248);
        boolean z = rectF.bottom - copy.bottom > dimens;
        boolean z2 = copy.top - rectF.top > dimens;
        float centerX = copy.centerX() - (rectF.width() / 2);
        if (z || !z2) {
            DialogExtKt.setDialogLocation$default(this, 49, Float.valueOf(centerX), Float.valueOf(copy.bottom), null, null, false, 56, null);
        } else {
            DialogExtKt.setDialogLocation$default(this, 49, Float.valueOf(centerX), Float.valueOf(copy.top - dimens), null, null, false, 56, null);
        }
        return this;
    }

    /* renamed from: w */
    public final void m48016w() {
        m48014o();
        m48015u();
        m48008i();
        m48006A();
    }

    /* renamed from: x */
    public final void m48017x() {
        String safelyGetStr = StringKt.safelyGetStr(m48013n().edittext.getText().toString());
        ShapeLinkBean shapeLinkBean = null;
        if (StringKt.isEmpty(safelyGetStr)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C7106R.string.input_empty, false, 2, (Object) null);
            return;
        }
        String safelyGetStr2 = StringKt.safelyGetStr(m48013n().valueEdittext.getText().toString());
        LinkModel linkModel = this.linkModel;
        if (linkModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linkModel");
            linkModel = null;
        }
        if (Intrinsics.areEqual(StringKt.safelyGetStr(linkModel.loadDisplayTitle()), safelyGetStr)) {
            ShapeLinkBean shapeLinkBean2 = this.shapeLinkBean;
            if (shapeLinkBean2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
                shapeLinkBean2 = null;
            }
            if (Intrinsics.areEqual(StringKt.safelyGetStr(shapeLinkBean2.getValue()), safelyGetStr2)) {
                dismiss();
                return;
            }
        }
        ShapeLinkBean shapeLinkBean3 = this.shapeLinkBean;
        if (shapeLinkBean3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean3 = null;
        }
        shapeLinkBean3.setRemark(safelyGetStr);
        ShapeLinkBean shapeLinkBean4 = this.shapeLinkBean;
        if (shapeLinkBean4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
            shapeLinkBean4 = null;
        }
        shapeLinkBean4.setValue(safelyGetStr2);
        EditorBundle editorBundle = this.editorBundle;
        Shape shape = this.shape;
        ShapeLinkBean shapeLinkBean5 = this.shapeLinkBean;
        if (shapeLinkBean5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shapeLinkBean");
        } else {
            shapeLinkBean = shapeLinkBean5;
        }
        new UpdateLinkShapeAction(editorBundle, shape, shapeLinkBean, this.touchPoint).build().doOnNext(new C12317e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.gzi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LinkShapeEditDialog.m48005y(LinkShapeEditDialog.this);
            }
        }).subscribe();
    }

    /* renamed from: z */
    public final void m48018z(boolean show) {
        ViewKt.setViewVisibleOrInvisible(m48013n().valueEditLayout, show);
        ViewKt.setViewVisibleOrInvisible(m48013n().titleEditLayout, !show);
    }
}

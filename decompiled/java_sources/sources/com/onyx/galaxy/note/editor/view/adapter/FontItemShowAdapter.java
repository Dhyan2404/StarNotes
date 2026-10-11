package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.liulishuo.okdownload.DownloadTask;
import com.onegravity.rteditor.fonts.FontManager;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.note.common.data.text.TextInputConfig;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.fonts.LoadFontTypefaceAction;
import com.onyx.android.sdk.universal.editor.events.note.TextFontChangeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemFontShowBinding;
import com.onyx.galaxy.note.editor.event.TextFontItemDeleteEvent;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.optionals.OptionalsKt;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u00103\u001a\u000200¢\u0006\u0004\bG\u0010HJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J \u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J \u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u001e\u0010\u001b\u001a\u00020\u00072\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001d\u001a\u00020\tH\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0002H\u0002J(\u0010\u001f\u001a\u00020\u00072\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0015J\u000e\u0010!\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u0013J\u0016\u0010$\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"J\u0006\u0010%\u001a\u00020\u0007J\u000e\u0010&\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0002J&\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010(\u001a\u00020'2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\tH\u0014J\u0010\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-H\u0016R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R*\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010@\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010BR \u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\"0D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010E¨\u0006I"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;", "binding", "model", "", "s", "", "position", "z", "", "u", C4921e.f26528e, "Lio/reactivex/rxjava3/core/Observable;", "w", "Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;", "action", "", "fontPath", "x", "", "state", "y", "holder", "item", "A", "v", "getSelectedIndex", "t", "onBindViewHolder", "path", "containTypeface", "Landroid/graphics/Typeface;", "typeface", "saveTypeface", "clearTypeface", "isSelected", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "getItemSelectedListener", "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "setItemSelectedListener", "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V", "itemSelectedListener", Constants.STRING_SIG, "getSelectFontPath", "()Ljava/lang/String;", "setSelectFontPath", "(Ljava/lang/String;)V", "selectFontPath", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "", "Ljava/util/Map;", "typefaceMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFontItemShowAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontItemShowAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n350#2,7:249\n*S KotlinDebug\n*F\n+ 1 FontItemShowAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter\n*L\n230#1:249,7\n*E\n"})
/* loaded from: classes9.dex */
public final class FontItemShowAdapter extends BaseQuickAdapter<FontModel, DataBindingHolder<ItemFontShowBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public BaseSelectableQuickAdapter.ItemSelectionListener<FontModel> itemSelectedListener;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public String selectFontPath;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Typeface> typefaceMap;

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12268a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ FontModel f59537f;

        public C12268a(FontModel fontModel) {
            this.f59537f = fontModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FontItemShowAdapter.this.m47592v(this.f59537f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$b */
    /* loaded from: classes9.dex */
    public static final class C12269b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ItemFontShowBinding f59538e;

        public C12269b(ItemFontShowBinding itemFontShowBinding) {
            this.f59538e = itemFontShowBinding;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Optional<Bitmap> apply(@NotNull FontItemShowAdapter it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TintTextView tvTitle = this.f59538e.tvTitle;
            Intrinsics.checkNotNullExpressionValue(tvTitle, "tvTitle");
            return Optional.ofNullable(ViewKt.capture(tvTitle));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$c */
    /* loaded from: classes9.dex */
    public static final class C12270c<T> implements Predicate {

        /* renamed from: e */
        public static final C12270c<T> f59539e = new C12270c<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull Optional<Bitmap> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BitmapKt.isValid((Bitmap) OptionalsKt.getOrNull(it2));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$d */
    /* loaded from: classes9.dex */
    public static final class C12271d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f59540e;

        public C12271d(String str) {
            this.f59540e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Optional<Bitmap> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap bitmap = it2.get();
            Intrinsics.checkNotNullExpressionValue(bitmap, "get(...)");
            return Boolean.valueOf(BitmapKt.save$default(bitmap, this.f59540e, 0, 2, null));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$e */
    /* loaded from: classes9.dex */
    public static final class C12272e<T> implements Predicate {

        /* renamed from: e */
        public static final C12272e<T> f59541e = new C12272e<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.isCompleted();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$f */
    /* loaded from: classes9.dex */
    public static final class C12273f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f59542e;

        /* renamed from: f */
        public final /* synthetic */ String f59543f;

        public C12273f(String str, String str2) {
            this.f59542e = str;
            this.f59543f = str2;
        }

        /* renamed from: a */
        public final void m47602a(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FileUtils.moveFile(new File(this.f59542e), new File(this.f59543f));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m47602a((OnyxFileTransferStatus) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$g */
    /* loaded from: classes9.dex */
    public static final class C12274g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f59544e;

        public C12274g(String str) {
            this.f59544e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadFontTypefaceAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadFontTypefaceAction(this.f59544e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$h */
    /* loaded from: classes9.dex */
    public static final class C12275h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ FontModel f59546f;

        /* renamed from: g */
        public final /* synthetic */ String f59547g;

        public C12275h(FontModel fontModel, String str) {
            this.f59546f = fontModel;
            this.f59547g = str;
        }

        /* renamed from: a */
        public final void m47604a(@NotNull LoadFontTypefaceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FontItemShowAdapter.this.m47594x(it2, this.f59546f, this.f59547g);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m47604a((LoadFontTypefaceAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontItemShowAdapter(@NotNull EditorBundle editorBundle) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.selectFontPath = MMKVNote.INSTANCE.getTextInputConfigOption().get().getFontFace();
        this.compositeDisposable = new CompositeDisposable();
        this.typefaceMap = new LinkedHashMap();
    }

    /* renamed from: p */
    public static final void m47584p(FontModel model, FontItemShowAdapter this$0, View view) {
        Intrinsics.checkNotNullParameter(model, "$model");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        if (fontModelExt.isLocalResource(model) || fontModelExt.isDownloaded(model)) {
            this$0.m47592v(model);
        } else {
            this$0.m47593w(model).doOnNext(new C12268a(model)).subscribe();
        }
    }

    /* renamed from: q */
    public static final void m47585q(FontItemShowAdapter this$0, FontModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        this$0.m47593w(model).subscribe();
    }

    /* renamed from: r */
    public static final void m47586r(FontItemShowAdapter this$0, FontModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        this$0.m47590t(model);
    }

    /* renamed from: A */
    public final void m47587A(DataBindingHolder<ItemFontShowBinding> holder, FontModel item) {
        Typeface typeface = this.typefaceMap.get(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, item, null, 1, null));
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        holder.getBinding().tvTitle.setTypeface(typeface);
    }

    public final void clearTypeface() {
        this.typefaceMap.clear();
    }

    public final boolean containTypeface(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return this.typefaceMap.containsKey(path);
    }

    @Nullable
    public final BaseSelectableQuickAdapter.ItemSelectionListener<FontModel> getItemSelectedListener() {
        return this.itemSelectedListener;
    }

    @NotNull
    public final String getSelectFontPath() {
        return this.selectFontPath;
    }

    public final int getSelectedIndex() {
        Iterator<FontModel> it2 = getItems().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, it2.next(), null, 1, null), this.selectFontPath)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final boolean isSelected(@NotNull FontModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        return Intrinsics.areEqual(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, model, null, 1, null), this.selectFontPath);
    }

    /* renamed from: o */
    public final void m47588o(ItemFontShowBinding binding, final FontModel model) {
        binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.prg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FontItemShowAdapter.m47584p(FontModel.this, this, view);
            }
        });
        binding.downloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qrg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FontItemShowAdapter.m47585q(FontItemShowAdapter.this, model, view);
            }
        });
        binding.deleteButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rrg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FontItemShowAdapter.m47586r(FontItemShowAdapter.this, model, view);
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull final RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        recyclerView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$onAttachedToRecyclerView$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                CompositeDisposable compositeDisposable;
                Intrinsics.checkNotNullParameter(v, "v");
                if (!RecyclerView.this.isAttachedToWindow()) {
                    compositeDisposable = this.compositeDisposable;
                    compositeDisposable.dispose();
                    RecyclerView.this.removeOnAttachStateChangeListener(this);
                }
            }
        });
    }

    /* renamed from: s */
    public final void m47589s(ItemFontShowBinding binding, FontModel model) {
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        if (fontModelExt.isDownloaded(model)) {
            PathManager pathManager = PathManager.INSTANCE;
            StorageLocation storageLocation = StorageLocation.PRIVATE_FILE;
            DataScope dataScope = DataScope.APP;
            String displayName = fontModelExt.getDisplayName(model);
            Intrinsics.checkNotNullExpressionValue(displayName, "getDisplayName(...)");
            Observable.just(this).observeOn(Schedulers.m61350io()).map(new C12269b(binding)).filter(C12270c.f59539e).map(new C12271d(pathManager.getFile(storageLocation, dataScope, FontModelExt.FONT_THUMBNAIL_DIR, displayName, "png"))).subscribe();
        }
    }

    public final void saveTypeface(@NotNull String path, @NotNull Typeface typeface) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        this.typefaceMap.put(path, typeface);
    }

    public final void setItemSelectedListener(@Nullable BaseSelectableQuickAdapter.ItemSelectionListener<FontModel> itemSelectionListener) {
        this.itemSelectedListener = itemSelectionListener;
    }

    public final void setSelectFontPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectFontPath = str;
    }

    /* renamed from: t */
    public final void m47590t(final FontModel item) {
        new CommonDialog.Builder(getContext()).setTitle(C10651R.string.delete).setMessage(C10651R.string.delete_font_tips).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$delete$1
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
                GlobalBundle.INSTANCE.postEvent(new TextFontItemDeleteEvent(FontModel.this));
                int indexOf = this.getItems().indexOf(FontModel.this);
                this.remove(FontModel.this);
                if (indexOf < this.getItemCount()) {
                    this.notifyItemChanged(indexOf);
                }
            }
        }).create().show();
    }

    /* renamed from: u */
    public final boolean m47591u(FontModel model) {
        return getItems().indexOf(model) > 0 && FontModelExt.INSTANCE.getSourceType(model) == 1;
    }

    /* renamed from: v */
    public final void m47592v(final FontModel item) {
        List<? extends FontModel> listOf;
        int selectedIndex = getSelectedIndex();
        int indexOf = getItems().indexOf(item);
        this.selectFontPath = FontModelExt.getSavePath$default(FontModelExt.INSTANCE, item, null, 1, null);
        notifyItemChanged(selectedIndex);
        notifyItemChanged(indexOf);
        MMKVNote.INSTANCE.getTextInputConfigOption().getAndPut(new Function1<TextInputConfig, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$onSelected$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextInputConfig textInputConfig) {
                invoke2(textInputConfig);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable TextInputConfig textInputConfig) {
                if (textInputConfig == null) {
                    return;
                }
                textInputConfig.setFontFace(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, FontModel.this, null, 1, null));
            }
        });
        BaseSelectableQuickAdapter.ItemSelectionListener<FontModel> itemSelectionListener = this.itemSelectedListener;
        if (itemSelectionListener != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
            itemSelectionListener.onItemSelected(listOf);
        }
    }

    /* renamed from: w */
    public final Observable<Unit> m47593w(FontModel model) {
        m47595y(model, (byte) 3);
        notifyItemChanged(getItems().indexOf(model));
        String randomCacheFile = PathManager.INSTANCE.getRandomCacheFile();
        String savePath$default = FontModelExt.getSavePath$default(FontModelExt.INSTANCE, model, null, 1, null);
        FileDownloadRequest fileDownloadRequest = new FileDownloadRequest(model.getUrl(), randomCacheFile);
        fileDownloadRequest.setTag(randomCacheFile);
        fileDownloadRequest.setForceReDownload(true);
        Observable<Unit> map = OnyxDownloadManager.INSTANCE.createObservable(fileDownloadRequest).filter(C12272e.f59541e).observeOn(Schedulers.m61350io()).map(new C12273f(randomCacheFile, savePath$default)).flatMap(new C12274g(savePath$default)).observeOn(AndroidSchedulers.mainThread()).map(new C12275h(model, savePath$default));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: x */
    public final void m47594x(LoadFontTypefaceAction action, FontModel model, final String fontPath) {
        FontManager.addFontFace(StringKt.ifEmpty(action.getFontInfo().getFontName(), new Function0<String>() { // from class: com.onyx.galaxy.note.editor.view.adapter.FontItemShowAdapter$updateFontFace$fontName$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String fileName = FontManager.getFileName(fontPath);
                Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
                return fileName;
            }
        }), fontPath, action.getTypeface());
        saveTypeface(fontPath, action.getTypeface());
        m47595y(model, (byte) -3);
    }

    /* renamed from: y */
    public final void m47595y(FontModel model, byte state) {
        model.setState(state);
        notifyItemChanged(getItems().indexOf(model));
        if (state == -3) {
            EditorBundleKt.postEvent(this.editorBundle, new TextFontChangeEvent(model));
        }
    }

    /* renamed from: z */
    public final void m47596z(ItemFontShowBinding binding, FontModel model, int position) {
        boolean isSelected = isSelected(model);
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        boolean isLocalResource = fontModelExt.isLocalResource(model);
        boolean isDownloaded = fontModelExt.isDownloaded(model);
        boolean isDownloading = fontModelExt.isDownloading(model);
        boolean isThumbnailCached = fontModelExt.isThumbnailCached(model);
        boolean isDefaultResource = fontModelExt.isDefaultResource(model);
        if (isThumbnailCached) {
            GlideExt glideExt = GlideExt.INSTANCE;
            TintImageView previewImage = binding.previewImage;
            Intrinsics.checkNotNullExpressionValue(previewImage, "previewImage");
            GlideExt.load$default(glideExt, previewImage, fontModelExt.getCachedPreviewFile(model), null, 2, null);
        }
        binding.getRoot().setSelected(isSelected(model));
        binding.tvTitle.setText(fontModelExt.getDisplayName(model));
        ViewKt.setViewVisibleOrInvisible(binding.tvTitle, !isThumbnailCached);
        ViewKt.setViewVisibleOrInvisible(binding.previewImage, isThumbnailCached);
        boolean z = false;
        ViewKt.setViewVisibleOrGone(binding.selectButton, isSelected && !isDownloading);
        ViewKt.setViewVisibleOrGone(binding.downloadingButton, isDownloading);
        ViewKt.setViewVisibleOrGone(binding.downloadButton, (isSelected || isLocalResource || isDownloaded || isDownloading) ? false : true);
        TintImageView tintImageView = binding.deleteButton;
        if (!isSelected && isLocalResource && !isDefaultResource) {
            z = true;
        }
        ViewKt.setViewVisibleOrGone(tintImageView, z);
        ViewKt.setViewVisibleOrGone(binding.vLine, m47591u(model));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @SuppressLint({"SetTextI18n", "NotifyDataSetChanged"})
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemFontShowBinding> holder, int position, @Nullable FontModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        m47587A(holder, item);
        ItemFontShowBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47596z(binding, item, position);
        ItemFontShowBinding binding2 = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding2, "getBinding(...)");
        m47588o(binding2, item);
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemFontShowBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFontShowBinding inflate = ItemFontShowBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}

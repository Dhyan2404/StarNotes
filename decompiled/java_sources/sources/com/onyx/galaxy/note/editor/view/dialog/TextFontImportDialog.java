package com.onyx.galaxy.note.editor.view.dialog;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.action.CopyUriToCacheFileAction;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.common.action.DeleteFileAction;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.FilePickerBuilder;
import com.onyx.android.sdk.filepicker.FilePickerEvent;
import com.onyx.android.sdk.filepicker.FilePickerUtils;
import com.onyx.android.sdk.theme.widgets.TouchModeTintTextInputEditTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.fonts.ImportFontsAction;
import com.onyx.android.sdk.universal.editor.action.fonts.LoadMediaStoreFontsAction;
import com.onyx.android.sdk.universal.editor.action.fonts.SearchMediaStoreFontsAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.action.TextChangeDebounceAction;
import com.onyx.galaxy.note.databinding.DialogTextFontImportBinding;
import com.onyx.galaxy.note.editor.event.TextFontItemSelectEvent;
import com.onyx.galaxy.note.editor.view.adapter.FontImportItemAdapter;
import com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.utils.FilePickerExtKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010 \u001a\u00020\u001b\u0012\u0006\u0010%\u001a\u00020!¢\u0006\u0004\b7\u00108J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\rH\u0002J\u0016\u0010\u0012\u001a\u00020\u00022\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\rH\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0018H\u0007J\b\u0010\u001a\u001a\u00020\u0002H\u0016R\u0017\u0010 \u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020!8\u0006¢\u0006\f\n\u0004\b\u0006\u0010\"\u001a\u0004\b#\u0010$R\u001b\u0010+\u001a\u00020&8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00070,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010-R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00070,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010-R\u001b\u00103\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010(\u001a\u0004\b'\u00102R\u0018\u00106\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u00105¨\u00069"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;", "Landroid/app/Dialog;", "", "l", "i", C4921e.f26537n, C6997f.f39671c, "", "search", "v", "r", "s", "t", "", "list", "u", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "documentBeanList", C6999h.f39688c, "q", "show", "Lcom/onyx/galaxy/note/editor/event/TextFontItemSelectEvent;", NotificationCompat.CATEGORY_EVENT, "onTextFontItemSelectEvent", "Lcom/onyx/android/sdk/filepicker/FilePickerEvent;", "onFilePickerEvent", "dismiss", "Landroid/content/Context;", "e", "Landroid/content/Context;", "getActivityContext", "()Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/DialogTextFontImportBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogTextFontImportBinding;", "binding", "", "Ljava/util/List;", "selectListData", "allFontList", "Lcom/onyx/galaxy/note/editor/view/adapter/FontImportItemAdapter;", "j", "()Lcom/onyx/galaxy/note/editor/view/adapter/FontImportItemAdapter;", "fontImportItemAdapter", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "searchDispose", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextFontImportDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontImportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n65#2,16:205\n93#2,3:221\n1855#3,2:224\n1549#3:226\n1620#3,3:227\n*S KotlinDebug\n*F\n+ 1 TextFontImportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog\n*L\n68#1:205,16\n68#1:221,3\n98#1:224,2\n161#1:226\n161#1:227,3\n*E\n"})
/* loaded from: classes9.dex */
public final class TextFontImportDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> selectListData;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<String> allFontList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy fontImportItemAdapter;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Disposable searchDispose;

    @SourceDebugExtension({"SMAP\nTextFontImportDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFontImportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog$handleFilesResult$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n1549#2:205\n1620#2,3:206\n*S KotlinDebug\n*F\n+ 1 TextFontImportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog$handleFilesResult$1\n*L\n168#1:205\n168#1:206,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12345a<T> implements Consumer {
        public C12345a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends File> it2) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(it2, "it");
            List<? extends File> list = it2;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList.add(((File) it3.next()).getAbsolutePath());
            }
            TextFontImportDialog.this.selectListData.addAll(arrayList);
            TextFontImportDialog.this.m48211i();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12346b<T> implements Consumer {
        public C12346b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String keyword) {
            boolean isBlank;
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            isBlank = StringsKt__StringsJVMKt.isBlank(keyword);
            if (!isBlank) {
                TextFontImportDialog.this.m48219v(keyword);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog$d */
    /* loaded from: classes9.dex */
    public static final class C12348d<T> implements Consumer {
        public C12348d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextFontImportDialog.this.m48209g().submitList(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFontImportDialog(@NotNull Context activityContext, @NotNull EditorBundle editorBundle) {
        super(activityContext, C10651R.style.commonDialog);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.activityContext = activityContext;
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogTextFontImportBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogTextFontImportBinding invoke() {
                DialogTextFontImportBinding inflate = DialogTextFontImportBinding.inflate(LayoutInflater.from(TextFontImportDialog.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.selectListData = new ArrayList();
        this.allFontList = new ArrayList();
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<FontImportItemAdapter>() { // from class: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog$fontImportItemAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FontImportItemAdapter invoke() {
                return new FontImportItemAdapter(TextFontImportDialog.this.selectListData);
            }
        });
        this.fontImportItemAdapter = lazy2;
        setContentView(getBinding().getRoot());
        m48214q();
        m48213l();
    }

    /* renamed from: j */
    public static final void m48203j(TextFontImportDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48212k();
    }

    /* renamed from: m */
    public static final void m48204m(TextFontImportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: n */
    public static final void m48205n(TextFontImportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48211i();
    }

    /* renamed from: o */
    public static final boolean m48206o(TextFontImportDialog this$0, TextView textView, int i, KeyEvent keyEvent) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == 3) {
            String obj = textView.getText().toString();
            isBlank = StringsKt__StringsJVMKt.isBlank(obj);
            if (!isBlank) {
                this$0.m48219v(obj);
            }
            ViewKt.hideInputKeyboard(this$0.getBinding().tieName);
        }
        return true;
    }

    /* renamed from: p */
    public static final void m48207p(TextFontImportDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Editable text = this$0.getBinding().tieName.getText();
        if (text != null) {
            text.clear();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        Disposable disposable = this.searchDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        GlobalBundle.INSTANCE.unregister(this);
    }

    /* renamed from: f */
    public final void m48208f() {
        boolean startsWith$default;
        List listOf;
        for (String str : this.selectListData) {
            String absolutePath = getContext().getCacheDir().getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, absolutePath, false, 2, null);
            if (startsWith$default) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(str);
                RxBaseAction.execute$default(new DeleteFileAction(listOf), null, null, null, 7, null);
            }
        }
    }

    /* renamed from: g */
    public final FontImportItemAdapter m48209g() {
        return (FontImportItemAdapter) this.fontImportItemAdapter.getValue();
    }

    @NotNull
    public final Context getActivityContext() {
        return this.activityContext;
    }

    @NotNull
    public final DialogTextFontImportBinding getBinding() {
        return (DialogTextFontImportBinding) this.binding.getValue();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: h */
    public final void m48210h(List<DocumentBean> documentBeanList) {
        int collectionSizeOrDefault;
        this.selectListData.clear();
        List<DocumentBean> list = documentBeanList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((DocumentBean) it2.next()).getPath());
        }
        new CopyUriToCacheFileAction(arrayList).build().doOnNext(new C12345a()).subscribe();
    }

    /* renamed from: i */
    public final void m48211i() {
        new ImportFontsAction(this.editorBundle, this.selectListData).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.icn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TextFontImportDialog.m48203j(TextFontImportDialog.this);
            }
        }).subscribe();
    }

    /* renamed from: k */
    public final void m48212k() {
        m48208f();
        dismiss();
    }

    /* renamed from: l */
    public final void m48213l() {
        getBinding().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ecn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextFontImportDialog.m48204m(TextFontImportDialog.this, view);
            }
        });
        getBinding().tvImport.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fcn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextFontImportDialog.m48205n(TextFontImportDialog.this, view);
            }
        });
        getBinding().tieName.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.gcn
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m48206o;
                m48206o = TextFontImportDialog.m48206o(TextFontImportDialog.this, textView, i, keyEvent);
                return m48206o;
            }
        });
        TouchModeTintTextInputEditTextView tieName = getBinding().tieName;
        Intrinsics.checkNotNullExpressionValue(tieName, "tieName");
        tieName.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog$initListener$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                List list;
                if (String.valueOf(TextFontImportDialog.this.getBinding().tieName.getText()).length() == 0) {
                    FontImportItemAdapter m48209g = TextFontImportDialog.this.m48209g();
                    list = TextFontImportDialog.this.allFontList;
                    m48209g.submitList(list);
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        getBinding().tilName.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hcn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextFontImportDialog.m48207p(TextFontImportDialog.this, view);
            }
        });
        TouchModeTintTextInputEditTextView tieName2 = getBinding().tieName;
        Intrinsics.checkNotNullExpressionValue(tieName2, "tieName");
        this.searchDispose = new TextChangeDebounceAction(tieName2, 0L, 2, null).build().subscribe(new C12346b());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFilePickerEvent(@NotNull FilePickerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getRequestCode() == 2009) {
            m48210h(event.getDocumentBeanList());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    @SuppressLint({"NotifyDataSetChanged"})
    public final void onTextFontItemSelectEvent(@NotNull TextFontItemSelectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding().tvImport.setEnabled(!this.selectListData.isEmpty());
    }

    /* renamed from: q */
    public final void m48214q() {
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
        }
        getBinding().list.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        getBinding().list.setAdapter(m48209g());
    }

    /* renamed from: r */
    public final void m48215r() {
        if (PermissionActionUtils.INSTANCE.isStorageManagerPermissionEnabled()) {
            m48217t();
        } else {
            m48216s();
        }
    }

    /* renamed from: s */
    public final void m48216s() {
        if (this.activityContext instanceof Activity) {
            FilePickerExtKt.setCommonConfig(FilePickerBuilder.INSTANCE.getInstance()).setTitle(C10651R.string.import_font).ofFont().tabLayoutHidden(true).fileSystemHidden(true).enableFilterDocType(false).setMaxSelectCount(FilePickerUtils.INSTANCE.importFontMaxCount()).pickFile((Activity) this.activityContext, true, 2009, (Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit>) new Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog$loadFontsFromFileSystemManager$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ArrayList<DocumentBean> arrayList, WeakReference<Activity> weakReference) {
                    invoke2(arrayList, weakReference);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ArrayList<DocumentBean> files, @NotNull WeakReference<Activity> weakReference) {
                    Intrinsics.checkNotNullParameter(files, "files");
                    Intrinsics.checkNotNullParameter(weakReference, "<anonymous parameter 1>");
                    TextFontImportDialog.this.m48210h(files);
                }
            });
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        GlobalBundle.INSTANCE.register(this);
        m48215r();
    }

    /* renamed from: t */
    public final void m48217t() {
        new LoadMediaStoreFontsAction(this.editorBundle).build().doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.view.dialog.TextFontImportDialog.c
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<String> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                TextFontImportDialog.this.m48218u(p0);
            }
        }).subscribe();
    }

    /* renamed from: u */
    public final void m48218u(List<String> list) {
        this.allFontList.clear();
        this.allFontList.addAll(list);
        m48209g().submitList(list);
    }

    /* renamed from: v */
    public final void m48219v(String search) {
        new SearchMediaStoreFontsAction(this.editorBundle, this.allFontList, search).build().doOnNext(new C12348d()).subscribe();
    }
}

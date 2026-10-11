package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.RenameNoteModelAction;
import com.onyx.galaxy.note.databinding.LayoutTitleEditTextBinding;
import com.onyx.galaxy.note.editor.action.doc.UpdateNoteDocTitleAction;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u00018B\u0011\b\u0016\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101B\u001d\b\u0016\u0012\u0006\u0010/\u001a\u00020.\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b0\u00104B%\b\u0016\u0012\u0006\u0010/\u001a\u00020.\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102\u0012\u0006\u00106\u001a\u000205¢\u0006\u0004\b0\u00107J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000eH\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u000eH\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002R\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010!\u001a\u0004\b\"\u0010#R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010,R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010-¨\u00069"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;", "Landroid/widget/FrameLayout;", "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setListener", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "noteTabData", "setNoteTabData", "commitTitleEdit", "clearFocusIfNeed", C6997f.f39671c, C6998g.f39679a, "p", "", "text", "q", "", "hasFocus", C4921e.f26537n, "m", "l", "r", "succeed", "newName", GoogleApiAvailabilityLight.f29016b, "e", "name", "j", "c", "d", C4921e.f26528e, "Lcom/onyx/galaxy/note/databinding/LayoutTitleEditTextBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutTitleEditTextBinding;", "binding", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "NoteTitleChangedListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteTitleEditText extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;
    public EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public NoteTabData noteTabData;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public NoteTitleChangedListener listener;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;", "", "onFocusChanged", "", "hasFocus", "", "onTitleChanged", "newTitle", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface NoteTitleChangedListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onFocusChanged(@NotNull NoteTitleChangedListener noteTitleChangedListener, boolean z) {
            }
        }

        void onFocusChanged(boolean hasFocus);

        void onTitleChanged(@NotNull String newTitle);
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText$a */
    /* loaded from: classes9.dex */
    public static final class C12518a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f60837f;

        public C12518a(String str) {
            this.f60837f = str;
        }

        /* renamed from: a */
        public final void m50085a(boolean z) {
            NoteTitleEditText.this.m50080n(z, this.f60837f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50085a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText$b */
    /* loaded from: classes9.dex */
    public static final class C12519b<T> implements Predicate {

        /* renamed from: e */
        public static final C12519b<T> f60838e = new C12519b<>();

        /* renamed from: a */
        public final boolean m50086a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m50086a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText$c */
    /* loaded from: classes9.dex */
    public static final class C12520c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f60840f;

        public C12520c(String str) {
            this.f60840f = str;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends SyncNoteModel> m50087a(boolean z) {
            return new UpdateNoteDocTitleAction(NoteTitleEditText.this.getEditorBundle(), this.f60840f).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50087a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteTitleEditText(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final LayoutTitleEditTextBinding getBinding() {
        return (LayoutTitleEditTextBinding) this.binding.getValue();
    }

    /* renamed from: h */
    public static final void m50069h(NoteTitleEditText this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50084r(z);
        this$0.m50077k(z);
        NoteTitleChangedListener noteTitleChangedListener = this$0.listener;
        if (noteTitleChangedListener != null) {
            noteTitleChangedListener.onFocusChanged(z);
        }
    }

    /* renamed from: i */
    public static final boolean m50070i(NoteTitleEditText this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 6) {
            return true;
        }
        this$0.commitTitleEdit();
        return true;
    }

    /* renamed from: c */
    public final void m50071c() {
        getBinding().edittext.setError(getContext().getString(C10651R.string.no_more_than_bytes_placeholder, 254));
    }

    public final void clearFocusIfNeed() {
        if (getBinding().edittext.hasFocus()) {
            m50073e();
        }
    }

    public final void commitTitleEdit() {
        if (!StringKt.isNotBlank(getBinding().edittext.getText())) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.title_empty_tips, false, 2, (Object) null);
            return;
        }
        if (getBinding().edittext.getError() != null) {
            return;
        }
        String valueOf = String.valueOf(getBinding().edittext.getText());
        if (Intrinsics.areEqual(valueOf, this.noteTabData.getTitle())) {
            m50073e();
        } else {
            new RenameNoteModelAction(this.noteTabData.getUniqueId(), valueOf).build().doOnNext(new C12518a(valueOf)).filter(C12519b.f60838e).flatMap(new C12520c(valueOf)).subscribe();
        }
    }

    /* renamed from: d */
    public final void m50072d() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.name_exist, false, 2, (Object) null);
    }

    /* renamed from: e */
    public final void m50073e() {
        getBinding().edittext.clearFocus();
        ViewKt.hideInputKeyboard(getBinding().edittext);
    }

    /* renamed from: f */
    public final void m50074f() {
        m50075g();
    }

    /* renamed from: g */
    public final void m50075g() {
        getBinding().edittext.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.f4k
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                NoteTitleEditText.m50069h(NoteTitleEditText.this, view, z);
            }
        });
        getBinding().edittext.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.g4k
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m50070i;
                m50070i = NoteTitleEditText.m50070i(NoteTitleEditText.this, textView, i, keyEvent);
                return m50070i;
            }
        });
        getBinding().edittext.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText$initEditText$3
            @Override // android.text.TextWatcher
            public void afterTextChanged(@NotNull Editable s) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@NotNull CharSequence s, int start, int count, int after) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@NotNull CharSequence s, int start, int before, int count) {
                Intrinsics.checkNotNullParameter(s, "s");
            }
        });
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            return editorBundle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        return null;
    }

    /* renamed from: j */
    public final boolean m50076j(String name) {
        byte[] bytes = StringKt.safelyGetStr(name).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        if (!(bytes.length > 254)) {
            return false;
        }
        m50071c();
        return true;
    }

    /* renamed from: k */
    public final void m50077k(boolean hasFocus) {
        if (hasFocus) {
            m50078l();
        } else {
            m50079m();
        }
    }

    /* renamed from: l */
    public final void m50078l() {
        GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(ViewKt.windowVisibleRect(this)));
    }

    /* renamed from: m */
    public final void m50079m() {
        getBinding().tilName.setEndIconVisible(false);
        GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(null));
    }

    /* renamed from: n */
    public final void m50080n(boolean succeed, String newName) {
        if (!succeed) {
            m50072d();
            return;
        }
        this.noteTabData.setTitle(newName);
        NoteTitleChangedListener noteTitleChangedListener = this.listener;
        if (noteTitleChangedListener != null) {
            noteTitleChangedListener.onTitleChanged(newName);
        }
        m50073e();
    }

    /* renamed from: o */
    public final void m50081o() {
        getBinding().edittext.setError(null);
    }

    /* renamed from: p */
    public final void m50082p() {
        m50083q(StringKt.safelyGetStr(this.noteTabData.getTitle()));
    }

    /* renamed from: q */
    public final void m50083q(String text) {
        m50081o();
        getBinding().edittext.setText(text);
    }

    /* renamed from: r */
    public final void m50084r(boolean hasFocus) {
        ViewKt.setTextGravity(getBinding().edittext, hasFocus ? 8388627 : 17);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setListener(@NotNull NoteTitleChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setNoteTabData(@NotNull NoteTabData noteTabData) {
        Intrinsics.checkNotNullParameter(noteTabData, "noteTabData");
        this.noteTabData = noteTabData;
        getBinding().setModel(noteTabData);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteTitleEditText(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NoteTitleEditText(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTitleEditText(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutTitleEditTextBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutTitleEditTextBinding invoke() {
                return LayoutTitleEditTextBinding.inflate(LayoutInflater.from(NoteTitleEditText.this.getContext()), NoteTitleEditText.this, true);
            }
        });
        this.binding = lazy;
        this.noteTabData = new NoteTabData();
        m50074f();
    }

    public /* synthetic */ NoteTitleEditText(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

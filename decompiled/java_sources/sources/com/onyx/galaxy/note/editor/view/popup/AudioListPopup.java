package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.event.StatisticsStoolbarRecordInEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.NoteMediaUtils;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.audio.FindAudioShapesAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction;
import com.onyx.android.sdk.universal.editor.action.link.CreateAudioShapeLinkBeanAction;
import com.onyx.android.sdk.universal.editor.events.app.AudioRenameCancelEvent;
import com.onyx.android.sdk.universal.editor.events.app.AudioRenameDoneEvent;
import com.onyx.android.sdk.universal.editor.events.app.AudioRenameStartEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupAudioListBinding;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction;
import com.onyx.galaxy.note.editor.view.adapter.AudioListItemAdapter;
import com.onyx.galaxy.note.editor.view.popup.AudioActionPopup;
import com.onyx.galaxy.note.editor.view.popup.AudioListPopup;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001PB\u001f\u0012\u0006\u00106\u001a\u00020/\u0012\u0006\u0010<\u001a\u000207\u0012\u0006\u0010M\u001a\u00020L¢\u0006\u0004\bN\u0010OJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J.\u0010\u0016\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0012\u0010\u0018\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u0019\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u001a\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\u0016\u0010\u001d\u001a\u00020\u00022\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u000eH\u0002J\u0016\u0010\u001e\u001a\u00020\u00022\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u000eH\u0002J\u001a\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$J\u0012\u0010(\u001a\u00020\u00022\b\u0010'\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010 \u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010 \u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010 \u001a\u00020-H\u0007R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0017\u0010<\u001a\u0002078\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u001b\u0010@\u001a\u00020=8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010>\u001a\u0004\b8\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010%\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR$\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010K¨\u0006Q"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "A", "v", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "N", "P", "s", "Landroid/view/View;", "view", "", "pos", "L", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "anchorView", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "viewLocationPoint", "M", "selectedItem", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "E", "H", "F", "list", "G", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "", NotificationCompat.CATEGORY_EVENT, "K", "I", "J", "Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", Constants.ELEMNAME_ANCHOR_STRING, "showAsDropDown", "Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameDoneEvent;", "onAudioRenameDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameCancelEvent;", "onAudioRenameCancelEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameStartEvent;", "onAudioRenameStartEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "r", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "getAudioDataSet", "()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "audioDataSet", "Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;", "t", "Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;", "adapter", "u", "Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "setAnchorView", "(Landroid/view/View;)V", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;Landroid/content/Context;)V", "ItemChangedListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAudioListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AudioListPopup\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,301:1\n41#2,5:302\n*S KotlinDebug\n*F\n+ 1 AudioListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AudioListPopup\n*L\n171#1:302,5\n*E\n"})
/* loaded from: classes9.dex */
public final class AudioListPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final AudioDataSet audioDataSet;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public AudioListItemAdapter adapter;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public ItemChangedListener listener;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public View anchorView;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0006H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;", "", "onItemChanged", "", "list", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "onItemClick", "audioInfoBean", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ItemChangedListener {
        void onItemChanged(@NotNull List<AudioInfoBean> list);

        void onItemClick(@NotNull AudioInfoBean audioInfoBean);
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12368a<T> implements Consumer {

        /* renamed from: e */
        public static final C12368a<T> f60112e = new C12368a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapeLink(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12369b<T> implements Consumer {

        /* renamed from: e */
        public static final C12369b<T> f60113e = new C12369b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.create_audio_link_success, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12370c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<AudioInfoBean> f60115f;

        public C12370c(List<AudioInfoBean> list) {
            this.f60115f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RemoveAudioAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AudioListPopup.this.m48536C(this.f60115f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12371d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ AudioInfoBean f60117f;

        public C12371d(AudioInfoBean audioInfoBean) {
            this.f60117f = audioInfoBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenameAudioNameAction it2) {
            List<AudioInfoBean> listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            AudioListPopup.this.adapter.notifyItemChanged(AudioListPopup.this.adapter.getItems().indexOf(this.f60117f));
            ItemChangedListener itemChangedListener = AudioListPopup.this.listener;
            if (itemChangedListener != null) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f60117f);
                itemChangedListener.onItemChanged(listOf);
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$e */
    /* loaded from: classes9.dex */
    public static final class C12372e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ View f60119f;

        /* renamed from: g */
        public final /* synthetic */ AudioInfoBean f60120g;

        /* renamed from: h */
        public final /* synthetic */ TouchPoint f60121h;

        public C12372e(View view, AudioInfoBean audioInfoBean, TouchPoint touchPoint) {
            this.f60119f = view;
            this.f60120g = audioInfoBean;
            this.f60121h = touchPoint;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> shapes) {
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            AudioListPopup.this.m48546M(shapes, this.f60119f, this.f60120g, this.f60121h);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioListPopup(@NotNull EditorBundle editorBundle, @NotNull AudioDataSet audioDataSet, @NotNull final Context context) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioDataSet, "audioDataSet");
        Intrinsics.checkNotNullParameter(context, "context");
        this.editorBundle = editorBundle;
        this.audioDataSet = audioDataSet;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupAudioListBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupAudioListBinding invoke() {
                return PopupAudioListBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.adapter = new AudioListItemAdapter();
        m48535A();
    }

    /* renamed from: B */
    public static final void m48521B(AudioListPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.unregister(this$0.editorBundle, this$0);
    }

    /* renamed from: t */
    public static final void m48529t(AudioListPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m48545L(view, i);
    }

    /* renamed from: u */
    public static final void m48530u(AudioListPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        AudioInfoBean item = this$0.adapter.getItem(i);
        if (item == null) {
            return;
        }
        this$0.adapter.onItemClick(item);
        this$0.m48549P();
    }

    /* renamed from: w */
    public static final void m48531w(AudioListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48548O();
        this$0.m48543J(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_SELECT);
    }

    /* renamed from: x */
    public static final void m48532x(AudioListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48548O();
        this$0.m48543J(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_SELECT_DONE);
        this$0.m48549P();
    }

    /* renamed from: y */
    public static final void m48533y(AudioListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48547N();
        this$0.m48543J(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_SELECT_ALL);
    }

    /* renamed from: z */
    public static final void m48534z(AudioListPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48539F();
        this$0.m48543J(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_SELECT_DELETE);
    }

    /* renamed from: A */
    public final void m48535A() {
        View root = m48550r().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        m48551s();
        m48552v();
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.xh
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                AudioListPopup.m48521B(AudioListPopup.this);
            }
        });
    }

    /* renamed from: C */
    public final void m48536C(List<AudioInfoBean> list) {
        this.audioDataSet.getAudioInfoList().removeAll(list);
        this.adapter.submitList(this.audioDataSet.getAudioInfoList());
        this.adapter.getSelectedItems().clear();
        m48549P();
        ItemChangedListener itemChangedListener = this.listener;
        if (itemChangedListener != null) {
            itemChangedListener.onItemChanged(list);
        }
        if (this.adapter.getItemCount() <= 0) {
            dismiss();
        }
    }

    /* renamed from: D */
    public final void m48537D(AudioInfoBean selectedItem) {
        if (selectedItem == null) {
            return;
        }
        new CreateAudioShapeLinkBeanAction(this.editorBundle, selectedItem).build().doOnNext(C12368a.f60112e).doOnNext(C12369b.f60113e).subscribe();
    }

    /* renamed from: E */
    public final void m48538E(AudioInfoBean selectedItem) {
        if (selectedItem == null) {
            return;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) "onAudioRecognize click", false, 2, (Object) null);
    }

    /* renamed from: F */
    public final void m48539F() {
        List<AudioInfoBean> list;
        list = CollectionsKt___CollectionsKt.toList(this.adapter.getSelectedItems());
        m48540G(list);
    }

    /* renamed from: G */
    public final void m48540G(List<AudioInfoBean> list) {
        new RemoveAudioAction(this.editorBundle, list).setActivityContext(getContext()).build().doOnNext(new C12370c(list)).subscribe();
    }

    /* renamed from: H */
    public final void m48541H(AudioInfoBean audioInfoBean) {
        if (audioInfoBean == null) {
            return;
        }
        new RenameAudioNameAction(this.editorBundle, audioInfoBean, null, 4, null).setActivityContext(getContext()).build().doOnNext(new C12371d(audioInfoBean)).subscribe();
    }

    /* renamed from: I */
    public final void m48542I() {
        Map mutableMapOf;
        EditorBundle editorBundle = this.editorBundle;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("record_amount", Integer.valueOf(this.audioDataSet.getAudioInfoList().size())));
        StatisticsExtKt.reportNoteEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_AUDIO_VIEW_LIST_POPUP, mutableMapOf);
    }

    /* renamed from: J */
    public final void m48543J(String event) {
        StatisticsExtKt.reportNoteEvent$default(this.editorBundle, event, null, 2, null);
    }

    /* renamed from: K */
    public final void m48544K(String event, AudioInfoBean audioInfoBean) {
        String audioPath;
        Map mutableMapOf;
        if (audioInfoBean == null || (audioPath = audioInfoBean.getAudioPath()) == null) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_AUDIO_RECORD_ID, NoteMediaUtils.INSTANCE.getRecordIdFromPath(audioPath)), TuplesKt.m61535to(OnyxStatisticConstant.KEY_DURATION, Long.valueOf(DateTimeUtil.INSTANCE.msToSecLong(audioInfoBean.getDuration()))));
        StatisticsExtKt.reportNoteEvent(editorBundle, event, mutableMapOf);
    }

    /* renamed from: L */
    public final void m48545L(View view, int pos) {
        AudioInfoBean item;
        List listOf;
        View view2 = this.anchorView;
        if (view2 == null || (item = this.adapter.getItem(pos)) == null) {
            return;
        }
        int[] locationOnScreen = ViewKt.getLocationOnScreen(view);
        TouchPoint touchPoint = new TouchPoint(locationOnScreen[0], locationOnScreen[1]);
        String audioPath = item.getAudioPath();
        if (audioPath == null) {
            audioPath = "";
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(audioPath);
        new FindAudioShapesAction(this.editorBundle, listOf).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12372e(view2, item, touchPoint)).subscribe();
    }

    /* renamed from: M */
    public final void m48546M(List<? extends Shape> shapes, View anchorView, final AudioInfoBean audioInfoBean, TouchPoint viewLocationPoint) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) shapes);
        final Shape shape = (Shape) firstOrNull;
        Context context = anchorView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        BasePopupWindow.show$default(new AudioActionPopup(context, shape != null, new AudioActionPopup.ActionListener() { // from class: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$showActionPopup$2
            @Override // com.onyx.galaxy.note.editor.view.popup.AudioActionPopup.ActionListener
            public void audioLink() {
                StatisticsBundle.INSTANCE.postEvent(new StatisticsStoolbarRecordInEvent());
                AudioListPopup.this.m48544K(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_INSERT, audioInfoBean);
                AudioListPopup.this.m48537D(audioInfoBean);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.AudioActionPopup.ActionListener
            public void audioRecognize() {
                AudioListPopup.this.m48538E(audioInfoBean);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.AudioActionPopup.ActionListener
            public void delete() {
                List listOfNotNull;
                AudioListPopup audioListPopup = AudioListPopup.this;
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(audioInfoBean);
                audioListPopup.m48540G(listOfNotNull);
                AudioListPopup.this.m48544K(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_OP_DELETE, audioInfoBean);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.AudioActionPopup.ActionListener
            public void gotoLink() {
                String shapeUniqueId;
                Shape shape2 = shape;
                if (shape2 == null || (shapeUniqueId = shape2.getShapeUniqueId()) == null) {
                    return;
                }
                RxBaseAction.execute$default(new GotoShapeAction(AudioListPopup.this.getEditorBundle(), shapeUniqueId, false, 4, null), null, null, null, 7, null);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.AudioActionPopup.ActionListener
            public void rename() {
                AudioListPopup.this.m48541H(audioInfoBean);
                AudioListPopup.this.m48544K(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_OP_RENAME, audioInfoBean);
            }
        }), anchorView, viewLocationPoint, 0, 0, 12, null);
        m48544K(OnyxStatisticConstant.ID_NOTE_AUDIO_VIEW_OP_POPUP, audioInfoBean);
    }

    /* renamed from: N */
    public final void m48547N() {
        this.adapter.toggleSelectAll();
        m48549P();
    }

    /* renamed from: O */
    public final void m48548O() {
        boolean z = this.adapter.toggleSelectionMode();
        ViewKt.setViewVisibleOrInvisible(m48550r().selection, !z);
        ViewKt.setViewVisibleOrInvisible(m48550r().selectionLayout, z);
        m48550r().delete.setEnabled(this.adapter.hasItemContains());
        m48550r().recyclerView.closeMenus();
    }

    /* renamed from: P */
    public final void m48549P() {
        m48550r().selectAll.setSelected(this.adapter.isAllItemSelected());
        m48550r().delete.setEnabled(this.adapter.hasItemContains());
    }

    @Nullable
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final AudioDataSet getAudioDataSet() {
        return this.audioDataSet;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioRenameCancelEvent(@NotNull AudioRenameCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48544K(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_RENAME_DIALOG_CANCEL, event.getAudioInfoBean());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioRenameDoneEvent(@NotNull AudioRenameDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48544K(OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_RENAME_DIALOG_DONE, event.getAudioInfoBean());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioRenameStartEvent(@NotNull AudioRenameStartEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48544K(OnyxStatisticConstant.ID_NOTE_AUDIO_VIEW_RENAME_DIALOG, event.getAudioInfoBean());
    }

    /* renamed from: r */
    public final PopupAudioListBinding m48550r() {
        return (PopupAudioListBinding) this.binding.getValue();
    }

    /* renamed from: s */
    public final void m48551s() {
        this.adapter.submitList(this.audioDataSet.getAudioInfoList());
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.adapter, C10651R.id.more_settings, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.vh
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                AudioListPopup.m48529t(AudioListPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.adapter, C10651R.id.rl_content_layout, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.wh
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                AudioListPopup.m48530u(AudioListPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        this.adapter.setListener(new AudioListItemAdapter.ItemSelectionListener() { // from class: com.onyx.galaxy.note.editor.view.popup.AudioListPopup$initAudioListView$3
            @Override // com.onyx.galaxy.note.editor.view.adapter.AudioListItemAdapter.ItemSelectionListener
            public void onItemSelected(@NotNull List<AudioInfoBean> list) {
                Object first;
                Intrinsics.checkNotNullParameter(list, "list");
                AudioListPopup.ItemChangedListener itemChangedListener = AudioListPopup.this.listener;
                if (itemChangedListener != null) {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
                    itemChangedListener.onItemClick((AudioInfoBean) first);
                }
            }
        });
        m48550r().recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        m48550r().recyclerView.setAdapter(this.adapter);
    }

    public final void setAnchorView(@Nullable View view) {
        this.anchorView = view;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setListener(@NotNull ItemChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(@Nullable View anchor) {
        super.showAsDropDown(anchor);
        this.anchorView = anchor;
        m48542I();
        EditorBundleKt.register(this.editorBundle, this);
    }

    /* renamed from: v */
    public final void m48552v() {
        TintTextView selection = m48550r().selection;
        Intrinsics.checkNotNullExpressionValue(selection, "selection");
        com.onyx.android.sdk.extension.ViewKt.click$default(selection, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioListPopup.m48531w(AudioListPopup.this, view);
            }
        }, 1, null);
        TintTextView finish = m48550r().finish;
        Intrinsics.checkNotNullExpressionValue(finish, "finish");
        com.onyx.android.sdk.extension.ViewKt.click$default(finish, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioListPopup.m48532x(AudioListPopup.this, view);
            }
        }, 1, null);
        TintTextView selectAll = m48550r().selectAll;
        Intrinsics.checkNotNullExpressionValue(selectAll, "selectAll");
        com.onyx.android.sdk.extension.ViewKt.click$default(selectAll, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ai
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioListPopup.m48533y(AudioListPopup.this, view);
            }
        }, 1, null);
        TintTextView delete = m48550r().delete;
        Intrinsics.checkNotNullExpressionValue(delete, "delete");
        com.onyx.android.sdk.extension.ViewKt.click$default(delete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioListPopup.m48534z(AudioListPopup.this, view);
            }
        }, 1, null);
    }
}

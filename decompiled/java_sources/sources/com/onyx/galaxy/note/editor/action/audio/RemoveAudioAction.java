package com.onyx.galaxy.note.editor.action.audio;

import android.app.Dialog;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppShapeAction;
import com.onyx.android.sdk.universal.editor.action.audio.FindAudioShapesAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.request.audio.RemoveAudioRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001eB\u001d\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\"\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0002R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "q", "", "p", "Landroid/text/SpannableString;", C4921e.f26528e, "", "m", "title", "l", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "i", "Ljava/util/List;", "audioList", "", "j", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()I", "ellipsizeThreshold", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRemoveAudioAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveAudioAction.kt\ncom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n1549#2:173\n1620#2,3:174\n*S KotlinDebug\n*F\n+ 1 RemoveAudioAction.kt\ncom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction\n*L\n50#1:173\n50#1:174,3\n*E\n"})
/* loaded from: classes9.dex */
public final class RemoveAudioAction extends RxBaseAppShapeAction<RemoveAudioAction> {

    /* renamed from: k */
    @NotNull
    public static final String f58149k = "...";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<AudioInfoBean> audioList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy ellipsizeThreshold;

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$a */
    /* loaded from: classes9.dex */
    public static final class C11804a<T> implements Predicate {
        public C11804a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull RemoveAudioAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !RemoveAudioAction.this.audioList.isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$b */
    /* loaded from: classes9.dex */
    public static final class C11805b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<String> f58154f;

        public C11805b(List<String> list) {
            this.f58154f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull RemoveAudioAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FindAudioShapesAction(RemoveAudioAction.this.getEditorBundle(), this.f58154f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$c */
    /* loaded from: classes9.dex */
    public static final class C11806c<T, R> implements Function {
        public C11806c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemoveAudioAction.this.m45647q(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$d */
    /* loaded from: classes9.dex */
    public static final class C11807d<T, R> implements Function {
        public C11807d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteShapesAction(RemoveAudioAction.this.getEditorBundle(), it2, false, false, 8, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$e */
    /* loaded from: classes9.dex */
    public static final class C11808e<T, R> implements Function {
        public C11808e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemoveAudioAction.this.m45646p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$f */
    /* loaded from: classes9.dex */
    public static final class C11809f<T, R> implements Function {
        public C11809f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderRequestManagerKt.safeClearAllNoteSliceCache(RemoveAudioAction.this);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$g */
    /* loaded from: classes9.dex */
    public static final class C11810g<T, R> implements Function {
        public C11810g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(RemoveAudioAction.this);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$h */
    /* loaded from: classes9.dex */
    public static final class C11811h<T, R> implements Function {
        public C11811h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RemoveAudioAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RemoveAudioAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$i */
    /* loaded from: classes9.dex */
    public static final class C11812i<T, R> implements Function {

        /* renamed from: e */
        public static final C11812i<T, R> f58161e = new C11812i<>();

        /* renamed from: a */
        public final void m45656a(@NotNull RemoveAudioRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45656a((RemoveAudioRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$j */
    /* loaded from: classes9.dex */
    public static final class C11813j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f58162e;

        /* JADX WARN: Multi-variable type inference failed */
        public C11813j(List<? extends Shape> list) {
            this.f58162e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(Boolean bool) {
            return this.f58162e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveAudioAction(@NotNull EditorBundle editorBundle, @NotNull List<AudioInfoBean> audioList) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(audioList, "audioList");
        this.audioList = audioList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$ellipsizeThreshold$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getInteger(C8045R.integer.audio_title_ellipsize));
            }
        });
        this.ellipsizeThreshold = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RemoveAudioAction> create() {
        int collectionSizeOrDefault;
        List<AudioInfoBean> list = this.audioList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String audioPath = ((AudioInfoBean) it2.next()).getAudioPath();
            if (audioPath == null) {
                audioPath = "";
            }
            arrayList.add(audioPath);
        }
        Observable<RemoveAudioAction> map = Observable.just(this).observeOn(getMainUIScheduler()).filter(new C11804a()).flatMap(new C11805b(arrayList)).observeOn(AndroidSchedulers.mainThread()).flatMap(new C11806c()).flatMap(new C11807d()).flatMap(new C11808e()).flatMap(new C11809f()).flatMap(new C11810g()).map(new C11811h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final String m45642l(String title) {
        if (title == null) {
            return "";
        }
        if (title.length() <= m45644n()) {
            return title;
        }
        StringBuilder sb = new StringBuilder();
        String substring = title.substring(0, m45644n());
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        sb.append(substring);
        sb.append(f58149k);
        return sb.toString();
    }

    /* renamed from: m */
    public final String m45643m(Shape shapes) {
        AudioInfoBean audioInfoBean;
        String title;
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) jSONUtils.parseObject(shapes.getText(), ShapeLinkBean.class);
        return (shapeLinkBean == null || !shapeLinkBean.isLinkAudioType() || (audioInfoBean = (AudioInfoBean) jSONUtils.parseObject(shapeLinkBean.getValue(), AudioInfoBean.class)) == null || (title = audioInfoBean.getTitle()) == null) ? "" : m45642l(title);
    }

    /* renamed from: n */
    public final int m45644n() {
        return ((Number) this.ellipsizeThreshold.getValue()).intValue();
    }

    /* renamed from: o */
    public final SpannableString m45645o(List<? extends Shape> shapes) {
        Object firstOrNull;
        String str;
        Object first;
        Object first2;
        String str2;
        int lastIndexOf$default;
        Object first3;
        String str3;
        int lastIndexOf$default2;
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        String str4 = null;
        Integer num = null;
        Integer num2 = null;
        str4 = null;
        if (this.audioList.size() <= 1) {
            if (!shapes.isEmpty()) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) shapes);
                String m45643m = m45643m((Shape) first);
                String string = ResManager.INSTANCE.getString(C8045R.string.dialog_delete_audio_inserted);
                if (string != null) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    str4 = String.format(string, Arrays.copyOf(new Object[]{m45643m}, 1));
                    Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
                }
            } else {
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.audioList);
                AudioInfoBean audioInfoBean = (AudioInfoBean) firstOrNull;
                if (audioInfoBean == null || (str = audioInfoBean.getTitle()) == null) {
                    str = "";
                }
                String m45642l = m45642l(str);
                String string2 = ResManager.INSTANCE.getString(C8045R.string.dialog_delete_audio);
                if (string2 != null) {
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    str4 = String.format(string2, Arrays.copyOf(new Object[]{m45642l}, 1));
                    Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
                }
            }
            return new SpannableString(str4);
        }
        if (!shapes.isEmpty()) {
            first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) shapes);
            String m45643m2 = m45643m((Shape) first3);
            String valueOf = String.valueOf(shapes.size());
            String string3 = ResManager.INSTANCE.getString(C8045R.string.dialog_delete_audio_inserted_more);
            if (string3 != null) {
                StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                str3 = String.format(string3, Arrays.copyOf(new Object[]{String.valueOf(this.audioList.size()), m45643m2, valueOf}, 3));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            } else {
                str3 = null;
            }
            if (str3 != null) {
                lastIndexOf$default2 = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str3, valueOf, 0, false, 6, (Object) null);
                num = Integer.valueOf(lastIndexOf$default2);
            }
            SpannableString spannableString = new SpannableString(str3);
            if (num != null) {
                num.intValue();
                spannableString.setSpan(new ForegroundColorSpan(colorById), num.intValue(), num.intValue() + valueOf.length(), 33);
            }
            return spannableString;
        }
        first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.audioList);
        String m45642l2 = m45642l(((AudioInfoBean) first2).getTitle());
        String valueOf2 = String.valueOf(this.audioList.size());
        String string4 = ResManager.INSTANCE.getString(C8045R.string.dialog_delete_audio_more);
        if (string4 != null) {
            StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
            str2 = String.format(string4, Arrays.copyOf(new Object[]{m45642l2, valueOf2}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        } else {
            str2 = null;
        }
        if (str2 != null) {
            lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str2, valueOf2, 0, false, 6, (Object) null);
            num2 = Integer.valueOf(lastIndexOf$default);
        }
        SpannableString spannableString2 = new SpannableString(str2);
        if (num2 != null) {
            num2.intValue();
            spannableString2.setSpan(new ForegroundColorSpan(colorById), num2.intValue(), num2.intValue() + valueOf2.length(), 33);
        }
        return spannableString2;
    }

    /* renamed from: p */
    public final Observable<Unit> m45646p() {
        RemoveAudioRequest removeAudioRequest = new RemoveAudioRequest(getEditorBundle(), this.audioList);
        removeAudioRequest.setPostShapeChangedEvent(getPostShapeChangedEvent());
        Observable<Unit> map = RxBaseAppActionKt.submitRequestToNote(this, removeAudioRequest).map(C11812i.f58161e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<List<Shape>> m45647q(List<? extends Shape> shapes) {
        if (!getPostShapeChangedEvent()) {
            Observable<List<Shape>> just = Observable.just(shapes);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            Observable<List<Shape>> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(activityContext).setTitle(C8045R.string.delete).setWarning(true).setContentSpannable(m45645o(shapes)).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$showAlertDialog$1
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
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction$showAlertDialog$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                RemoveAudioAction.this.dispose();
            }
        }).create().show();
        Observable map = create.map(new C11813j(shapes));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}

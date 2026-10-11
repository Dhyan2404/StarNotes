package com.onyx.android.sdk.universal.docmanager.action.name;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "e", "I", "type", C6997f.f39671c, Constants.STRING_SIG, "name", C6998g.f39679a, "maxLength", C6999h.f39688c, "overflowName", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "Lkotlin/Function1;", "", "j", "Lkotlin/jvm/functions/Function1;", "checkDuplicate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILjava/lang/String;ILjava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteNameCreateAction extends RxBaseAction<String> {

    /* renamed from: e, reason: from kotlin metadata */
    public final int type;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String name;

    /* renamed from: g, reason: from kotlin metadata */
    public final int maxLength;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String overflowName;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Function1<? super String, Boolean> checkDuplicate;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8132a<T, R> implements Function {

        /* renamed from: e */
        public static final C8132a<T, R> f47480e = new C8132a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull NoteNameCreateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction$b */
    /* loaded from: classes8.dex */
    public static final class C8133b<T, R> implements Function {
        public C8133b() {
        }

        /* renamed from: a */
        public final void m36661a(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteNameCreateAction.this.provider = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36661a((NoteProvider) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction$c */
    /* loaded from: classes8.dex */
    public static final class C8134c<T, R> implements Function {
        public C8134c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GenerateNameAction(NoteNameCreateAction.this.name, NoteNameCreateAction.this.maxLength, NoteNameCreateAction.this.checkDuplicate, NoteNameCreateAction.this.overflowName).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction$d */
    /* loaded from: classes8.dex */
    public static final class C8135d<T, R> implements Function {

        /* renamed from: e */
        public static final C8135d<T, R> f47483e = new C8135d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2;
        }
    }

    public /* synthetic */ NoteNameCreateAction(int i, String str, int i2, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i3 & 4) != 0 ? ResManager.INSTANCE.getInteger(C8045R.integer.edit_name_max_length) : i2, (i3 & 8) != 0 ? "" : str2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> map = Observable.just(this).flatMap(C8132a.f47480e).observeOn(KSyncBundle.INSTANCE.getObserveOn()).map(new C8133b()).flatMap(new C8134c()).map(C8135d.f47483e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public NoteNameCreateAction(int i, @NotNull String name, int i2, @NotNull String overflowName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(overflowName, "overflowName");
        this.type = i;
        this.name = name;
        this.maxLength = i2;
        this.overflowName = overflowName;
        this.checkDuplicate = new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction$checkDuplicate$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String generateName) {
                NoteProvider noteProvider;
                Intrinsics.checkNotNullParameter(generateName, "generateName");
                noteProvider = NoteNameCreateAction.this.provider;
                if (noteProvider == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                    noteProvider = null;
                }
                final NoteNameCreateAction noteNameCreateAction = NoteNameCreateAction.this;
                return Boolean.valueOf(NoteModelProviderKt.hasDuplicatedName(noteProvider, generateName, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction$checkDuplicate$1$duplicated$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                        invoke2(cBQueryArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull CBQueryArgs hasDuplicatedName) {
                        int i3;
                        Intrinsics.checkNotNullParameter(hasDuplicatedName, "$this$hasDuplicatedName");
                        CouchUtils couchUtils = CouchUtils.INSTANCE;
                        i3 = NoteNameCreateAction.this.type;
                        hasDuplicatedName.andWith(couchUtils.equalExpression("type", Integer.valueOf(i3)));
                    }
                }));
            }
        };
    }
}

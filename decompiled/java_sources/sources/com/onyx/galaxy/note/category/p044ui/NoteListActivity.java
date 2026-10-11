package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import androidx.activity.OnBackPressedCallback;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.NotificationCompat;
import androidx.core.util.Consumer;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.navigation.NavController;
import androidx.navigation.NavGraph;
import androidx.navigation.fragment.NavHostFragment;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.DrawerLayoutKt;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageRefreshTokenFailedEvent;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.AccountConfigurationChanged;
import com.onyx.android.sdk.data.account.event.LocalAccountExpired;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.account.event.PurchaseUpdateEvent;
import com.onyx.android.sdk.data.account.event.ReloadMessageEvent;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertCancelEvent;
import com.onyx.android.sdk.data.sync.bean.NoteUsageInfo;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction;
import com.onyx.galaxy.note.account.handler.AccountExpiredHandler;
import com.onyx.galaxy.note.account.handler.DriveExpiredHandler;
import com.onyx.galaxy.note.account.p043ui.RecentLoginActivity;
import com.onyx.galaxy.note.category.action.SearchNoteByScopeAction;
import com.onyx.galaxy.note.category.action.p127import.ImportUserManualNoteAction;
import com.onyx.galaxy.note.category.action.p127import.ParseIntentAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.data.SearchScope;
import com.onyx.galaxy.note.category.event.CleanExpiredNotificationsEvent;
import com.onyx.galaxy.note.category.event.MemberChargeEvent;
import com.onyx.galaxy.note.category.event.NotificationHostDestroyedEvent;
import com.onyx.galaxy.note.category.event.ShowJoinVipDialogEvent;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity;
import com.onyx.galaxy.note.category.p044ui.NoteListActivity$mBackPressedCallback$2;
import com.onyx.galaxy.note.category.view.SlideLayout;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ActivityNoteListBinding;
import com.onyx.galaxy.note.databinding.LayoutNoteQuotaWarningBinding;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.onyx.galaxy.note.editor.action.theme.IThemeRecreate;
import com.onyx.galaxy.note.editor.handler.ProgressEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleActivity;
import com.onyx.galaxy.note.member.action.OpenMemberChargeAction;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.viewmodel.MessageViewModel;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.update.IAppUpdateDetect;
import com.onyx.galaxy.note.utils.LoginUtils;
import com.onyx.galaxy.note.utils.SearchActions;
import com.onyx.galaxy.note.utils.ThemeExt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.v6l;
import dagger.hilt.android.AndroidEntryPoint;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Timed;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u0080\u00012\u00020\u00012\u00020\u0002:\u0002\u0080\u0001B\u0007¢\u0006\u0004\b~\u0010\u007fJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\u0003H\u0002J\b\u0010\u000e\u001a\u00020\u0003H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0003H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0003H\u0002J\b\u0010\u0018\u001a\u00020\u0003H\u0002J\b\u0010\u0019\u001a\u00020\u0003H\u0002J\b\u0010\u001a\u001a\u00020\u0003H\u0002J\b\u0010\u001b\u001a\u00020\u0003H\u0002J\b\u0010\u001c\u001a\u00020\u0003H\u0002J\b\u0010\u001d\u001a\u00020\u0003H\u0002J\u0012\u0010\u001e\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\b\u0010\u001f\u001a\u00020\u0003H\u0014J\b\u0010 \u001a\u00020\u0003H\u0016J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0015J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\n\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00032\u0006\u0010\n\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\n\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00032\u0006\u0010\n\u001a\u000207H\u0007J\b\u00109\u001a\u00020\u0003H\u0016R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001b\u0010D\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010<\u001a\u0004\bB\u0010CR\u001b\u0010I\u001a\u00020E8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010<\u001a\u0004\bG\u0010HR\u001b\u0010N\u001a\u00020J8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010<\u001a\u0004\bL\u0010MR\u001b\u0010S\u001a\u00020O8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010<\u001a\u0004\bQ\u0010RR\u0014\u0010W\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0014\u0010Y\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010VR'\u0010`\u001a\u0015\u0012\f\u0012\n \\*\u0004\u0018\u00010[0[0Z¢\u0006\u0002\b]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\u001b\u0010e\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010<\u001a\u0004\bc\u0010dR\u001a\u0010j\u001a\b\u0012\u0004\u0012\u00020g0f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010r\u001a\u00020o8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bp\u0010qR\"\u0010t\u001a\u00020s8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bt\u0010u\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR\u001c\u0010}\u001a\b\u0012\u0004\u0012\u00020\u000f0z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|¨\u0006\u0081\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListActivity;", "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;", "Lcom/onyx/galaxy/note/editor/action/theme/IThemeRecreate;", "", "i0", "Landroid/os/Bundle;", C1126e.f7693h, "K", Constants.HASIDCALL_INDEX_SIG, "", NotificationCompat.CATEGORY_EVENT, "S", "X", "Y", "W", "Landroid/content/Intent;", v6l.f87196g, "d0", "T", "b0", "Landroid/content/res/Configuration;", "newConfig", "j0", "V", "h0", "J", "L", "e0", "f0", "g0", "onCreate", "onDestroy", "recreate", "onNewIntent", "onConfigurationChanged", "Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;", "onAccountExpired", "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;", "onCloudStorageRefreshTokenFailedEvent", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", "onNetworkChanged", "Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;", "onAccountConfigurationChange", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onAccountChange", "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;", "onVipRoleChange", "Lcom/onyx/android/sdk/data/account/event/ReloadMessageEvent;", "onMessageReload", "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertCancelEvent;", "onDocConvertCancelEvent", "Lcom/onyx/android/sdk/data/account/event/PurchaseUpdateEvent;", "onPurchaseUpdateEvent", "Lcom/onyx/galaxy/note/category/event/ShowJoinVipDialogEvent;", "onShowJoinVipDialogEvent", "Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;", "onMemberChargeEvent", "themeRecreate", "Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;", "A0", "Lkotlin/Lazy;", "M", "()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "B0", "R", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "C0", "P", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "noteQuotaViewModel", "Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;", "D0", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;", "messageViewModel", "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "E0", "Q", "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "notificationViewModel", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "F0", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "G0", "userLevelDisposables", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "H0", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "backButtonClickSource", "Landroidx/activity/OnBackPressedCallback;", "I0", "N", "()Landroidx/activity/OnBackPressedCallback;", "mBackPressedCallback", "Landroidx/core/util/Consumer;", "Landroidx/core/app/MultiWindowModeChangedInfo;", "J0", "Landroidx/core/util/Consumer;", "multiWindowModeChangedConsumer", "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;", "K0", "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;", "parseIntentAction", "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;", "L0", "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;", "progressEventHandler", "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;", "appUpdateDetect", "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;", "getAppUpdateDetect", "()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;", "setAppUpdateDetect", "(Lcom/onyx/galaxy/note/update/IAppUpdateDetect;)V", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "M0", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "parseIntentFilter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@AndroidEntryPoint
/* loaded from: classes.dex */
public final class NoteListActivity extends Hilt_NoteListActivity implements IThemeRecreate {

    /* renamed from: N0 */
    public static final float f54631N0 = 0.6f;

    /* renamed from: O0 */
    public static final float f54632O0 = 1.5f;

    /* renamed from: A0, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: B0, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: C0, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteQuotaViewModel;

    /* renamed from: D0, reason: from kotlin metadata */
    @NotNull
    public final Lazy messageViewModel;

    /* renamed from: E0, reason: from kotlin metadata */
    @NotNull
    public final Lazy notificationViewModel;

    /* renamed from: F0, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: G0, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable userLevelDisposables;

    /* renamed from: H0, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Boolean> backButtonClickSource;

    /* renamed from: I0, reason: from kotlin metadata */
    @NotNull
    public final Lazy mBackPressedCallback;

    /* renamed from: J0, reason: from kotlin metadata */
    @NotNull
    public final Consumer<MultiWindowModeChangedInfo> multiWindowModeChangedConsumer;

    /* renamed from: K0, reason: from kotlin metadata */
    @Nullable
    public ParseIntentAction parseIntentAction;

    /* renamed from: L0, reason: from kotlin metadata */
    public ProgressEventHandler progressEventHandler;

    /* renamed from: M0, reason: from kotlin metadata */
    @NotNull
    public RxFilter<Intent> parseIntentFilter;

    @Inject
    public IAppUpdateDetect appUpdateDetect;

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListActivity$a */
    /* loaded from: classes9.dex */
    public static final class C11257a<T> implements io.reactivex.rxjava3.functions.Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteSearchArgs f54646e;

        public C11257a(NoteSearchArgs noteSearchArgs) {
            this.f54646e = noteSearchArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            List<SyncNoteModel> mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteSearchArgs noteSearchArgs = this.f54646e;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2);
            noteSearchArgs.setNoteModels(mutableList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListActivity$b */
    /* loaded from: classes9.dex */
    public static final class C11258b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteSearchArgs f54647e;

        public C11258b(NoteSearchArgs noteSearchArgs) {
            this.f54647e = noteSearchArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BuildTextIndexInBackgroundAction> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new BuildTextIndexInBackgroundAction(this.f54647e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListActivity$c */
    /* loaded from: classes9.dex */
    public static final class C11259c implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54648a;

        public C11259c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54648a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f54648a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54648a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListActivity$d */
    /* loaded from: classes9.dex */
    public static final class C11260d<T> implements io.reactivex.rxjava3.functions.Consumer {
        public C11260d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Intent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteListActivity.this.m43186T(it2);
        }
    }

    public NoteListActivity() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ActivityNoteListBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ActivityNoteListBinding invoke() {
                return ActivityNoteListBinding.inflate(NoteListActivity.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                return (NoteListViewModel) FragmentActivityKt.getViewModel(NoteListActivity.this, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<NoteQuotaViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$noteQuotaViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteQuotaViewModel invoke() {
                return (NoteQuotaViewModel) FragmentActivityKt.getViewModel(NoteListActivity.this, NoteQuotaViewModel.class);
            }
        });
        this.noteQuotaViewModel = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<MessageViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$messageViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MessageViewModel invoke() {
                return (MessageViewModel) FragmentActivityKt.getViewModel(NoteListActivity.this, MessageViewModel.class);
            }
        });
        this.messageViewModel = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<NotificationViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$notificationViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NotificationViewModel invoke() {
                return (NotificationViewModel) FragmentActivityKt.getViewModel(NoteListActivity.this, NotificationViewModel.class);
            }
        });
        this.notificationViewModel = lazy5;
        this.compositeDisposable = new CompositeDisposable();
        this.userLevelDisposables = new CompositeDisposable();
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.backButtonClickSource = create;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListActivity$mBackPressedCallback$2.C112641>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$mBackPressedCallback$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.ui.NoteListActivity$mBackPressedCallback$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C112641 invoke() {
                final NoteListActivity noteListActivity = NoteListActivity.this;
                return new OnBackPressedCallback() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$mBackPressedCallback$2.1
                    {
                        super(true);
                    }

                    @Override // androidx.activity.OnBackPressedCallback
                    public void handleOnBackPressed() {
                        PublishSubject publishSubject;
                        publishSubject = NoteListActivity.this.backButtonClickSource;
                        publishSubject.onNext(Boolean.TRUE);
                    }
                };
            }
        });
        this.mBackPressedCallback = lazy6;
        this.multiWindowModeChangedConsumer = new Consumer() { // from class: com.sunia.HTREnginev2.iwj
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                NoteListActivity.m43175c0(NoteListActivity.this, (MultiWindowModeChangedInfo) obj);
            }
        };
        this.parseIntentFilter = new RxFilter<>();
    }

    /* renamed from: U */
    public static final void m43173U(NoteListActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setIntent(new Intent());
    }

    /* renamed from: a0 */
    public static final void m43174a0(NoteListActivity this$0, Boolean it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "$it");
        DrawerLayout drawerLayout = this$0.m43179M().drawerLayout;
        Intrinsics.checkNotNullExpressionValue(drawerLayout, "drawerLayout");
        DrawerLayoutKt.openOrClose(drawerLayout, it2.booleanValue(), false);
    }

    /* renamed from: c0 */
    public static final void m43175c0(NoteListActivity this$0, MultiWindowModeChangedInfo it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        MediatorLiveData<Boolean> isShowSlideMenu = this$0.m43184R().isShowSlideMenu();
        Boolean bool = Boolean.FALSE;
        isShowSlideMenu.setValue(bool);
        this$0.m43184R().isSideExpand().setValue(bool);
        this$0.m43184R().isInMultiWindowMode().setValue(Boolean.valueOf(it2.getIsInMultiWindowMode()));
    }

    /* renamed from: J */
    public final void m43176J() {
        m43182P().checkIn();
    }

    /* renamed from: K */
    public final void m43177K(Bundle savedInstanceState) {
        if (savedInstanceState != null) {
            return;
        }
        getAppUpdateDetect().checkUpdate(this);
    }

    /* renamed from: L */
    public final void m43178L() {
        FetchAccountConfigurationsAction.INSTANCE.debounceFetch();
    }

    /* renamed from: M */
    public final ActivityNoteListBinding m43179M() {
        return (ActivityNoteListBinding) this.binding.getValue();
    }

    /* renamed from: N */
    public final OnBackPressedCallback m43180N() {
        return (OnBackPressedCallback) this.mBackPressedCallback.getValue();
    }

    /* renamed from: O */
    public final MessageViewModel m43181O() {
        return (MessageViewModel) this.messageViewModel.getValue();
    }

    /* renamed from: P */
    public final NoteQuotaViewModel m43182P() {
        return (NoteQuotaViewModel) this.noteQuotaViewModel.getValue();
    }

    /* renamed from: Q */
    public final NotificationViewModel m43183Q() {
        return (NotificationViewModel) this.notificationViewModel.getValue();
    }

    /* renamed from: R */
    public final NoteListViewModel m43184R() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: S */
    public final void m43185S(Object event) {
        if (Intrinsics.areEqual(event, NoteQuotaViewModel.EVENT_SHOW_LEFT_QUOTA)) {
            NoteQuotaViewModel m43182P = m43182P();
            LayoutNoteQuotaWarningBinding noteQuotaBinding = m43179M().noteQuotaBinding;
            Intrinsics.checkNotNullExpressionValue(noteQuotaBinding, "noteQuotaBinding");
            m43182P.showLeftQuotaDialog(noteQuotaBinding);
            return;
        }
        if (Intrinsics.areEqual(event, NoteQuotaViewModel.EVENT_QUOTA_CHANGED)) {
            NoteQuotaViewModel m43182P2 = m43182P();
            LayoutNoteQuotaWarningBinding noteQuotaBinding2 = m43179M().noteQuotaBinding;
            Intrinsics.checkNotNullExpressionValue(noteQuotaBinding2, "noteQuotaBinding");
            m43182P2.updateLeftQuotaDialog(noteQuotaBinding2);
        }
    }

    /* renamed from: T */
    public final void m43186T(Intent intent) {
        Observable<ParseIntentAction> build;
        Observable<ParseIntentAction> doFinally;
        if (this.parseIntentAction == null) {
            this.parseIntentAction = new ParseIntentAction(this, intent);
        }
        ParseIntentAction parseIntentAction = this.parseIntentAction;
        if (parseIntentAction != null && parseIntentAction.isDisposed()) {
            ParseIntentAction parseIntentAction2 = this.parseIntentAction;
            if (parseIntentAction2 != null && parseIntentAction2.validIntent(intent)) {
                ParseIntentAction parseIntentAction3 = this.parseIntentAction;
                if (parseIntentAction3 != null) {
                    parseIntentAction3.setIntent(intent);
                }
                ParseIntentAction parseIntentAction4 = this.parseIntentAction;
                if (parseIntentAction4 != null) {
                    parseIntentAction4.setDefaultSelection(m43184R().getNormalizedFolderId(), m43184R().getNormalizedTagId());
                }
                ParseIntentAction parseIntentAction5 = this.parseIntentAction;
                if (parseIntentAction5 == null || (build = parseIntentAction5.build()) == null || (doFinally = build.doFinally(new Action() { // from class: com.sunia.HTREnginev2.kwj
                    @Override // io.reactivex.rxjava3.functions.Action
                    public final void run() {
                        NoteListActivity.m43173U(NoteListActivity.this);
                    }
                })) == null) {
                    return;
                }
                OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, doFinally, null, null, 3, null);
            }
        }
    }

    /* renamed from: V */
    public final void m43187V() {
        if (NoteConfigManager.INSTANCE.getBackgroundFtsIndexEnabledOption().get()) {
            this.userLevelDisposables.clear();
            NoteSearchArgs noteSearchArgs = new NoteSearchArgs();
            noteSearchArgs.setSearchTypes(SearchActions.INSTANCE.getCorrespondingSearchTypes(TextSearchType.ALL));
            noteSearchArgs.getFtsIndexArgs().setUnloadPage(true);
            noteSearchArgs.setBackgroundSearch(true);
            SearchScope searchScope = new SearchScope();
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<R> flatMap = new SearchNoteByScopeAction(searchScope).build().doOnNext(new C11257a(noteSearchArgs)).flatMap(new C11258b(noteSearchArgs));
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            this.userLevelDisposables.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, flatMap, null, null, 3, null));
        }
    }

    /* renamed from: W */
    public final void m43188W() {
        RxBaseAction.execute$default(new ImportUserManualNoteAction(), null, null, null, 7, null);
    }

    /* renamed from: X */
    public final void m43189X() {
        getOnBackPressedDispatcher().addCallback(this, m43180N());
        getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$initBackDebounce$1

            /* renamed from: com.onyx.galaxy.note.category.ui.NoteListActivity$initBackDebounce$1$a */
            /* loaded from: classes9.dex */
            public static final class C11261a<T> implements io.reactivex.rxjava3.functions.Consumer {

                /* renamed from: e */
                public static final C11261a<T> f54651e = new C11261a<>();

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(Boolean bool) {
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.exit_app, false, 2, (Object) null);
                }
            }

            /* renamed from: com.onyx.galaxy.note.category.ui.NoteListActivity$initBackDebounce$1$b */
            /* loaded from: classes9.dex */
            public static final class C11262b<T> implements Predicate {

                /* renamed from: e */
                public static final C11262b<T> f54652e = new C11262b<>();

                @Override // io.reactivex.rxjava3.functions.Predicate
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final boolean test(@NotNull Timed<Boolean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.time() < 1500;
                }
            }

            /* renamed from: com.onyx.galaxy.note.category.ui.NoteListActivity$initBackDebounce$1$c */
            /* loaded from: classes9.dex */
            public static final class C11263c<T> implements io.reactivex.rxjava3.functions.Consumer {

                /* renamed from: e */
                public final /* synthetic */ NoteListActivity f54653e;

                public C11263c(NoteListActivity noteListActivity) {
                    this.f54653e = noteListActivity;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Timed<Boolean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f54653e.finish();
                }
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onPause(@NotNull LifecycleOwner owner) {
                CompositeDisposable compositeDisposable;
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onPause(owner);
                compositeDisposable = NoteListActivity.this.compositeDisposable;
                compositeDisposable.clear();
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(@NotNull LifecycleOwner owner) {
                PublishSubject publishSubject;
                CompositeDisposable compositeDisposable;
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onResume(owner);
                publishSubject = NoteListActivity.this.backButtonClickSource;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                Disposable subscribe = publishSubject.debounce(100L, timeUnit).observeOn(AndroidSchedulers.mainThread()).doOnNext(C11261a.f54651e).timeInterval(timeUnit).skip(1L).filter(C11262b.f54652e).subscribe(new C11263c(NoteListActivity.this));
                Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
                compositeDisposable = NoteListActivity.this.compositeDisposable;
                compositeDisposable.add(subscribe);
            }
        });
    }

    /* renamed from: Y */
    public final void m43190Y() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C10651R.id.container_right);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
        NavController navController = ((NavHostFragment) findFragmentById).getNavController();
        NavGraph inflate = navController.getNavInflater().inflate(C10651R.navigation.note_container);
        if (NoteTreeBundle.INSTANCE.activeFilterInfo().getType() == 0) {
            inflate.setStartDestination(C10651R.id.fragment_search_note);
        } else {
            inflate.setStartDestination(C10651R.id.fragment_note_list_container);
        }
        navController.setGraph(inflate);
    }

    /* renamed from: Z */
    public final void m43191Z() {
        m43184R().isInMultiWindowMode().setValue(Boolean.valueOf(isInMultiWindowMode()));
        getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$initObserver$1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onCreate(@NotNull LifecycleOwner owner) {
                Consumer<MultiWindowModeChangedInfo> consumer;
                Intrinsics.checkNotNullParameter(owner, "owner");
                NoteListActivity noteListActivity = NoteListActivity.this;
                consumer = noteListActivity.multiWindowModeChangedConsumer;
                noteListActivity.addOnMultiWindowModeChangedListener(consumer);
                EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
                NoteListActivity noteListActivity2 = this;
                NoteListActivity noteListActivity3 = NoteListActivity.this;
                EditorBundleKt.register(docManagerBundle, noteListActivity2);
                noteListActivity3.progressEventHandler = new ProgressEventHandler(noteListActivity2, docManagerBundle);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onDestroy(@NotNull LifecycleOwner owner) {
                ProgressEventHandler progressEventHandler;
                Consumer<MultiWindowModeChangedInfo> consumer;
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onDestroy(owner);
                progressEventHandler = NoteListActivity.this.progressEventHandler;
                if (progressEventHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("progressEventHandler");
                    progressEventHandler = null;
                }
                progressEventHandler.destroy();
                DocCollectionBundle.INSTANCE.ensureUnRegister(this);
                NoteListActivity noteListActivity = NoteListActivity.this;
                consumer = noteListActivity.multiWindowModeChangedConsumer;
                noteListActivity.removeOnMultiWindowModeChangedListener(consumer);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(@NotNull LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                super.onResume(owner);
                if (LoginUtils.INSTANCE.isLoginRequired()) {
                    ContextExtKt.startActivity(NoteListActivity.this, RecentLoginActivity.class);
                }
            }
        });
        Boolean value = m43184R().isShowSlideMenu().getValue();
        if (value != null) {
            m43179M().slideLayout.toggleSlideWithoutAnimation(value.booleanValue());
        }
        final Boolean value2 = m43184R().isShowDrawerMenu().getValue();
        if (value2 != null) {
            m43179M().drawerMenu.post(new Runnable() { // from class: com.sunia.HTREnginev2.jwj
                @Override // java.lang.Runnable
                public final void run() {
                    NoteListActivity.m43174a0(NoteListActivity.this, value2);
                }
            });
        }
        m43184R().isShowDrawerMenu().observe(this, new C11259c(new NoteListActivity$initObserver$4(this)));
        m43184R().isShowSlideMenu().observe(this, new C11259c(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$initObserver$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                ActivityNoteListBinding m43179M;
                m43179M = NoteListActivity.this.m43179M();
                SlideLayout slideLayout = m43179M.slideLayout;
                Intrinsics.checkNotNull(bool);
                slideLayout.toggleSlideWithAnimation(bool.booleanValue());
            }
        }));
        m43184R().getFilterInfo().observe(this, new C11259c(new Function1<FilterInfo, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$initObserver$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FilterInfo filterInfo) {
                invoke2(filterInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(FilterInfo filterInfo) {
                NoteListActivity.this.m43190Y();
            }
        }));
        m43184R().getNoteUsageInfo().observe(this, new C11259c(new Function1<NoteUsageInfo, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$initObserver$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteUsageInfo noteUsageInfo) {
                invoke2(noteUsageInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteUsageInfo noteUsageInfo) {
                NoteQuotaViewModel m43182P;
                NoteQuotaViewModel m43182P2;
                ActivityNoteListBinding m43179M;
                m43182P = NoteListActivity.this.m43182P();
                if (noteUsageInfo == null) {
                    return;
                }
                m43182P.setNoteUsageInfo(noteUsageInfo);
                m43182P2 = NoteListActivity.this.m43182P();
                m43179M = NoteListActivity.this.m43179M();
                LayoutNoteQuotaWarningBinding noteQuotaBinding = m43179M.noteQuotaBinding;
                Intrinsics.checkNotNullExpressionValue(noteQuotaBinding, "noteQuotaBinding");
                m43182P2.checkLeftNoteQuota(noteQuotaBinding);
            }
        }));
        DataBindingKt.observeOnce(m43182P().getEvent(), this, new NoteListActivity$initObserver$8(this));
    }

    /* renamed from: b0 */
    public final void m43192b0() {
        DrawerLayout.DrawerListener drawerListener = new DrawerLayout.DrawerListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$initSlideMenuLayout$drawerListener$1
            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(@NotNull View drawerView) {
                NoteListViewModel m43184R;
                Intrinsics.checkNotNullParameter(drawerView, "drawerView");
                m43184R = NoteListActivity.this.m43184R();
                m43184R.isSideExpand().setValue(Boolean.FALSE);
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(@NotNull View drawerView) {
                Intrinsics.checkNotNullParameter(drawerView, "drawerView");
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerSlide(@NotNull View drawerView, float slideOffset) {
                Intrinsics.checkNotNullParameter(drawerView, "drawerView");
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerStateChanged(int newState) {
            }
        };
        m43179M().slideLayout.setSlideListener(new SlideLayout.SlideLayoutListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$initSlideMenuLayout$slideLayoutListener$1
            @Override // com.onyx.galaxy.note.category.view.SlideLayout.SlideLayoutListener
            public void onAnimationEnd() {
                NoteListViewModel m43184R;
                m43184R = NoteListActivity.this.m43184R();
                m43184R.isSlideAnimating().setValue(Boolean.FALSE);
            }

            @Override // com.onyx.galaxy.note.category.view.SlideLayout.SlideLayoutListener
            public void onAnimationStart() {
                NoteListViewModel m43184R;
                m43184R = NoteListActivity.this.m43184R();
                m43184R.isSlideAnimating().setValue(Boolean.TRUE);
            }

            @Override // com.onyx.galaxy.note.category.view.SlideLayout.SlideLayoutListener
            public void onSlideStateChanged(boolean isExpanded) {
            }
        });
        m43179M().drawerLayout.setDrawerLockMode(1);
        m43179M().drawerLayout.addDrawerListener(drawerListener);
        Configuration configuration = getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "getConfiguration(...)");
        m43199j0(configuration);
    }

    /* renamed from: d0 */
    public final void m43193d0(final Intent intent) {
        DataBindingKt.observeOnceAll(new MediatorLiveData(), this, new LiveData[]{m43184R().getFolderRootNode(), m43184R().getTagRootNode()}, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListActivity$parseIntent$1
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
                RxFilter rxFilter;
                rxFilter = NoteListActivity.this.parseIntentFilter;
                rxFilter.onNext(intent);
            }
        });
    }

    /* renamed from: e0 */
    public final void m43194e0() {
        SyncStateOptions syncStateOptions = SyncStateOptions.INSTANCE;
        syncStateOptions.invalidateSyncState(FunctionKey.ACCOUNT_CONFIGURATIONS);
        syncStateOptions.invalidateSyncState(FunctionKey.NOTIFICATION);
        m43181O().load();
        m43183Q().load();
        NoteQuotaViewModel m43182P = m43182P();
        LayoutNoteQuotaWarningBinding noteQuotaBinding = m43179M().noteQuotaBinding;
        Intrinsics.checkNotNullExpressionValue(noteQuotaBinding, "noteQuotaBinding");
        m43182P.checkLeftNoteQuota(noteQuotaBinding);
    }

    /* renamed from: f0 */
    public final void m43195f0() {
        if (ThemeUtils.getTheme().getIsFree()) {
            return;
        }
        ThemeExt.resetTheme$default(ThemeExt.INSTANCE, SkinType.AUTO_SYSTEM.getThemeType(), null, 2, null);
    }

    /* renamed from: g0 */
    public final void m43196g0() {
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        if (accountDataBundle.isAlreadyLogin()) {
            StatisticsBundle.INSTANCE.getStatisticsManager().onProfileSignIn(accountDataBundle.getSyncUserId());
        } else {
            StatisticsBundle.INSTANCE.getStatisticsManager().onProfileSignOff();
        }
    }

    @NotNull
    public final IAppUpdateDetect getAppUpdateDetect() {
        IAppUpdateDetect iAppUpdateDetect = this.appUpdateDetect;
        if (iAppUpdateDetect != null) {
            return iAppUpdateDetect;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appUpdateDetect");
        return null;
    }

    /* renamed from: h0 */
    public final void m43197h0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        FilterInfo value = m43184R().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(value.getType()));
        linkedHashMap.put(OnyxStatisticConstant.KEY_HOMEPAGE_STATE, Integer.valueOf(BooleanKt.toInteger(m43184R().isSideExpand().getValue())));
        NoteDisplayType value2 = m43184R().getDisplayType().getValue();
        linkedHashMap.put(OnyxStatisticConstant.KEY_HOMEPAGES_SHOW, Integer.valueOf(BooleanKt.toInteger(value2 != null ? Boolean.valueOf(value2.isGrid()) : null)));
        StringBuilder sb = new StringBuilder();
        SortBy value3 = m43184R().getSortType().getValue();
        Intrinsics.checkNotNull(value3);
        String name = value3.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        sb.append(lowerCase);
        sb.append(NameUtil.USCORE);
        SortOrder value4 = m43184R().getOrderType().getValue();
        Intrinsics.checkNotNull(value4);
        String lowerCase2 = value4.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        sb.append(lowerCase2);
        linkedHashMap.put(OnyxStatisticConstant.KEY_HOMEPAGE_SORT, sb.toString());
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_HOME_PAGE_VIEW, linkedHashMap));
    }

    /* renamed from: i0 */
    public final void m43198i0() {
        this.parseIntentFilter.subscribeThrottleFirst(ResManager.INSTANCE.getLong(C10651R.integer.parse_intent_delay_time), new C11260d());
    }

    /* renamed from: j0 */
    public final void m43199j0(Configuration newConfig) {
        m43179M().slideLayout.setAnimationDuration((newConfig.orientation == 1 ? 1.5f : 1.0f) * getResources().getInteger(C10651R.integer.slide_layout_animate_dur));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChange(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        GlobalBundle.INSTANCE.postEvent(CleanExpiredNotificationsEvent.INSTANCE);
        m43182P().setHasLeftQuotaTipped(false);
        m43183Q().setActivityRecreated(false);
        m43183Q().invalidate();
        m43182P().checkIn();
        NotificationDisplayHandler.INSTANCE.invalidate();
        m43178L();
        m43196g0();
        m43195f0();
        m43187V();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountConfigurationChange(@NotNull AccountConfigurationChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43194e0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountExpired(@NotNull LocalAccountExpired event) {
        Intrinsics.checkNotNullParameter(event, "event");
        AccountExpiredHandler.INSTANCE.onAccountExpired(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloudStorageRefreshTokenFailedEvent(@NotNull CloudStorageRefreshTokenFailedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Activity.INSTANCE.getFrontActivity() instanceof NoteScribbleActivity) {
            return;
        }
        DriveExpiredHandler.INSTANCE.onDriveTokenExpired(event.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_PROVIDER java.lang.String());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Number valueOf = isInMultiWindowMode() ? 0 : Float.valueOf(ResManager.INSTANCE.getDimension(C10651R.dimen.note_list_left_container_width));
        ResManager resManager = ResManager.INSTANCE;
        m43184R().isHalfInMultiWindowMode().setValue(Boolean.valueOf(resManager.getScreenWidth() / ((float) resManager.getWindowDefaultWidth()) <= 0.6f));
        m43179M().slideLayout.setLeftWidth(valueOf.intValue());
        m43199j0(newConfig);
    }

    @Override // com.onyx.galaxy.note.category.p044ui.Hilt_NoteListActivity, com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063322, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.category.p044ui.Hilt_NoteListActivity, com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        globalBundle.postEvent(NotificationHostDestroyedEvent.INSTANCE);
        globalBundle.unregister(this);
        CloudStorageManager.INSTANCE.getOurInstance().unregister(this);
        this.parseIntentAction = null;
        this.userLevelDisposables.clear();
        this.parseIntentFilter.dispose();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocConvertCancelEvent(@NotNull DocConvertCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43184R().cancelDocConvert();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMemberChargeEvent(@NotNull MemberChargeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (getLifecycle().getState() != Lifecycle.State.RESUMED) {
            return;
        }
        FeatureChargeArgs featureChargeArgs = new FeatureChargeArgs();
        featureChargeArgs.setFunctionFrom(event.getTriggerFrom());
        RxBaseAction.execute$default(new OpenMemberChargeAction(featureChargeArgs).setActivityContext(this), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMessageReload(@NotNull ReloadMessageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43181O().load();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChanged(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            m43178L();
            DataRepositoryManager.INSTANCE.checkAndUpdateLocalResource();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onNewIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        m43193d0(intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPurchaseUpdateEvent(@NotNull PurchaseUpdateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43178L();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowJoinVipDialogEvent(@NotNull ShowJoinVipDialogEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteQuotaViewModel m43182P = m43182P();
        DrawerLayout root = m43179M().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        m43182P.showJoinVipDialog(root);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVipRoleChange(@NotNull VipRoleChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43178L();
    }

    @Override // android.app.Activity
    public void recreate() {
        m43183Q().setActivityRecreated(true);
        super.recreate();
    }

    public final void setAppUpdateDetect(@NotNull IAppUpdateDetect iAppUpdateDetect) {
        Intrinsics.checkNotNullParameter(iAppUpdateDetect, "<set-?>");
        this.appUpdateDetect = iAppUpdateDetect;
    }

    @Override // com.onyx.galaxy.note.editor.action.theme.IThemeRecreate
    public void themeRecreate() {
        recreate();
    }
}

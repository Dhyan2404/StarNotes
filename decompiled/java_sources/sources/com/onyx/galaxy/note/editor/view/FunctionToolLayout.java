package com.onyx.galaxy.note.editor.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.ToolFunction;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.bean.ScreenDisplayType;
import com.onyx.android.sdk.event.StatisticsShortcutToolbarEvent;
import com.onyx.android.sdk.event.StatisticsSwitchWritingMode;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.event.StartNoteReplicatorEvent;
import com.onyx.android.sdk.replicator.event.SyncNoteProgressChangedEvent;
import com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.config.DocumentState;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyConvertType;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentStateEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorBundleChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoteTabDataChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.NotifyRealtimeBeautifyModeUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.RealtimeBeautifyModeUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.AudioPermissionGratedEvent;
import com.onyx.android.sdk.universal.editor.events.note.AudioShapeBeanEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.CheckBeautifyPermissionEvent;
import com.onyx.android.sdk.universal.editor.events.note.CreateAudioShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.FullScreenEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitNoteDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitPendingHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakePictureEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakeScreenCaptureEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.AuthNoteAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.view.TransitionController;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.LayoutCustomShortcutsViewBinding;
import com.onyx.galaxy.note.databinding.LayoutFunctionToolBinding;
import com.onyx.galaxy.note.editor.action.doc.FunctionToolToggleNoteEncryptionAction;
import com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction;
import com.onyx.galaxy.note.editor.data.ShortcutBarData;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.event.ChangeDockTypeEvent;
import com.onyx.galaxy.note.editor.event.CheckEditorAutoReLockEvent;
import com.onyx.galaxy.note.editor.event.ContainerRectChangedEvent;
import com.onyx.galaxy.note.editor.event.DismissCounterSettingEvent;
import com.onyx.galaxy.note.editor.event.EditNoteEncryptionChangedEvent;
import com.onyx.galaxy.note.editor.event.FunctionToolPopupDismissEvent;
import com.onyx.galaxy.note.editor.event.FunctionToolPopupHideEvent;
import com.onyx.galaxy.note.editor.event.ShortcutBarChangeEvent;
import com.onyx.galaxy.note.editor.event.ShowCounterSettingEvent;
import com.onyx.galaxy.note.editor.event.ShowLayerPopupEvent;
import com.onyx.galaxy.note.editor.event.ShowPlayerViewEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.p046ui.NoteOutlineDialogFragment;
import com.onyx.galaxy.note.editor.view.FunctionToolLayout;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog;
import com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog;
import com.onyx.galaxy.note.editor.view.popup.AudioListPopup;
import com.onyx.galaxy.note.editor.view.popup.InsertPagePopup;
import com.onyx.galaxy.note.editor.view.popup.LayerPopup;
import com.onyx.galaxy.note.editor.view.popup.RealtimeBeautifySettingsPopup;
import com.onyx.galaxy.note.editor.view.popup.ShortcutBarMoreFunctionPopup;
import com.onyx.galaxy.note.editor.view.popup.SyncErrorPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.window.CounterSettingWindow;
import com.onyx.galaxy.note.editor.viewmodel.AudioViewModel;
import com.onyx.galaxy.note.editor.viewmodel.PlayerViewModel;
import com.onyx.galaxy.note.editor.viewmodel.RecorderViewModel;
import com.onyx.galaxy.note.receiver.ScreenOnEvent;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.onyx.galaxy.note.utils.FunctionPermissions;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.onyx.galaxy.note.utils.NotificationKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0093\u0002B\u0015\b\u0016\u0012\b\u0010\u008b\u0002\u001a\u00030\u008a\u0002¢\u0006\u0006\b\u008c\u0002\u0010\u008d\u0002B#\b\u0016\u0012\b\u0010\u008b\u0002\u001a\u00030\u008a\u0002\u0012\f\b\u0002\u0010\u008f\u0002\u001a\u0005\u0018\u00010\u008e\u0002¢\u0006\u0006\b\u008c\u0002\u0010\u0090\u0002B,\b\u0016\u0012\b\u0010\u008b\u0002\u001a\u00030\u008a\u0002\u0012\f\b\u0002\u0010\u008f\u0002\u001a\u0005\u0018\u00010\u008e\u0002\u0012\u0007\u0010\u0091\u0002\u001a\u00020<¢\u0006\u0006\b\u008c\u0002\u0010\u0092\u0002J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\b\u0010\u0016\u001a\u00020\u0003H\u0002J\b\u0010\u0017\u001a\u00020\u0003H\u0002J\b\u0010\u0018\u001a\u00020\u0003H\u0002J\b\u0010\u0019\u001a\u00020\u0003H\u0002J\b\u0010\u001a\u001a\u00020\u0003H\u0002J\b\u0010\u001b\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\b\u0010\u001d\u001a\u00020\u0003H\u0002J\b\u0010\u001e\u001a\u00020\u0003H\u0002J\b\u0010\u001f\u001a\u00020\u0003H\u0002J\b\u0010 \u001a\u00020\u0003H\u0002J\b\u0010!\u001a\u00020\u0003H\u0002J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0006H\u0002J\u001a\u0010&\u001a\u00020$2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010%\u001a\u00020$H\u0002J\b\u0010'\u001a\u00020\u0003H\u0002J\b\u0010(\u001a\u00020\u0003H\u0002J\b\u0010)\u001a\u00020\u0003H\u0002J\b\u0010*\u001a\u00020\u0003H\u0002J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010,\u001a\u00020+H\u0002J\b\u0010.\u001a\u00020\u0003H\u0002J\u001e\u00102\u001a\u00020\u00032\u0006\u0010/\u001a\u00020$2\f\u00101\u001a\b\u0012\u0004\u0012\u00020+00H\u0002J\"\u00105\u001a\u00020\u00032\u0006\u00103\u001a\u00020+2\u0006\u00104\u001a\u00020+2\b\b\u0002\u0010/\u001a\u00020$H\u0002J\b\u00106\u001a\u00020\u0003H\u0002J\b\u00107\u001a\u00020\u0003H\u0002J\b\u00108\u001a\u00020\u0003H\u0002J(\u0010>\u001a\u00020\u00032\u0016\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u000609j\b\u0012\u0004\u0012\u00020\u0006`:2\u0006\u0010=\u001a\u00020<H\u0002J\u001e\u0010C\u001a\u00020\u00032\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00060?2\u0006\u0010B\u001a\u00020AH\u0002J(\u0010E\u001a\u00020\u00032\u0016\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u000609j\b\u0012\u0004\u0012\u00020\u0006`:2\u0006\u0010D\u001a\u00020<H\u0002J(\u0010F\u001a\u00020\u00032\u0016\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u000609j\b\u0012\u0004\u0012\u00020\u0006`:2\u0006\u0010D\u001a\u00020<H\u0002J\b\u0010G\u001a\u00020\u0003H\u0002J\b\u0010H\u001a\u00020\u0003H\u0002J\u0010\u0010I\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\b\u0010J\u001a\u00020\u0003H\u0002J\b\u0010K\u001a\u00020\u0003H\u0002J\b\u0010L\u001a\u00020\u0003H\u0002J\b\u0010M\u001a\u00020\u0003H\u0002J\b\u0010N\u001a\u00020\u0003H\u0002J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010O\u001a\u00020$H\u0002J\b\u0010Q\u001a\u00020\u0003H\u0002J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0010\u0010S\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001a\u0010V\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010U\u001a\u00020<H\u0002J\b\u0010W\u001a\u00020\u0003H\u0002J\u0010\u0010Z\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020XH\u0002J\b\u0010[\u001a\u00020\u0003H\u0002J\b\u0010\\\u001a\u00020\u0003H\u0002J\b\u0010]\u001a\u00020\u0003H\u0002J\u0012\u0010`\u001a\u00020\u00032\b\u0010_\u001a\u0004\u0018\u00010^H\u0002J\u0018\u0010a\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010_\u001a\u00020^H\u0002J\u0010\u0010d\u001a\u00020\u00032\u0006\u0010c\u001a\u00020bH\u0002J\u0018\u0010g\u001a\u00020\u00032\u0006\u0010c\u001a\u00020b2\u0006\u0010f\u001a\u00020eH\u0002J\u0010\u0010h\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020XH\u0002J\u0010\u0010k\u001a\u00020\u00032\u0006\u0010j\u001a\u00020iH\u0002J\b\u0010l\u001a\u00020\u0003H\u0002J\u0010\u0010n\u001a\u00020\u00032\u0006\u0010m\u001a\u00020$H\u0002J(\u0010r\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020o2\u0016\b\u0002\u0010q\u001a\u0010\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020X\u0018\u00010pH\u0002J\b\u0010s\u001a\u00020\u0003H\u0002J\u0018\u0010v\u001a\u00020\u00032\u0006\u0010t\u001a\u00020+2\u0006\u0010u\u001a\u00020+H\u0002J\b\u0010w\u001a\u00020\u0003H\u0002J\b\u0010x\u001a\u00020\u0003H\u0002J\u0014\u0010y\u001a\u00020\u00032\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+H\u0002J\u000e\u0010z\u001a\u00020\u00032\u0006\u0010c\u001a\u00020bJ\u0006\u0010{\u001a\u00020\u0003J\u0006\u0010|\u001a\u00020\u0003J\u000e\u0010}\u001a\u00020\u00032\u0006\u0010O\u001a\u00020$J\u0006\u0010~\u001a\u00020\u0003J\b\u0010\u007f\u001a\u00020\u0003H\u0014J\t\u0010\u0080\u0001\u001a\u00020\u0003H\u0014J\u0012\u0010\u0082\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0081\u0001H\u0007J\u0013\u0010\u0085\u0001\u001a\u00020\u00032\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0007J\u0012\u0010\u0087\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0086\u0001H\u0007J\u0012\u0010\u0089\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0088\u0001H\u0007J\u0012\u0010\u008b\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u008a\u0001H\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u008c\u0001H\u0007J\u0012\u0010\u008f\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u008e\u0001H\u0007J\u0012\u0010\u0091\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0090\u0001H\u0007J\u0012\u0010\u0093\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0092\u0001H\u0007J\u0012\u0010\u0095\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0094\u0001H\u0007J\u0012\u0010\u0097\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0096\u0001H\u0007J\u0012\u0010\u0099\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0098\u0001H\u0007J\u0012\u0010\u009b\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u009a\u0001H\u0007J\u0012\u0010\u009d\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u009c\u0001H\u0007J\u0012\u0010\u009f\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u009e\u0001H\u0007J\u0012\u0010¡\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030 \u0001H\u0007J\u0012\u0010£\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030¢\u0001H\u0007J\u0012\u0010¥\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030¤\u0001H\u0007J\u0012\u0010§\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030¦\u0001H\u0007J\u0012\u0010©\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030¨\u0001H\u0007J\u0012\u0010«\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030ª\u0001H\u0007J\u0012\u0010\u00ad\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030¬\u0001H\u0007R!\u0010³\u0001\u001a\u00030®\u00018VX\u0096\u0084\u0002¢\u0006\u0010\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001R*\u0010µ\u0001\u001a\u00030´\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\bµ\u0001\u0010¶\u0001\u001a\u0006\b·\u0001\u0010¸\u0001\"\u0006\b¹\u0001\u0010º\u0001R*\u0010¼\u0001\u001a\u00030»\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\b¼\u0001\u0010½\u0001\u001a\u0006\b¾\u0001\u0010¿\u0001\"\u0006\bÀ\u0001\u0010Á\u0001R0\u0010Ã\u0001\u001a\t\u0012\u0005\u0012\u00030Â\u0001008\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\bÃ\u0001\u0010Ä\u0001\u001a\u0006\bÅ\u0001\u0010Æ\u0001\"\u0006\bÇ\u0001\u0010È\u0001Rc\u0010Õ\u0001\u001a<\u0012\u0017\u0012\u00150Ê\u0001¢\u0006\u000f\bË\u0001\u0012\n\bÌ\u0001\u0012\u0005\b\b(Í\u0001\u0012\u0016\u0012\u00140$¢\u0006\u000f\bË\u0001\u0012\n\bÌ\u0001\u0012\u0005\b\b(Î\u0001\u0012\u0004\u0012\u00020\u0003\u0018\u00010É\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÏ\u0001\u0010Ð\u0001\u001a\u0006\bÑ\u0001\u0010Ò\u0001\"\u0006\bÓ\u0001\u0010Ô\u0001R,\u0010Ý\u0001\u001a\u0005\u0018\u00010Ö\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b×\u0001\u0010Ø\u0001\u001a\u0006\bÙ\u0001\u0010Ú\u0001\"\u0006\bÛ\u0001\u0010Ü\u0001R!\u0010â\u0001\u001a\u00030Þ\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bß\u0001\u0010°\u0001\u001a\u0006\bà\u0001\u0010á\u0001R\u001a\u0010c\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010ä\u0001R+\u0010ê\u0001\u001a\u0004\u0018\u00010b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bå\u0001\u0010ä\u0001\u001a\u0006\bæ\u0001\u0010ç\u0001\"\u0006\bè\u0001\u0010é\u0001R\u001c\u0010î\u0001\u001a\u0005\u0018\u00010ë\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bì\u0001\u0010í\u0001R\u001c\u0010ò\u0001\u001a\u0005\u0018\u00010ï\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bð\u0001\u0010ñ\u0001R\u001c\u0010ö\u0001\u001a\u0005\u0018\u00010ó\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010õ\u0001R\u001c\u0010ú\u0001\u001a\u0005\u0018\u00010÷\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0001\u0010ù\u0001R\u001c\u0010þ\u0001\u001a\u0005\u0018\u00010û\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010ý\u0001R\u001b\u0010\u0081\u0002\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010\u0080\u0002R\u001c\u0010\u0085\u0002\u001a\u0005\u0018\u00010\u0082\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0002\u0010\u0084\u0002R\u0015\u0010\u0089\u0002\u001a\u00030\u0086\u00028F¢\u0006\b\u001a\u0006\b\u0087\u0002\u0010\u0088\u0002¨\u0006\u0094\u0002"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Landroidx/lifecycle/LifecycleOwner;", "", "T0", "u0", "Landroid/view/View;", "moreSettingView", "listItemView", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "shortcutType", "l0", "a0", "c0", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", "m1", "X", "k0", "view", "T", "f0", "V", "W", "n0", "i0", Constants.HASIDCALL_INDEX_SIG, "h0", "Y", "b0", "U", "g0", "e0", "j0", "anchorView", "j1", "", "enableRtl", "U0", "o0", "Q0", "r0", "C1", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "N1", "F1", "showTipToast", "Lkotlin/Function0;", "change", "M", "oldTouchMode", "newTouchMode", "L", "K", "g1", "G1", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "viewList", "", "viewSize", "H1", "", "list", "Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;", "displayType", "B1", "margin", "I1", "J1", "K0", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "q1", "Z0", "W0", "z1", "w1", "y1", "show", "t1", "e1", "n1", "r1", "o1", "targetPage", "k1", "x1", "", NotificationCompat.CATEGORY_EVENT, "X0", "f1", "R", "S", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "docProgress", "D1", FirebaseInstallationServiceClient.f35986m, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "I", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "dataSet", "J", "m0", "Lcom/onyx/android/sdk/data/ToolFunction;", "toolFunction", "Y0", "Q", "enable", "i1", "", "", "dataMap", "a1", "c1", "currentModel", "newModel", "d1", "A1", "K1", "L1", "setEditorBundle", "updateToolsIconByScreen", "toggleTabIndicator", "showTabIndicator", "stopMedia", "onDetachedFromWindow", "onAttachedToWindow", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", "onDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "onAudioInfoBean", "Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;", "onAudioShapeBeanEvent", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", "onNetworkChange", "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;", "onSyncNoteProgressChangedEvent", "Lcom/onyx/galaxy/note/editor/event/ShowLayerPopupEvent;", "onShowLayerPopupEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "onChangeTouchModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;", "onNoteTabDataChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;", "onEditorBundleChangedEvent", "Lcom/onyx/galaxy/note/editor/event/DismissCounterSettingEvent;", "onDismissCounterSettingEvent", "Lcom/onyx/galaxy/note/editor/event/ShowCounterSettingEvent;", "onShowCounterSettingEvent", "Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;", "onEditNoteEncryptionChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;", "onStartActivateDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/AudioPermissionGratedEvent;", "onAudioPermissionGratedEvent", "Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;", "onShortcutBarChangeEvent", "Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;", "onContainerRectChangedEvent", "Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;", "onFunctionToolPopupHideEvent", "Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupDismissEvent;", "onFunctionToolPopupDismissEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;", "onDocumentStateEvent", "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;", "onScreenOnEvent", "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;", "onCheckEditorAutoReLockEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RealtimeBeautifyModeUpdatedEvent;", "onRealtimeBeautifyModeUpdatedEvent", "Landroidx/lifecycle/LifecycleRegistry;", C6999h.f39688c, "Lkotlin/Lazy;", "getLifecycle", "()Landroidx/lifecycle/LifecycleRegistry;", RequestParameters.SUBRESOURCE_LIFECYCLE, "Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;)V", "Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;", "shortcutBarBinding", "Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;", "getShortcutBarBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;", "setShortcutBarBinding", "(Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;)V", "Landroid/graphics/Rect;", "getEditorContainerRectFunc", "Lkotlin/jvm/functions/Function0;", "getGetEditorContainerRectFunc", "()Lkotlin/jvm/functions/Function0;", "setGetEditorContainerRectFunc", "(Lkotlin/jvm/functions/Function0;)V", "Lkotlin/Function2;", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "Lkotlin/ParameterName;", "name", "type", "left", "i", "Lkotlin/jvm/functions/Function2;", "getToggleSideBarLayoutFunc", "()Lkotlin/jvm/functions/Function2;", "setToggleSideBarLayoutFunc", "(Lkotlin/jvm/functions/Function2;)V", "toggleSideBarLayoutFunc", "Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;", "j", "Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;", "getFunctionToolListener", "()Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;", "setFunctionToolListener", "(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;)V", "functionToolListener", "Lcom/onyx/galaxy/note/category/view/TransitionController;", C4921e.f26537n, "getTransitionController", "()Lcom/onyx/galaxy/note/category/view/TransitionController;", "transitionController", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "m", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setDocManagerBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "docManagerBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;", "audioViewModel", "Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;", C4921e.f26528e, "Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;", "layerPopup", "Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;", "p", "Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;", "counterSettingWindow", "Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;", "q", "Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;", "shortcutBarMoreFunctionPopup", "Landroid/os/CountDownTimer;", "r", "Landroid/os/CountDownTimer;", "countDownTimer", "s", Constants.INTEGER_SIG, "timerObserver", "Lcom/onyx/android/sdk/ui/CommonDialog;", "t", "Lcom/onyx/android/sdk/ui/CommonDialog;", "noteEncryptionLoginDialog", "Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;", "getIvTabIndicator", "()Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;", "ivTabIndicator", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "FunctionToolListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFunctionToolLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1247:1\n256#2,2:1248\n256#2,2:1250\n326#2,4:1252\n326#2,4:1256\n172#2,2:1260\n172#2,2:1263\n254#2:1266\n254#2:1270\n254#2:1271\n1855#3:1262\n1856#3:1265\n288#3,2:1268\n1#4:1267\n*S KotlinDebug\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout\n*L\n507#1:1248,2\n508#1:1250,2\n619#1:1252,4\n626#1:1256,4\n635#1:1260,2\n665#1:1263,2\n853#1:1266\n1213#1:1270\n1240#1:1271\n661#1:1262\n661#1:1265\n971#1:1268,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FunctionToolLayout extends TintFrameLayout implements LifecycleOwner {
    public LayoutFunctionToolBinding binding;
    public Function0<Rect> getEditorContainerRectFunc;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy lifecycle;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Function2<? super SlideBarType, ? super Boolean, Unit> toggleSideBarLayoutFunc;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public FunctionToolListener functionToolListener;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy transitionController;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public EditorBundle docManagerBundle;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public AudioViewModel audioViewModel;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public LayerPopup layerPopup;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public CounterSettingWindow counterSettingWindow;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public CountDownTimer countDownTimer;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Integer timerObserver;
    public LayoutCustomShortcutsViewBinding shortcutBarBinding;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public CommonDialog noteEncryptionLoginDialog;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;", "", "toggleFunctionTool", "", "type", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "left", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface FunctionToolListener {
        void toggleFunctionTool(@NotNull ShortcutType type, boolean left);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShortcutType.values().length];
            try {
                iArr[ShortcutType.SHORTCUT_DOC_OVERVIEW_FULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_EXPORT_DOC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_CAMERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_SCREEN_SHOT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_ADD_PAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_LAYER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_AUDIO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_AUDIO_SET.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_READING_MODE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_WRITING_MODE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_DOC_OVERVIEW.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_OTHER_SETTINGS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_COUNTER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_ENCRYPTION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_NOTE_OVERVIEW.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_FULL_SCREEN.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_NOTE_MODE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_REALTIME_BEAUTIFY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.FunctionToolLayout$a */
    /* loaded from: classes9.dex */
    public static final class C12239a<T> implements Consumer {
        public C12239a() {
        }

        /* renamed from: a */
        public final void m47327a(boolean z) {
            if (z) {
                FunctionToolLayout.this.m47286X0(new TakePictureEvent());
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m47327a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.FunctionToolLayout$b */
    /* loaded from: classes9.dex */
    public static final class C12240b<T> implements Consumer {
        public C12240b() {
        }

        /* renamed from: a */
        public final void m47328a(boolean z) {
            FunctionToolLayout.this.m47305i1(!z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m47328a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.FunctionToolLayout$c */
    /* loaded from: classes9.dex */
    public static final class C12241c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f59294e;

        public C12241c(LoadingDialog loadingDialog) {
            this.f59294e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59294e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.FunctionToolLayout$d */
    /* loaded from: classes9.dex */
    public static final class C12242d<T> implements Consumer {
        public C12242d() {
        }

        /* renamed from: a */
        public final void m47330a(boolean z) {
            if (z) {
                FunctionToolLayout.this.m47284W0();
                return;
            }
            TintTextView btnRecord = FunctionToolLayout.this.getShortcutBarBinding().btnRecord;
            Intrinsics.checkNotNullExpressionValue(btnRecord, "btnRecord");
            ViewKt.setIdleStateTag(btnRecord, true);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m47330a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.FunctionToolLayout$e */
    /* loaded from: classes9.dex */
    public static final class C12243e implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f59296a;

        public C12243e(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f59296a = function;
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
            return this.f59296a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f59296a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FunctionToolLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: A0 */
    public static final void m47185A0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47301g0();
    }

    /* renamed from: B0 */
    public static final void m47187B0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47297e0();
    }

    /* renamed from: C0 */
    public static final void m47189C0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47308k0();
    }

    /* renamed from: D0 */
    public static final void m47191D0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m47278T(view);
    }

    /* renamed from: E0 */
    public static final void m47193E0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m47299f0(view);
    }

    /* renamed from: E1 */
    public static final void m47194E1(FunctionToolLayout this$0, PalmCollectionImageView ivSyncStatus, SyncDocProgress syncDocProgress, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(ivSyncStatus, "$ivSyncStatus");
        this$0.m47322v1(ivSyncStatus, syncDocProgress);
    }

    /* renamed from: F0 */
    public static final void m47196F0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47291a0();
    }

    /* renamed from: G0 */
    public static final void m47198G0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47280U();
    }

    /* renamed from: H0 */
    public static final void m47200H0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47294c0();
    }

    /* renamed from: I0 */
    public static final void m47201I0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47289Z();
    }

    /* renamed from: J0 */
    public static final void m47202J0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47303h0();
    }

    /* renamed from: L0 */
    public static final void m47203L0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47282V();
    }

    /* renamed from: M0 */
    public static final void m47204M0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47325y1();
    }

    /* renamed from: M1 */
    public static /* synthetic */ void m47205M1(FunctionToolLayout functionToolLayout, EditorTouchMode editorTouchMode, int i, Object obj) {
        if ((i & 1) != 0) {
            editorTouchMode = null;
        }
        functionToolLayout.m47270L1(editorTouchMode);
    }

    /* renamed from: N */
    public static /* synthetic */ void m47206N(FunctionToolLayout functionToolLayout, EditorTouchMode editorTouchMode, EditorTouchMode editorTouchMode2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        functionToolLayout.m47269L(editorTouchMode, editorTouchMode2, z);
    }

    /* renamed from: N0 */
    public static final void m47207N0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (ViewKt.isVisible(this$0.getBinding().playLayout)) {
            this$0.m47325y1();
        } else {
            this$0.m47323w1();
        }
        this$0.m47255A1();
    }

    /* renamed from: O0 */
    public static final void m47208O0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m47317q1(view);
    }

    /* renamed from: P */
    public static final void m47209P(FunctionToolLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewKt.setViewVisibleOrGone(this$0.getBinding().ivTitleCloud, AccountDataBundle.INSTANCE.canSync());
    }

    /* renamed from: P0 */
    public static final void m47210P0(FunctionToolLayout this$0, View view) {
        PlayerViewModel playerViewModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AudioViewModel audioViewModel = this$0.audioViewModel;
        if (audioViewModel == null || (playerViewModel = audioViewModel.getPlayerViewModel()) == null) {
            return;
        }
        playerViewModel.setPlaybackSpeed();
    }

    /* renamed from: R0 */
    public static final void m47211R0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47304i0();
    }

    /* renamed from: S0 */
    public static final void m47212S0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47313n0();
    }

    /* renamed from: V0 */
    public static /* synthetic */ boolean m47213V0(FunctionToolLayout functionToolLayout, ShortcutType shortcutType, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return functionToolLayout.m47281U0(shortcutType, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b1 */
    public static /* synthetic */ void m47215b1(FunctionToolLayout functionToolLayout, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        functionToolLayout.m47292a1(str, map);
    }

    /* renamed from: d0 */
    public static final void m47218d0(LoadingDialog loadingDialog) {
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        loadingDialog.dismiss();
    }

    private final TransitionController getTransitionController() {
        return (TransitionController) this.transitionController.getValue();
    }

    /* renamed from: h1 */
    public static final void m47223h1(FunctionToolLayout this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47286X0(new TakeScreenCaptureEvent());
    }

    /* renamed from: l1 */
    public static /* synthetic */ void m47228l1(FunctionToolLayout functionToolLayout, View view, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        functionToolLayout.m47309k1(view, i);
    }

    /* renamed from: p0 */
    public static final void m47233p0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47306j0();
    }

    /* renamed from: p1 */
    public static final void m47234p1(FunctionToolLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.layerPopup = null;
    }

    /* renamed from: q0 */
    public static final void m47236q0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m47307j1(view);
    }

    /* renamed from: s0 */
    public static final void m47239s0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47293b0();
    }

    /* renamed from: s1 */
    public static final void m47240s1(FunctionToolLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.shortcutBarMoreFunctionPopup = null;
    }

    /* renamed from: t0 */
    public static final void m47242t0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47293b0();
    }

    /* renamed from: u1 */
    public static final void m47244u1(FunctionToolLayout this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new ShowPlayerViewEvent(z));
        }
    }

    /* renamed from: v0 */
    public static final void m47246v0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47276R();
        this$0.m47286X0(new QuitNoteDocumentEvent());
    }

    /* renamed from: w0 */
    public static final void m47248w0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47285X();
    }

    /* renamed from: x0 */
    public static final void m47250x0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47288Y0(ToolFunction.CLOUD_SYNC);
        m47215b1(this$0, OnyxStatisticConstant.ID_NOTE_BUTTON_CLICK_CLOUD_SYNC, null, 2, null);
        this$0.m47324x1();
    }

    /* renamed from: y0 */
    public static final void m47252y0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m47319r1(view);
    }

    /* renamed from: z0 */
    public static final void m47254z0(FunctionToolLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m47287Y(view);
    }

    /* renamed from: A1 */
    public final void m47255A1() {
        getTransitionController().onNext();
    }

    /* renamed from: B1 */
    public final void m47256B1(List<? extends View> list, ScreenDisplayType displayType) {
        ScreenDisplayType screenDisplayType = ScreenDisplayType.PHONE;
        int dimension = (int) (displayType == screenDisplayType ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_16));
        int dimension2 = (int) (displayType == screenDisplayType ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_4) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_5));
        for (View view : list) {
            view.getLayoutParams().width = dimension;
            view.getLayoutParams().height = dimension;
            view.setLayoutParams(view.getLayoutParams());
            view.setPadding(dimension2, dimension2, dimension2, dimension2);
        }
    }

    /* renamed from: C1 */
    public final void m47257C1() {
        boolean isRealtimeBeautifyEnabled = FunctionPermissions.INSTANCE.isRealtimeBeautifyEnabled();
        TintFrameLayout ivRealtimeMode = getShortcutBarBinding().ivRealtimeMode;
        Intrinsics.checkNotNullExpressionValue(ivRealtimeMode, "ivRealtimeMode");
        ivRealtimeMode.setVisibility(isRealtimeBeautifyEnabled ? 0 : 8);
        TintImageView ivNonRealtimeMode = getShortcutBarBinding().ivNonRealtimeMode;
        Intrinsics.checkNotNullExpressionValue(ivNonRealtimeMode, "ivNonRealtimeMode");
        ivNonRealtimeMode.setVisibility(isRealtimeBeautifyEnabled ^ true ? 0 : 8);
    }

    /* renamed from: D1 */
    public final void m47258D1(final SyncDocProgress docProgress) {
        KSyncStatus loadOnyxSyncStatus;
        if (docProgress == null || !AccountDataBundle.INSTANCE.canSync() || (loadOnyxSyncStatus = docProgress.loadOnyxSyncStatus()) == null) {
            return;
        }
        CircularProgressIndicator progressSync = getBinding().progressSync;
        Intrinsics.checkNotNullExpressionValue(progressSync, "progressSync");
        final PalmCollectionImageView ivSyncStatus = getBinding().ivSyncStatus;
        Intrinsics.checkNotNullExpressionValue(ivSyncStatus, "ivSyncStatus");
        Integer num = this.timerObserver;
        if (num != null) {
            RxTimerUtil.INSTANCE.cancel(num.intValue());
        }
        if (loadOnyxSyncStatus.isSyncing()) {
            progressSync.setProgressCompat(loadOnyxSyncStatus.getProgress(), false);
        } else if (loadOnyxSyncStatus.isSyncFail()) {
            ivSyncStatus.setImageResource(C10651R.drawable.icon_sync_error);
            ivSyncStatus.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yxg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FunctionToolLayout.m47194E1(FunctionToolLayout.this, ivSyncStatus, docProgress, view);
                }
            });
        } else if (loadOnyxSyncStatus.isSyncSuccess()) {
            ivSyncStatus.setImageResource(C10651R.drawable.icon_sync_succeed);
            this.timerObserver = Integer.valueOf(RxTimerUtil.INSTANCE.timer(3000L, new RxTimerUtil.TimerObserver() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$updateCloudSync$3
                @Override // io.reactivex.rxjava3.core.Observer
                public /* bridge */ /* synthetic */ void onNext(Long l) {
                    onNext(l.longValue());
                }

                public void onNext(long aLong) {
                    PalmCollectionImageView.this.setImageResource(C10651R.drawable.ic_cloud);
                }
            }));
        }
        ViewKt.setViewVisibleOrInvisible(progressSync, loadOnyxSyncStatus.isSyncing());
        ViewKt.setViewVisibleOrInvisible(ivSyncStatus, loadOnyxSyncStatus.isSyncFail() || loadOnyxSyncStatus.isSyncSuccess());
    }

    /* renamed from: F1 */
    public final void m47259F1() {
        getBinding().titleLayout.updateEncryptionIcon();
        m47255A1();
    }

    /* renamed from: G1 */
    public final void m47260G1() {
        List<? extends View> listOf;
        ArrayList<View> arrayListOf;
        ArrayList<View> arrayListOf2;
        ArrayList<View> arrayListOf3;
        ScreenDisplayType screenDisplayType = DeviceFactory.INSTANCE.getScreenDevice().getScreenInfo().getScreenDisplayType();
        ScreenDisplayType screenDisplayType2 = ScreenDisplayType.PHONE;
        int dimension = (int) (screenDisplayType == screenDisplayType2 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_32) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_40));
        int dimension2 = (int) (screenDisplayType == screenDisplayType2 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_2) : ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12));
        TintImageView ivRealtimeSettings = getShortcutBarBinding().ivRealtimeSettings;
        Intrinsics.checkNotNullExpressionValue(ivRealtimeSettings, "ivRealtimeSettings");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ivRealtimeSettings);
        PalmCollectionImageView ivBack = getBinding().ivBack;
        Intrinsics.checkNotNullExpressionValue(ivBack, "ivBack");
        PalmCollectionImageView ivCustomShortcut = getBinding().ivCustomShortcut;
        Intrinsics.checkNotNullExpressionValue(ivCustomShortcut, "ivCustomShortcut");
        TintImageView ivRecord = getShortcutBarBinding().ivRecord;
        Intrinsics.checkNotNullExpressionValue(ivRecord, "ivRecord");
        PalmCollectionImageView ivAudioSetNormal = getShortcutBarBinding().ivAudioSetNormal;
        Intrinsics.checkNotNullExpressionValue(ivAudioSetNormal, "ivAudioSetNormal");
        PalmCollectionImageView ivAudioSetPreview = getShortcutBarBinding().ivAudioSetPreview;
        Intrinsics.checkNotNullExpressionValue(ivAudioSetPreview, "ivAudioSetPreview");
        PalmCollectionImageView ivAudioSetNewRecord = getShortcutBarBinding().ivAudioSetNewRecord;
        Intrinsics.checkNotNullExpressionValue(ivAudioSetNewRecord, "ivAudioSetNewRecord");
        TintFrameLayout ivRealtimeMode = getShortcutBarBinding().ivRealtimeMode;
        Intrinsics.checkNotNullExpressionValue(ivRealtimeMode, "ivRealtimeMode");
        TintImageView ivRealtimeModeInner = getShortcutBarBinding().ivRealtimeModeInner;
        Intrinsics.checkNotNullExpressionValue(ivRealtimeModeInner, "ivRealtimeModeInner");
        TintImageView ivNonRealtimeMode = getShortcutBarBinding().ivNonRealtimeMode;
        Intrinsics.checkNotNullExpressionValue(ivNonRealtimeMode, "ivNonRealtimeMode");
        TintImageView ivReadingModeNote = getShortcutBarBinding().ivReadingModeNote;
        Intrinsics.checkNotNullExpressionValue(ivReadingModeNote, "ivReadingModeNote");
        TintImageView ivReadingModeReading = getShortcutBarBinding().ivReadingModeReading;
        Intrinsics.checkNotNullExpressionValue(ivReadingModeReading, "ivReadingModeReading");
        TintImageView ivTouchModeStylus = getShortcutBarBinding().ivTouchModeStylus;
        Intrinsics.checkNotNullExpressionValue(ivTouchModeStylus, "ivTouchModeStylus");
        TintImageView ivTouchModeFinger = getShortcutBarBinding().ivTouchModeFinger;
        Intrinsics.checkNotNullExpressionValue(ivTouchModeFinger, "ivTouchModeFinger");
        TintImageView ivEncryptionLock = getShortcutBarBinding().ivEncryptionLock;
        Intrinsics.checkNotNullExpressionValue(ivEncryptionLock, "ivEncryptionLock");
        TintImageView ivEncryptionUnlock = getShortcutBarBinding().ivEncryptionUnlock;
        Intrinsics.checkNotNullExpressionValue(ivEncryptionUnlock, "ivEncryptionUnlock");
        PalmCollectionImageView ivFullScreen = getShortcutBarBinding().ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        PalmCollectionImageView ivNoteMode = getShortcutBarBinding().ivNoteMode;
        Intrinsics.checkNotNullExpressionValue(ivNoteMode, "ivNoteMode");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(ivBack, ivCustomShortcut, ivRecord, ivAudioSetNormal, ivAudioSetPreview, ivAudioSetNewRecord, ivRealtimeMode, ivRealtimeModeInner, ivNonRealtimeMode, ivReadingModeNote, ivReadingModeReading, ivTouchModeStylus, ivTouchModeFinger, ivEncryptionLock, ivEncryptionUnlock, ivFullScreen, ivNoteMode);
        PalmCollectionImageView ivBack2 = getBinding().ivBack;
        Intrinsics.checkNotNullExpressionValue(ivBack2, "ivBack");
        arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf(ivBack2);
        PalmCollectionImageView ivCustomShortcut2 = getBinding().ivCustomShortcut;
        Intrinsics.checkNotNullExpressionValue(ivCustomShortcut2, "ivCustomShortcut");
        arrayListOf3 = CollectionsKt__CollectionsKt.arrayListOf(ivCustomShortcut2);
        m47263I1(arrayListOf2, dimension2);
        m47265J1(arrayListOf3, dimension2);
        m47261H1(arrayListOf, dimension);
        m47256B1(listOf, screenDisplayType);
        PalmCollectionImageView ivTabIndicator = getBinding().ivTabIndicator;
        Intrinsics.checkNotNullExpressionValue(ivTabIndicator, "ivTabIndicator");
        ViewGroup.LayoutParams layoutParams = ivTabIndicator.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        ResManager resManager = ResManager.INSTANCE;
        int dimension3 = (int) resManager.getDimension(C7384R.dimen.dp_24);
        marginLayoutParams.width = dimension3;
        marginLayoutParams.height = dimension3;
        marginLayoutParams.setMarginEnd((int) resManager.getDimension(C7384R.dimen.dp_12));
        ivTabIndicator.setLayoutParams(marginLayoutParams);
        TintTextView tintTextView = getShortcutBarBinding().btnRecord;
        Intrinsics.checkNotNull(tintTextView);
        ViewGroup.LayoutParams layoutParams2 = tintTextView.getLayoutParams();
        if (layoutParams2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams2.width = (int) resManager.getDimension(C7384R.dimen.dp_86);
        marginLayoutParams2.height = (int) resManager.getDimension(C7384R.dimen.dp_36);
        tintTextView.setLayoutParams(marginLayoutParams2);
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_record_pause);
        int dimension4 = (int) resManager.getDimension(C7384R.dimen.dp_24);
        themeDrawable.setBounds(0, 0, dimension4, dimension4);
        tintTextView.setCompoundDrawables(themeDrawable, null, null, null);
        tintTextView.setTextSize(0, resManager.getDimension(C7384R.dimen.sp_14));
        int dimension5 = (int) resManager.getDimension(C7384R.dimen.dp_8);
        tintTextView.setPadding(dimension5, dimension5, dimension5, dimension5);
        tintTextView.setCompoundDrawablePadding((int) resManager.getDimension(C7384R.dimen.dp_5));
    }

    /* renamed from: H1 */
    public final void m47261H1(ArrayList<View> viewList, int viewSize) {
        Iterator<View> it2 = viewList.iterator();
        while (it2.hasNext()) {
            View next = it2.next();
            ViewGroup.LayoutParams layoutParams = next.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.width = viewSize;
            marginLayoutParams.height = viewSize;
            next.setLayoutParams(marginLayoutParams);
        }
        viewList.clear();
    }

    /* renamed from: I */
    public final void m47262I(EditorBundle editorBundle) {
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel != null && audioViewModel.isRecording()) {
            return;
        }
        onAudioShapeBeanEvent(new AudioShapeBeanEvent(EditorBundleKt.noteBundle(editorBundle).getAudioShapeBeanList()));
        AudioViewModel audioViewModel2 = this.audioViewModel;
        if (audioViewModel2 != null && audioViewModel2.hasRecordFile()) {
            m47215b1(this, OnyxStatisticConstant.ID_NOTE_AUDIO_VIEW_LIST, null, 2, null);
        }
    }

    /* renamed from: I1 */
    public final void m47263I1(ArrayList<View> viewList, int margin) {
        Iterator<View> it2 = viewList.iterator();
        while (it2.hasNext()) {
            ViewGroup.LayoutParams layoutParams = it2.next().getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(margin);
        }
        viewList.clear();
    }

    /* renamed from: J */
    public final void m47264J(EditorBundle editorBundle, AudioDataSet dataSet) {
        MutableLiveData<Boolean> newRecordTip;
        MutableLiveData<String> event;
        MutableLiveData<String> event2;
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel != null && (event2 = audioViewModel.getEvent()) != null) {
            event2.removeObservers(this);
        }
        AudioViewModel audioViewModel2 = this.audioViewModel;
        if (audioViewModel2 != null) {
            audioViewModel2.destroy();
        }
        AudioViewModel audioViewModel3 = new AudioViewModel(editorBundle);
        audioViewModel3.setAudioDataSet(dataSet);
        this.audioViewModel = audioViewModel3;
        getBinding().setAudioViewModel(this.audioViewModel);
        getShortcutBarBinding().setAudioViewModel(this.audioViewModel);
        getBinding().titleLayout.bindAudioModule(this.audioViewModel);
        AudioViewModel audioViewModel4 = this.audioViewModel;
        if (audioViewModel4 != null && (event = audioViewModel4.getEvent()) != null) {
            DataBindingKt.observeOnce(event, this, new FunctionToolLayout$bindAudioViewModel$2(this));
        }
        AudioViewModel audioViewModel5 = this.audioViewModel;
        if (audioViewModel5 == null || (newRecordTip = audioViewModel5.getNewRecordTip()) == null) {
            return;
        }
        newRecordTip.observe(this, new C12243e(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$bindAudioViewModel$3
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
                ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup;
                shortcutBarMoreFunctionPopup = FunctionToolLayout.this.shortcutBarMoreFunctionPopup;
                if (shortcutBarMoreFunctionPopup != null) {
                    FrameLayout playLayout = FunctionToolLayout.this.getBinding().playLayout;
                    Intrinsics.checkNotNullExpressionValue(playLayout, "playLayout");
                    boolean z = playLayout.getVisibility() == 0;
                    Intrinsics.checkNotNull(bool);
                    shortcutBarMoreFunctionPopup.updateAudioSetItem(z, bool.booleanValue());
                }
            }
        }));
    }

    /* renamed from: J1 */
    public final void m47265J1(ArrayList<View> viewList, int margin) {
        Iterator<View> it2 = viewList.iterator();
        while (it2.hasNext()) {
            ViewGroup.LayoutParams layoutParams = it2.next().getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginEnd(margin);
            if (marginLayoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) marginLayoutParams).goneEndMargin = margin;
            }
        }
        viewList.clear();
    }

    /* renamed from: K */
    public final void m47266K() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        permissionActionUtils.requestCameraPermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_CAMERA_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_CAMERA_INTENT_NAME())).build().doOnNext(new C12239a()).subscribe();
    }

    /* renamed from: K0 */
    public final void m47267K0() {
        PalmCollectionFrameLayout recordLayout = getShortcutBarBinding().recordLayout;
        Intrinsics.checkNotNullExpressionValue(recordLayout, "recordLayout");
        com.onyx.android.sdk.extension.ViewKt.click$default(recordLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cyg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47203L0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        TintImageView btnAudioClose = getBinding().btnAudioClose;
        Intrinsics.checkNotNullExpressionValue(btnAudioClose, "btnAudioClose");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnAudioClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dyg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47204M0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        TintFrameLayout ivAudioSet = getShortcutBarBinding().ivAudioSet;
        Intrinsics.checkNotNullExpressionValue(ivAudioSet, "ivAudioSet");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivAudioSet, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.eyg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47207N0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        TintImageView btnAudioMore = getBinding().btnAudioMore;
        Intrinsics.checkNotNullExpressionValue(btnAudioMore, "btnAudioMore");
        com.onyx.android.sdk.extension.ViewKt.click$default(btnAudioMore, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fyg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47208O0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        TintTextView tvPlaySpeed = getBinding().tvPlaySpeed;
        Intrinsics.checkNotNullExpressionValue(tvPlaySpeed, "tvPlaySpeed");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvPlaySpeed, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gyg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47210P0(FunctionToolLayout.this, view);
            }
        }, 1, null);
    }

    /* renamed from: K1 */
    public final void m47268K1() {
        CustomShortcutsContainer customShortcutsContainer = getBinding().titleLayout;
        FrameLayout playLayout = getBinding().playLayout;
        Intrinsics.checkNotNullExpressionValue(playLayout, "playLayout");
        customShortcutsContainer.updateShortcutViews(playLayout.getVisibility() == 0);
    }

    /* renamed from: L */
    public final void m47269L(EditorTouchMode oldTouchMode, EditorTouchMode newTouchMode, boolean showTipToast) {
        DocCollectionBundle.INSTANCE.postEvent(new ChangeTouchModeEvent(oldTouchMode, newTouchMode));
        m47272N1(newTouchMode);
        if (showTipToast && newTouchMode.isFingerMode()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.finger_scribble_tip, false, 2, (Object) null);
        }
    }

    /* renamed from: L1 */
    public final void m47270L1(EditorTouchMode touchMode) {
        getBinding().titleLayout.updateTouchModeIcon(touchMode);
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup != null) {
            shortcutBarMoreFunctionPopup.onReadingModeChanged();
        }
    }

    /* renamed from: M */
    public final void m47271M(boolean showTipToast, Function0<? extends EditorTouchMode> change) {
        EditorTouchMode editTouchMode$default = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null);
        EditorTouchMode invoke = change.invoke();
        StatisticsBundle.INSTANCE.postEvent(new StatisticsShortcutToolbarEvent(ToolFunction.WRITING_MODE));
        m47296d1(editTouchMode$default, invoke);
        m47269L(editTouchMode$default, invoke, showTipToast);
    }

    /* renamed from: N1 */
    public final void m47272N1(EditorTouchMode touchMode) {
        m47270L1(touchMode);
        m47255A1();
    }

    /* renamed from: O */
    public final void m47273O() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        noteCloudSyncCheckArgs.setCheckSpace(false);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Unit> doFinally = new CheckNoteSyncConditionAction(noteCloudSyncCheckArgs).build().observeOn(AndroidSchedulers.mainThread()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.bxg
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                FunctionToolLayout.m47209P(FunctionToolLayout.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
    }

    /* renamed from: Q */
    public final void m47274Q() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            AutoReLockNoteManager.INSTANCE.checkEditorAutoReLockObservable(editorBundle).doOnNext(new C12240b()).subscribe();
        }
    }

    /* renamed from: Q0 */
    public final void m47275Q0() {
        m47272N1(MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null));
        PalmCollectionFrameLayout ivReadingMode = getShortcutBarBinding().ivReadingMode;
        Intrinsics.checkNotNullExpressionValue(ivReadingMode, "ivReadingMode");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivReadingMode, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47211R0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionFrameLayout ivTouchMode = getShortcutBarBinding().ivTouchMode;
        Intrinsics.checkNotNullExpressionValue(ivTouchMode, "ivTouchMode");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivTouchMode, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ayg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47212S0(FunctionToolLayout.this, view);
            }
        }, 1, null);
    }

    /* renamed from: R */
    public final void m47276R() {
        m47277S();
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup != null) {
            shortcutBarMoreFunctionPopup.dismiss();
        }
    }

    /* renamed from: S */
    public final void m47277S() {
        LayerPopup layerPopup = this.layerPopup;
        if (layerPopup != null) {
            layerPopup.dismiss();
        }
    }

    /* renamed from: T */
    public final void m47278T(View view) {
        m47288Y0(ToolFunction.ADD_PAGE);
        m47215b1(this, OnyxStatisticConstant.ID_NOTE_BUTTON_CLICK_ADD_PAGE, null, 2, null);
        m47314n1(view);
    }

    /* renamed from: T0 */
    public final void m47279T0() {
        LayoutFunctionToolBinding inflate = LayoutFunctionToolBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        setShortcutBarBinding(getBinding().titleLayout.getViewBinding());
        TransitionController transitionController = getTransitionController();
        CustomShortcutsContainer titleLayout = getBinding().titleLayout;
        Intrinsics.checkNotNullExpressionValue(titleLayout, "titleLayout");
        TransitionController.subscribeTransitionDebounce$default(transitionController, titleLayout, null, 0L, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$initView$1
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
                FunctionToolLayout.this.m47268K1();
            }
        }, 6, null);
        m47321u0();
        showTabIndicator(!NoteConfigManager.INSTANCE.getNoteEditConfigInfo().isTabOptionShow());
        m47267K0();
        m47275Q0();
        m47318r0();
        m47315o0();
        m47273O();
        m47255A1();
    }

    /* renamed from: U */
    public final void m47280U() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            new PageMarginAdjustDialog(context, editorBundle).show();
        }
    }

    /* renamed from: U0 */
    public final boolean m47281U0(ShortcutType shortcutType, boolean enableRtl) {
        return NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData().isLeftSideShortcut(shortcutType, enableRtl ? ViewExtKt.isLayoutDirectionRtl(this) : false);
    }

    /* renamed from: V */
    public final void m47282V() {
        RecorderViewModel recorderViewModel;
        AudioViewModel audioViewModel = this.audioViewModel;
        if (!((audioViewModel == null || (recorderViewModel = audioViewModel.getRecorderViewModel()) == null || recorderViewModel.isRecording()) ? false : true)) {
            m47326z1();
            return;
        }
        TintTextView btnRecord = getShortcutBarBinding().btnRecord;
        Intrinsics.checkNotNullExpressionValue(btnRecord, "btnRecord");
        if (ViewKt.getIdleStateTag(btnRecord)) {
            TintTextView btnRecord2 = getShortcutBarBinding().btnRecord;
            Intrinsics.checkNotNullExpressionValue(btnRecord2, "btnRecord");
            ViewKt.setIdleStateTag(btnRecord2, false);
            m47290Z0();
        }
    }

    /* renamed from: W */
    public final void m47283W() {
        if (ViewKt.isVisible(getBinding().playLayout)) {
            m47325y1();
        } else {
            m47323w1();
        }
    }

    /* renamed from: W0 */
    public final void m47284W0() {
        EditorBundle editorBundle;
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel == null || (editorBundle = this.editorBundle) == null) {
            return;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        if (!ContextExtKt.checkAudioPermissionGrated(context, EditorBundleKt.appEventBus(editorBundle))) {
            TintTextView btnRecord = getShortcutBarBinding().btnRecord;
            Intrinsics.checkNotNullExpressionValue(btnRecord, "btnRecord");
            ViewKt.setIdleStateTag(btnRecord, true);
            return;
        }
        if (!Intrinsics.areEqual(EditorBundleKt.docId(audioViewModel.getEditorBundle()), EditorBundleKt.docId(editorBundle))) {
            m47262I(editorBundle);
            audioViewModel = this.audioViewModel;
            Intrinsics.checkNotNull(audioViewModel);
        }
        audioViewModel.stopPlay();
        m47320t1(false);
        if (audioViewModel.isRecording()) {
            m47326z1();
            TintTextView btnRecord2 = getShortcutBarBinding().btnRecord;
            Intrinsics.checkNotNullExpressionValue(btnRecord2, "btnRecord");
            ViewKt.setIdleStateTag(btnRecord2, true);
        } else {
            audioViewModel.updateQuotaBeforeRecord();
        }
        m47288Y0(ToolFunction.RECORD_AUDIO);
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 != null) {
            StatisticsExtKt.reportNoteEvent$default(editorBundle2, OnyxStatisticConstant.ID_NOTE_BUTTON_CLICK_RECORD_AUDIO, null, 2, null);
        }
        m47255A1();
    }

    /* renamed from: X */
    public final void m47285X() {
        m47288Y0(ToolFunction.PHOTO);
        m47215b1(this, OnyxStatisticConstant.ID_NOTE_BUTTON_CLICK_CAMERA, null, 2, null);
        m47266K();
    }

    /* renamed from: X0 */
    public final void m47286X0(Object event) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, event);
        }
    }

    /* renamed from: Y */
    public final void m47287Y(View view) {
        if (CounterBundle.INSTANCE.getDefaultBundle().notifyIfRunning()) {
            return;
        }
        m47309k1(view, CounterPreference.getCounterLastUsedPageOption$default(CounterPreference.INSTANCE, null, 1, null).get());
    }

    /* renamed from: Y0 */
    public final void m47288Y0(ToolFunction toolFunction) {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsShortcutToolbarEvent(toolFunction));
    }

    /* renamed from: Z */
    public final void m47289Z() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsShortcutToolbarEvent(ToolFunction.DOC_SLIDE));
        boolean m47281U0 = m47281U0(ShortcutType.SHORTCUT_DOC_OVERVIEW, false);
        Function2<? super SlideBarType, ? super Boolean, Unit> function2 = this.toggleSideBarLayoutFunc;
        if (function2 != null) {
            function2.invoke(SlideBarType.SLIDE_OUTLINE, Boolean.valueOf(m47281U0));
        }
    }

    /* renamed from: Z0 */
    public final void m47290Z0() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        permissionActionUtils.requestAudioPermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_AUDIO_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_AUDIO_INTENT_NAME())).build().doOnNext(new C12242d()).subscribe();
    }

    /* renamed from: a0 */
    public final void m47291a0() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            NoteOutlineDialogFragment noteOutlineDialogFragment = new NoteOutlineDialogFragment(editorBundle, DocCollectionBundle.INSTANCE.docManagerBundle(), 0);
            Context context = getContext();
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            noteOutlineDialogFragment.show(((FragmentActivity) context).getSupportFragmentManager(), (String) null);
        }
    }

    /* renamed from: a1 */
    public final void m47292a1(String event, Map<String, ? extends Object> dataMap) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            StatisticsExtKt.reportNoteEvent(editorBundle, event, dataMap);
        }
    }

    /* renamed from: b0 */
    public final void m47293b0() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                RxBaseAction.execute$default(new FunctionToolToggleNoteEncryptionAction(context, editorBundle), null, null, null, 7, null);
                return;
            }
            NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            CommonDialog createNoteEncryptionLoginDialog = noteLockUtils.createNoteEncryptionLoginDialog(context2);
            this.noteEncryptionLoginDialog = createNoteEncryptionLoginDialog;
            if (createNoteEncryptionLoginDialog != null) {
                createNoteEncryptionLoginDialog.show();
            }
        }
    }

    /* renamed from: c0 */
    public final void m47294c0() {
        List listOf;
        final EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(context);
            createLoadingDialog.show();
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(EditorBundleKt.docId(editorBundle));
            RxjavaKt.flatMapIf(new AuthNoteAction(context2, listOf).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$handleExportDoc$1$1
                @NotNull
                public final Boolean invoke(boolean z) {
                    return Boolean.valueOf(z);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                    return invoke(bool.booleanValue());
                }
            }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$handleExportDoc$1$2

                /* renamed from: com.onyx.galaxy.note.editor.view.FunctionToolLayout$handleExportDoc$1$2$a */
                /* loaded from: classes9.dex */
                public static final class C12244a<T> implements Consumer {

                    /* renamed from: e */
                    public final /* synthetic */ EditorBundle f59297e;

                    public C12244a(EditorBundle editorBundle) {
                        this.f59297e = editorBundle;
                    }

                    @Override // io.reactivex.rxjava3.functions.Consumer
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final void accept(@NotNull Disposable it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        EditorBundleKt.postEvent(this.f59297e, new QuitPendingHandlerEvent());
                    }
                }

                /* renamed from: com.onyx.galaxy.note.editor.view.FunctionToolLayout$handleExportDoc$1$2$b */
                /* loaded from: classes9.dex */
                public static final class C12245b<T> implements Consumer {

                    /* renamed from: e */
                    public final /* synthetic */ FunctionToolLayout f59298e;

                    public C12245b(FunctionToolLayout functionToolLayout) {
                        this.f59298e = functionToolLayout;
                    }

                    @Override // io.reactivex.rxjava3.functions.Consumer
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final void accept(@NotNull NoteExportArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        this.f59298e.m47312m1(it2);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                    return invoke(bool.booleanValue());
                }

                @NotNull
                public final Observable<? extends Object> invoke(boolean z) {
                    Observable<NoteExportArgs> doOnNext = new LoadCurNoteExportArgsAction(EditorBundle.this).build().doOnSubscribe(new C12244a(EditorBundle.this)).doOnNext(new C12245b(this));
                    Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                    return doOnNext;
                }
            }).doOnSubscribe(new C12241c(createLoadingDialog)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.exg
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    FunctionToolLayout.m47218d0(LoadingDialog.this);
                }
            }).subscribe();
        }
    }

    /* renamed from: c1 */
    public final void m47295c1() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_NOTE_BUTTON_VIEW_CAMERA, null, 2, null);
            StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_NOTE_BUTTON_VIEW_SCREENSHOT, null, 2, null);
            StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_NOTE_BUTTON_VIEW_RECORD_AUDIO, null, 2, null);
            if (ViewKt.isVisible(getBinding().ivTitleCloud)) {
                StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_NOTE_BUTTON_VIEW_CLOUD_SYNC, null, 2, null);
            }
            PalmCollectionFrameLayout ivRealtimeBeautify = getShortcutBarBinding().ivRealtimeBeautify;
            Intrinsics.checkNotNullExpressionValue(ivRealtimeBeautify, "ivRealtimeBeautify");
            if (ivRealtimeBeautify.getVisibility() == 0) {
                StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_NOTE_BUTTON_VIEW_BEAUTIFY, null, 2, null);
            }
            StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_NOTE_BUTTON_VIEW_LAYER, null, 2, null);
            StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_NOTE_BUTTON_VIEW_ADD_PAGE, null, 2, null);
            StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_VIEW_NOTE_TAB, null, 2, null);
            StatisticsExtKt.reportNoteEvent$default(editorBundle, OnyxStatisticConstant.ID_TOUCH_MODE_VIEW, null, 2, null);
        }
    }

    /* renamed from: d1 */
    public final void m47296d1(EditorTouchMode currentModel, EditorTouchMode newModel) {
        Map<String, ? extends Object> mutableMapOf;
        StringBuilder sb = new StringBuilder();
        String name = currentModel.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        sb.append(lowerCase);
        sb.append(EditorTouchMode.SWITCH_MODE_SEPARATE);
        String lowerCase2 = newModel.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        sb.append(lowerCase2);
        String sb2 = sb.toString();
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_WRITING_MODE_STATE, newModel), TuplesKt.m61535to("switch_writing_mode", sb2));
        StatisticsBundle.INSTANCE.postEvent(new StatisticsSwitchWritingMode(sb2));
        m47292a1(OnyxStatisticConstant.ID_TOUCH_MODE_CLICK, mutableMapOf);
    }

    /* renamed from: e0 */
    public final void m47297e0() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new FullScreenEvent(true));
        }
    }

    /* renamed from: e1 */
    public final void m47298e1() {
        DockType ensureDockType;
        EditorBundle editorBundle;
        ResManager resManager = ResManager.INSTANCE;
        if (resManager.getScreenHeight() <= resManager.getScreenWidth() || (ensureDockType = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().ensureDockType()) != DockType.BOTTOM || (editorBundle = this.editorBundle) == null) {
            return;
        }
        EditorBundleKt.postEvent(editorBundle, new ChangeDockTypeEvent(ensureDockType));
    }

    /* renamed from: f0 */
    public final void m47299f0(View view) {
        m47288Y0(ToolFunction.LAYER);
        m47215b1(this, OnyxStatisticConstant.ID_NOTE_BUTTON_CLICK_LAYER, null, 2, null);
        m47316o1(view);
    }

    /* renamed from: f1 */
    public final void m47300f1() {
        LayerPopup layerPopup = this.layerPopup;
        if (layerPopup != null) {
            boolean z = false;
            if (layerPopup != null && !layerPopup.isShowing()) {
                z = true;
            }
            if (z) {
                return;
            }
            m47277S();
            PalmCollectionImageView ivTitleLayer = getShortcutBarBinding().ivTitleLayer;
            Intrinsics.checkNotNullExpressionValue(ivTitleLayer, "ivTitleLayer");
            m47316o1(ivTitleLayer);
        }
    }

    /* renamed from: g0 */
    public final void m47301g0() {
        ShortcutType shortcutType = ShortcutType.SHORTCUT_NOTE_OVERVIEW;
        boolean m47213V0 = m47213V0(this, shortcutType, false, 2, null);
        FunctionToolListener functionToolListener = this.functionToolListener;
        if (functionToolListener != null) {
            functionToolListener.toggleFunctionTool(shortcutType, m47213V0);
        }
    }

    /* renamed from: g1 */
    public final void m47302g1() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestFloatingWindowPermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_SCREEN_SHOT_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_SCREEN_SHOT_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.fxg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FunctionToolLayout.m47223h1(FunctionToolLayout.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    @NotNull
    public final LayoutFunctionToolBinding getBinding() {
        LayoutFunctionToolBinding layoutFunctionToolBinding = this.binding;
        if (layoutFunctionToolBinding != null) {
            return layoutFunctionToolBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    @Nullable
    public final FunctionToolListener getFunctionToolListener() {
        return this.functionToolListener;
    }

    @NotNull
    public final Function0<Rect> getGetEditorContainerRectFunc() {
        Function0<Rect> function0 = this.getEditorContainerRectFunc;
        if (function0 != null) {
            return function0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("getEditorContainerRectFunc");
        return null;
    }

    @NotNull
    public final PalmCollectionImageView getIvTabIndicator() {
        PalmCollectionImageView ivTabIndicator = getBinding().ivTabIndicator;
        Intrinsics.checkNotNullExpressionValue(ivTabIndicator, "ivTabIndicator");
        return ivTabIndicator;
    }

    @NotNull
    public final LayoutCustomShortcutsViewBinding getShortcutBarBinding() {
        LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding = this.shortcutBarBinding;
        if (layoutCustomShortcutsViewBinding != null) {
            return layoutCustomShortcutsViewBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shortcutBarBinding");
        return null;
    }

    @Nullable
    public final Function2<SlideBarType, Boolean, Unit> getToggleSideBarLayoutFunc() {
        return this.toggleSideBarLayoutFunc;
    }

    /* renamed from: h0 */
    public final void m47303h0() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsShortcutToolbarEvent(ToolFunction.MORE_SETTINGS));
        boolean m47281U0 = m47281U0(ShortcutType.SHORTCUT_OTHER_SETTINGS, false);
        Function2<? super SlideBarType, ? super Boolean, Unit> function2 = this.toggleSideBarLayoutFunc;
        if (function2 != null) {
            function2.invoke(SlideBarType.SLIDE_MORE_SETTING, Boolean.valueOf(m47281U0));
        }
    }

    /* renamed from: i0 */
    public final void m47304i0() {
        m47271M(false, new Function0<EditorTouchMode>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$handleReadingMode$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EditorTouchMode invoke() {
                return MMKVNote.INSTANCE.toggleReadingEditTouchMode();
            }
        });
    }

    /* renamed from: i1 */
    public final void m47305i1(boolean enable) {
        getBinding().ivCustomShortcut.setEnabled(enable);
        getBinding().titleLayout.shortcutsEnable(enable);
    }

    /* renamed from: j0 */
    public final void m47306j0() {
        if (FunctionPermissions.INSTANCE.isRealtimeBeautifyEnabled()) {
            MMKVNote.INSTANCE.getRealtimeBeautifyEnabledOption().put(false);
            GlobalBundle.INSTANCE.postEvent(new NotifyRealtimeBeautifyModeUpdatedEvent());
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.realtime_beautify_disabled, false, 2, (Object) null);
        } else {
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle != null) {
                EditorBundleKt.postEvent(editorBundle, new CheckBeautifyPermissionEvent(InkBeautifyConvertType.REALTIME_CONVERT));
            }
        }
    }

    /* renamed from: j1 */
    public final void m47307j1(View anchorView) {
        PalmCollectionFrameLayout ivRealtimeBeautify = getShortcutBarBinding().ivRealtimeBeautify;
        Intrinsics.checkNotNullExpressionValue(ivRealtimeBeautify, "ivRealtimeBeautify");
        Activity activity = ViewLocator.INSTANCE.getActivity(ivRealtimeBeautify);
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity == null) {
            return;
        }
        new RealtimeBeautifySettingsPopup(appCompatActivity, anchorView, this.editorBundle).showTop(getGetEditorContainerRectFunc().invoke(), m47213V0(this, ShortcutType.SHORTCUT_REALTIME_BEAUTIFY, false, 2, null));
    }

    /* renamed from: k0 */
    public final void m47308k0() {
        NotificationKt.showWelcomeNotification();
        m47302g1();
        m47288Y0(ToolFunction.SCREENSHOT);
        m47215b1(this, OnyxStatisticConstant.ID_NOTE_BUTTON_CLICK_SCREENSHOT, null, 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        if (r1.isShowing() == true) goto L11;
     */
    /* renamed from: k1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m47309k1(android.view.View r6, int r7) {
        /*
            r5 = this;
            com.onyx.android.sdk.universal.editor.EditorBundle r0 = r5.editorBundle
            if (r0 != 0) goto L5
            return
        L5:
            com.onyx.galaxy.note.editor.view.window.CounterSettingWindow r1 = r5.counterSettingWindow
            r2 = 0
            if (r1 == 0) goto L12
            boolean r1 = r1.isShowing()
            r3 = 1
            if (r1 != r3) goto L12
            goto L13
        L12:
            r3 = r2
        L13:
            if (r3 == 0) goto L1d
            com.onyx.galaxy.note.editor.view.window.CounterSettingWindow r5 = r5.counterSettingWindow
            if (r5 == 0) goto L1c
            r5.dismiss()
        L1c:
            return
        L1d:
            com.onyx.galaxy.note.editor.data.ShortcutType r1 = com.onyx.galaxy.note.editor.data.ShortcutType.SHORTCUT_COUNTER
            r3 = 2
            r4 = 0
            boolean r1 = m47213V0(r5, r1, r2, r3, r4)
            com.onyx.galaxy.note.editor.view.window.CounterSettingWindow r2 = new com.onyx.galaxy.note.editor.view.window.CounterSettingWindow
            r2.<init>(r0, r6)
            r5.counterSettingWindow = r2
            kotlin.jvm.functions.Function0 r5 = r5.getGetEditorContainerRectFunc()
            java.lang.Object r5 = r5.invoke()
            android.graphics.Rect r5 = (android.graphics.Rect) r5
            com.onyx.galaxy.note.utils.CounterUtils r6 = com.onyx.galaxy.note.utils.CounterUtils.INSTANCE
            android.os.Bundle r6 = r6.withPageBundle(r7)
            r2.show(r5, r1, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.FunctionToolLayout.m47309k1(android.view.View, int):void");
    }

    /* renamed from: l0 */
    public final void m47310l0(View moreSettingView, View listItemView, ShortcutType shortcutType) {
        switch (WhenMappings.$EnumSwitchMapping$0[shortcutType.ordinal()]) {
            case 1:
                m47291a0();
                return;
            case 2:
                m47294c0();
                return;
            case 3:
                m47280U();
                return;
            case 4:
                m47285X();
                return;
            case 5:
                m47308k0();
                return;
            case 6:
                m47278T(moreSettingView);
                return;
            case 7:
                m47299f0(moreSettingView);
                return;
            case 8:
                m47282V();
                return;
            case 9:
                m47283W();
                return;
            case 10:
                m47304i0();
                return;
            case 11:
                m47313n0();
                return;
            case 12:
                m47289Z();
                return;
            case 13:
                m47303h0();
                return;
            case 14:
                m47287Y(moreSettingView);
                return;
            case 15:
                m47293b0();
                return;
            case 16:
                m47301g0();
                return;
            case 17:
                m47297e0();
                return;
            case 18:
            default:
                return;
            case 19:
                m47306j0();
                return;
        }
    }

    /* renamed from: m0 */
    public final void m47311m0(Object event) {
        if (Intrinsics.areEqual(event, AudioViewModel.EVENT_START_RECORD)) {
            AudioViewModel audioViewModel = this.audioViewModel;
            if (audioViewModel != null) {
                audioViewModel.startRecord();
            }
            TintTextView btnRecord = getShortcutBarBinding().btnRecord;
            Intrinsics.checkNotNullExpressionValue(btnRecord, "btnRecord");
            ViewKt.setIdleStateTag(btnRecord, true);
            return;
        }
        if (Intrinsics.areEqual(event, AudioViewModel.EVENT_QUOTA_USED_OUT) ? true : Intrinsics.areEqual(event, AudioViewModel.EVENT_QUOTA_RED_LINE)) {
            AudioViewModel audioViewModel2 = this.audioViewModel;
            if (audioViewModel2 != null) {
                audioViewModel2.showQuotaNotEnoughDialog(this);
            }
            TintTextView btnRecord2 = getShortcutBarBinding().btnRecord;
            Intrinsics.checkNotNullExpressionValue(btnRecord2, "btnRecord");
            ViewKt.setIdleStateTag(btnRecord2, true);
            return;
        }
        if (!Intrinsics.areEqual(event, AudioViewModel.EVENT_RECORD_AUTO_STOP)) {
            if (Intrinsics.areEqual(event, AudioViewModel.EVENT_LOAD_CONFIG_FAIL)) {
                TintTextView btnRecord3 = getShortcutBarBinding().btnRecord;
                Intrinsics.checkNotNullExpressionValue(btnRecord3, "btnRecord");
                ViewKt.setIdleStateTag(btnRecord3, true);
                return;
            }
            return;
        }
        m47326z1();
        AudioViewModel audioViewModel3 = this.audioViewModel;
        if (audioViewModel3 != null) {
            View rootView = getBinding().getRoot().getRootView();
            Intrinsics.checkNotNullExpressionValue(rootView, "getRootView(...)");
            audioViewModel3.showRecordAutoStopDialog(rootView);
        }
    }

    /* renamed from: m1 */
    public final void m47312m1(NoteExportArgs exportArgs) {
        List listOf;
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(exportArgs);
        NoteExportDialog noteExportDialog = new NoteExportDialog(docManagerBundle, context, listOf);
        noteExportDialog.setListener(new NoteExportDialog.ExportListener() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$showExportDialog$1$1
            @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog.ExportListener
            public void onFileExported(@NotNull String filePath) {
                Intrinsics.checkNotNullParameter(filePath, "filePath");
            }
        });
        noteExportDialog.show();
    }

    /* renamed from: n0 */
    public final void m47313n0() {
        m47271M(true, new Function0<EditorTouchMode>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$handleWritingMode$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EditorTouchMode invoke() {
                return MMKVNote.INSTANCE.toggleScribbleEditTouchMode();
            }
        });
    }

    /* renamed from: n1 */
    public final void m47314n1(View view) {
        EditorBundle editorBundle;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null || (editorBundle = this.docManagerBundle) == null) {
            return;
        }
        new InsertPagePopup(editorBundle2, editorBundle, view).showTop(getGetEditorContainerRectFunc().invoke(), m47213V0(this, ShortcutType.SHORTCUT_ADD_PAGE, false, 2, null));
    }

    /* renamed from: o0 */
    public final void m47315o0() {
        m47257C1();
        PalmCollectionFrameLayout ivRealtimeBeautify = getShortcutBarBinding().ivRealtimeBeautify;
        Intrinsics.checkNotNullExpressionValue(ivRealtimeBeautify, "ivRealtimeBeautify");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivRealtimeBeautify, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.axg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47233p0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        TintImageView ivRealtimeSettings = getShortcutBarBinding().ivRealtimeSettings;
        Intrinsics.checkNotNullExpressionValue(ivRealtimeSettings, "ivRealtimeSettings");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivRealtimeSettings, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47236q0(FunctionToolLayout.this, view);
            }
        }, 1, null);
    }

    /* renamed from: o1 */
    public final void m47316o1(View view) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return;
        }
        if (this.layerPopup != null) {
            m47277S();
            return;
        }
        LayerPopup layerPopup = new LayerPopup(editorBundle, view);
        layerPopup.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.gxg
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                FunctionToolLayout.m47234p1(FunctionToolLayout.this);
            }
        });
        layerPopup.showTop(getGetEditorContainerRectFunc().invoke(), m47213V0(this, ShortcutType.SHORTCUT_LAYER, false, 2, null));
        this.layerPopup = layerPopup;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        GlobalBundle.INSTANCE.register(this);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.register(editorBundle, this);
        }
        KSyncBundle.INSTANCE.getEventBusHolder().register(this);
        getLifecycle().setCurrentState(Lifecycle.State.RESUMED);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioInfoBean(@NotNull AudioInfoBean audioInfoBean) {
        PlayerViewModel playerViewModel;
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        m47323w1();
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel == null || (playerViewModel = audioViewModel.getPlayerViewModel()) == null) {
            return;
        }
        playerViewModel.seekTo(audioInfoBean);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioPermissionGratedEvent(@NotNull AudioPermissionGratedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47284W0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioShapeBeanEvent(@NotNull AudioShapeBeanEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return;
        }
        m47325y1();
        m47264J(editorBundle, event.createAudioDataSet());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTouchModeEvent(@NotNull ChangeTouchModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        EditorTouchMode editTouchMode$default = MMKVNote.getEditTouchMode$default(mMKVNote, null, 1, null);
        if (editTouchMode$default == event.getNewTouchMode()) {
            return;
        }
        MMKVNote.saveEditTouchMode$default(mMKVNote, event.getNewTouchMode(), null, 2, null);
        m47206N(this, editTouchMode$default, event.getNewTouchMode(), false, 4, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCheckEditorAutoReLockEvent(@NotNull CheckEditorAutoReLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47274Q();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onContainerRectChangedEvent(@NotNull ContainerRectChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ShortcutBarData shortcutBarData = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData();
        Rect invoke = getGetEditorContainerRectFunc().invoke();
        LayerPopup layerPopup = this.layerPopup;
        if (layerPopup != null) {
            layerPopup.updatePosition(invoke, shortcutBarData.isLeftSideShortcut(ShortcutType.SHORTCUT_LAYER, ViewExtKt.isLayoutDirectionRtl(this)));
        }
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup != null) {
            shortcutBarMoreFunctionPopup.updatePosition(invoke, ViewExtKt.isLayoutDirectionRtl(this));
        }
        LayerPopup layerPopup2 = this.layerPopup;
        if (layerPopup2 != null) {
            layerPopup2.setVisible(true);
        }
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup2 = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup2 != null) {
            shortcutBarMoreFunctionPopup2.setVisible(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getLifecycle().setCurrentState(Lifecycle.State.DESTROYED);
        super.onDetachedFromWindow();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        GlobalBundle.INSTANCE.unregister(this);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.unregister(editorBundle, this);
        }
        KSyncBundle.INSTANCE.getEventBusHolder().unRegister(this);
        Integer num = this.timerObserver;
        if (num != null) {
            RxTimerUtil.INSTANCE.cancel(num.intValue());
        }
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel != null) {
            audioViewModel.destroy();
        }
        m47276R();
        CommonDialog commonDialog = this.noteEncryptionLoginDialog;
        if (commonDialog != null) {
            commonDialog.dismiss();
        }
        getTransitionController().dispose();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDismissCounterSettingEvent(@NotNull DismissCounterSettingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        CounterSettingWindow counterSettingWindow = this.counterSettingWindow;
        if (counterSettingWindow != null) {
            counterSettingWindow.dismiss();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            setEditorBundle(editorBundle);
        }
        m47295c1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentStateEvent(@NotNull DocumentStateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getDocumentState() != DocumentState.OPENED) {
            return;
        }
        m47274Q();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditNoteEncryptionChangedEvent(@NotNull EditNoteEncryptionChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47259F1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorBundleChangedEvent(@NotNull EditorBundleChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47300f1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionToolPopupDismissEvent(@NotNull FunctionToolPopupDismissEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47276R();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionToolPopupHideEvent(@NotNull FunctionToolPopupHideEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayerPopup layerPopup = this.layerPopup;
        if (layerPopup != null) {
            layerPopup.setVisible(false);
        }
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup != null) {
            shortcutBarMoreFunctionPopup.setVisible(false);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChange(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            m47273O();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteTabDataChangedEvent(@NotNull NoteTabDataChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47300f1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRealtimeBeautifyModeUpdatedEvent(@NotNull RealtimeBeautifyModeUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47257C1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenOnEvent(@NotNull ScreenOnEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47274Q();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShortcutBarChangeEvent(@NotNull ShortcutBarChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47255A1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowCounterSettingEvent(@NotNull ShowCounterSettingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PalmCollectionImageView ivCounter = getShortcutBarBinding().ivCounter;
        Intrinsics.checkNotNullExpressionValue(ivCounter, "ivCounter");
        m47309k1(ivCounter, event.getTargetPage());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowLayerPopupEvent(@NotNull ShowLayerPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayerPopup layerPopup = this.layerPopup;
        boolean z = false;
        if (layerPopup != null && layerPopup.isShowing()) {
            z = true;
        }
        if (z) {
            return;
        }
        PalmCollectionImageView ivTitleLayer = getShortcutBarBinding().ivTitleLayer;
        Intrinsics.checkNotNullExpressionValue(ivTitleLayer, "ivTitleLayer");
        m47316o1(ivTitleLayer);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartActivateDocumentEvent(@NotNull StartActivateDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        stopMedia();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSyncNoteProgressChangedEvent(@NotNull SyncNoteProgressChangedEvent event) {
        Object obj;
        Intrinsics.checkNotNullParameter(event, "event");
        Iterator<T> it2 = event.getList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            String uniqueId = ((SyncProgressModel) next).getUniqueId();
            EditorBundle editorBundle = this.editorBundle;
            if (Intrinsics.areEqual(uniqueId, editorBundle != null ? EditorBundleKt.docId(editorBundle) : null)) {
                obj = next;
                break;
            }
        }
        SyncProgressModel syncProgressModel = (SyncProgressModel) obj;
        if (syncProgressModel == null) {
            return;
        }
        m47258D1(syncProgressModel.getDocProgress());
    }

    /* renamed from: q1 */
    public final void m47317q1(View view) {
        final AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel == null) {
            return;
        }
        final AudioDataSet audioDataSet = audioViewModel.getAudioDataSet();
        EditorBundle editorBundle = audioViewModel.getEditorBundle();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        AudioListPopup audioListPopup = new AudioListPopup(editorBundle, audioDataSet, context);
        audioListPopup.setListener(new AudioListPopup.ItemChangedListener() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$showMoreAudioList$1$1
            @Override // com.onyx.galaxy.note.editor.view.popup.AudioListPopup.ItemChangedListener
            public void onItemChanged(@NotNull List<AudioInfoBean> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                AudioViewModel.this.stopPlay();
                AudioViewModel.this.setAudioDataSet(audioDataSet);
                if (AudioViewModel.this.hasRecordFile()) {
                    return;
                }
                this.m47320t1(false);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.AudioListPopup.ItemChangedListener
            public void onItemClick(@NotNull AudioInfoBean audioInfoBean) {
                Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
                AudioViewModel.this.getPlayerViewModel().seekTo(audioInfoBean);
            }
        });
        audioListPopup.showAsDropDown(view);
        EditorBundleKt.postEvent(audioViewModel.getEditorBundle(), new QuitTransformEvent(false, 1, null));
        m47215b1(this, OnyxStatisticConstant.ID_NOTE_AUDIO_PLAYER_MORE, null, 2, null);
    }

    /* renamed from: r0 */
    public final void m47318r0() {
        m47259F1();
        TintImageView ivEncryptionLock = getShortcutBarBinding().ivEncryptionLock;
        Intrinsics.checkNotNullExpressionValue(ivEncryptionLock, "ivEncryptionLock");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivEncryptionLock, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47239s0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        TintImageView ivEncryptionUnlock = getShortcutBarBinding().ivEncryptionUnlock;
        Intrinsics.checkNotNullExpressionValue(ivEncryptionUnlock, "ivEncryptionUnlock");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivEncryptionUnlock, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47242t0(FunctionToolLayout.this, view);
            }
        }, 1, null);
    }

    /* renamed from: r1 */
    public final void m47319r1(final View moreSettingView) {
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup != null) {
            if (shortcutBarMoreFunctionPopup != null) {
                shortcutBarMoreFunctionPopup.dismiss();
                return;
            }
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            FrameLayout playLayout = getBinding().playLayout;
            Intrinsics.checkNotNullExpressionValue(playLayout, "playLayout");
            this.shortcutBarMoreFunctionPopup = new ShortcutBarMoreFunctionPopup(moreSettingView, editorBundle, playLayout.getVisibility() == 0, new Function2<ShortcutType, View, Unit>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$showMoreFunctionPopup$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ShortcutType shortcutType, View view) {
                    invoke2(shortcutType, view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ShortcutType shortcutType, @NotNull View listItemView) {
                    Intrinsics.checkNotNullParameter(shortcutType, "shortcutType");
                    Intrinsics.checkNotNullParameter(listItemView, "listItemView");
                    FunctionToolLayout.this.m47310l0(moreSettingView, listItemView, shortcutType);
                }
            });
        }
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup2 = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup2 != null) {
            shortcutBarMoreFunctionPopup2.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.zxg
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    FunctionToolLayout.m47240s1(FunctionToolLayout.this);
                }
            });
        }
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup3 = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup3 != null) {
            shortcutBarMoreFunctionPopup3.showTop(getGetEditorContainerRectFunc().invoke(), ViewExtKt.isLayoutDirectionRtl(this));
        }
    }

    public final void setBinding(@NotNull LayoutFunctionToolBinding layoutFunctionToolBinding) {
        Intrinsics.checkNotNullParameter(layoutFunctionToolBinding, "<set-?>");
        this.binding = layoutFunctionToolBinding;
    }

    public final void setDocManagerBundle(@Nullable EditorBundle editorBundle) {
        this.docManagerBundle = editorBundle;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        getBinding().titleLayout.setEditorBundle(editorBundle);
        m47262I(editorBundle);
        EditorBundleKt.register(editorBundle, this);
        m47255A1();
        updateToolsIconByScreen();
        m47259F1();
        m47274Q();
    }

    public final void setFunctionToolListener(@Nullable FunctionToolListener functionToolListener) {
        this.functionToolListener = functionToolListener;
    }

    public final void setGetEditorContainerRectFunc(@NotNull Function0<Rect> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.getEditorContainerRectFunc = function0;
    }

    public final void setShortcutBarBinding(@NotNull LayoutCustomShortcutsViewBinding layoutCustomShortcutsViewBinding) {
        Intrinsics.checkNotNullParameter(layoutCustomShortcutsViewBinding, "<set-?>");
        this.shortcutBarBinding = layoutCustomShortcutsViewBinding;
    }

    public final void setToggleSideBarLayoutFunc(@Nullable Function2<? super SlideBarType, ? super Boolean, Unit> function2) {
        this.toggleSideBarLayoutFunc = function2;
    }

    public final void showTabIndicator(boolean show) {
        ViewKt.setViewVisibleOrGone(getIvTabIndicator(), show);
    }

    public final void stopMedia() {
        m47326z1();
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel != null) {
            audioViewModel.stopPlay();
        }
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* renamed from: t1 */
    public final void m47320t1(final boolean show) {
        MutableLiveData<Boolean> newRecordTip;
        boolean isVisible = ViewKt.isVisible(getBinding().playLayout);
        if (show && !isVisible) {
            m47215b1(this, OnyxStatisticConstant.ID_NOTE_AUDIO_VIEW_PLAYER, null, 2, null);
        } else if (isVisible) {
            m47215b1(this, OnyxStatisticConstant.ID_NOTE_AUDIO_CLOSE_PLAYER, null, 2, null);
        }
        ViewKt.setViewVisibleOrGone(getBinding().playLayout, show);
        m47298e1();
        m47255A1();
        ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup = this.shortcutBarMoreFunctionPopup;
        if (shortcutBarMoreFunctionPopup != null) {
            AudioViewModel audioViewModel = this.audioViewModel;
            shortcutBarMoreFunctionPopup.updateAudioSetItem(show, (audioViewModel == null || (newRecordTip = audioViewModel.getNewRecordTip()) == null) ? false : Intrinsics.areEqual(newRecordTip.getValue(), Boolean.TRUE));
        }
        getBinding().getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.byg
            @Override // java.lang.Runnable
            public final void run() {
                FunctionToolLayout.m47244u1(FunctionToolLayout.this, show);
            }
        });
    }

    public final void toggleTabIndicator() {
        showTabIndicator(!ViewKt.isVisible(getIvTabIndicator()));
    }

    /* renamed from: u0 */
    public final void m47321u0() {
        PalmCollectionImageView ivBack = getBinding().ivBack;
        Intrinsics.checkNotNullExpressionValue(ivBack, "ivBack");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivBack, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47246v0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivCamera = getShortcutBarBinding().ivCamera;
        Intrinsics.checkNotNullExpressionValue(ivCamera, "ivCamera");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivCamera, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.oxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47248w0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivScreenShot = getShortcutBarBinding().ivScreenShot;
        Intrinsics.checkNotNullExpressionValue(ivScreenShot, "ivScreenShot");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivScreenShot, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47189C0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivAddPage = getShortcutBarBinding().ivAddPage;
        Intrinsics.checkNotNullExpressionValue(ivAddPage, "ivAddPage");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivAddPage, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47191D0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivTitleLayer = getShortcutBarBinding().ivTitleLayer;
        Intrinsics.checkNotNullExpressionValue(ivTitleLayer, "ivTitleLayer");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivTitleLayer, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47193E0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivDocOverviewFull = getShortcutBarBinding().ivDocOverviewFull;
        Intrinsics.checkNotNullExpressionValue(ivDocOverviewFull, "ivDocOverviewFull");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivDocOverviewFull, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47196F0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivAdjustPageWhitespace = getShortcutBarBinding().ivAdjustPageWhitespace;
        Intrinsics.checkNotNullExpressionValue(ivAdjustPageWhitespace, "ivAdjustPageWhitespace");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivAdjustPageWhitespace, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.txg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47198G0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivExportDoc = getShortcutBarBinding().ivExportDoc;
        Intrinsics.checkNotNullExpressionValue(ivExportDoc, "ivExportDoc");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivExportDoc, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47200H0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivSlide = getShortcutBarBinding().ivSlide;
        Intrinsics.checkNotNullExpressionValue(ivSlide, "ivSlide");
        ResManager resManager = ResManager.INSTANCE;
        com.onyx.android.sdk.extension.ViewKt.click(ivSlide, resManager.getLong(C10651R.integer.side_layout_click_time_interval), new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47201I0(FunctionToolLayout.this, view);
            }
        });
        PalmCollectionImageView ivTitleMore = getShortcutBarBinding().ivTitleMore;
        Intrinsics.checkNotNullExpressionValue(ivTitleMore, "ivTitleMore");
        com.onyx.android.sdk.extension.ViewKt.click(ivTitleMore, resManager.getLong(C10651R.integer.side_layout_click_time_interval), new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47202J0(FunctionToolLayout.this, view);
            }
        });
        FrameLayout ivTitleCloud = getBinding().ivTitleCloud;
        Intrinsics.checkNotNullExpressionValue(ivTitleCloud, "ivTitleCloud");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivTitleCloud, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ixg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47250x0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivCustomShortcut = getBinding().ivCustomShortcut;
        Intrinsics.checkNotNullExpressionValue(ivCustomShortcut, "ivCustomShortcut");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivCustomShortcut, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47252y0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivCounter = getShortcutBarBinding().ivCounter;
        Intrinsics.checkNotNullExpressionValue(ivCounter, "ivCounter");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivCounter, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47254z0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivNoteOverview = getShortcutBarBinding().ivNoteOverview;
        Intrinsics.checkNotNullExpressionValue(ivNoteOverview, "ivNoteOverview");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivNoteOverview, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47185A0(FunctionToolLayout.this, view);
            }
        }, 1, null);
        PalmCollectionImageView ivFullScreen = getShortcutBarBinding().ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivFullScreen, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nxg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FunctionToolLayout.m47187B0(FunctionToolLayout.this, view);
            }
        }, 1, null);
    }

    public final void updateToolsIconByScreen() {
        m47260G1();
        m47255A1();
    }

    /* renamed from: v1 */
    public final void m47322v1(View view, SyncDocProgress docProgress) {
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        SyncErrorPopup syncErrorPopup = new SyncErrorPopup(context);
        EditorBundle editorBundle = this.editorBundle;
        String docId = editorBundle != null ? EditorBundleKt.docId(editorBundle) : null;
        if (docId == null) {
            docId = "";
        }
        syncErrorPopup.updateErrorMsg(docId, docProgress);
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        int centerX = (rect.centerX() - (view.getWidth() / 2)) - (syncErrorPopup.getContentView().getMeasuredWidth() / 2);
        ResManager resManager = ResManager.INSTANCE;
        syncErrorPopup.showAtLocation(view, 0, centerX - resManager.getDimens(C7384R.dimen.dp_2), (rect.top - syncErrorPopup.getContentView().getMeasuredHeight()) - resManager.getDimens(C7384R.dimen.dp_1));
    }

    /* renamed from: w1 */
    public final void m47323w1() {
        m47326z1();
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel != null) {
            audioViewModel.setNewRecord(false);
        }
        m47320t1(true);
        m47215b1(this, OnyxStatisticConstant.ID_NOTE_AUDIO_CLICK_LIST, null, 2, null);
        m47255A1();
    }

    /* renamed from: x1 */
    public final void m47324x1() {
        List listOf;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return;
        }
        String documentId = EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteDocBean().getDocumentId();
        if (documentId.length() == 0) {
            return;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(documentId);
        m47286X0(new StartNoteReplicatorEvent(listOf).setTriggerSource(2));
    }

    /* renamed from: y1 */
    public final void m47325y1() {
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel != null) {
            audioViewModel.stopPlay();
        }
        m47320t1(false);
        m47255A1();
    }

    /* renamed from: z1 */
    public final void m47326z1() {
        MutableLiveData<Boolean> newRecordTip;
        Object last;
        AudioViewModel audioViewModel = this.audioViewModel;
        if (audioViewModel != null && audioViewModel.isRecording()) {
            List<AudioInfoBean> audioInfoList = audioViewModel.getAudioDataSet().getAudioInfoList();
            List<AudioInfoBean> list = audioInfoList;
            int size = CollectionKt.getSize(list);
            audioViewModel.stopRecord();
            CountDownTimer countDownTimer = this.countDownTimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            if (size != CollectionKt.getSize(list)) {
                EditorBundle editorBundle = audioViewModel.getEditorBundle();
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) audioInfoList);
                EditorBundleKt.postEvent(editorBundle, new CreateAudioShapeEvent((AudioInfoBean) last, false, 2, null));
            }
            if (audioViewModel.getAudioDataSet().getAudioInfoList().size() == 1) {
                m47215b1(this, OnyxStatisticConstant.ID_NOTE_AUDIO_VIEW_LIST, null, 2, null);
            }
            m47255A1();
            ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup = this.shortcutBarMoreFunctionPopup;
            if (shortcutBarMoreFunctionPopup != null) {
                AudioViewModel audioViewModel2 = this.audioViewModel;
                shortcutBarMoreFunctionPopup.updateAudioSetItem(false, (audioViewModel2 == null || (newRecordTip = audioViewModel2.getNewRecordTip()) == null) ? false : Intrinsics.areEqual(newRecordTip.getValue(), Boolean.TRUE));
            }
            ShortcutBarMoreFunctionPopup shortcutBarMoreFunctionPopup2 = this.shortcutBarMoreFunctionPopup;
            if (shortcutBarMoreFunctionPopup2 != null) {
                shortcutBarMoreFunctionPopup2.updateAudioSet();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FunctionToolLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public LifecycleRegistry getLifecycle() {
        return (LifecycleRegistry) this.lifecycle.getValue();
    }

    public /* synthetic */ FunctionToolLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionToolLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LifecycleRegistry>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$lifecycle$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LifecycleRegistry invoke() {
                Context context2 = FunctionToolLayout.this.getContext();
                Intrinsics.checkNotNull(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                return new LifecycleRegistry((FragmentActivity) context2);
            }
        });
        this.lifecycle = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TransitionController>() { // from class: com.onyx.galaxy.note.editor.view.FunctionToolLayout$transitionController$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TransitionController invoke() {
                return new TransitionController();
            }
        });
        this.transitionController = lazy2;
        m47279T0();
    }

    public /* synthetic */ FunctionToolLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

package com.onyx.galaxy.note.editor.p046ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResultCallback;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.transition.Slide;
import androidx.transition.TransitionManager;
import com.blankj.utilcode.util.LogUtils;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.hjq.window.EasyWindow;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageRefreshTokenFailedEvent;
import com.onyx.android.sdk.data.EditNoteNameFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.ActivationStateChangedEvent;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.INotch;
import com.onyx.android.sdk.device.bean.NotchType;
import com.onyx.android.sdk.event.StatisticsEditNoteNameEvent;
import com.onyx.android.sdk.extension.ActivityKt;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.FilePickerArgs;
import com.onyx.android.sdk.filepicker.FilePickerBuilder;
import com.onyx.android.sdk.filepicker.PickerFileConst;
import com.onyx.android.sdk.filepicker.PickerManager;
import com.onyx.android.sdk.matisse.Matisse;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.HidePenBoxEvent;
import com.onyx.android.sdk.universal.common.events.ReactivePenBoxEvent;
import com.onyx.android.sdk.universal.common.events.ResetPenBoxPositionEvent;
import com.onyx.android.sdk.universal.common.events.ShowPenBoxEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelAction;
import com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction;
import com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.config.SplitScreenPosition;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.data.FocusedEditorDocSwitchEvent;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.events.app.ActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.ActivityPausedEvent;
import com.onyx.android.sdk.universal.editor.events.app.ActivityResumeEvent;
import com.onyx.android.sdk.universal.editor.events.app.ActivityStopEvent;
import com.onyx.android.sdk.universal.editor.events.app.CancelFingerClickTimerEvent;
import com.onyx.android.sdk.universal.editor.events.app.ContentViewSizeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorBundleChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorContainerLayoutChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorCreatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.GlobalDocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.MoveScribbleActivityToBackEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoteOverviewCloseDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoteOverviewStartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoteTabDataChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.RequestPermissionEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ShowTagShapePopupEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportedEvent;
import com.onyx.android.sdk.universal.editor.events.note.ActivateShapeHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.BeforeChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraseTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeSubShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.DismissShapeSelectionStyleMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagePagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickFileToInsertPagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickImagesToInsertPagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickInsertImageShapesEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitNoteDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitPendingHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.RestoreUserProviderEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapeHandlerChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapeToolTypeRecoverEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowQuotePopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.StopScreenCaptureServiceEvent;
import com.onyx.android.sdk.universal.editor.events.note.SwitchExcerptTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SystemBarWindowInsetsEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextToolViewVisibleChangeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.android.sdk.universal.editor.helper.TextInputHelper;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewDownListener;
import com.onyx.android.sdk.universal.editor.view.EditorViewFocusChangeListener;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.onyx.android.sdk.universal.editor.view.SplitScreenListener;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.UpdateEditorNoteModelEncryptionAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.MemberChargeEvent;
import com.onyx.galaxy.note.common.action.LoadGuideInfoAction;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.constant.GuideInfoConst;
import com.onyx.galaxy.note.common.extension.MatisseKt;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.GuideTipsPopup;
import com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding;
import com.onyx.galaxy.note.databinding.SplitScreenLayoutBinding;
import com.onyx.galaxy.note.editor.StashEventHandler;
import com.onyx.galaxy.note.editor.action.counter.RecoverCounterStateAction;
import com.onyx.galaxy.note.editor.action.importfiles.InsertPageFromFileAction;
import com.onyx.galaxy.note.editor.action.importfiles.ObtainDocumentListAction;
import com.onyx.galaxy.note.editor.action.pen.InitTapeShapeGlobalStateAction;
import com.onyx.galaxy.note.editor.api.ContentApiSubscriber;
import com.onyx.galaxy.note.editor.data.PenContext;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.data.ShortcutBarData;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.data.SlideBarTypeKt;
import com.onyx.galaxy.note.editor.event.ChangeDockTypeEvent;
import com.onyx.galaxy.note.editor.event.ChangeScrollerConfigEvent;
import com.onyx.galaxy.note.editor.event.CheckEditorAutoReLockEvent;
import com.onyx.galaxy.note.editor.event.CloseSideBarEvent;
import com.onyx.galaxy.note.editor.event.ContainerRectChangedEvent;
import com.onyx.galaxy.note.editor.event.EditNoteEncryptionChangedEvent;
import com.onyx.galaxy.note.editor.event.EditorSideBarInfo;
import com.onyx.galaxy.note.editor.event.ForceCloseKeyboardEvent;
import com.onyx.galaxy.note.editor.event.FunctionToolPopupDismissEvent;
import com.onyx.galaxy.note.editor.event.FunctionToolPopupHideEvent;
import com.onyx.galaxy.note.editor.event.OpenSlideBarEvents;
import com.onyx.galaxy.note.editor.event.OverviewSearchEvent;
import com.onyx.galaxy.note.editor.event.ReLockNoteEvent;
import com.onyx.galaxy.note.editor.event.RegisterKeyboardHelperEvent;
import com.onyx.galaxy.note.editor.event.ShapeToolbarChangeEvent;
import com.onyx.galaxy.note.editor.event.ShowShortcutBarCustomPopupEvent;
import com.onyx.galaxy.note.editor.event.SideBarAreaEvent;
import com.onyx.galaxy.note.editor.event.SidebarVisibleLevelChangedEvent;
import com.onyx.galaxy.note.editor.event.SidebarWidthChangedEvent;
import com.onyx.galaxy.note.editor.event.UnregisterKeyboardHelperEvent;
import com.onyx.galaxy.note.editor.event.UpdateAllLockedNotePasswordEvent;
import com.onyx.galaxy.note.editor.event.VisiblePenBoxEvent;
import com.onyx.galaxy.note.editor.event.WindowLocationChangedEvent;
import com.onyx.galaxy.note.editor.handler.CounterAlarmHandler;
import com.onyx.galaxy.note.editor.handler.DocumentEventHandler;
import com.onyx.galaxy.note.editor.handler.EditorAutoReLockHandler;
import com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler;
import com.onyx.galaxy.note.editor.handler.EraseEventHandler;
import com.onyx.galaxy.note.editor.handler.GlobalEventHandler;
import com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler;
import com.onyx.galaxy.note.editor.handler.LongPressEventHandler;
import com.onyx.galaxy.note.editor.handler.MagnifierEventHandler;
import com.onyx.galaxy.note.editor.handler.MouseEventHandler;
import com.onyx.galaxy.note.editor.handler.NoteCounterUIHandler;
import com.onyx.galaxy.note.editor.handler.OperationTipEventHandler;
import com.onyx.galaxy.note.editor.handler.PageEventHandler;
import com.onyx.galaxy.note.editor.handler.PenBoxEventHandler;
import com.onyx.galaxy.note.editor.handler.QuickFunctionEventHandler;
import com.onyx.galaxy.note.editor.handler.RulerHandler;
import com.onyx.galaxy.note.editor.handler.ScaleEventHandler;
import com.onyx.galaxy.note.editor.handler.ShapesLocationBarEventHandler;
import com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler;
import com.onyx.galaxy.note.editor.handler.SplitScreenEventHandler;
import com.onyx.galaxy.note.editor.handler.StatisticEventHandler;
import com.onyx.galaxy.note.editor.handler.SystemBarEventHandler;
import com.onyx.galaxy.note.editor.handler.TemplateEventHandler;
import com.onyx.galaxy.note.editor.handler.TextBoxKeyboardEventHandler;
import com.onyx.galaxy.note.editor.handler.TextIndexEventHandler;
import com.onyx.galaxy.note.editor.menu.PagedSelectionMenu;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.p046ui.NoteOverviewFragment;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.p046ui.NoteSettingMoreFragment;
import com.onyx.galaxy.note.editor.view.FunctionToolLayout;
import com.onyx.galaxy.note.editor.view.InputTextToolLayout;
import com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer;
import com.onyx.galaxy.note.editor.view.NoteTabLayout;
import com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout;
import com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout;
import com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup;
import com.onyx.galaxy.note.editor.view.popup.QuotePopup;
import com.onyx.galaxy.note.editor.view.popup.TagShapePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.DriveTokenExpiredTipContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto;
import com.onyx.galaxy.note.editor.view.toolbar.ToolDragView;
import com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.member.action.OpenMemberChargeAction;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.receiver.ScreenOffEvent;
import com.onyx.galaxy.note.receiver.ScreenOnEvent;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.onyx.galaxy.note.utils.GuideUtils;
import com.permissionx.guolindev.PermissionMediator;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.RequestCallback;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000î\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t¢\u0006\u0006\bè\u0002\u0010Ì\u0001J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002J\b\u0010\u0010\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0007H\u0002J\b\u0010\u0015\u001a\u00020\u0007H\u0002J\b\u0010\u0016\u001a\u00020\u0007H\u0002J\u0012\u0010\u0019\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\"\u0010\u001e\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0017H\u0002J\b\u0010#\u001a\u00020\u0007H\u0002J\b\u0010$\u001a\u00020\u0007H\u0002J\b\u0010%\u001a\u00020\u0007H\u0002J\b\u0010&\u001a\u00020\u0007H\u0002J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u001fH\u0002J\b\u0010)\u001a\u00020\u0007H\u0002J\u0012\u0010,\u001a\u00020\u00072\b\u0010+\u001a\u0004\u0018\u00010*H\u0002J\u0018\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-2\u0006\u0010+\u001a\u00020*H\u0002J\b\u00100\u001a\u00020\u0007H\u0002J\b\u00101\u001a\u00020\u0007H\u0002J\u0010\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u001cH\u0002J\b\u00104\u001a\u00020\u0007H\u0002J\b\u00105\u001a\u00020\u0007H\u0002J\b\u00106\u001a\u00020\u0007H\u0002J\u0018\u00107\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0017H\u0002J\b\u00108\u001a\u00020\u0007H\u0002J\u0016\u0010;\u001a\u00020\u00072\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020:09H\u0002J\b\u0010<\u001a\u00020\u0007H\u0002J\b\u0010=\u001a\u00020\u0007H\u0002J\b\u0010>\u001a\u00020\u0007H\u0002J\u0010\u0010A\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?H\u0002J\b\u0010B\u001a\u00020\u0007H\u0002J\b\u0010C\u001a\u00020\u0007H\u0002J\b\u0010D\u001a\u00020\u0007H\u0002J\u0010\u0010E\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010F\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010I\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u0010\u0010K\u001a\u00020?2\u0006\u0010J\u001a\u00020\u001fH\u0002J\b\u0010L\u001a\u00020\u0007H\u0002J\u0018\u0010M\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J \u0010O\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u0010\u0010P\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?H\u0002J\u0010\u0010Q\u001a\u00020\u00072\u0006\u0010@\u001a\u00020?H\u0002J\u0018\u0010T\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u001f2\u0006\u0010S\u001a\u00020\u001cH\u0002J\u0010\u0010U\u001a\u00020\u001c2\u0006\u0010S\u001a\u00020\u001cH\u0002J \u0010V\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\b\u0010X\u001a\u00020WH\u0002J\b\u0010Y\u001a\u00020\u001fH\u0002J\b\u0010Z\u001a\u00020\u0007H\u0002J\u0018\u0010^\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\u0018\u0010_\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\u0018\u0010`\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\u0018\u0010b\u001a\u00020a2\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[H\u0002J\b\u0010c\u001a\u00020\u0007H\u0002J \u0010d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u001a\u0010f\u001a\u0004\u0018\u00010e2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J&\u0010h\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010g2\u0006\u0010@\u001a\u00020?2\u0006\u0010H\u001a\u00020GH\u0002J\u0010\u0010k\u001a\u00020\u00072\u0006\u0010j\u001a\u00020iH\u0002J\b\u0010l\u001a\u00020\u0007H\u0002J\u0010\u0010m\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002J\u0010\u0010n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002J\b\u0010o\u001a\u00020\u0007H\u0002J\b\u0010p\u001a\u00020\u0007H\u0002J\b\u0010q\u001a\u00020\u0007H\u0002J\b\u0010r\u001a\u00020\u0007H\u0002J\b\u0010s\u001a\u00020\u0007H\u0002J\u0010\u0010v\u001a\u00020\u00072\u0006\u0010u\u001a\u00020tH\u0002J\b\u0010w\u001a\u00020\u0007H\u0002J\b\u0010x\u001a\u00020\u0007H\u0002J\u001c\u0010|\u001a\u00020\u00072\b\b\u0002\u0010z\u001a\u00020y2\b\b\u0002\u0010{\u001a\u00020\u001fH\u0002J\b\u0010}\u001a\u00020\u0007H\u0002J\u0010\u0010\u007f\u001a\u00020\u00072\u0006\u0010~\u001a\u00020\u001fH\u0002J\t\u0010\u0080\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u0081\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u0082\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u0083\u0001\u001a\u00020\u0007H\u0002J\u0012\u0010\u0085\u0001\u001a\u00020\u00072\u0007\u0010\u0084\u0001\u001a\u00020tH\u0002J\u0012\u0010\u0086\u0001\u001a\u00020\u00072\u0007\u0010\u0084\u0001\u001a\u00020tH\u0002J\u0019\u0010\u0088\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0087\u00012\u0007\u0010\u0084\u0001\u001a\u00020tH\u0002J\u0014\u0010\u008a\u0001\u001a\u00020\u00072\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010iH\u0002J\u001a\u0010\u008c\u0001\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020?2\u0007\u0010\u008b\u0001\u001a\u00020GH\u0002J\u001b\u0010\u008f\u0001\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0002J\t\u0010\u0090\u0001\u001a\u00020\u0007H\u0002J\u0019\u0010\u0091\u0001\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u001f2\u0006\u0010H\u001a\u00020GH\u0002J\u0012\u0010\u0093\u0001\u001a\u00020\u00072\u0007\u0010\u0092\u0001\u001a\u00020tH\u0002J\u001a\u0010\u0095\u0001\u001a\u00020\u00072\u0007\u0010H\u001a\u00030\u0094\u00012\u0006\u0010J\u001a\u00020\u001fH\u0002J\u0011\u0010\u0096\u0001\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u001fH\u0002J\t\u0010\u0097\u0001\u001a\u00020\u0007H\u0002J\u0013\u0010\u0098\u0001\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0013\u0010\u009b\u0001\u001a\u00020\u00072\b\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0016J\t\u0010\u009c\u0001\u001a\u00020\u0007H\u0016J\u0011\u0010\u000e\u001a\u00020\nH\u0000¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J\u0013\u0010¢\u0001\u001a\u00030\u009f\u0001H\u0000¢\u0006\u0006\b \u0001\u0010¡\u0001J(\u0010¦\u0001\u001a\u00020-2\b\u0010¤\u0001\u001a\u00030£\u00012\t\u0010¥\u0001\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010¨\u0001\u001a\u00020\u00072\u0007\u0010§\u0001\u001a\u00020-2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0013\u0010¬\u0001\u001a\u00030©\u0001H\u0000¢\u0006\u0006\bª\u0001\u0010«\u0001J\u0013\u0010¯\u0001\u001a\u00020\u00072\b\u0010®\u0001\u001a\u00030\u00ad\u0001H\u0016J\u0013\u0010²\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030°\u0001H\u0007J\t\u0010³\u0001\u001a\u00020\u0007H\u0016J\t\u0010´\u0001\u001a\u00020\u0007H\u0016J\t\u0010µ\u0001\u001a\u00020\u0007H\u0016J\t\u0010¶\u0001\u001a\u00020\u0007H\u0016J\u0013\u0010¸\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030·\u0001H\u0007J\u0013\u0010º\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030¹\u0001H\u0007J\u0013\u0010¼\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030»\u0001H\u0007J\u0013\u0010¾\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030½\u0001H\u0007J\u0013\u0010À\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030¿\u0001H\u0007J\u0013\u0010Â\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Á\u0001H\u0007J\u0013\u0010Ä\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Ã\u0001H\u0007J\u0013\u0010Æ\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Å\u0001H\u0007J\u0013\u0010È\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Ç\u0001H\u0007J\u0013\u0010Ê\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030É\u0001H\u0007J\u0012\u0010Í\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0006\bË\u0001\u0010Ì\u0001J\u0012\u0010Ï\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0006\bÎ\u0001\u0010Ì\u0001J\u0013\u0010Ó\u0001\u001a\u00030Ð\u0001H\u0000¢\u0006\u0006\bÑ\u0001\u0010Ò\u0001J\u0013\u0010Õ\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Ô\u0001H\u0007J\u0013\u0010×\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Ö\u0001H\u0007J\u0013\u0010Ù\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Ø\u0001H\u0007J\u0013\u0010Û\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Ú\u0001H\u0007J\u0013\u0010Ý\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Ü\u0001H\u0007J\u0013\u0010ß\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030Þ\u0001H\u0007J\u0013\u0010á\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030à\u0001H\u0007J\u0013\u0010ã\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030â\u0001H\u0007J\u0013\u0010å\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030ä\u0001H\u0007J\u0012\u0010ç\u0001\u001a\u00020\u0007H\u0000¢\u0006\u0006\bæ\u0001\u0010Ì\u0001J\u001c\u0010ì\u0001\u001a\u00020\u00072\b\u0010é\u0001\u001a\u00030è\u0001H\u0000¢\u0006\u0006\bê\u0001\u0010ë\u0001J\u0013\u0010î\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030í\u0001H\u0007J\u0013\u0010ð\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030ï\u0001H\u0007J\u0013\u0010ò\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030ñ\u0001H\u0007J\u0013\u0010ô\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030ó\u0001H\u0007J\u0013\u0010ö\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030õ\u0001H\u0007J\u0013\u0010ø\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030÷\u0001H\u0007J\u0013\u0010ú\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030ù\u0001H\u0007J\u0013\u0010ü\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030û\u0001H\u0007J\u0013\u0010þ\u0001\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030ý\u0001H\u0007J\u0013\u0010\u0080\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030ÿ\u0001H\u0007J\u0013\u0010\u0082\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u0081\u0002H\u0007J\u0013\u0010\u0086\u0002\u001a\u00030\u0083\u0002H\u0000¢\u0006\u0006\b\u0084\u0002\u0010\u0085\u0002J\u0013\u0010\u008a\u0002\u001a\u00030\u0087\u0002H\u0000¢\u0006\u0006\b\u0088\u0002\u0010\u0089\u0002J\u0015\u0010\u008c\u0002\u001a\u0005\u0018\u00010\u0087\u0002H\u0000¢\u0006\u0006\b\u008b\u0002\u0010\u0089\u0002J\u0013\u0010\u008e\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u008d\u0002H\u0007J\u0013\u0010\u0090\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u008f\u0002H\u0007J\u001b\u0010\u0093\u0002\u001a\u00020\u00072\u0007\u0010\u0091\u0002\u001a\u00020\n2\u0007\u0010\u0092\u0002\u001a\u00020\nH\u0016J\u0013\u0010\u0095\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u0094\u0002H\u0007J\u0013\u0010\u0097\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u0096\u0002H\u0007J\u0013\u0010\u0099\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u0098\u0002H\u0007J\u0013\u0010\u009b\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u009a\u0002H\u0007J\u0013\u0010\u009d\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u009c\u0002H\u0007J\u0013\u0010\u009f\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030\u009e\u0002H\u0007J\u0013\u0010¡\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030 \u0002H\u0007J\u0013\u0010£\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030¢\u0002H\u0007J\u0013\u0010¥\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030¤\u0002H\u0007J\u0013\u0010§\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030¦\u0002H\u0007J\u0013\u0010©\u0002\u001a\u00020\u00072\b\u0010±\u0001\u001a\u00030¨\u0002H\u0007J\u0012\u0010«\u0002\u001a\u00020\u00072\u0007\u0010ª\u0002\u001a\u00020-H\u0016J\u001c\u0010¯\u0002\u001a\u00020\u00072\u0007\u0010¬\u0002\u001a\u00020-2\b\u0010®\u0002\u001a\u00030\u00ad\u0002H\u0016J\u0014\u0010°\u0002\u001a\u00030Ð\u00012\b\u0010®\u0002\u001a\u00030\u00ad\u0002H\u0016J\t\u0010±\u0002\u001a\u00020\u001fH\u0016J\t\u0010²\u0002\u001a\u00020\u0007H\u0016J\b\u0010³\u0002\u001a\u00030\u0087\u0002J'\u0010¸\u0002\u001a\u00020\u00072\u0007\u0010´\u0002\u001a\u00020\u001c2\u0007\u0010µ\u0002\u001a\u00020\u001c2\n\u0010·\u0002\u001a\u0005\u0018\u00010¶\u0002H\u0016J\u0012\u0010º\u0002\u001a\u00020\u00072\u0007\u0010¹\u0002\u001a\u00020tH\u0016J\u0012\u0010¼\u0002\u001a\u00020\u00072\u0007\u0010»\u0002\u001a\u00020\u0005H\u0016J\u0013\u0010½\u0002\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016R*\u0010¿\u0002\u001a\u00030¾\u00028\u0000@\u0000X\u0080.¢\u0006\u0018\n\u0006\b¿\u0002\u0010À\u0002\u001a\u0006\bÁ\u0002\u0010Â\u0002\"\u0006\bÃ\u0002\u0010Ä\u0002R)\u0010Ë\u0002\u001a\u00030Å\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b\u0016\u0010Æ\u0002\u001a\u0006\bÇ\u0002\u0010È\u0002\"\u0006\bÉ\u0002\u0010Ê\u0002R \u0010Ï\u0002\u001a\n\u0012\u0005\u0012\u00030Í\u00020Ì\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b6\u0010Î\u0002R\u001a\u0010Ñ\u0002\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b>\u0010Ð\u0002R*\u0010Ó\u0002\u001a\u00030Ò\u00028\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\bÓ\u0002\u0010Ô\u0002\u001a\u0006\bÕ\u0002\u0010Ö\u0002\"\u0006\b×\u0002\u0010Ø\u0002R*\u0010Ú\u0002\u001a\u00030Ù\u00028\u0000@\u0000X\u0080.¢\u0006\u0018\n\u0006\bÚ\u0002\u0010Û\u0002\u001a\u0006\bÜ\u0002\u0010Ý\u0002\"\u0006\bÞ\u0002\u0010ß\u0002R\u001b\u0010â\u0002\u001a\u0005\u0018\u00010à\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bA\u0010á\u0002R(\u0010ä\u0002\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bB\u0010ã\u0002\u001a\u0006\bä\u0002\u0010å\u0002\"\u0006\bæ\u0002\u0010ç\u0002¨\u0006é\u0002"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewFocusChangeListener;", "Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "Landroid/os/Bundle;", C1126e.f7693h, "", "J1", "u1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "I0", "F1", "y0", "editorBundle", "z0", "V0", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "a1", "E1", "k1", "d1", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", OcrValues.LANG_ITALIAN, "g2", "Landroid/view/ViewGroup;", "sideBarLayout", "", "topBottomMargin", "h2", "", "isDragging", "dockType", "e2", "j1", "A0", "c1", "w1", "forceHide", "A1", "b2", "Lcom/onyx/android/sdk/device/bean/NotchType;", "notchType", "m2", "Landroid/view/View;", "topView", "n2", "i1", "p1", "visibility", "Z1", "j2", "N1", "e1", "V1", "W0", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "N0", "X0", "Y1", "f1", "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;", "sidebarLayout", "g1", "h1", "b1", "Y0", "l1", "m1", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "type", "K0", "left", "L0", "P1", "R1", "show", "L1", "f2", "i2", "showSideBar", "sideBarWidth", "B0", "D0", "C0", "Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;", "F0", "R0", "O0", "", "leftSideWidth", "rightSideWidth", "U1", "X1", "W1", "Landroid/graphics/PointF;", "M0", "C1", "S1", "Landroidx/fragment/app/Fragment;", "G0", "Lkotlin/Pair;", "E0", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "noteTabData", "t0", FirebaseInstallationServiceClient.f35986m, "x1", "z1", "J0", "T1", "u0", "v0", "a2", "", "activeProviderName", "l2", "y1", "S0", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "anim", "o2", "T0", "hide", "U0", "k2", "B1", "I1", "x0", EditorConstants.ARGS_DOC_ID, "K1", "d2", "Lio/reactivex/rxjava3/core/Observable;", "c2", "tabData", "q1", "slideBarType", "n1", "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", "editorViewDragLayout", "D1", "H0", "H1", "eventId", "G1", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "P0", "Q0", "s1", "onCreate", "Landroid/content/Context;", "context", "onAttach", "onDetach", "editorBundle$note_overseasRelease", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "getSelectionMenuView$note_overseasRelease", "()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "getSelectionMenuView", "Landroid/view/LayoutInflater;", "inflater", gon.f71270W, "onCreateView", "view", "onViewCreated", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBox$note_overseasRelease", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBox", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;", NotificationCompat.CATEGORY_EVENT, "onCloseSideBarEvent", "onDestroyView", "onPause", "onStop", "onDestroy", "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;", "onActivationStateChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionMenuEvent;", "onHideSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeHandlerChangedEvent;", "onShapeHandlerChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextToolViewVisibleChangeEvent;", "onTextInputToolViewVisibleChangeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;", "onQuitNoteDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;", "onScrollBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;", "onScaleBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;", "onRequestPermissionEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;", "onMoveActivityToBackEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "onChangeTouchModeEvent", "closeSelectionMenu$note_overseasRelease", "()V", "closeSelectionMenu", "hideSelectionMenu$note_overseasRelease", "hideSelectionMenu", "Landroid/graphics/RectF;", "getSelectionMenuDisplayRect$note_overseasRelease", "()Landroid/graphics/RectF;", "getSelectionMenuDisplayRect", "Lcom/onyx/android/sdk/universal/editor/events/note/BeforeChangePenArgsEvent;", "onBeforeChangePenEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;", "onChangePenArgsEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeRecoverEvent;", "onShapeToolTypeRecoverEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;", "onActivateDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;", "onShowTagShapePopupEvent", "Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;", "onOpenSlideBarEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupEvent;", "onShowQuotePopupEvent", "Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;", "onChangeDockTypeEvent", "Lcom/onyx/galaxy/note/editor/event/ShapeToolbarChangeEvent;", "onShapeToolbarChangeEvent", "switchToLastTool$note_overseasRelease", "switchToLastTool", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "toolType", "ensureSwitchUserTool$note_overseasRelease", "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V", "ensureSwitchUserTool", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;", "onChangeSubShapeTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;", "onSwitchExcerptTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;", "onGlobalDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", "onGDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesToInsertPagesEvent;", "onPickImagesToInsertPagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/PickFileToInsertPagesEvent;", "onPickFileToInsertPagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;", "onChangeEraseTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;", "onContentViewSizeChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;", "onNoteOverviewStartActivateDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewCloseDocumentEvent;", "onNoteOverviewCloseDocumentEvent", "Landroid/graphics/Rect;", "getEditorContainerRect$note_overseasRelease", "()Landroid/graphics/Rect;", "getEditorContainerRect", "", "getEditorContainerLocation$note_overseasRelease", "()[I", "getEditorContainerLocation", "getRootLocation$note_overseasRelease", "getRootLocation", "Lcom/onyx/android/sdk/universal/editor/events/note/PickInsertImageShapesEvent;", "onPickerInsertImageShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;", "onUserNoteListImportedEvent", Keywords.FUNC_LAST_STRING, Keywords.FUNC_CURRENT_STRING, "onEditorFocusChanged", "Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;", "onFocusedEditorDocSwitched", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitPendingHandlerEvent;", "onQuitPendingHandlerEvent", "Lcom/onyx/galaxy/note/editor/event/ShowShortcutBarCustomPopupEvent;", "onShowShortcutBarCustomPopupEvent", "Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;", "onMemberChargeEvent", "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;", "onCloudStorageRefreshTokenFailedEvent", "Lcom/onyx/galaxy/note/receiver/ScreenOffEvent;", "onScreenOffEvent", "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;", "onScreenOnEvent", "Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;", "onReLockNoteEvent", "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;", "onCheckEditorAutoReLockEvent", "Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;", "onEditNoteEncryptionChangedEvent", "Lcom/onyx/galaxy/note/editor/event/UpdateAllLockedNotePasswordEvent;", "onUpdateAllLockedNotePasswordEvent", "goneView", "exitSplitScreen", "editorView", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "position", "splitScreen", "getSplitScreenSize", "isEnabledSplitScreen", "onResume", "getEditorViewOffsetLocation", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "id", "onDown", "outState", "onSaveInstanceState", "onViewStateRestored", "Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;", "getBinding$note_overseasRelease", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;", "setBinding$note_overseasRelease", "(Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;)V", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "getEditorBundleManager$note_overseasRelease", "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "setEditorBundleManager$note_overseasRelease", "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V", "editorBundleManager", "", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "Ljava/util/List;", "globalEventHandlers", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;", "viewModel", "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;", "getViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;", "setViewModel", "(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;)V", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "getPenViewModel$note_overseasRelease", "()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "setPenViewModel$note_overseasRelease", "(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/view/View$OnLayoutChangeListener;", "windowChangeListener", Constants.HASIDCALL_INDEX_SIG, "isSideLayoutAnim", Constants.BOOLEAN_VALUE_SIG, "setSideLayoutAnim", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteScribbleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,2309:1\n1855#2,2:2310\n1855#2,2:2328\n254#3:2312\n254#3:2313\n256#3,2:2314\n254#3:2319\n254#3:2320\n254#3:2321\n254#3:2322\n254#3:2323\n254#3:2324\n254#3:2325\n254#3:2326\n254#3:2327\n256#3,2:2330\n254#3:2332\n254#3:2333\n256#3,2:2335\n1#4:2316\n1282#5,2:2317\n36#6:2334\n*S KotlinDebug\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment\n*L\n374#1:2310,2\n1468#1:2328,2\n583#1:2312\n699#1:2313\n702#1:2314,2\n1040#1:2319\n1183#1:2320\n1196#1:2321\n1197#1:2322\n1209#1:2323\n1232#1:2324\n1233#1:2325\n1246#1:2326\n1247#1:2327\n1575#1:2330,2\n1880#1:2332\n1884#1:2333\n1009#1:2335,2\n982#1:2317,2\n2303#1:2334\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteScribbleFragment extends BaseFragment implements EditorViewFocusChangeListener, SplitScreenListener, EditorViewDownListener {
    public FragmentNoteScribbleBinding binding;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public EditorBundleManager editorBundleManager;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public List<EventHandler> globalEventHandlers;

    /* renamed from: f1, reason: from kotlin metadata */
    @Nullable
    public SyncNoteModel noteModel;

    /* renamed from: g1, reason: from kotlin metadata */
    @Nullable
    public View.OnLayoutChangeListener windowChangeListener;

    /* renamed from: h1, reason: from kotlin metadata */
    public boolean isSideLayoutAnim;
    public PenViewModel penViewModel;
    public NoteScribbleViewModel viewModel;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SlideBarType.values().length];
            try {
                iArr2[SlideBarType.SLIDE_OUTLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[SlideBarType.SLIDE_MORE_SETTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$a */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12206a implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59156a;

        public C12206a(ContentApiSubscriber contentApiSubscriber) {
            this.f59156a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull AtomicReference<Intent> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59156a.handleScreenCaptureResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59156a, ContentApiSubscriber.class, "handleScreenCaptureResult", "handleScreenCaptureResult(Ljava/util/concurrent/atomic/AtomicReference;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$b */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12207b implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59161a;

        public C12207b(ContentApiSubscriber contentApiSubscriber) {
            this.f59161a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull AtomicReference<Intent> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59161a.handleScreenBitmapCaptureResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59161a, ContentApiSubscriber.class, "handleScreenBitmapCaptureResult", "handleScreenBitmapCaptureResult(Ljava/util/concurrent/atomic/AtomicReference;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$c */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12208c implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59162a;

        public C12208c(ContentApiSubscriber contentApiSubscriber) {
            this.f59162a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull Intent p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59162a.handleImageTakeResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59162a, ContentApiSubscriber.class, "handleImageTakeResult", "handleImageTakeResult(Landroid/content/Intent;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$d */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12209d implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59164a;

        public C12209d(ContentApiSubscriber contentApiSubscriber) {
            this.f59164a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59164a.handleImageTakeResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59164a, ContentApiSubscriber.class, "handleImageTakeResult", "handleImageTakeResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$e */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12210e implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59165a;

        public C12210e(ContentApiSubscriber contentApiSubscriber) {
            this.f59165a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59165a.handleImageStickerTakeResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59165a, ContentApiSubscriber.class, "handleImageStickerTakeResult", "handleImageStickerTakeResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$f */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12211f implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59166a;

        public C12211f(ContentApiSubscriber contentApiSubscriber) {
            this.f59166a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59166a.handleInsertFilePageTakeResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59166a, ContentApiSubscriber.class, "handleInsertFilePageTakeResult", "handleInsertFilePageTakeResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$g */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12212g implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59167a;

        public C12212g(ContentApiSubscriber contentApiSubscriber) {
            this.f59167a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59167a.handleInsertImagePageTakeResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59167a, ContentApiSubscriber.class, "handleInsertImagePageTakeResult", "handleInsertImagePageTakeResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$h */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12213h implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ ContentApiSubscriber f59168a;

        public C12213h(ContentApiSubscriber contentApiSubscriber) {
            this.f59168a = contentApiSubscriber;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull Intent p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f59168a.handleInsertPicturePageTakeResult(p0);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, this.f59168a, ContentApiSubscriber.class, "handleInsertPicturePageTakeResult", "handleInsertPicturePageTakeResult(Landroid/content/Intent;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$i */
    /* loaded from: classes9.dex */
    public static final class C12215i<T> implements Consumer {
        public C12215i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<GuideInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleFragment.this.m46956N0(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$j */
    /* loaded from: classes9.dex */
    public static final class C12216j<T> implements Consumer {
        public C12216j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteTabData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleFragment.this.m47009q1(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$k */
    /* loaded from: classes9.dex */
    public static final class C12217k<T, R> implements io.reactivex.rxjava3.functions.Function {
        public C12217k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<DocumentBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FilePickerArgs filePickerArgs = PickerManager.INSTANCE.getFilePickerArgs();
            if (filePickerArgs == null) {
                return Observable.just(NoteScribbleFragment.this);
            }
            return new InsertPageFromFileAction(new WeakReference(NoteScribbleFragment.this.requireActivity()), it2, filePickerArgs.getInsertPageIndex(), false).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$l */
    /* loaded from: classes9.dex */
    public static final class C12218l<T> implements Consumer {
        public C12218l() {
        }

        /* renamed from: a */
        public final void m47043a(boolean z) {
            NoteScribbleFragment noteScribbleFragment = NoteScribbleFragment.this;
            noteScribbleFragment.m46986d2(EditorBundleKt.docId(noteScribbleFragment.editorBundle$note_overseasRelease()));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m47043a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$m */
    /* loaded from: classes9.dex */
    public static final class C12219m<T> implements Consumer {
        public C12219m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleFragment.this.m46979a1(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$n */
    /* loaded from: classes9.dex */
    public static final class C12220n<T, R> implements io.reactivex.rxjava3.functions.Function {
        public C12220n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteTabData>> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteScribbleFragment.this.getViewModel().loadTabNoteList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$o */
    /* loaded from: classes9.dex */
    public static final class C12221o<T> implements Consumer {
        public C12221o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteTabData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleFragment.this.m46970V0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$p */
    /* loaded from: classes9.dex */
    public static final class C12222p implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f59189a;

        public C12222p(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f59189a = function;
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
            return this.f59189a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f59189a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$q */
    /* loaded from: classes9.dex */
    public static final class C12223q<T> implements Consumer {
        public C12223q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleFragment.this.noteModel = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$r */
    /* loaded from: classes9.dex */
    public static final class C12224r<T, R> implements io.reactivex.rxjava3.functions.Function {
        public C12224r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteTabData>> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NoteScribbleFragment.this.getViewModel().loadTabNoteList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$s */
    /* loaded from: classes9.dex */
    public static final class C12225s<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f59193f;

        public C12225s(String str) {
            this.f59193f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteTabData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteScribbleFragment.this.m47009q1(NoteScribbleViewModel.INSTANCE.findByDocId(it2, this.f59193f));
        }
    }

    public NoteScribbleFragment() {
        List<EventHandler> mutableListOf;
        EditorBundleManager editorBundleManager = new EditorBundleManager(this, this, this);
        this.editorBundleManager = editorBundleManager;
        CounterBundle.Companion companion = CounterBundle.INSTANCE;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalEventHandler(editorBundleManager), new QuickFunctionEventHandler(this), new PenBoxEventHandler(this), new TextBoxKeyboardEventHandler(this), new SplitScreenEventHandler(this), new NoteCounterUIHandler(companion.getDefaultBundle(), this), new CounterAlarmHandler(companion.getDefaultBundle(), this), new SystemBarEventHandler(this));
        this.globalEventHandlers = mutableListOf;
    }

    /* renamed from: M1 */
    public static final void m46914M1(boolean z, NoteScribbleFragment this$0, SlideBarType type, NoteOutlineDragContainer sideBarLayout) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(type, "$type");
        Intrinsics.checkNotNullParameter(sideBarLayout, "$sideBarLayout");
        if (z && this$0.getBinding$note_overseasRelease().shapeAndTool.getToolDragView().isToolbarAlignedWithSidebar(type)) {
            this$0.m46968U0(false);
        }
        this$0.m46948I1();
        EditorBundleKt.postEvent(this$0.editorBundle$note_overseasRelease(), new VisiblePenBoxEvent(type, true));
        this$0.m46996i2(sideBarLayout);
        this$0.m47008p1();
    }

    /* renamed from: O1 */
    public static final void m46915O1(final NoteScribbleFragment this$0, final List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        FragmentKt.requireContextSafety(this$0, new Function1<Context, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$showTabLayoutGuide$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Context context) {
                invoke2(context);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                if (ViewKt.isVisible(NoteScribbleFragment.this.getBinding$note_overseasRelease().guideViewTab)) {
                    GuideInfo guideInfo = it2.get(0);
                    DockType dockType = DockType.TOP;
                    final NoteScribbleFragment noteScribbleFragment = NoteScribbleFragment.this;
                    GuideTipsPopup guideTipsPopup = new GuideTipsPopup(context, guideInfo, dockType, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$showTabLayoutGuide$2$1.1
                        {
                            super(1);
                        }

                        public final void invoke(boolean z) {
                            NoteScribbleFragment.this.getBinding$note_overseasRelease().tabLayout.showGuideDivider(z);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                            invoke(bool.booleanValue());
                            return Unit.INSTANCE;
                        }
                    });
                    View guideViewTab = NoteScribbleFragment.this.getBinding$note_overseasRelease().guideViewTab;
                    Intrinsics.checkNotNullExpressionValue(guideViewTab, "guideViewTab");
                    GuideTipsPopup.show$default(guideTipsPopup, guideViewTab, null, 2, null);
                }
            }
        });
    }

    /* renamed from: Q1 */
    public static final void m46916Q1(NoteScribbleFragment this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        SlideBarType slideBarType = SlideBarType.SLIDE_MORE_SETTING;
        NoteOutlineDragContainer m46951K0 = this$0.m46951K0(slideBarType);
        m46951K0.setVisibility(0);
        this$0.m46965S1(true, m46951K0, slideBarType);
        Object tag = m46951K0.getTag();
        if (tag instanceof NoteSettingMoreFragment) {
            ShortcutBarData shortcutBarData = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData();
            ShortcutType shortcutType = ShortcutType.SHORTCUT_OTHER_SETTINGS;
            FunctionToolLayout funcLayout = this$0.getBinding$note_overseasRelease().funcLayout;
            Intrinsics.checkNotNullExpressionValue(funcLayout, "funcLayout");
            ((NoteSettingMoreFragment) tag).showPageWhiteSpaceGuide((GuideInfo) it2.get(0), shortcutBarData.isLeftSideShortcut(shortcutType, ViewExtKt.isLayoutDirectionRtl(funcLayout)) ? DockType.LEFT : DockType.RIGHT);
        }
    }

    /* renamed from: Z0 */
    public static final void m46917Z0(NoteScribbleFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTabLayout noteTabLayout = this$0.getBinding$note_overseasRelease().tabLayout;
        Intrinsics.checkNotNull(view);
        noteTabLayout.showManagementPopup(view);
    }

    /* renamed from: o1 */
    public static final void m46922o1(NoteScribbleFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47008p1();
    }

    /* renamed from: p2 */
    public static /* synthetic */ void m46924p2(NoteScribbleFragment noteScribbleFragment, EditorTouchMode editorTouchMode, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            editorTouchMode = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null);
        }
        if ((i & 2) != 0) {
            z = false;
        }
        noteScribbleFragment.m47007o2(editorTouchMode, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r1 */
    public static final void m46927r1(NoteScribbleFragment this$0, RequestPermissionEvent event, boolean z, List list, List deniedList) {
        Object first;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(list, "<anonymous parameter 1>");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        if (z) {
            EditorBundleKt.postEvent(this$0.editorBundle$note_overseasRelease(), event.getNextEvent());
            return;
        }
        Debug.INSTANCE.m32037d("These permissions are denied: " + deniedList);
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) deniedList);
        Intrinsics.checkNotNullExpressionValue(first, "first(...)");
        ActivityKt.shouldShowGuideToPermissionSettings(requireActivity, first);
    }

    /* renamed from: t1 */
    public static final void m46929t1(NoteScribbleFragment this$0, SyncNoteModel it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.noteModel = it2;
    }

    /* renamed from: w0 */
    public static final void m46930w0(NoteScribbleFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding$note_overseasRelease().inputTextLayout.destroy();
        this$0.m46981b1();
    }

    /* renamed from: A0 */
    public final void m46931A0() {
        GlobalBundle.INSTANCE.postEvent(new SystemBarWindowInsetsEvent());
    }

    /* renamed from: A1 */
    public final void m46932A1(boolean forceHide) {
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new ReactivePenBoxEvent(forceHide, false, 2, null));
    }

    /* renamed from: B0 */
    public final void m46933B0(boolean showSideBar, int sideBarWidth) {
        getBinding$note_overseasRelease().shapeAndTool.getBinding().flShapeContent.animate().setDuration(300L).translationX(showSideBar ? m46937D0(sideBarWidth) : 0);
    }

    /* renamed from: B1 */
    public final void m46934B1() {
        SplitScreenLayoutBinding binding = getBinding$note_overseasRelease().shapeAndTool.getBinding().splitScreen.getBinding();
        binding.editorViewDragLayout.refreshPageScrollerLayout();
        binding.editorViewDragLayout2.refreshPageScrollerLayout();
    }

    /* renamed from: C0 */
    public final void m46935C0(boolean show, NoteOutlineDragContainer sidebarLayout, SlideBarType type) {
        if (show) {
            m46965S1(true, sidebarLayout, type);
        }
        Slide slide = sidebarLayout.getId() == C10651R.id.left_side_bar_layout ? new Slide(GravityCompat.START) : new Slide(8388613);
        slide.setDuration(300L);
        slide.addTarget(sidebarLayout);
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new FunctionToolPopupHideEvent());
        slide.addListener(new NoteScribbleFragment$animateSideBar$1(show, this, sidebarLayout, type));
        ViewParent parent = sidebarLayout.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        TransitionManager.beginDelayedTransition((ViewGroup) parent, slide);
        this.isSideLayoutAnim = true;
        ViewKt.setViewVisibleOrGone(sidebarLayout, show);
    }

    /* renamed from: C1 */
    public final void m46936C1() {
        Rect globalVisibleRect = ViewKt.globalVisibleRect(getBinding$note_overseasRelease().shapeAndTool.getToolDragView().getToolContainer());
        NoteOutlineDragContainer noteOutlineDragContainer = getBinding$note_overseasRelease().leftSideBarLayout;
        if (!ViewKt.isVisible(noteOutlineDragContainer)) {
            noteOutlineDragContainer = null;
        }
        Rect rect = (Rect) AnyKt.getOrElse(noteOutlineDragContainer != null ? ViewKt.globalVisibleRect(noteOutlineDragContainer) : null, new Function0<Rect>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$refreshScrollerParams$leftSideBarRect$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Rect invoke() {
                return new Rect();
            }
        });
        NoteOutlineDragContainer noteOutlineDragContainer2 = getBinding$note_overseasRelease().rightSideBarLayout;
        if (!ViewKt.isVisible(noteOutlineDragContainer2)) {
            noteOutlineDragContainer2 = null;
        }
        DocCollectionBundle.INSTANCE.postEvent(new ChangeScrollerConfigEvent(Boolean.FALSE, Integer.valueOf(globalVisibleRect.width()), (Rect) AnyKt.getOrElse(noteOutlineDragContainer2 != null ? ViewKt.globalVisibleRect(noteOutlineDragContainer2) : null, new Function0<Rect>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$refreshScrollerParams$rightSideBarRect$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Rect invoke() {
                return new Rect();
            }
        }), rect, Float.valueOf(getBinding$note_overseasRelease().shapeAndTool.getBinding().flShapeContent.getTranslationX())));
    }

    /* renamed from: D0 */
    public final int m46937D0(int sideBarWidth) {
        return IntKt.safeDivide(sideBarWidth, ResManager.INSTANCE.getInteger(C10651R.integer.editor_offset_ratio_when_sidebar_on));
    }

    /* renamed from: D1 */
    public final void m46938D1(EditorBundle editorBundle, EditorViewDragLayout editorViewDragLayout) {
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler("document", new DocumentEventHandler(editorBundle));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler("scale", new ScaleEventHandler(editorBundle));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler("page", new PageEventHandler(editorBundle, editorViewDragLayout));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.STATISTIC, new StatisticEventHandler(editorBundle));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.OPERATION_TIP, new OperationTipEventHandler(editorBundle, new NoteScribbleFragment$registerAppEventHandler$1(this)));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.SHAPES_LOCATION_BAR, new ShapesLocationBarEventHandler(editorBundle, editorViewDragLayout.getShapesLocationBar()));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.SHAPES_SELECTION, new ShapesSelectionEventHandler(editorBundle, this));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.LONG_PRESS, new LongPressEventHandler(editorBundle, this));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.ERASE, new EraseEventHandler(editorBundle, this));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.RULER, new RulerHandler(editorBundle, this));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.BEAUTIFY, new InkBeautifyEventHandler(editorBundle, this));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler("template", new TemplateEventHandler(editorBundle, this));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.SYNC, new EditorSyncEventHandler(this.editorBundleManager, editorBundle));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.EDITOR_ENCRYPTION, new EditorAutoReLockHandler(editorBundle, editorViewDragLayout.getEditorViewLockLayout(), getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout()));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.MAGNIFIER, new MagnifierEventHandler(this, editorViewDragLayout.getEditorViewDragLayoutBinding(), editorBundle, null, 8, null));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler("stash", new StashEventHandler(editorBundle));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.TEXT_INDEX, new TextIndexEventHandler(editorBundle));
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.MOUSE, new MouseEventHandler(editorBundle, editorViewDragLayout));
    }

    /* renamed from: E0 */
    public final Pair<Integer, Integer> m46939E0(NoteOutlineDragContainer sidebarLayout, SlideBarType type) {
        if (ViewKt.isVisible(sidebarLayout)) {
            return sidebarLayout.getId() == C10651R.id.right_side_bar_layout ? type == SlideBarType.SLIDE_OUTLINE ? new Pair<>(Integer.valueOf(C10651R.anim.anim_side_bar_left_in), Integer.valueOf(C10651R.anim.anim_side_bar_right_out)) : new Pair<>(Integer.valueOf(C10651R.anim.anim_side_bar_right_in), Integer.valueOf(C10651R.anim.anim_side_bar_right_out)) : type == SlideBarType.SLIDE_OUTLINE ? new Pair<>(Integer.valueOf(C10651R.anim.anim_side_bar_right_out), Integer.valueOf(C10651R.anim.anim_side_bar_left_in)) : new Pair<>(Integer.valueOf(C10651R.anim.anim_side_bar_left_in), Integer.valueOf(C10651R.anim.anim_side_bar_right_out));
        }
        return null;
    }

    /* renamed from: E1 */
    public final void m46940E1() {
        EditorBundleKt.register(editorBundle$note_overseasRelease(), this);
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        GlobalBundle.INSTANCE.register(this);
        AccountDataBundle.INSTANCE.register(this);
    }

    /* renamed from: F0 */
    public final EditorSideBarInfo m46941F0() {
        NoteOutlineDragContainer noteOutlineDragContainer = getBinding$note_overseasRelease().leftSideBarLayout;
        if (!ViewKt.isVisible(noteOutlineDragContainer)) {
            noteOutlineDragContainer = null;
        }
        RectF rectF = (RectF) AnyKt.getOrElse(noteOutlineDragContainer != null ? ViewKt.globalVisibleRectF(noteOutlineDragContainer) : null, new Function0<RectF>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$createEditorSideBarInfo$leftSideBarRect$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RectF invoke() {
                return new RectF();
            }
        });
        NoteOutlineDragContainer noteOutlineDragContainer2 = getBinding$note_overseasRelease().rightSideBarLayout;
        if (!ViewKt.isVisible(noteOutlineDragContainer2)) {
            noteOutlineDragContainer2 = null;
        }
        RectF rectF2 = (RectF) AnyKt.getOrElse(noteOutlineDragContainer2 != null ? ViewKt.globalVisibleRectF(noteOutlineDragContainer2) : null, new Function0<RectF>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$createEditorSideBarInfo$rightSideBarRect$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RectF invoke() {
                return new RectF();
            }
        });
        float translationX = getBinding$note_overseasRelease().shapeAndTool.getBinding().flShapeContent.getTranslationX();
        FrameLayout flShapeContent = getBinding$note_overseasRelease().shapeAndTool.getBinding().flShapeContent;
        Intrinsics.checkNotNullExpressionValue(flShapeContent, "flShapeContent");
        return new EditorSideBarInfo(translationX, ViewKt.globalVisibleRectF(flShapeContent), rectF2, rectF);
    }

    /* renamed from: F1 */
    public final void m46942F1() {
        GlobalBundle.INSTANCE.postEvent(new RegisterKeyboardHelperEvent());
    }

    /* renamed from: G0 */
    public final Fragment m46943G0(final NoteOutlineDragContainer sidebarLayout, final SlideBarType type) {
        if (type == SlideBarType.SLIDE_OUTLINE) {
            NoteOutlineFragment noteOutlineFragment = new NoteOutlineFragment();
            noteOutlineFragment.setEditBundle(this.editorBundleManager.focusEditorBundle());
            noteOutlineFragment.setDocManagerBundle(m46947I0());
            noteOutlineFragment.setCurrentVisibleLevel(sidebarLayout.getCurrentLevel());
            noteOutlineFragment.setCloseAction(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$createFragment$noteOutlineFragment$1$1
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
                    NoteScribbleFragment.this.m46954L1(false, sidebarLayout, type);
                    NoteScribbleFragment.this.m46944G1(OnyxStatisticConstant.ID_CLICK_SIDEBAR_CLOSE);
                }
            });
            return noteOutlineFragment;
        }
        NoteTabData selectedItem = getBinding$note_overseasRelease().tabLayout.getSelectedItem();
        if (selectedItem == null) {
            return null;
        }
        NoteSettingMoreFragment noteSettingMoreFragment = new NoteSettingMoreFragment();
        noteSettingMoreFragment.setEditBundle(editorBundle$note_overseasRelease());
        noteSettingMoreFragment.setDocManagerBundle(m46947I0());
        SyncNoteModel syncNoteModel = this.noteModel;
        Intrinsics.checkNotNull(syncNoteModel);
        noteSettingMoreFragment.setSyncNoteModel(syncNoteModel);
        noteSettingMoreFragment.setNoteTabData(selectedItem);
        noteSettingMoreFragment.setCloseAction(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$1
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
                NoteScribbleFragment.this.m46954L1(false, sidebarLayout, type);
            }
        });
        noteSettingMoreFragment.setListener(new NoteSettingMoreFragment.NoteDocMoreSettingsListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$createFragment$noteSettingMoreFragment$1$2
            @Override // com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText.NoteTitleChangedListener
            public void onFocusChanged(boolean z) {
                NoteSettingMoreFragment.NoteDocMoreSettingsListener.DefaultImpls.onFocusChanged(this, z);
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText.NoteTitleChangedListener
            public void onTitleChanged(@NotNull String newTitle) {
                Intrinsics.checkNotNullParameter(newTitle, "newTitle");
                StatisticsBundle.INSTANCE.postEvent(new StatisticsEditNoteNameEvent(EditNoteNameFrom.OTHER_SETTING));
                NoteScribbleFragment.this.getBinding$note_overseasRelease().tabLayout.notifyDataSetChanged();
            }
        });
        return noteSettingMoreFragment;
    }

    /* renamed from: G1 */
    public final void m46944G1(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle$note_overseasRelease()));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: H0 */
    public final void m46945H0() {
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new DismissShapeSelectionStyleMenuEvent());
    }

    /* renamed from: H1 */
    public final void m46946H1(boolean show, SlideBarType type) {
        m46944G1(type == SlideBarType.SLIDE_OUTLINE ? OnyxStatisticConstant.ID_CLICK_SIDEBAR : OnyxStatisticConstant.ID_CLICK_DOCSSETTING);
    }

    /* renamed from: I0 */
    public final EditorBundle m46947I0() {
        return DocCollectionBundle.INSTANCE.docManagerBundle();
    }

    /* renamed from: I1 */
    public final void m46948I1() {
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new ResetPenBoxPositionEvent());
    }

    /* renamed from: J0 */
    public final void m46949J0() {
        m47018x1(editorBundle$note_overseasRelease());
        m47022z1(editorBundle$note_overseasRelease());
        if (this.editorBundleManager.isEnabledSplitScreen()) {
            EditorBundle unfocusedEditorBundle = this.editorBundleManager.unfocusedEditorBundle();
            m47018x1(unfocusedEditorBundle);
            m47022z1(unfocusedEditorBundle);
        }
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new RestoreUserProviderEvent());
    }

    /* renamed from: J1 */
    public final void m46950J1(Bundle savedInstanceState) {
        getViewModel().setTakePicturePath(savedInstanceState.getString(ContentApiSubscriber.KEY_TAKE_PICTURE, ""));
    }

    /* renamed from: K0 */
    public final NoteOutlineDragContainer m46951K0(SlideBarType type) {
        return m46953L0(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData().isLeftSideShortcut(SlideBarTypeKt.toShortcutType(type), false));
    }

    /* renamed from: K1 */
    public final void m46952K1(String docId) {
        getBinding$note_overseasRelease().tabLayout.setSelectedItem(docId);
        if (getBinding$note_overseasRelease().tabLayout.getSelectedItem() == null) {
            m46986d2(docId);
        }
    }

    /* renamed from: L0 */
    public final NoteOutlineDragContainer m46953L0(boolean left) {
        if (left) {
            NoteOutlineDragContainer noteOutlineDragContainer = getBinding$note_overseasRelease().leftSideBarLayout;
            Intrinsics.checkNotNull(noteOutlineDragContainer);
            return noteOutlineDragContainer;
        }
        NoteOutlineDragContainer noteOutlineDragContainer2 = getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNull(noteOutlineDragContainer2);
        return noteOutlineDragContainer2;
    }

    /* renamed from: L1 */
    public final void m46954L1(boolean show, final NoteOutlineDragContainer sideBarLayout, final SlideBarType type) {
        if (this.isSideLayoutAnim) {
            return;
        }
        boolean z = (sideBarLayout.getVisibility() == 0) && show;
        final boolean isCurTouchModeSupportEdit = TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit();
        if (!z && isCurTouchModeSupportEdit) {
            if (getBinding$note_overseasRelease().shapeAndTool.getToolDragView().isToolbarAlignedWithSidebar(type)) {
                m46968U0(true);
            }
            EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new VisiblePenBoxEvent(type, false));
        }
        if (show) {
            sideBarLayout.reset();
            sideBarLayout.setEnableDrag(type == SlideBarType.SLIDE_OUTLINE);
        }
        m46935C0(show, sideBarLayout, type);
        Integer valueOf = Integer.valueOf(sideBarLayout.getLayoutParams().width);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        int intValue = ((Number) AnyKt.getOrElse(valueOf, new Function0<Integer>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$showSideBarLayout$width$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getDimensionPixelSize(C10651R.dimen.side_bar_layout_width));
            }
        })).intValue();
        if (sideBarLayout.getId() == C10651R.id.right_side_bar_layout) {
            intValue *= -1;
        }
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        if (ViewExtKt.isLayoutDirectionRtl(leftSideBarLayout)) {
            intValue *= -1;
        }
        m46933B0(show, intValue);
        ViewKt.postDelayedLastTaskWithTag(sideBarLayout, new Runnable() { // from class: com.sunia.HTREnginev2.l1k
            @Override // java.lang.Runnable
            public final void run() {
                NoteScribbleFragment.m46914M1(isCurTouchModeSupportEdit, this, type, sideBarLayout);
            }
        }, 500L, C10651R.id.tag_sidebar_animation_done_runnable);
        m46990f2(sideBarLayout);
    }

    /* renamed from: M0 */
    public final PointF m46955M0(float leftSideWidth, float rightSideWidth) {
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        if (!(leftSideBarLayout.getVisibility() == 0)) {
            leftSideWidth = 0.0f;
        }
        NoteOutlineDragContainer rightSideBarLayout = getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
        if (!(rightSideBarLayout.getVisibility() == 0)) {
            rightSideWidth = 0.0f;
        }
        NoteOutlineDragContainer leftSideBarLayout2 = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout2, "leftSideBarLayout");
        if (ViewExtKt.isLayoutDirectionRtl(leftSideBarLayout2)) {
            float f = rightSideWidth;
            rightSideWidth = leftSideWidth;
            leftSideWidth = f;
        }
        return new PointF(leftSideWidth, rightSideWidth);
    }

    /* renamed from: N0 */
    public final void m46956N0(List<GuideInfo> it2) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
        final GuideInfo guideInfo = (GuideInfo) firstOrNull;
        if (guideInfo != null) {
            if (!guideInfo.getEnable()) {
                guideInfo = null;
            }
            if (guideInfo != null) {
                FragmentKt.requireContextSafety(this, new Function1<Context, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$handleDragToolGuidePopup$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Context context) {
                        invoke2(context);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Context it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        View guideView = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getToolDragView().getBinding().guideView;
                        Intrinsics.checkNotNullExpressionValue(guideView, "guideView");
                        DockType dockType = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getToolDragView().getDockType();
                        GuideInfo guideInfo2 = guideInfo;
                        final NoteScribbleFragment noteScribbleFragment = NoteScribbleFragment.this;
                        GuideTipsPopup.show$default(new GuideTipsPopup(it3, guideInfo2, dockType, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$handleDragToolGuidePopup$1.1
                            {
                                super(1);
                            }

                            public final void invoke(boolean z) {
                                View guideDivider = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getToolDragView().getBinding().guideDivider;
                                Intrinsics.checkNotNullExpressionValue(guideDivider, "guideDivider");
                                guideDivider.setVisibility(z ? 0 : 8);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                invoke(bool.booleanValue());
                                return Unit.INSTANCE;
                            }
                        }), guideView, null, 2, null);
                    }
                });
            }
        }
    }

    /* renamed from: N1 */
    public final void m46957N1() {
        RxjavaKt.doOnNextIf(new LoadGuideInfoAction(GuideInfoConst.GUIDE_FUN_OPEN_TWO_NOTES, 500L).build(), new Function1<List<? extends GuideInfo>, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$showTabLayoutGuide$1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<GuideInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends GuideInfo> list) {
                return invoke2((List<GuideInfo>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.k1k
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteScribbleFragment.m46915O1(NoteScribbleFragment.this, (List) obj);
            }
        }).subscribe();
    }

    /* renamed from: O0 */
    public final void m46958O0() {
        float f = getBinding$note_overseasRelease().leftSideBarLayout.getLayoutParams().width;
        float f2 = getBinding$note_overseasRelease().rightSideBarLayout.getLayoutParams().width;
        m46975X1(f, f2);
        m46973W1(f, f2);
        m46969U1(f, f2);
    }

    /* renamed from: P0 */
    public final void m46959P0(ShortcutType type, boolean left) {
        if (type == ShortcutType.SHORTCUT_NOTE_OVERVIEW) {
            m46961Q0(left);
        }
    }

    /* renamed from: P1 */
    public final void m46960P1() {
        RxjavaKt.doOnNextIf(new LoadGuideInfoAction(GuideInfoConst.GUIDE_FUN_PAGE_WHITE_SPACE, 1000L).build(), new Function1<List<? extends GuideInfo>, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$showWhiteSpaceGuide$1
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<GuideInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf((it2.isEmpty() ^ true) && NoteScribbleFragment.this.isAdded());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends GuideInfo> list) {
                return invoke2((List<GuideInfo>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.g1k
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteScribbleFragment.m46916Q1(NoteScribbleFragment.this, (List) obj);
            }
        }).subscribe();
    }

    /* renamed from: Q0 */
    public final void m46961Q0(boolean left) {
        NoteOverviewFragment noteOverviewFragment = new NoteOverviewFragment();
        noteOverviewFragment.setLocationOnLeft(left);
        noteOverviewFragment.setEditorBundle(editorBundle$note_overseasRelease());
        noteOverviewFragment.setDragListener(new NoteOverviewFragment.DragListenerDelegateListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$handleNoteOverview$1

            /* renamed from: a, reason: from kotlin metadata */
            @Nullable
            public View editorView;

            @Nullable
            public final View getEditorView() {
                return this.editorView;
            }

            @Override // com.onyx.galaxy.note.editor.ui.NoteOverviewFragment.DragListenerDelegateListener
            public boolean onDragData(@NotNull DragEvent dragEvent) {
                Intrinsics.checkNotNullParameter(dragEvent, "dragEvent");
                RectF globalVisibleRectF = ViewKt.globalVisibleRectF(NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView());
                if (ViewKt.globalVisibleRectF(NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView2()).contains(dragEvent.getX(), dragEvent.getY())) {
                    this.editorView = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView2();
                } else if (globalVisibleRectF.contains(dragEvent.getX(), dragEvent.getY())) {
                    this.editorView = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView();
                }
                View view = this.editorView;
                if (view != null) {
                    return view.dispatchDragEvent(dragEvent);
                }
                return false;
            }

            public final void setEditorView(@Nullable View view) {
                this.editorView = view;
            }
        });
        noteOverviewFragment.show(getChildFragmentManager(), Reflection.getOrCreateKotlinClass(NoteOverviewFragment.class).getSimpleName());
    }

    /* renamed from: R0 */
    public final boolean m46962R0() {
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        if (leftSideBarLayout.getVisibility() == 0) {
            return true;
        }
        NoteOutlineDragContainer rightSideBarLayout = getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
        return rightSideBarLayout.getVisibility() == 0;
    }

    /* renamed from: R1 */
    public final void m46963R1(NoteOutlineDragContainer sidebarLayout, SlideBarType type) {
        getViewModel().setSlideBarType(type);
        boolean z = true;
        if (type != SlideBarType.SLIDE_OUTLINE ? (sidebarLayout.getTag() instanceof NoteSettingMoreFragment) : (sidebarLayout.getTag() instanceof NoteOutlineFragment)) {
            z = false;
        }
        m46946H1(z, type);
        m46954L1(z, sidebarLayout, type);
    }

    /* renamed from: S0 */
    public final void m46964S0() {
        ViewKt.setViewVisibleOrInvisible(getBinding$note_overseasRelease().inputTextLayout, false);
        ViewKt.setViewVisibleOrInvisible(getBinding$note_overseasRelease().inputTextLayout.getTextInputHelper().getTextBoxView(), false);
    }

    /* renamed from: S1 */
    public final void m46965S1(boolean show, NoteOutlineDragContainer sidebarLayout, SlideBarType type) {
        if (!isAdded()) {
            Debug.INSTANCE.m32059w(NoteScribbleFragment.class, "scribble fragment not been attached yet, or maybe is detached:" + isDetached(), new Object[0]);
            return;
        }
        if (isStateSaved()) {
            Debug.INSTANCE.m32059w(NoteScribbleFragment.class, "scribble fragment is state saved don't perform onSaveInstanceState", new Object[0]);
            return;
        }
        if (!show) {
            Object tag = sidebarLayout.getTag();
            Fragment fragment = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment == null) {
                return;
            }
            getChildFragmentManager().beginTransaction().remove(fragment).commit();
            sidebarLayout.setTag(null);
            return;
        }
        Fragment m46943G0 = m46943G0(sidebarLayout, type);
        if (m46943G0 == null) {
            return;
        }
        Pair<Integer, Integer> m46939E0 = m46939E0(sidebarLayout, type);
        sidebarLayout.setTag(m46943G0);
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction(...)");
        if (m46939E0 != null) {
            beginTransaction.setCustomAnimations(m46939E0.getFirst().intValue(), m46939E0.getSecond().intValue());
        }
        beginTransaction.replace(sidebarLayout.getId(), m46943G0).commitNow();
        sidebarLayout.setEnableDrag(type == SlideBarType.SLIDE_OUTLINE);
    }

    /* renamed from: T0 */
    public final void m46966T0() {
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new HidePenBoxEvent());
    }

    /* renamed from: T1 */
    public final void m46967T1() {
        EditorBundleKt.unregister(editorBundle$note_overseasRelease(), this);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        GlobalBundle.INSTANCE.unregister(this);
        AccountDataBundle.INSTANCE.unregister(this);
    }

    /* renamed from: U0 */
    public final void m46968U0(boolean hide) {
        ViewKt.setViewVisibleOrGone(getBinding$note_overseasRelease().shapeAndTool.getToolDragView(), !hide);
    }

    /* renamed from: U1 */
    public final void m46969U1(float leftSideWidth, float rightSideWidth) {
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        if (!(leftSideBarLayout.getVisibility() == 0)) {
            NoteOutlineDragContainer rightSideBarLayout = getBinding$note_overseasRelease().rightSideBarLayout;
            Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
            leftSideWidth = rightSideBarLayout.getVisibility() == 0 ? -rightSideWidth : 0.0f;
        }
        if (ViewExtKt.isLayoutDirectionRtl(getBinding$note_overseasRelease().shapeAndTool.getDragEffectView())) {
            leftSideWidth *= -1;
        }
        getBinding$note_overseasRelease().shapeAndTool.getDragEffectView().updateTranslateXOffset(leftSideWidth);
    }

    /* renamed from: V0 */
    public final void m46970V0() {
        RxBaseAction.execute$default(new RecoverCounterStateAction(CounterBundle.INSTANCE.getDefaultBundle()), null, null, null, 7, null);
    }

    /* renamed from: V1 */
    public final void m46971V1(boolean isDragging, DockType dockType) {
        getBinding$note_overseasRelease().shapeAndTool.getDragEffectView().updateEffect(isDragging, dockType);
    }

    /* renamed from: W0 */
    public final void m46972W0() {
        new LoadGuideInfoAction(GuideInfoConst.GUIDE_FUN_DRAG_TOOL, 500L).build().doOnNext(new C12215i()).subscribe();
    }

    /* renamed from: W1 */
    public final void m46973W1(float leftSideWidth, float rightSideWidth) {
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        if (!(leftSideBarLayout.getVisibility() == 0)) {
            leftSideWidth = 0.0f;
        }
        NoteOutlineDragContainer rightSideBarLayout = getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
        if (!(rightSideBarLayout.getVisibility() == 0)) {
            rightSideWidth = 0.0f;
        }
        NoteOutlineDragContainer leftSideBarLayout2 = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout2, "leftSideBarLayout");
        if (ViewExtKt.isLayoutDirectionRtl(leftSideBarLayout2)) {
            float f = rightSideWidth;
            rightSideWidth = leftSideWidth;
            leftSideWidth = f;
        }
        getBinding$note_overseasRelease().shapeAndTool.getToolDragView().updateSideBarWidth(leftSideWidth, rightSideWidth);
    }

    /* renamed from: X0 */
    public final void m46974X0() {
        EditorViewHandler firstEditorViewHandler = this.editorBundleManager.getFirstEditorViewHandler();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        firstEditorViewHandler.attachActivity(requireActivity);
        firstEditorViewHandler.initEditorView(getBinding$note_overseasRelease().shapeAndTool.getEditorView());
        EditorBundle editorBundle = firstEditorViewHandler.getEditorBundle();
        EditorViewDragLayout editorViewDragLayout = getBinding$note_overseasRelease().shapeAndTool.getBinding().splitScreen.getBinding().editorViewDragLayout;
        Intrinsics.checkNotNullExpressionValue(editorViewDragLayout, "editorViewDragLayout");
        m46938D1(editorBundle, editorViewDragLayout);
        EditorViewHandler secondEditorViewHandler = this.editorBundleManager.getSecondEditorViewHandler();
        FragmentActivity requireActivity2 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity(...)");
        secondEditorViewHandler.attachActivity(requireActivity2);
        secondEditorViewHandler.initEditorView(getBinding$note_overseasRelease().shapeAndTool.getEditorView2());
        EditorBundle editorBundle2 = secondEditorViewHandler.getEditorBundle();
        EditorViewDragLayout editorViewDragLayout2 = getBinding$note_overseasRelease().shapeAndTool.getBinding().splitScreen.getBinding().editorViewDragLayout2;
        Intrinsics.checkNotNullExpressionValue(editorViewDragLayout2, "editorViewDragLayout2");
        m46938D1(editorBundle2, editorViewDragLayout2);
        TintRelativeLayout editorContainer = getBinding$note_overseasRelease().editorContainer;
        Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
        ViewKt.addOnLayoutChangeListener(editorContainer, new Function2<Rect, Rect, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initEditorView$3
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Rect rect, Rect rect2) {
                invoke2(rect, rect2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Rect newRect, @NotNull Rect oldRect) {
                Intrinsics.checkNotNullParameter(newRect, "newRect");
                Intrinsics.checkNotNullParameter(oldRect, "oldRect");
                if (Intrinsics.areEqual(newRect, oldRect)) {
                    return;
                }
                EditorBundleKt.postEvent(NoteScribbleFragment.this.editorBundle$note_overseasRelease(), new EditorContainerLayoutChangedEvent());
                NoteScribbleFragment.this.m47008p1();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
    
        if (com.onyx.galaxy.note.common.extension.ViewExtKt.isLayoutDirectionRtl(r1) != false) goto L19;
     */
    /* renamed from: X1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m46975X1(float r5, float r6) {
        /*
            r4 = this;
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r0 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer r0 = r0.shapeAndTool
            com.onyx.galaxy.note.editor.view.toolbar.ToolDragView r0 = r0.getToolDragView()
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = r0.getDockType()
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r1 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer r1 = r1.rightSideBarLayout
            java.lang.String r2 = "rightSideBarLayout"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            int r1 = r1.getVisibility()
            if (r1 != 0) goto L21
            r1 = 1
            goto L22
        L21:
            r1 = 0
        L22:
            r3 = 0
            if (r1 == 0) goto L4d
            com.onyx.galaxy.note.editor.view.toolbar.DockType r1 = com.onyx.galaxy.note.editor.view.toolbar.DockType.RIGHT
            if (r0 != r1) goto L39
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r1 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer r1 = r1.rightSideBarLayout
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            boolean r1 = com.onyx.galaxy.note.common.extension.ViewExtKt.isLayoutDirectionRtl(r1)
            if (r1 != 0) goto L39
            float r3 = -r6
        L39:
            com.onyx.galaxy.note.editor.view.toolbar.DockType r1 = com.onyx.galaxy.note.editor.view.toolbar.DockType.LEFT
            if (r0 != r1) goto L4d
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r1 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer r1 = r1.rightSideBarLayout
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            boolean r1 = com.onyx.galaxy.note.common.extension.ViewExtKt.isLayoutDirectionRtl(r1)
            if (r1 == 0) goto L4d
            goto L4e
        L4d:
            r6 = r3
        L4e:
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r1 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer r1 = r1.leftSideBarLayout
            boolean r1 = com.onyx.android.sdk.base.extension.ViewKt.isVisible(r1)
            if (r1 == 0) goto L84
            com.onyx.galaxy.note.editor.view.toolbar.DockType r1 = com.onyx.galaxy.note.editor.view.toolbar.DockType.LEFT
            if (r0 != r1) goto L6e
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r1 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer r1 = r1.rightSideBarLayout
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            boolean r1 = com.onyx.galaxy.note.common.extension.ViewExtKt.isLayoutDirectionRtl(r1)
            if (r1 != 0) goto L6e
            r6 = r5
        L6e:
            com.onyx.galaxy.note.editor.view.toolbar.DockType r1 = com.onyx.galaxy.note.editor.view.toolbar.DockType.RIGHT
            if (r0 != r1) goto L84
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r0 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer r0 = r0.leftSideBarLayout
            java.lang.String r1 = "leftSideBarLayout"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = com.onyx.galaxy.note.common.extension.ViewExtKt.isLayoutDirectionRtl(r0)
            if (r0 == 0) goto L84
            float r6 = -r5
        L84:
            com.onyx.galaxy.note.databinding.FragmentNoteScribbleBinding r4 = r4.getBinding$note_overseasRelease()
            com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer r4 = r4.shapeAndTool
            com.onyx.galaxy.note.editor.view.toolbar.ToolDragView r4 = r4.getToolDragView()
            r4.updateTranslateXOffset(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment.m46975X1(float, float):void");
    }

    /* renamed from: Y0 */
    public final void m46976Y0() {
        getBinding$note_overseasRelease().funcLayout.setEditorBundle(editorBundle$note_overseasRelease());
        getBinding$note_overseasRelease().funcLayout.setDocManagerBundle(m46947I0());
        getBinding$note_overseasRelease().funcLayout.getIvTabIndicator().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i1k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteScribbleFragment.m46917Z0(NoteScribbleFragment.this, view);
            }
        });
        getBinding$note_overseasRelease().funcLayout.setToggleSideBarLayoutFunc(new Function2<SlideBarType, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initFuncToolView$2
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(SlideBarType slideBarType, Boolean bool) {
                invoke(slideBarType, bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull SlideBarType type, boolean z) {
                NoteOutlineDragContainer m46953L0;
                Intrinsics.checkNotNullParameter(type, "type");
                NoteScribbleFragment noteScribbleFragment = NoteScribbleFragment.this;
                m46953L0 = noteScribbleFragment.m46953L0(z);
                noteScribbleFragment.m46963R1(m46953L0, type);
            }
        });
        getBinding$note_overseasRelease().funcLayout.setFunctionToolListener(new FunctionToolLayout.FunctionToolListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initFuncToolView$3
            @Override // com.onyx.galaxy.note.editor.view.FunctionToolLayout.FunctionToolListener
            public void toggleFunctionTool(@NotNull ShortcutType type, boolean left) {
                Intrinsics.checkNotNullParameter(type, "type");
                NoteScribbleFragment.this.m46959P0(type, left);
            }
        });
        getBinding$note_overseasRelease().funcLayout.setGetEditorContainerRectFunc(new NoteScribbleFragment$initFuncToolView$4(this));
    }

    /* renamed from: Y1 */
    public final void m46977Y1() {
        DocCollectionBundle.INSTANCE.postEvent(new ChangeScrollerConfigEvent(null, Integer.valueOf(ViewKt.globalVisibleRect(getBinding$note_overseasRelease().shapeAndTool.getToolDragView().getToolContainer()).width()), null, null, null, 29, null));
    }

    /* renamed from: Z1 */
    public final void m46978Z1(int visibility) {
        if (visibility == 0) {
            getBinding$note_overseasRelease().topBarGradientView.setBackgroundResource(C7996R.drawable.shape_theme_popup_title_bg);
            getBinding$note_overseasRelease().funcLayout.getBinding().autoLayout.setBackgroundResource(C7996R.color.theme_background_function_layout_color);
        } else {
            getBinding$note_overseasRelease().topBarGradientView.setBackgroundResource(C7996R.drawable.shape_theme_popup_title_bg_hidden);
            getBinding$note_overseasRelease().funcLayout.getBinding().autoLayout.setBackgroundResource(C10651R.color.transparent);
        }
        ViewKt.postSelf(getBinding$note_overseasRelease().funcLayout, new Function1<FunctionToolLayout, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$updateFunctionLayoutUi$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FunctionToolLayout functionToolLayout) {
                invoke2(functionToolLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull FunctionToolLayout it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteScribbleFragment.this.m46948I1();
            }
        });
    }

    /* renamed from: a1 */
    public final void m46979a1(SyncNoteModel syncNoteModel) {
        GuideUtils guideUtils = GuideUtils.INSTANCE;
        if (guideUtils.isDragToolGuideNeed()) {
            m46972W0();
            return;
        }
        if (guideUtils.isPageWhiteSpaceGuideNeed() && m47003m1(syncNoteModel)) {
            m46960P1();
        } else if (guideUtils.isOpenTwoNotesNeed()) {
            m46957N1();
        }
    }

    /* renamed from: a2 */
    public final void m46980a2() {
        int[] editorViewOffsetLocation = getEditorViewOffsetLocation();
        int[] offset = getBinding$note_overseasRelease().inputTextLayout.getTextInputHelper().getOffset();
        getBinding$note_overseasRelease().inputTextLayout.getTextInputHelper().setOffset(editorViewOffsetLocation[0], editorViewOffsetLocation[1]);
        getBinding$note_overseasRelease().shapeAndTool.getTextBoxView().updatePosition(editorViewOffsetLocation[0] - offset[0], editorViewOffsetLocation[1] - offset[1]);
    }

    /* renamed from: b1 */
    public final void m46981b1() {
        TextInputHelper textInputHelper = new TextInputHelper(editorBundle$note_overseasRelease(), getBinding$note_overseasRelease().shapeAndTool.getTextBoxView());
        int[] editorViewOffsetLocation = getEditorViewOffsetLocation();
        InputTextToolLayout inputTextLayout = getBinding$note_overseasRelease().inputTextLayout;
        Intrinsics.checkNotNullExpressionValue(inputTextLayout, "inputTextLayout");
        textInputHelper.setToolView(inputTextLayout);
        textInputHelper.initRichListener();
        textInputHelper.activateEventListening(true);
        textInputHelper.setOffset(editorViewOffsetLocation[0], editorViewOffsetLocation[1]);
        getBinding$note_overseasRelease().inputTextLayout.setEditorBundle(editorBundle$note_overseasRelease());
        getBinding$note_overseasRelease().inputTextLayout.setTextInputHelper(textInputHelper);
        getBinding$note_overseasRelease().inputTextLayout.active();
    }

    /* renamed from: b2 */
    public final void m46982b2() {
        INotch notchDevice = DeviceFactory.INSTANCE.getNotchDevice();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        notchDevice.getNotchRect(requireActivity, new Function2<Boolean, NotchType, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$updateNotch$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, NotchType notchType) {
                invoke(bool.booleanValue(), notchType);
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z, @Nullable NotchType notchType) {
                NoteScribbleFragment.this.m47004m2(notchType);
            }
        });
    }

    /* renamed from: c1 */
    public final void m46983c1() {
        m46982b2();
    }

    /* renamed from: c2 */
    public final Observable<SyncNoteModel> m46984c2(String docId) {
        Observable<SyncNoteModel> doOnNext = new LoadNoteModelAction(editorBundle$note_overseasRelease(), docId).build().doOnNext(new C12223q());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void closeSelectionMenu$note_overseasRelease() {
        if (getSelectionMenuView$note_overseasRelease().isOpen()) {
            getSelectionMenuView$note_overseasRelease().cancel();
        }
    }

    /* renamed from: d1 */
    public final void m46985d1() {
        setPenViewModel$note_overseasRelease((PenViewModel) FragmentKt.getViewModel(this, PenViewModel.class));
        getBinding$note_overseasRelease().shapeAndTool.bindPenViewModel(getPenViewModel$note_overseasRelease());
        getPenViewModel$note_overseasRelease().loadConfig();
        m46992g2(getPenViewModel$note_overseasRelease().getDockType().getValue());
    }

    /* renamed from: d2 */
    public final void m46986d2(String docId) {
        m46984c2(docId).flatMap(new C12224r()).doOnNext(new C12225s(docId)).subscribe();
    }

    /* renamed from: e1 */
    public final void m46987e1() {
        getBinding$note_overseasRelease().shapeAndTool.setEditorBundle(editorBundle$note_overseasRelease());
        PagedSelectionMenu selectionMenuView$note_overseasRelease = getSelectionMenuView$note_overseasRelease();
        selectionMenuView$note_overseasRelease.setEditorBundle(editorBundle$note_overseasRelease());
        FragmentManager parentFragmentManager = getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "getParentFragmentManager(...)");
        selectionMenuView$note_overseasRelease.setFragmentManager(parentFragmentManager);
        getBinding$note_overseasRelease().shapeAndTool.getToolDragView().setOnDragListener(new NoteScribbleFragment$initShapeToolView$1(this));
        getBinding$note_overseasRelease().shapeAndTool.getToolDragView().setAnimateCallBack(new ToolDragView.AnimateCallBack() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initShapeToolView$2
            @Override // com.onyx.galaxy.note.editor.view.toolbar.ToolDragView.AnimateCallBack
            public void onAnimateEnd() {
                NoteScribbleFragment.this.m46936C1();
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.ToolDragView.AnimateCallBack
            public void onAnimateStart() {
                NoteScribbleFragment.this.m46936C1();
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.ToolDragView.AnimateCallBack
            public void onAnimating() {
            }
        });
        getBinding$note_overseasRelease().shapeAndTool.setEditorContainerChangeCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initShapeToolView$3
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
                NoteScribbleFragment.this.m47008p1();
            }
        });
    }

    /* renamed from: e2 */
    public final void m46988e2(boolean isDragging, DockType dockType) {
        if (isDragging) {
            return;
        }
        boolean isCurTouchModeSupportEdit = TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit();
        int dimens = isCurTouchModeSupportEdit ? ResManager.INSTANCE.getDimens(C10651R.dimen.drag_tool_height) : 0;
        int dimens2 = isCurTouchModeSupportEdit ? ResManager.INSTANCE.getDimens(C10651R.dimen.drag_tool_width) : 0;
        ViewGroup.LayoutParams layoutParams = getBinding$note_overseasRelease().shapeAndTool.getBinding().flShapeContent.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i == 1) {
            marginLayoutParams.setMargins(0, dimens, 0, 0);
            return;
        }
        if (i == 2) {
            marginLayoutParams.setMargins(0, 0, 0, dimens);
        } else if (i == 3) {
            marginLayoutParams.setMargins(dimens2, 0, 0, 0);
        } else {
            if (i != 4) {
                return;
            }
            marginLayoutParams.setMargins(0, 0, dimens2, 0);
        }
    }

    @NotNull
    public final EditorBundle editorBundle$note_overseasRelease() {
        return this.editorBundleManager.focusEditorBundle();
    }

    public final void ensureSwitchUserTool$note_overseasRelease(@NotNull ShapeToolType toolType) {
        Intrinsics.checkNotNullParameter(toolType, "toolType");
        getPenViewModel$note_overseasRelease().getPenType().postValue(toolType);
        String str = getPenViewModel$note_overseasRelease().getShapeToolHandlerMap().get(toolType);
        if (str == null) {
            LogUtils.file("Unknown shape tool type " + toolType.getShapeType() + ", use dummy provider");
            str = "dummy";
        }
        DocCollectionBundle.INSTANCE.postEvent(new ActivateShapeHandlerEvent(str, true, Integer.valueOf(toolType.getShapeType())));
    }

    @Override // com.onyx.android.sdk.universal.editor.view.SplitScreenListener
    public void exitSplitScreen(@NotNull View goneView) {
        Intrinsics.checkNotNullParameter(goneView, "goneView");
        getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout().exitSplitScreen(goneView);
    }

    /* renamed from: f1 */
    public final void m46989f1() {
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        m46991g1(leftSideBarLayout);
        NoteOutlineDragContainer rightSideBarLayout = getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
        m46991g1(rightSideBarLayout);
    }

    /* renamed from: f2 */
    public final void m46990f2(NoteOutlineDragContainer sidebarLayout) {
        sidebarLayout.setMaxDraggableWidth((int) (ResManager.INSTANCE.getScreenWidth() - r0.getDimens(C10651R.dimen.sidebar_max_draggable_extra_size)));
        m46996i2(sidebarLayout);
    }

    /* renamed from: g1 */
    public final void m46991g1(final NoteOutlineDragContainer sidebarLayout) {
        List<Integer> listOf;
        final boolean z = sidebarLayout.getId() == C10651R.id.left_side_bar_layout;
        ResManager resManager = ResManager.INSTANCE;
        sidebarLayout.setDefaultWidth(resManager.getDimensionPixelSize(C10651R.dimen.side_bar_layout_width));
        sidebarLayout.setCollapseThreshold(resManager.getDimensionPixelSize(C10651R.dimen.side_bar_collapse_threshold));
        sidebarLayout.setDragViewLocation(z);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(resManager.getDimensionPixelSize(C10651R.dimen.side_bar_layout_width)), Integer.valueOf(resManager.getDimensionPixelSize(C10651R.dimen.side_bar_level_two_width)), Integer.valueOf(resManager.getDimensionPixelSize(C10651R.dimen.side_bar_level_three_width)), Integer.valueOf(resManager.getDimensionPixelSize(C10651R.dimen.side_bar_level_four_width))});
        sidebarLayout.setAdjustableSizeList(listOf);
        sidebarLayout.setCallback(new NoteOutlineDragContainer.Callback() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initSidebarView$1
            /* renamed from: a */
            public final boolean m47036a() {
                return NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getToolDragView().isToolbarAlignedWithSidebar(SlideBarType.SLIDE_OUTLINE) && TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit();
            }

            /* renamed from: b */
            public final void m47037b() {
                EditorSideBarInfo m46941F0;
                EditorBundleManager editorBundleManager = NoteScribbleFragment.this.getEditorBundleManager();
                m46941F0 = NoteScribbleFragment.this.m46941F0();
                editorBundleManager.postEvent(new SidebarWidthChangedEvent(m46941F0));
            }

            /* renamed from: c */
            public final void m47038c() {
                NoteScribbleFragment.this.m46958O0();
                NoteScribbleFragment.this.m46968U0(false);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer.Callback
            public void onCollapse() {
                NoteScribbleFragment.this.m46954L1(false, sidebarLayout, SlideBarType.SLIDE_OUTLINE);
                NoteScribbleFragment.this.m46958O0();
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer.Callback
            public void onLevelChanged(int level, int levelSize) {
                EditorBundleKt.postEvent(NoteScribbleFragment.this.editorBundle$note_overseasRelease(), new SidebarVisibleLevelChangedEvent(level));
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer.Callback
            public void onStartDrag() {
                if (m47036a()) {
                    NoteScribbleFragment.this.m46968U0(true);
                }
                NoteScribbleFragment.this.m46966T0();
                EditorBundleKt.postEvent(NoteScribbleFragment.this.editorBundle$note_overseasRelease(), new FunctionToolPopupHideEvent());
                DocCollectionBundle.INSTANCE.postEvent(new ChangeScrollerConfigEvent(Boolean.FALSE, null, null, null, null, 30, null));
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer.Callback
            public void onStopDrag() {
                NoteScribbleFragment.this.m46932A1(true);
                if (m47036a()) {
                    m47038c();
                }
                NoteScribbleFragment.this.m46936C1();
                NoteScribbleFragment.this.m47008p1();
                m47037b();
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer.Callback
            public void onTranslate(float translateX) {
                int m46937D0;
                NoteOutlineDragContainer leftSideBarLayout = NoteScribbleFragment.this.getBinding$note_overseasRelease().leftSideBarLayout;
                Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
                boolean z2 = ViewExtKt.isLayoutDirectionRtl(leftSideBarLayout) ? !z : z;
                FrameLayout frameLayout = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getBinding().flShapeContent;
                float f = -BooleanKt.toSignInteger(Boolean.valueOf(z2));
                m46937D0 = NoteScribbleFragment.this.m46937D0((int) translateX);
                frameLayout.setTranslationX(f * m46937D0);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer.Callback
            public void onWidthChanged(int newWidth, boolean isMinLevel) {
                m47037b();
            }
        });
    }

    /* renamed from: g2 */
    public final void m46992g2(DockType it2) {
        int dimens = TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit() ? ResManager.INSTANCE.getDimens(C10651R.dimen.drag_tool_height) : 0;
        NoteOutlineDragContainer rightSideBarLayout = getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
        m46994h2(it2, rightSideBarLayout, dimens);
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        m46994h2(it2, leftSideBarLayout, dimens);
    }

    @NotNull
    public final FragmentNoteScribbleBinding getBinding$note_overseasRelease() {
        FragmentNoteScribbleBinding fragmentNoteScribbleBinding = this.binding;
        if (fragmentNoteScribbleBinding != null) {
            return fragmentNoteScribbleBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    /* renamed from: getEditorBundleManager$note_overseasRelease, reason: from getter */
    public final EditorBundleManager getEditorBundleManager() {
        return this.editorBundleManager;
    }

    @NotNull
    public final int[] getEditorContainerLocation$note_overseasRelease() {
        TintRelativeLayout editorContainer = getBinding$note_overseasRelease().editorContainer;
        Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(editorContainer);
        ToolDragView toolDragView = getBinding$note_overseasRelease().shapeAndTool.getToolDragView();
        int min = Math.min(toolDragView.getMeasuredWidth(), toolDragView.getMeasuredHeight()) + getBinding$note_overseasRelease().editorContainer.getPaddingTop();
        int i = WhenMappings.$EnumSwitchMapping$0[toolDragView.getDockType().ordinal()];
        if (i == 1) {
            locationOnScreen[1] = locationOnScreen[1] + min;
        } else if (i == 3) {
            locationOnScreen[0] = locationOnScreen[0] + min;
        }
        return locationOnScreen;
    }

    @NotNull
    public final Rect getEditorContainerRect$note_overseasRelease() {
        TintRelativeLayout editorContainer = getBinding$note_overseasRelease().editorContainer;
        Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
        Rect globalVisibleRect = ViewKt.globalVisibleRect(editorContainer);
        globalVisibleRect.top += getBinding$note_overseasRelease().editorContainer.getPaddingTop();
        globalVisibleRect.bottom -= getBinding$note_overseasRelease().editorContainer.getPaddingBottom();
        ToolDragView toolDragView = getBinding$note_overseasRelease().shapeAndTool.getToolDragView();
        DriveTokenExpiredTipContainer driveTokenExpiredTipContainer = getBinding$note_overseasRelease().shapeAndTool.getDriveTokenExpiredTipContainer();
        int min = Math.min(toolDragView.getMeasuredWidth(), toolDragView.getMeasuredHeight());
        if (driveTokenExpiredTipContainer.getVisibility() == 0) {
            globalVisibleRect.top += driveTokenExpiredTipContainer.getMeasuredHeight();
        }
        if (toolDragView.getVisibility() == 0) {
            int i = WhenMappings.$EnumSwitchMapping$0[toolDragView.getDockType().ordinal()];
            if (i == 1) {
                globalVisibleRect.top += min;
            } else if (i == 2) {
                globalVisibleRect.bottom -= min;
            } else if (i == 3) {
                globalVisibleRect.left += min;
            } else if (i == 4) {
                globalVisibleRect.right -= min;
            }
        }
        NoteOutlineDragContainer noteOutlineDragContainer = getBinding$note_overseasRelease().rightSideBarLayout;
        if (ViewKt.isVisible(noteOutlineDragContainer)) {
            int min2 = Math.min(noteOutlineDragContainer.getMeasuredWidth(), noteOutlineDragContainer.getMeasuredHeight());
            Intrinsics.checkNotNull(noteOutlineDragContainer);
            if (ViewExtKt.isLayoutDirectionRtl(noteOutlineDragContainer)) {
                globalVisibleRect.left += min2;
            } else {
                globalVisibleRect.right -= min2;
            }
        }
        NoteOutlineDragContainer noteOutlineDragContainer2 = getBinding$note_overseasRelease().leftSideBarLayout;
        if (ViewKt.isVisible(noteOutlineDragContainer2)) {
            int min3 = Math.min(noteOutlineDragContainer2.getMeasuredWidth(), noteOutlineDragContainer2.getMeasuredHeight());
            Intrinsics.checkNotNull(noteOutlineDragContainer2);
            if (ViewExtKt.isLayoutDirectionRtl(noteOutlineDragContainer2)) {
                globalVisibleRect.right -= min3;
            } else {
                globalVisibleRect.left += min3;
            }
        }
        return globalVisibleRect;
    }

    @NotNull
    public final int[] getEditorViewOffsetLocation() {
        int[] locationInWindow = ViewKt.getLocationInWindow(getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout());
        int[] locationInWindow2 = ViewKt.getLocationInWindow(this.editorBundleManager.focusEditorView());
        return new int[]{locationInWindow2[0] - locationInWindow[0], locationInWindow2[1] - locationInWindow[1]};
    }

    @NotNull
    public final PenViewModel getPenViewModel$note_overseasRelease() {
        PenViewModel penViewModel = this.penViewModel;
        if (penViewModel != null) {
            return penViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        return null;
    }

    @Nullable
    public final int[] getRootLocation$note_overseasRelease() {
        Window window;
        View decorView;
        FragmentActivity activity = getActivity();
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return ViewKt.getLocationOnScreen(decorView);
    }

    @NotNull
    public final RectF getSelectionMenuDisplayRect$note_overseasRelease() {
        RectF localVisibleRectF = ViewKt.localVisibleRectF(this.editorBundleManager.focusEditorView());
        ToolDragView toolDragView = getBinding$note_overseasRelease().shapeAndTool.getToolDragView();
        int min = Math.min(toolDragView.getMeasuredWidth(), toolDragView.getMeasuredHeight());
        int i = WhenMappings.$EnumSwitchMapping$0[toolDragView.getDockType().ordinal()];
        if (i == 1) {
            localVisibleRectF.top += min;
        } else if (i == 2) {
            localVisibleRectF.bottom -= min;
        } else if (i == 3) {
            localVisibleRectF.left += min;
        } else if (i == 4) {
            localVisibleRectF.right -= min;
        }
        return localVisibleRectF;
    }

    @NotNull
    public final PagedSelectionMenu getSelectionMenuView$note_overseasRelease() {
        return getBinding$note_overseasRelease().shapeAndTool.getSelectionMenuView();
    }

    @Override // com.onyx.android.sdk.universal.editor.view.SplitScreenListener
    @NotNull
    public RectF getSplitScreenSize(@NotNull SplitScreenPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout().getSplitScreenAnimTargetViewSize(position);
    }

    @NotNull
    public final TextBoxView getTextBox$note_overseasRelease() {
        TextBoxView textBoxView = getBinding$note_overseasRelease().shapeAndTool.getBinding().textBoxView;
        Intrinsics.checkNotNullExpressionValue(textBoxView, "textBoxView");
        return textBoxView;
    }

    @NotNull
    public final NoteScribbleViewModel getViewModel() {
        NoteScribbleViewModel noteScribbleViewModel = this.viewModel;
        if (noteScribbleViewModel != null) {
            return noteScribbleViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        return null;
    }

    /* renamed from: h1 */
    public final void m46993h1() {
        AppConfig.INSTANCE.setEnabledPageColumn(true);
        this.editorBundleManager.resizeCache();
        SplitScreenLayout splitScreenLayout = getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout();
        splitScreenLayout.setListener(new NoteScribbleFragment$initSplitScreenLayout$1(this, splitScreenLayout));
    }

    /* renamed from: h2 */
    public final void m46994h2(DockType it2, ViewGroup sideBarLayout, int topBottomMargin) {
        int i = it2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[it2.ordinal()];
        if (i == 1) {
            sideBarLayout.setPadding(0, topBottomMargin, 0, 0);
            return;
        }
        if (i == 2) {
            sideBarLayout.setPadding(0, 0, 0, topBottomMargin);
        } else if (i == 3 || i == 4) {
            sideBarLayout.setPadding(0, 0, 0, 0);
        } else {
            sideBarLayout.setPadding(0, 0, 0, 0);
        }
    }

    public final void hideSelectionMenu$note_overseasRelease() {
        if (getSelectionMenuView$note_overseasRelease().isOpen()) {
            getSelectionMenuView$note_overseasRelease().hide();
        }
    }

    /* renamed from: i1 */
    public final void m46995i1() {
        getBinding$note_overseasRelease().tabLayout.setDragListener(new NoteTabManagementPopup.DragListenerDelegateListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initTabView$1

            /* renamed from: a, reason: from kotlin metadata */
            @Nullable
            public View editorView;

            @Nullable
            public final View getEditorView() {
                return this.editorView;
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup.DragListenerDelegateListener
            public boolean onDragData(@NotNull DragEvent dragEvent) {
                Intrinsics.checkNotNullParameter(dragEvent, "dragEvent");
                RectF globalVisibleRectF = ViewKt.globalVisibleRectF(NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView());
                if (ViewKt.globalVisibleRectF(NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView2()).contains(dragEvent.getX(), dragEvent.getY())) {
                    this.editorView = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView2();
                } else if (globalVisibleRectF.contains(dragEvent.getX(), dragEvent.getY())) {
                    this.editorView = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getEditorView();
                }
                View view = this.editorView;
                if (view != null) {
                    return view.dispatchDragEvent(dragEvent);
                }
                return false;
            }

            public final void setEditorView(@Nullable View view) {
                this.editorView = view;
            }
        });
        getBinding$note_overseasRelease().tabLayout.setNoteTabListener(new NoteTabLayout.TabListener() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initTabView$2
            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void closedOtherTab(@NotNull List<NoteTabData> closedTabs) {
                Intrinsics.checkNotNullParameter(closedTabs, "closedTabs");
                NoteTabLayout.TabListener.DefaultImpls.closedOtherTab(this, closedTabs);
                Iterator<T> it2 = closedTabs.iterator();
                while (it2.hasNext()) {
                    AutoReLockNoteManager.INSTANCE.removeAutoReLockNoteTask(((NoteTabData) it2.next()).getUniqueId());
                }
                NoteScribbleFragment.this.m46998j2();
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseLastTab(@Nullable NoteTabData closedTab) {
                NoteScribbleFragment.this.m47020y1();
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseOtherTab() {
                NoteScribbleFragment.this.getEditorBundleManager().onCloseOtherTab();
                NoteScribbleFragment.this.m46998j2();
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseTab(@Nullable NoteTabData closedTab, @NotNull NoteTabData prepareOpenTab) {
                String uniqueId;
                Intrinsics.checkNotNullParameter(prepareOpenTab, "prepareOpenTab");
                NoteScribbleFragment.this.getEditorBundleManager().onCloseTab(closedTab, prepareOpenTab);
                NoteScribbleFragment.this.m46998j2();
                NoteScribbleFragment.this.closeSelectionMenu$note_overseasRelease();
                if (closedTab == null || (uniqueId = closedTab.getUniqueId()) == null) {
                    return;
                }
                AutoReLockNoteManager.INSTANCE.removeAutoReLockNoteTask(uniqueId);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onSelectedChanged(@Nullable NoteTabData oldTab, @NotNull NoteTabData newTab) {
                Intrinsics.checkNotNullParameter(newTab, "newTab");
                if (!Intrinsics.areEqual(oldTab, newTab)) {
                    NoteScribbleFragment.this.m47011t0(newTab);
                    NoteScribbleFragment.this.closeSelectionMenu$note_overseasRelease();
                    return;
                }
                Debug.INSTANCE.m32035d(NoteScribbleFragment$initTabView$2.class, "doc: " + newTab.getUniqueId() + " is already opened", new Object[0]);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onTabVisibilityChanged(int visibility) {
                NoteScribbleFragment.this.m46982b2();
                NoteScribbleFragment.this.m46978Z1(visibility);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onToggleTabVisibility() {
                ViewKt.toggleGone(NoteScribbleFragment.this.getBinding$note_overseasRelease().tabLayout);
                NoteScribbleFragment.this.getBinding$note_overseasRelease().funcLayout.toggleTabIndicator();
            }
        });
        getBinding$note_overseasRelease().tabLayout.setEditorBundleManager(this.editorBundleManager);
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        int i = noteConfigManager.getNoteEditConfigInfo().getTabCountOption().get();
        if (!noteConfigManager.getNoteEditConfigInfo().isTabOptionShow() || i == 1) {
            ViewKt.setViewVisibleOrGone(getBinding$note_overseasRelease().tabLayout, false);
        }
    }

    /* renamed from: i2 */
    public final void m46996i2(NoteOutlineDragContainer sidebarLayout) {
        GlobalBundle.INSTANCE.postEvent(new SideBarAreaEvent(sidebarLayout.getTag() instanceof NoteSettingMoreFragment, ViewKt.windowVisibleRect(sidebarLayout), SlideBarType.SLIDE_MORE_SETTING));
    }

    @Override // com.onyx.android.sdk.universal.editor.view.SplitScreenListener
    public boolean isEnabledSplitScreen() {
        return getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout().isEnabledSplitScreen();
    }

    /* renamed from: isSideLayoutAnim, reason: from getter */
    public final boolean getIsSideLayoutAnim() {
        return this.isSideLayoutAnim;
    }

    /* renamed from: j1 */
    public final void m46997j1() {
        m46931A0();
        m46995i1();
        m46987e1();
        m46993h1();
        m46974X0();
        m46989f1();
        m46981b1();
        m46976Y0();
        m47016w1();
        m46983c1();
        m46924p2(this, null, false, 3, null);
    }

    /* renamed from: j2 */
    public final void m46998j2() {
        List<NoteTabData> dataList = getBinding$note_overseasRelease().tabLayout.getDataList();
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        noteConfigManager.getNoteEditConfigInfo().getTabCountOption().put(dataList.size());
        boolean z = true;
        boolean z2 = noteConfigManager.getNoteEditConfigInfo().isTabOptionShow() && CollectionKt.getSize(dataList) > 1;
        NoteTabLayout tabLayout = getBinding$note_overseasRelease().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        boolean z3 = (tabLayout.getVisibility() == 0) != z2;
        ViewKt.setViewVisibleOrGone(getBinding$note_overseasRelease().tabLayout, z2);
        FunctionToolLayout functionToolLayout = getBinding$note_overseasRelease().funcLayout;
        if (z2 && CollectionKt.getSize(dataList) != 1) {
            z = false;
        }
        functionToolLayout.showTabIndicator(z);
        View guideViewTab = getBinding$note_overseasRelease().guideViewTab;
        Intrinsics.checkNotNullExpressionValue(guideViewTab, "guideViewTab");
        guideViewTab.setVisibility(z2 ? 0 : 8);
        if (z3) {
            ViewKt.postSelf(getBinding$note_overseasRelease().tabLayout, new Function1<NoteTabLayout, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$updateTabLayoutAndIndicator$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NoteTabLayout noteTabLayout) {
                    invoke2(noteTabLayout);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NoteTabLayout it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    NoteScribbleFragment.this.m47008p1();
                    NoteScribbleFragment.this.m46948I1();
                }
            });
        }
    }

    /* renamed from: k1 */
    public final void m46999k1() {
        getViewModel().getTabNoteList().observe(getViewLifecycleOwner(), new C12222p(new Function1<List<? extends NoteTabData>, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends NoteTabData> list) {
                invoke2((List<NoteTabData>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<NoteTabData> list) {
                Object obj;
                SyncNoteModel syncNoteModel;
                NoteTabLayout noteTabLayout = NoteScribbleFragment.this.getBinding$note_overseasRelease().tabLayout;
                Intrinsics.checkNotNull(list);
                noteTabLayout.setDataList(list);
                NoteTabLayout noteTabLayout2 = NoteScribbleFragment.this.getBinding$note_overseasRelease().tabLayout;
                NoteScribbleFragment noteScribbleFragment = NoteScribbleFragment.this;
                Iterator<T> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    String uniqueId = ((NoteTabData) next).getUniqueId();
                    syncNoteModel = noteScribbleFragment.noteModel;
                    if (Intrinsics.areEqual(uniqueId, syncNoteModel != null ? syncNoteModel.getUniqueId() : null)) {
                        obj = next;
                        break;
                    }
                }
                noteTabLayout2.setSelectedItem((NoteTabData) obj);
                NoteScribbleFragment.this.m46998j2();
            }
        }));
        m46985d1();
    }

    /* renamed from: k2 */
    public final void m47000k2() {
        ViewKt.postSelf(getBinding$note_overseasRelease().tabLayout, new Function1<NoteTabLayout, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$updateToolView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteTabLayout noteTabLayout) {
                invoke2(noteTabLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteTabLayout it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteScribbleFragment.this.getBinding$note_overseasRelease().tabLayout.freshView();
            }
        });
        ViewKt.postSelf(getBinding$note_overseasRelease().shapeAndTool, new Function1<ShapeAndToolContainer, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$updateToolView$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeAndToolContainer shapeAndToolContainer) {
                invoke2(shapeAndToolContainer);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShapeAndToolContainer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.flushUI();
            }
        });
    }

    /* renamed from: l1 */
    public final void m47001l1(SyncNoteModel syncNoteModel) {
        if (GuideUtils.INSTANCE.isPageWhiteSpaceGuideNeed() && m47003m1(syncNoteModel)) {
            m46960P1();
        }
    }

    /* renamed from: l2 */
    public final void m47002l2(String activeProviderName) {
        ShapeToolType shapeToolType = Intrinsics.areEqual(activeProviderName, ShapeHandlerManager.TEXT_INPUT_PROVIDER) ? ShapeToolType.EDIT_TEXT : Intrinsics.areEqual(activeProviderName, ShapeHandlerManager.EXCERPT_PROVIDER) ? ShapeToolType.EXCERPT : null;
        if (shapeToolType == null) {
            return;
        }
        getBinding$note_overseasRelease().shapeAndTool.setSelectByType(shapeToolType, false);
    }

    /* renamed from: m1 */
    public final boolean m47003m1(SyncNoteModel syncNoteModel) {
        String str;
        boolean contains$default;
        boolean isPdfScribbleScene = NoteScene.INSTANCE.isPdfScribbleScene(syncNoteModel.getActiveScene());
        String[] stringArray = ResManager.INSTANCE.getStringArray(C10651R.array.tutorial_names);
        String title = syncNoteModel.getTitle();
        if (title == null) {
            title = "";
        }
        int length = stringArray.length;
        int i = 0;
        while (true) {
            str = null;
            if (i >= length) {
                break;
            }
            String str2 = stringArray[i];
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) title, (CharSequence) str2, false, 2, (Object) null);
            if (contains$default) {
                str = str2;
                break;
            }
            i++;
        }
        return isPdfScribbleScene && str == null;
    }

    /* renamed from: m2 */
    public final void m47004m2(NotchType notchType) {
        View autoLayout;
        if (notchType == null) {
            getBinding$note_overseasRelease().tabLayout.setPadding(0, 0, 0, 0);
            getBinding$note_overseasRelease().funcLayout.getBinding().autoLayout.setPadding(0, 0, 0, 0);
            return;
        }
        NoteTabLayout tabLayout = getBinding$note_overseasRelease().tabLayout;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        boolean z = tabLayout.getVisibility() == 0;
        if (z) {
            getBinding$note_overseasRelease().funcLayout.getBinding().autoLayout.setPadding(0, 0, 0, 0);
        } else {
            getBinding$note_overseasRelease().tabLayout.setPadding(0, 0, 0, 0);
        }
        FragmentNoteScribbleBinding binding$note_overseasRelease = getBinding$note_overseasRelease();
        if (z) {
            autoLayout = binding$note_overseasRelease.tabLayout;
            Intrinsics.checkNotNullExpressionValue(autoLayout, "tabLayout");
        } else {
            autoLayout = binding$note_overseasRelease.funcLayout.getBinding().autoLayout;
            Intrinsics.checkNotNullExpressionValue(autoLayout, "autoLayout");
        }
        m47006n2(autoLayout, notchType);
    }

    /* renamed from: n1 */
    public final boolean m47005n1(NoteOutlineDragContainer sidebarLayout, SlideBarType slideBarType) {
        int i = WhenMappings.$EnumSwitchMapping$1[slideBarType.ordinal()];
        if (i == 1) {
            return sidebarLayout.getTag() instanceof NoteOutlineFragment;
        }
        if (i == 2) {
            return sidebarLayout.getTag() instanceof NoteSettingMoreFragment;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: n2 */
    public final void m47006n2(View topView, NotchType notchType) {
        if (notchType == NotchType.RIGHT_TOP) {
            topView.setPadding(0, 0, notchType.getPositionOffset().x, 0);
        }
        if (notchType == NotchType.LEFT_TOP) {
            topView.setPadding(notchType.getPositionOffset().x, 0, 0, 0);
        }
    }

    /* renamed from: o2 */
    public final void m47007o2(EditorTouchMode touchMode, boolean anim) {
        boolean supportEdit = TouchModeFeatureManager.INSTANCE.getTouchModeFeature(touchMode).supportEdit();
        ToolDragView toolDragView = getBinding$note_overseasRelease().shapeAndTool.getToolDragView();
        DockType dockType = toolDragView.getDockType();
        toolDragView.setVisibility(supportEdit ? 0 : 8);
        if (anim) {
            EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new FunctionToolPopupDismissEvent());
            getBinding$note_overseasRelease().shapeAndTool.coordinateToolbarAnimation(supportEdit);
            ViewExtKt.startShowHideAnimation(toolDragView, dockType, supportEdit, new NoteScribbleFragment$updateViewByTouchMode$1$1(this, dockType, toolDragView));
        } else {
            toolDragView.updateView();
            m46988e2(false, dockType);
            m46992g2(dockType);
            m47008p1();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivateDocumentEvent(@NotNull ActivateDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SyncNoteModel syncNoteModel = this.noteModel;
        boolean z = !Intrinsics.areEqual(syncNoteModel != null ? syncNoteModel.getUniqueId() : null, event.getSyncNoteModel().getUniqueId());
        this.noteModel = event.getSyncNoteModel();
        m47012u0();
        if (event.getUpdateTab()) {
            m46986d2(event.getSyncNoteModel().getUniqueId());
        } else if (z) {
            getViewModel().loadTabNote(event.getSyncNoteModel()).doOnNext(new C12216j()).subscribe();
        }
        m47010s1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivationStateChangedEvent(@NotNull ActivationStateChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getSelectionMenuView$note_overseasRelease().update();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != -1) {
            return;
        }
        if (requestCode == 1003) {
            List<Uri> obtainResult = Matisse.obtainResult(data);
            if (CollectionKt.isNonBlank(obtainResult)) {
                StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
                Intrinsics.checkNotNull(obtainResult);
                statisticsBundle.reportPickPictureEventFromInsertPage(obtainResult, 3004);
                EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new InsertImagePagesEvent(obtainResult));
                return;
            }
            return;
        }
        if (requestCode == 2021) {
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<R> flatMap = new ObtainDocumentListAction(data).build().flatMap(new C12217k());
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, flatMap, null, null, 3, null);
            return;
        }
        if (requestCode == 1006 || requestCode == 1007) {
            List<Uri> obtainResult2 = Matisse.obtainResult(data);
            Intrinsics.checkNotNull(obtainResult2);
            if (!obtainResult2.isEmpty()) {
                StatisticsBundle.INSTANCE.reportPickPictureEventFromInsertShape(obtainResult2, requestCode);
                EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new InsertImagesEvent(obtainResult2));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        CloudStorageManager.INSTANCE.getOurInstance().register(this);
        this.windowChangeListener = ContextKt.registerWindowLocationChangeListener(context, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$onAttach$1
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
                NoteScribbleFragment.this.m47013u1();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onBeforeChangePenEvent(@NotNull BeforeChangePenArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
        if (!companion.hasPenBox()) {
            getPenViewModel$note_overseasRelease().setLastPenType(new PenContext(getPenViewModel$note_overseasRelease().getPenType().getValue(), null, null, 6, null));
            return;
        }
        ShapeToolViewAuto rlShapeToolViewAuto = getBinding$note_overseasRelease().shapeAndTool.getToolDragView().getBinding().rlShapeToolViewAuto;
        Intrinsics.checkNotNullExpressionValue(rlShapeToolViewAuto, "rlShapeToolViewAuto");
        rlShapeToolViewAuto.dismissAllPopup();
        PencilBox penBox$default = PencilBoxManager.Companion.getPenBox$default(companion, null, 1, null);
        String id = penBox$default.getId();
        String selectedId = penBox$default.getSelectedId();
        if (selectedId == null) {
            getPenViewModel$note_overseasRelease().setLastPenType(new PenContext(getPenViewModel$note_overseasRelease().getPenType().getValue(), null, null, 6, null));
        } else {
            if (Intrinsics.areEqual(event.getNextSelectId(), selectedId)) {
                return;
            }
            getPenViewModel$note_overseasRelease().setLastPenType(new PenContext(null, selectedId, id, 1, null));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeDockTypeEvent(@NotNull ChangeDockTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getPenViewModel$note_overseasRelease().getDockType().setValue(event.getDockType());
        m46948I1();
        m47008p1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeEraseTypeEvent(@NotNull ChangeEraseTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding$note_overseasRelease().shapeAndTool.updateEraserTypeUi(EraserPropertyOption.INSTANCE.getEraserTypeOption().get());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePenArgsEvent(@NotNull ChangePenArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getFromPenBox()) {
            ViewKt.postSelf(getBinding$note_overseasRelease().shapeAndTool, new Function1<ShapeAndToolContainer, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$onChangePenArgsEvent$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ShapeAndToolContainer shapeAndToolContainer) {
                    invoke2(shapeAndToolContainer);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ShapeAndToolContainer it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    it2.getToolDragView().onPenTypeChanged(null);
                    it2.setSelectByType(null, true);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeSubShapeTypeEvent(@NotNull ChangeSubShapeTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        noteConfigManager.getNoteEditConfigInfo().getPenProperty().saveSubShapeType(noteConfigManager.getNoteEditConfigInfo().ensureSelectShapeType().getShapeType(), event.getShapeType());
        getBinding$note_overseasRelease().shapeAndTool.updateLassoTypeUi(noteConfigManager.getNoteEditConfigInfo().getLassoProperty().getLassoType());
        getBinding$note_overseasRelease().shapeAndTool.showTapeSizeContainer();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTouchModeEvent(@NotNull ChangeTouchModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        boolean z = false;
        RxBaseAction.execute$default(new ActivatePenBoxViewAction(editorBundle$note_overseasRelease(), z, 2, null), null, null, null, 7, null);
        EditorTouchMode newTouchMode = event.getNewTouchMode();
        if (event.hasReadingMode() && event.isModeChanged()) {
            z = true;
        }
        m47007o2(newTouchMode, z);
        if (TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit()) {
            return;
        }
        m46949J0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCheckEditorAutoReLockEvent(@NotNull CheckEditorAutoReLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46986d2(EditorBundleKt.docId(editorBundle$note_overseasRelease()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloseSideBarEvent(@NotNull CloseSideBarEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SlideBarType type = event.getType();
        if (type == null && (type = getViewModel().getSlideBarType()) == null) {
            return;
        }
        m46954L1(false, m46951K0(type), type);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloudStorageRefreshTokenFailedEvent(@NotNull final CloudStorageRefreshTokenFailedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FragmentKt.requireActivitySafety$default(this, null, new Function1<Activity, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$onCloudStorageRefreshTokenFailedEvent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Activity activity) {
                invoke2(activity);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Activity it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DriveTokenExpiredTipContainer driveTokenExpiredTipContainer = NoteScribbleFragment.this.getBinding$note_overseasRelease().shapeAndTool.getBinding().driveTokenExpiredTipContainer;
                FragmentActivity requireActivity = NoteScribbleFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                driveTokenExpiredTipContainer.showTips(requireActivity, event.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_PROVIDER java.lang.String());
            }
        }, 1, null);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        getBinding$note_overseasRelease().shapeAndTool.flushUI();
        ViewKt.postSelf(getBinding$note_overseasRelease().tabLayout, new Function1<NoteTabLayout, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$onConfigurationChanged$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteTabLayout noteTabLayout) {
                invoke2(noteTabLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteTabLayout it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.notifyDataSetChanged();
            }
        });
        m46982b2();
        getBinding$note_overseasRelease().funcLayout.updateToolsIconByScreen();
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new FunctionToolPopupHideEvent());
        getBinding$note_overseasRelease().funcLayout.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.f1k
            @Override // java.lang.Runnable
            public final void run() {
                NoteScribbleFragment.m46922o1(NoteScribbleFragment.this);
            }
        }, 100L);
        m46932A1(true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        globalBundle.postEvent(new ForceCloseKeyboardEvent(null, 1, null));
        globalBundle.postEvent(new UnregisterKeyboardHelperEvent());
        m46942F1();
        m46949J0();
        m46945H0();
        m46934B1();
        NoteOutlineDragContainer leftSideBarLayout = getBinding$note_overseasRelease().leftSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(leftSideBarLayout, "leftSideBarLayout");
        m46990f2(leftSideBarLayout);
        NoteOutlineDragContainer rightSideBarLayout = getBinding$note_overseasRelease().rightSideBarLayout;
        Intrinsics.checkNotNullExpressionValue(rightSideBarLayout, "rightSideBarLayout");
        m46990f2(rightSideBarLayout);
        m47000k2();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onContentViewSizeChangedEvent(@NotNull ContentViewSizeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46980a2();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063281, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentNoteScribbleBinding inflate = FragmentNoteScribbleBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding$note_overseasRelease(inflate);
        m46997j1();
        m46999k1();
        ConstraintLayout root = getBinding$note_overseasRelease().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AutoReLockNoteManager.INSTANCE.stop();
        m46949J0();
        this.editorBundleManager.destroy();
        Iterator<T> it2 = this.globalEventHandlers.iterator();
        while (it2.hasNext()) {
            ((EventHandler) it2.next()).destroy();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        GlobalBundle.INSTANCE.postEvent(new UnregisterKeyboardHelperEvent());
        EasyWindow.recycleAll();
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new StopScreenCaptureServiceEvent());
        m46967T1();
        getBinding$note_overseasRelease().funcLayout.stopMedia();
        getBinding$note_overseasRelease().inputTextLayout.destroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        CloudStorageManager.INSTANCE.getOurInstance().unregister(this);
        Context context = getContext();
        if (context != null) {
            ContextKt.unregisterWindowLocationChangeListener(context, this.windowChangeListener);
        }
        super.onDetach();
    }

    @Override // com.onyx.android.sdk.universal.editor.view.EditorViewDownListener
    public void onDown(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        AutoReLockNoteManager.INSTANCE.delayReLockNoteTask(id);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditNoteEncryptionChangedEvent(@NotNull EditNoteEncryptionChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46986d2(EditorBundleKt.docId(editorBundle$note_overseasRelease()));
    }

    @Override // com.onyx.android.sdk.universal.editor.view.EditorViewFocusChangeListener
    public void onEditorFocusChanged(@NotNull EditorBundle last, @NotNull EditorBundle current) {
        Intrinsics.checkNotNullParameter(last, "last");
        Intrinsics.checkNotNullParameter(current, "current");
        EditorBundleKt.unregister(last, this);
        EditorBundleKt.register(current, this);
        m47012u0();
        if (!Intrinsics.areEqual(EditorBundleKt.docId(last), EditorBundleKt.docId(current))) {
            m46952K1(EditorBundleKt.docId(current));
        }
        DocCollectionBundle.INSTANCE.postEvent(new EditorBundleChangedEvent(last, current));
        closeSelectionMenu$note_overseasRelease();
        m46949J0();
        AutoReLockNoteManager.INSTANCE.delayReLockNoteTask(EditorBundleKt.docId(current));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFocusedEditorDocSwitched(@NotNull FocusedEditorDocSwitchEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteTabData selectedItem = getBinding$note_overseasRelease().tabLayout.getSelectedItem();
        if (Intrinsics.areEqual(selectedItem != null ? selectedItem.getUniqueId() : null, event.getDocId())) {
            return;
        }
        m46952K1(event.getDocId());
        closeSelectionMenu$note_overseasRelease();
        m46949J0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(event, "event");
        RxjavaKt.subscribeWithDefault$default(new InitTapeShapeGlobalStateAction(editorBundle$note_overseasRelease(), this.editorBundleManager, true).build(), null, null, null, 7, null);
        String searchText = event.getOpenDocArgs().getSearchText();
        if (!StringKt.isNotBlank(searchText)) {
            searchText = null;
        }
        if (searchText == null) {
            return;
        }
        NoteOutlineFragment.INSTANCE.clearLastOutlineType();
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new OpenSlideBarEvents(SlideBarType.SLIDE_OUTLINE, new OverviewSearchEvent(searchText, event.getOpenDocArgs().getSearchType())));
        List<RectF> searchRectList = event.getOpenDocArgs().getSearchRectList();
        if (searchRectList != null) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) searchRectList);
            RectF rectF = (RectF) firstOrNull;
            if (rectF == null) {
                return;
            }
            OnyxErrorHandler.executeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new LocateRectInPageAction(editorBundle$note_overseasRelease(), event.getOpenDocArgs().getPageId(), rectF), null, null, 3, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGlobalDocumentOpenSuccessEvent(@NotNull GlobalDocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (PencilBoxManager.INSTANCE.hasSelectedPen()) {
            return;
        }
        m47017x0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideSelectionMenuEvent(@NotNull HideSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getSelectionMenuView$note_overseasRelease().cancel();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMemberChargeEvent(@NotNull MemberChargeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isResumed()) {
            FeatureChargeArgs featureChargeArgs = new FeatureChargeArgs();
            featureChargeArgs.setFunctionFrom(event.getTriggerFrom());
            OpenMemberChargeAction openMemberChargeAction = new OpenMemberChargeAction(featureChargeArgs);
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            RxBaseAction.execute$default(openMemberChargeAction.setActivityContext(requireActivity), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveActivityToBackEvent(@NotNull MoveScribbleActivityToBackEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        requireActivity().moveTaskToBack(true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteOverviewCloseDocumentEvent(@NotNull NoteOverviewCloseDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding$note_overseasRelease().tabLayout.closeTab(event.getTab());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteOverviewStartActivateDocumentEvent(@NotNull NoteOverviewStartActivateDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46949J0();
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new StartActivateDocumentEvent(event.getDocId(), null, true, null, false, 26, null));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOpenSlideBarEvent(@NotNull final OpenSlideBarEvents event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteOutlineDragContainer m46951K0 = m46951K0(event.getSlideBarType());
        if (!m47005n1(m46951K0, event.getSlideBarType())) {
            m46954L1(true, m46951K0, event.getSlideBarType());
        }
        if (event.getSubEvent() != null) {
            ViewKt.postSelf(m46951K0, new Function1<NoteOutlineDragContainer, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$onOpenSlideBarEvent$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NoteOutlineDragContainer noteOutlineDragContainer) {
                    invoke2(noteOutlineDragContainer);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NoteOutlineDragContainer it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    NoteScribbleFragment.this.getEditorBundleManager().postEvent(event.getSubEvent());
                }
            });
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        editorBundle$note_overseasRelease().getUiBundle().checkUIState();
        this.editorBundleManager.postEvent(new ActivityPausedEvent());
        GlobalBundle.INSTANCE.postEvent(new CancelFingerClickTimerEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPickFileToInsertPagesEvent(@NotNull final PickFileToInsertPagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FilePickerBuilder maxSelectCount = FilePickerBuilder.INSTANCE.getInstance().onlyPdf().multiEnable(false).setMaxSelectCount(ResManager.INSTANCE.getInteger(C10651R.integer.file_picker_insert_page_max_count));
        FilePickerArgs filePickerArgs = new FilePickerArgs();
        filePickerArgs.setInsertPageIndex(event.getInsertPageIndex());
        maxSelectCount.addFilePickerPageArgs(filePickerArgs).pickFile((Fragment) this, false, PickerFileConst.PICKER_FILE_INSERT_PAGE_CODE, (Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit>) new Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$onPickFileToInsertPagesEvent$2
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ArrayList<DocumentBean> arrayList, WeakReference<Activity> weakReference) {
                invoke2(arrayList, weakReference);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ArrayList<DocumentBean> files, @NotNull WeakReference<Activity> activityReference) {
                Intrinsics.checkNotNullParameter(files, "files");
                Intrinsics.checkNotNullParameter(activityReference, "activityReference");
                OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new InsertPageFromFileAction(activityReference, files, PickFileToInsertPagesEvent.this.getInsertPageIndex(), true).build(), null, null, 3, null);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPickImagesToInsertPagesEvent(@NotNull PickImagesToInsertPagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Matisse from = Matisse.from(this);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        MatisseKt.buildSelectionCreator(from).forResult(1003);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPickerInsertImageShapeEvent(@NotNull PickInsertImageShapesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Matisse from = Matisse.from(this);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        MatisseKt.buildSelectionCreator(from).forResult(event.getRequestCode());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitNoteDocumentEvent(@NotNull QuitNoteDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47020y1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitPendingHandlerEvent(@NotNull QuitPendingHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        closeSelectionMenu$note_overseasRelease();
        m46949J0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReLockNoteEvent(@NotNull ReLockNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46986d2(EditorBundleKt.docId(editorBundle$note_overseasRelease()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRequestPermissionEvent(@NotNull final RequestPermissionEvent event) {
        List<String> list;
        Intrinsics.checkNotNullParameter(event, "event");
        PermissionMediator init = PermissionX.init(this);
        list = CollectionsKt___CollectionsKt.toList(event.getPermissionList());
        init.permissions(list).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.h1k
            @Override // com.permissionx.guolindev.callback.RequestCallback
            public final void onResult(boolean z, List list2, List list3) {
                NoteScribbleFragment.m46927r1(NoteScribbleFragment.this, event, z, list2, list3);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.editorBundleManager.postEvent(new ActivityResumeEvent());
        m46936C1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        Bundle arguments;
        Intrinsics.checkNotNullParameter(outState, "outState");
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel != null && (arguments = getArguments()) != null) {
            arguments.putString("args", JSONUtils.INSTANCE.toJson(OpenDocArgs.INSTANCE.createFrom(syncNoteModel)));
        }
        String takePicturePath = getViewModel().getTakePicturePath();
        if (takePicturePath != null) {
            outState.putString(ContentApiSubscriber.KEY_TAKE_PICTURE, takePicturePath);
        }
        super.onSaveInstanceState(outState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleBeginEvent(@NotNull ScaleBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46964S0();
        m46949J0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenOffEvent(@NotNull ScreenOffEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        AutoReLockNoteManager.INSTANCE.onScreenOffEvent();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenOnEvent(@NotNull ScreenOnEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46986d2(EditorBundleKt.docId(editorBundle$note_overseasRelease()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScrollBeginEvent(@NotNull ScrollBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46964S0();
        m46949J0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapeHandlerChangedEvent(@NotNull ShapeHandlerChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getUpdateToolbar()) {
            m47002l2(event.getActiveProviderName());
        }
        ShapeHandlerManager shapeHandlerManager = editorBundle$note_overseasRelease().getUiBundle().getHandlerManager().getShapeHandlerManager();
        if (!shapeHandlerManager.isTextInputHandler()) {
            ViewKt.setViewVisibleOrGone(getBinding$note_overseasRelease().inputTextLayout, false);
            getBinding$note_overseasRelease().shapeAndTool.getToolDragView().updateBottomYOffset(0.0f);
        }
        if (shapeHandlerManager.isTransformHandler() || shapeHandlerManager.isSelectionHandler() || shapeHandlerManager.isAnnotationSelection()) {
            return;
        }
        getSelectionMenuView$note_overseasRelease().cancel();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapeToolTypeRecoverEvent(@NotNull ShapeToolTypeRecoverEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ViewKt.postSelf(getBinding$note_overseasRelease().shapeAndTool, new Function1<ShapeAndToolContainer, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$onShapeToolTypeRecoverEvent$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeAndToolContainer shapeAndToolContainer) {
                invoke2(shapeAndToolContainer);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShapeAndToolContainer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.getToolDragView().onPenTypeRecover();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapeToolbarChangeEvent(@NotNull ShapeToolbarChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getPenViewModel$note_overseasRelease().loadShapeToolbar();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowQuotePopupEvent(@NotNull ShowQuotePopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new QuotePopup(requireContext, editorBundle$note_overseasRelease(), event.getArgs()).show(this.editorBundleManager.focusEditorView());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowShortcutBarCustomPopupEvent(@NotNull ShowShortcutBarCustomPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteOutlineDragContainer noteOutlineDragContainer = getBinding$note_overseasRelease().leftSideBarLayout;
        if (!ViewKt.isVisible(noteOutlineDragContainer)) {
            noteOutlineDragContainer = null;
        }
        if (noteOutlineDragContainer != null) {
            m46954L1(false, noteOutlineDragContainer, SlideBarType.SLIDE_OUTLINE);
        }
        NoteOutlineDragContainer noteOutlineDragContainer2 = getBinding$note_overseasRelease().rightSideBarLayout;
        NoteOutlineDragContainer noteOutlineDragContainer3 = ViewKt.isVisible(noteOutlineDragContainer2) ? noteOutlineDragContainer2 : null;
        if (noteOutlineDragContainer3 != null) {
            m46954L1(false, noteOutlineDragContainer3, SlideBarType.SLIDE_OUTLINE);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowTagShapePopupEvent(@NotNull ShowTagShapePopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new TagShapePopup(requireContext, editorBundle$note_overseasRelease(), event.getBoxInfo(), event.getShape()).show(this.editorBundleManager.focusEditorView());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        m46949J0();
        FragmentActivity activity = getActivity();
        boolean isFinishing = activity != null ? activity.isFinishing() : true;
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onStop, isFinishing = " + isFinishing, new Object[0]);
        if (isFinishing) {
            return;
        }
        this.editorBundleManager.saveDocument();
        this.editorBundleManager.postEvent(new ActivityStopEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSwitchExcerptTypeEvent(@NotNull SwitchExcerptTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding$note_overseasRelease().shapeAndTool.updateExcerptTypeUi();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextInputToolViewVisibleChangeEvent(@NotNull TextToolViewVisibleChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getBinding$note_overseasRelease().shapeAndTool.getToolDragView().updateBottomYOffset(event.getDisplayHeight());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateAllLockedNotePasswordEvent(@NotNull UpdateAllLockedNotePasswordEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        new UpdateEditorNoteModelEncryptionAction(editorBundle$note_overseasRelease(), event.getPassword()).build().doOnNext(new C12218l()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUserNoteListImportedEvent(@NotNull UserNoteListImportedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getViewModel().onUserNoteListImported(this.editorBundleManager, event.getCopyNoteListArgs(), new Consumer() { // from class: com.sunia.HTREnginev2.m1k
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteScribbleFragment.m46929t1(NoteScribbleFragment.this, (SyncNoteModel) obj);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m46942F1();
        m46940E1();
        SyncNoteModel syncNoteModel = this.noteModel;
        String uniqueId = syncNoteModel != null ? syncNoteModel.getUniqueId() : null;
        if (uniqueId == null) {
            uniqueId = "";
        }
        if (uniqueId.length() == 0) {
            requireActivity().finish();
            return;
        }
        Observable doOnNext = m46984c2(uniqueId).doOnNext(new C12219m()).flatMap(new C12220n()).doOnNext(new C12221o());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(@Nullable Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (savedInstanceState != null) {
            m46950J1(savedInstanceState);
        }
    }

    /* renamed from: p1 */
    public final void m47008p1() {
        ContainerRectChangedEvent containerRectChangedEvent = new ContainerRectChangedEvent(getEditorContainerRect$note_overseasRelease());
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), containerRectChangedEvent);
        GlobalBundle.INSTANCE.postEvent(containerRectChangedEvent);
    }

    /* renamed from: q1 */
    public final void m47009q1(NoteTabData tabData) {
        SyncNoteModel syncNoteModel;
        if (tabData == null || (syncNoteModel = this.noteModel) == null) {
            return;
        }
        EditorBundleKt.postEvent(m46947I0(), new NoteTabDataChangedEvent(editorBundle$note_overseasRelease(), syncNoteModel, tabData));
    }

    /* renamed from: s1 */
    public final void m47010s1() {
        List mutableListOf;
        String takePicturePath = getViewModel().getTakePicturePath();
        if (takePicturePath == null || takePicturePath.length() == 0) {
            return;
        }
        getViewModel().setTakePicturePath(null);
        File file = new File(takePicturePath);
        if (file.exists()) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Uri.fromFile(file));
            EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new InsertImagesEvent(mutableListOf));
        }
    }

    public final void setBinding$note_overseasRelease(@NotNull FragmentNoteScribbleBinding fragmentNoteScribbleBinding) {
        Intrinsics.checkNotNullParameter(fragmentNoteScribbleBinding, "<set-?>");
        this.binding = fragmentNoteScribbleBinding;
    }

    public final void setEditorBundleManager$note_overseasRelease(@NotNull EditorBundleManager editorBundleManager) {
        Intrinsics.checkNotNullParameter(editorBundleManager, "<set-?>");
        this.editorBundleManager = editorBundleManager;
    }

    public final void setPenViewModel$note_overseasRelease(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "<set-?>");
        this.penViewModel = penViewModel;
    }

    public final void setSideLayoutAnim(boolean z) {
        this.isSideLayoutAnim = z;
    }

    public final void setViewModel(@NotNull NoteScribbleViewModel noteScribbleViewModel) {
        Intrinsics.checkNotNullParameter(noteScribbleViewModel, "<set-?>");
        this.viewModel = noteScribbleViewModel;
    }

    @Override // com.onyx.android.sdk.universal.editor.view.SplitScreenListener
    public void splitScreen(@NotNull View editorView, @NotNull SplitScreenPosition position) {
        Intrinsics.checkNotNullParameter(editorView, "editorView");
        Intrinsics.checkNotNullParameter(position, "position");
        getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout().splitScreen(editorView, position);
    }

    public final void switchToLastTool$note_overseasRelease() {
        if (getPenViewModel$note_overseasRelease().getLastPenType().isInvalid()) {
            return;
        }
        if (getPenViewModel$note_overseasRelease().getLastPenType().getLastShapeTool() != null) {
            ShapeToolType lastShapeTool = getPenViewModel$note_overseasRelease().getLastPenType().getLastShapeTool();
            Intrinsics.checkNotNull(lastShapeTool);
            ensureSwitchUserTool$note_overseasRelease(lastShapeTool);
        } else if (getPenViewModel$note_overseasRelease().getLastPenType().getLastPenId() != null) {
            PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
            PenArgs penArgsById = companion.hasPenBox() ? PencilBoxManager.Companion.getPenBox$default(companion, null, 1, null).getPenArgsById(getPenViewModel$note_overseasRelease().getLastPenType().getLastPenId()) : null;
            if (penArgsById != null) {
                EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new ShowPenBoxEvent(penArgsById, false));
            }
        }
    }

    /* renamed from: t0 */
    public final void m47011t0(NoteTabData noteTabData) {
        m46949J0();
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new StartActivateDocumentEvent(noteTabData.getUniqueId(), null, false, null, false, 26, null));
    }

    /* renamed from: u0 */
    public final void m47012u0() {
        getBinding$note_overseasRelease().shapeAndTool.setEditorBundle(editorBundle$note_overseasRelease());
        getBinding$note_overseasRelease().funcLayout.setEditorBundle(editorBundle$note_overseasRelease());
        m47014v0();
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new ReactivePenBoxEvent(false, false));
        EditorTouchMode editTouchMode$default = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null);
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), new ChangeTouchModeEvent(editTouchMode$default, editTouchMode$default));
    }

    /* renamed from: u1 */
    public final void m47013u1() {
        int[] rootLocation$note_overseasRelease = getRootLocation$note_overseasRelease();
        if (rootLocation$note_overseasRelease != null) {
            GlobalBundle.INSTANCE.postEvent(new WindowLocationChangedEvent(rootLocation$note_overseasRelease));
        }
        if (!EditorBundleKt.shapeHandlerManager(editorBundle$note_overseasRelease()).isTextInputHandler()) {
            m46949J0();
        } else if (ViewKt.isVisible(getTextBox$note_overseasRelease())) {
            getBinding$note_overseasRelease().inputTextLayout.getTextInputHelper().resetLimitRect();
        }
    }

    /* renamed from: v0 */
    public final void m47014v0() {
        TextInputHelper textInputHelper = getBinding$note_overseasRelease().inputTextLayout.getTextInputHelper();
        if (textInputHelper.getTextShape() != null && textInputHelper.isEditorBundleChanges(editorBundle$note_overseasRelease())) {
            GlobalBundle.INSTANCE.postEvent(new ForceCloseKeyboardEvent(textInputHelper.getEditorBundle()));
        }
        textInputHelper.saveTextShape().doFinally(new Action() { // from class: com.sunia.HTREnginev2.j1k
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteScribbleFragment.m46930w0(NoteScribbleFragment.this);
            }
        }).subscribe();
    }

    /* renamed from: v1 */
    public final void m47015v1() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Bundle arguments = getArguments();
        OpenDocArgs openDocArgs = (OpenDocArgs) jSONUtils.parseObject(arguments != null ? arguments.getString("args") : null, OpenDocArgs.class);
        if (openDocArgs != null) {
            openDocArgs.setDoAnimation(false);
            openDocArgs.setPreLoadData(true);
            SyncNoteModel syncNoteModel = new SyncNoteModel();
            syncNoteModel.setUniqueId(openDocArgs.getDocumentId());
            this.noteModel = syncNoteModel;
            EditorBundleKt.postEvent(editorBundle$note_overseasRelease(), StartActivateDocumentEvent.Companion.createFrom$default(StartActivateDocumentEvent.INSTANCE, openDocArgs, false, 2, (Object) null));
        }
    }

    /* renamed from: w1 */
    public final void m47016w1() {
        EditorBundle editorBundle$note_overseasRelease = editorBundle$note_overseasRelease();
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "<get-lifecycle>(...)");
        EditorBundleKt.postEvent(editorBundle$note_overseasRelease, new EditorCreatedEvent(lifecycle, this));
    }

    /* renamed from: x0 */
    public final void m47017x0() {
        Object orElse = AnyKt.getOrElse(getPenViewModel$note_overseasRelease().getPenType().getValue(), new Function0<ShapeToolType>() { // from class: com.onyx.galaxy.note.editor.ui.NoteScribbleFragment$activateShapeHandler$shapeToolType$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShapeToolType invoke() {
                return ShapeToolType.INK_PEN;
            }
        });
        Intrinsics.checkNotNullExpressionValue(orElse, "getOrElse(...)");
        ShapeToolType shapeToolType = (ShapeToolType) orElse;
        DocCollectionBundle.INSTANCE.postEvent(new ActivateShapeHandlerEvent(ShapeToolType.INSTANCE.toShapeHandlerProviderName(shapeToolType), true, Integer.valueOf(shapeToolType.getShapeType())));
    }

    /* renamed from: x1 */
    public final void m47018x1(EditorBundle editorBundle) {
        EditorBundleKt.postEvent(editorBundle, new QuitExcerptSelectionEvent(false, null, 2, null));
    }

    /* renamed from: y0 */
    public final void m47019y0() {
        Iterator<T> it2 = this.editorBundleManager.getEditorViewHandlers().iterator();
        while (it2.hasNext()) {
            m47021z0(((EditorViewHandler) it2.next()).getEditorBundle());
        }
    }

    /* renamed from: y1 */
    public final void m47020y1() {
        requireActivity().finish();
    }

    /* renamed from: z0 */
    public final void m47021z0(EditorBundle editorBundle) {
        ContentApiSubscriber contentApiSubscriber = new ContentApiSubscriber(getViewModel(), this);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        contentApiSubscriber.setScreenCaptureLauncher(FragmentKt.screenCapture(this, requireContext, new C12206a(contentApiSubscriber)));
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        contentApiSubscriber.setScreenBitmapCaptureLauncher(FragmentKt.screenCapture(this, requireContext2, new C12207b(contentApiSubscriber)));
        contentApiSubscriber.setTakePictureLauncher(FragmentKt.takePicture(this, new C12208c(contentApiSubscriber)));
        contentApiSubscriber.setGetImageContentLauncher(FragmentKt.getMultipleContents(this, new C12209d(contentApiSubscriber)));
        contentApiSubscriber.setGetImageStickerContentLauncher(FragmentKt.getMultipleContents(this, new C12210e(contentApiSubscriber)));
        contentApiSubscriber.setGetFilePageContentLauncher(FragmentKt.getSingleDocuments(this, new C12211f(contentApiSubscriber)));
        contentApiSubscriber.setGetImagePageContentLauncher(FragmentKt.getMultipleContents(this, new C12212g(contentApiSubscriber)));
        contentApiSubscriber.setTakePicturePageLauncher(FragmentKt.takePicture(this, new C12213h(contentApiSubscriber)));
        editorBundle.getUiBundle().getApiManager().addApiSubscriber(contentApiSubscriber);
    }

    /* renamed from: z1 */
    public final void m47022z1(EditorBundle editorBundle) {
        EditorBundleKt.postEvent(editorBundle, new QuitTransformEvent(false, 1, null));
    }
}

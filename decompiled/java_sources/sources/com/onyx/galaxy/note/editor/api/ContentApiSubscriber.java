package com.onyx.galaxy.note.editor.api;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.api.BaseApiSubscriber;
import com.onyx.android.sdk.universal.editor.events.app.MoveScribbleActivityToBackEvent;
import com.onyx.android.sdk.universal.editor.events.app.RequestPermissionEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertFilePagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagePagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertPicturePageEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertStickerImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.PickStickerImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenBitmapCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenCaptureCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenCaptureEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenCaptureStartedEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartScreenBitmapCaptureEvent;
import com.onyx.android.sdk.universal.editor.events.note.StopScreenCaptureServiceEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakePictureEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakePictureToInsertPageEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakeScreenCaptureEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.action.TakePhotoAction;
import com.onyx.galaxy.note.common.extension.LifecycleEventListener;
import com.onyx.galaxy.note.common.extension.LifecycleEventListenerKt;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.editor.action.SelectCaptureRectAction;
import com.onyx.galaxy.note.editor.api.ContentApiSubscriber;
import com.onyx.galaxy.note.editor.service.ScreenCaptureService;
import com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import io.reactivex.rxjava3.functions.Action;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;

@Metadata(m61527d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 [2\u00020\u0001:\u0001[B\u001b\u0012\u0006\u00103\u001a\u00020.\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000104¢\u0006\u0004\bY\u0010ZJ*\u0010\n\u001a\u00020\t2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u001eH\u0007J\u0016\u0010#\u001a\u00020\t2\u000e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 J\u0016\u0010$\u001a\u00020\t2\u000e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 J\u000e\u0010&\u001a\u00020\t2\u0006\u0010%\u001a\u00020!J\u0014\u0010&\u001a\u00020\t2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030'J\u0014\u0010)\u001a\u00020\t2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030'J\u0014\u0010*\u001a\u00020\t2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030'J\u0014\u0010+\u001a\u00020\t2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030'J\u000e\u0010,\u001a\u00020\t2\u0006\u0010%\u001a\u00020!J\b\u0010-\u001a\u00020\tH\u0016R\u0017\u00103\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u00105R(\u00108\u001a\b\u0012\u0004\u0012\u0002070\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R(\u0010>\u001a\b\u0012\u0004\u0012\u0002070\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b>\u00109\u001a\u0004\b?\u0010;\"\u0004\b@\u0010=R(\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bA\u00109\u001a\u0004\bB\u0010;\"\u0004\bC\u0010=R(\u0010E\u001a\b\u0012\u0004\u0012\u00020D0\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bE\u00109\u001a\u0004\bF\u0010;\"\u0004\bG\u0010=R(\u0010H\u001a\b\u0012\u0004\u0012\u00020D0\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bH\u00109\u001a\u0004\bI\u0010;\"\u0004\bJ\u0010=R.\u0010L\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020D0K0\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bL\u00109\u001a\u0004\bM\u0010;\"\u0004\bN\u0010=R(\u0010O\u001a\b\u0012\u0004\u0012\u00020D0\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bO\u00109\u001a\u0004\bP\u0010;\"\u0004\bQ\u0010=R(\u0010R\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bR\u00109\u001a\u0004\bS\u0010;\"\u0004\bT\u0010=R\u0016\u0010X\u001a\u00020U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010W¨\u0006\\"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;", "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/net/Uri;", "launcher", "", "nextEvent", "Ljava/io/File;", "file", "", "b", "Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;", NotificationCompat.CATEGORY_EVENT, "onTakeScreenCaptureEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureEvent;", "onScreenCaptureEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureStartedEvent;", "onScreenCaptureStartedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureCancelEvent;", "onScreenCaptureCancelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartScreenBitmapCaptureEvent;", "onScreenBitmapCaptureEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StopScreenCaptureServiceEvent;", "onStopScreenCaptureServiceEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureEvent;", "onTakePictureEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesEvent;", "onPickImagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/PickStickerImagesEvent;", "onPickStickerImagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureToInsertPageEvent;", "onTakePictureToInsertPageEvent", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroid/content/Intent;", Name.REFER, "handleScreenCaptureResult", "handleScreenBitmapCaptureResult", v6l.f87196g, "handleImageTakeResult", "", "uriList", "handleImageStickerTakeResult", "handleInsertFilePageTakeResult", "handleInsertImagePageTakeResult", "handleInsertPicturePageTakeResult", "destroy", "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;", "a", "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;", "getViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;", "viewModel", "Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;", "Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/os/Bundle;", "screenCaptureLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "getScreenCaptureLauncher", "()Landroidx/activity/result/ActivityResultLauncher;", "setScreenCaptureLauncher", "(Landroidx/activity/result/ActivityResultLauncher;)V", "screenBitmapCaptureLauncher", "getScreenBitmapCaptureLauncher", "setScreenBitmapCaptureLauncher", "takePictureLauncher", "getTakePictureLauncher", "setTakePictureLauncher", "", "getImageContentLauncher", "getGetImageContentLauncher", "setGetImageContentLauncher", "getImageStickerContentLauncher", "getGetImageStickerContentLauncher", "setGetImageStickerContentLauncher", "", "getFilePageContentLauncher", "getGetFilePageContentLauncher", "setGetFilePageContentLauncher", "getImagePageContentLauncher", "getGetImagePageContentLauncher", "setGetImagePageContentLauncher", "takePicturePageLauncher", "getTakePicturePageLauncher", "setTakePicturePageLauncher", "Landroidx/lifecycle/Lifecycle$Event;", "c", "Landroidx/lifecycle/Lifecycle$Event;", "currentState", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ContentApiSubscriber extends BaseApiSubscriber {

    @NotNull
    public static final String KEY_TAKE_PICTURE = "take_picture";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleViewModel viewModel;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public LifecycleEventListener listener;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Lifecycle.Event currentState;
    public ActivityResultLauncher<String[]> getFilePageContentLauncher;
    public ActivityResultLauncher<String> getImageContentLauncher;
    public ActivityResultLauncher<String> getImagePageContentLauncher;
    public ActivityResultLauncher<String> getImageStickerContentLauncher;
    public ActivityResultLauncher<Bundle> screenBitmapCaptureLauncher;
    public ActivityResultLauncher<Bundle> screenCaptureLauncher;
    public ActivityResultLauncher<Uri> takePictureLauncher;
    public ActivityResultLauncher<Uri> takePicturePageLauncher;

    public ContentApiSubscriber(@NotNull NoteScribbleViewModel viewModel, @Nullable LifecycleEventListener lifecycleEventListener) {
        Lifecycle.Event stateEvent;
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.viewModel = viewModel;
        this.listener = lifecycleEventListener;
        this.currentState = (lifecycleEventListener == null || (stateEvent = lifecycleEventListener.getStateEvent()) == null) ? Lifecycle.Event.ON_ANY : stateEvent;
    }

    /* renamed from: c */
    public static /* synthetic */ void m45991c(ContentApiSubscriber contentApiSubscriber, ActivityResultLauncher activityResultLauncher, Object obj, File file, int i, Object obj2) {
        if ((i & 4) != 0) {
            file = null;
        }
        contentApiSubscriber.m45993b(activityResultLauncher, obj, file);
    }

    /* renamed from: d */
    public static final void m45992d(TakePhotoAction action, ContentApiSubscriber this$0, Object nextEvent) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(nextEvent, "$nextEvent");
        if (action.isGranted()) {
            return;
        }
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new RequestPermissionEvent(nextEvent).setPermissions(action.getPermission()));
    }

    /* renamed from: b */
    public final void m45993b(ActivityResultLauncher<Uri> launcher, final Object nextEvent, File file) {
        final TakePhotoAction takePhotoAction = new TakePhotoAction(null, launcher, file);
        takePhotoAction.build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.oae
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ContentApiSubscriber.m45992d(TakePhotoAction.this, this, nextEvent);
            }
        }).subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.api.BaseApiSubscriber
    public void destroy() {
        super.destroy();
        getGetImageContentLauncher().unregister();
        getTakePictureLauncher().unregister();
        getScreenCaptureLauncher().unregister();
        this.listener = null;
    }

    @NotNull
    public final ActivityResultLauncher<String[]> getGetFilePageContentLauncher() {
        ActivityResultLauncher<String[]> activityResultLauncher = this.getFilePageContentLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("getFilePageContentLauncher");
        return null;
    }

    @NotNull
    public final ActivityResultLauncher<String> getGetImageContentLauncher() {
        ActivityResultLauncher<String> activityResultLauncher = this.getImageContentLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("getImageContentLauncher");
        return null;
    }

    @NotNull
    public final ActivityResultLauncher<String> getGetImagePageContentLauncher() {
        ActivityResultLauncher<String> activityResultLauncher = this.getImagePageContentLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("getImagePageContentLauncher");
        return null;
    }

    @NotNull
    public final ActivityResultLauncher<String> getGetImageStickerContentLauncher() {
        ActivityResultLauncher<String> activityResultLauncher = this.getImageStickerContentLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("getImageStickerContentLauncher");
        return null;
    }

    @NotNull
    public final ActivityResultLauncher<Bundle> getScreenBitmapCaptureLauncher() {
        ActivityResultLauncher<Bundle> activityResultLauncher = this.screenBitmapCaptureLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("screenBitmapCaptureLauncher");
        return null;
    }

    @NotNull
    public final ActivityResultLauncher<Bundle> getScreenCaptureLauncher() {
        ActivityResultLauncher<Bundle> activityResultLauncher = this.screenCaptureLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("screenCaptureLauncher");
        return null;
    }

    @NotNull
    public final ActivityResultLauncher<Uri> getTakePictureLauncher() {
        ActivityResultLauncher<Uri> activityResultLauncher = this.takePictureLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("takePictureLauncher");
        return null;
    }

    @NotNull
    public final ActivityResultLauncher<Uri> getTakePicturePageLauncher() {
        ActivityResultLauncher<Uri> activityResultLauncher = this.takePicturePageLauncher;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("takePicturePageLauncher");
        return null;
    }

    @NotNull
    public final NoteScribbleViewModel getViewModel() {
        return this.viewModel;
    }

    public final void handleImageStickerTakeResult(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        if (CollectionKt.isNullOrEmpty(uriList)) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new InsertStickerImagesEvent(uriList));
    }

    public final void handleImageTakeResult(@NotNull Intent intent) {
        List<? extends Uri> listOf;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        this.viewModel.setTakePicturePath(null);
        Debug.INSTANCE.m32035d(ContentApiSubscriber.class, "take picture uri:" + data, new Object[0]);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(data);
        handleImageTakeResult(listOf);
    }

    public final void handleInsertFilePageTakeResult(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        if (CollectionKt.isNullOrEmpty(uriList)) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new InsertFilePagesEvent(uriList));
    }

    public final void handleInsertImagePageTakeResult(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        if (CollectionKt.isNullOrEmpty(uriList)) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new InsertImagePagesEvent(uriList));
    }

    public final void handleInsertPicturePageTakeResult(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        Debug.INSTANCE.m32035d(ContentApiSubscriber.class, "take picture uri:" + data, new Object[0]);
        EditorBundleKt.postEvent(getEditorBundle(), new InsertPicturePageEvent(data));
    }

    public final void handleScreenBitmapCaptureResult(@NotNull AtomicReference<Intent> reference) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Intent intent = reference.get();
        if (intent == null) {
            EditorBundleKt.postEvent(getEditorBundle(), new ScreenBitmapCancelEvent());
            return;
        }
        if (LifecycleEventListenerKt.isAtLeast(this.currentState, Lifecycle.Event.ON_STOP)) {
            EditorBundleKt.postEvent(getEditorBundle(), new MoveScribbleActivityToBackEvent());
        }
        ScreenCaptureService.Companion companion = ScreenCaptureService.INSTANCE;
        companion.setEventBus(EditorBundleKt.appEventBus(getEditorBundle()));
        companion.screenBitmapCapture(ResManager.INSTANCE.getAppContext(), intent);
    }

    public final void handleScreenCaptureResult(@NotNull AtomicReference<Intent> reference) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Intent intent = reference.get();
        if (intent == null) {
            return;
        }
        if (LifecycleEventListenerKt.isAtLeast(this.currentState, Lifecycle.Event.ON_STOP)) {
            EditorBundleKt.postEvent(getEditorBundle(), new MoveScribbleActivityToBackEvent());
        }
        ScreenCaptureService.INSTANCE.screenCapture(ResManager.INSTANCE.getAppContext(), intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPickImagesEvent(@NotNull PickImagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getGetImageContentLauncher().launch("image/*");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPickStickerImagesEvent(@NotNull PickStickerImagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getGetImageStickerContentLauncher().launch("image/*");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenBitmapCaptureEvent(@NotNull StartScreenBitmapCaptureEvent event) {
        Lifecycle.Event stateEvent;
        Intrinsics.checkNotNullParameter(event, "event");
        LifecycleEventListener lifecycleEventListener = this.listener;
        if (lifecycleEventListener != null && (stateEvent = lifecycleEventListener.getStateEvent()) != null) {
            this.currentState = Lifecycle.Event.valueOf(stateEvent.name());
        }
        getScreenBitmapCaptureLauncher().launch(new Bundle());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenCaptureCancelEvent(@NotNull ScreenCaptureCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        StatisticsExtKt.reportNoteEvent$default(getEditorBundle(), OnyxStatisticConstant.ID_NOTE_SCREENSHOT_CLICK_CANCEL, null, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenCaptureEvent(@NotNull ScreenCaptureEvent event) {
        Lifecycle.Event stateEvent;
        Intrinsics.checkNotNullParameter(event, "event");
        Bundle bundle = new Bundle();
        Rect rect = event.getRect();
        if (rect != null) {
            bundle.putString("rect", rect.flattenToString());
        }
        LifecycleEventListener lifecycleEventListener = this.listener;
        if (lifecycleEventListener != null && (stateEvent = lifecycleEventListener.getStateEvent()) != null) {
            this.currentState = Lifecycle.Event.valueOf(stateEvent.name());
        }
        getScreenCaptureLauncher().launch(bundle);
        StatisticsExtKt.reportNoteEvent$default(getEditorBundle(), OnyxStatisticConstant.ID_NOTE_SCREENSHOT_CLICK_DONE, null, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenCaptureStartedEvent(@NotNull ScreenCaptureStartedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        StatisticsExtKt.reportNoteEvent$default(getEditorBundle(), OnyxStatisticConstant.ID_NOTE_SCREENSHOT_VIEW, null, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStopScreenCaptureServiceEvent(@NotNull StopScreenCaptureServiceEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScreenCaptureService.Companion companion = ScreenCaptureService.INSTANCE;
        companion.resetEventBusIfMatch(EditorBundleKt.appEventBus(getEditorBundle()));
        companion.stopService(ResManager.INSTANCE.getAppContext());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTakePictureEvent(@NotNull TakePictureEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        File generateTakePictureFile = TakePhotoAction.INSTANCE.generateTakePictureFile();
        this.viewModel.setTakePicturePath(generateTakePictureFile.getAbsolutePath());
        m45993b(getTakePictureLauncher(), event, generateTakePictureFile);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTakePictureToInsertPageEvent(@NotNull TakePictureToInsertPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m45991c(this, getTakePicturePageLauncher(), event, null, 4, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTakeScreenCaptureEvent(@NotNull TakeScreenCaptureEvent event) {
        final Activity activity;
        Intrinsics.checkNotNullParameter(event, "event");
        if (GlobalBundle.INSTANCE.getUiStates().getIsScreenCapturing() || (activity = getEditorBundle().getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String()) == null) {
            return;
        }
        SelectCaptureRectAction.INSTANCE.requestPermission(activity, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.api.ContentApiSubscriber$onTakeScreenCaptureEvent$1
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
                ScreenCaptureService.Companion companion = ScreenCaptureService.INSTANCE;
                companion.setEventBus(EditorBundleKt.appEventBus(ContentApiSubscriber.this.getEditorBundle()));
                companion.selectCaptureRect(activity);
            }
        });
    }

    public final void setGetFilePageContentLauncher(@NotNull ActivityResultLauncher<String[]> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.getFilePageContentLauncher = activityResultLauncher;
    }

    public final void setGetImageContentLauncher(@NotNull ActivityResultLauncher<String> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.getImageContentLauncher = activityResultLauncher;
    }

    public final void setGetImagePageContentLauncher(@NotNull ActivityResultLauncher<String> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.getImagePageContentLauncher = activityResultLauncher;
    }

    public final void setGetImageStickerContentLauncher(@NotNull ActivityResultLauncher<String> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.getImageStickerContentLauncher = activityResultLauncher;
    }

    public final void setScreenBitmapCaptureLauncher(@NotNull ActivityResultLauncher<Bundle> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.screenBitmapCaptureLauncher = activityResultLauncher;
    }

    public final void setScreenCaptureLauncher(@NotNull ActivityResultLauncher<Bundle> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.screenCaptureLauncher = activityResultLauncher;
    }

    public final void setTakePictureLauncher(@NotNull ActivityResultLauncher<Uri> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.takePictureLauncher = activityResultLauncher;
    }

    public final void setTakePicturePageLauncher(@NotNull ActivityResultLauncher<Uri> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activityResultLauncher, "<set-?>");
        this.takePicturePageLauncher = activityResultLauncher;
    }

    public /* synthetic */ ContentApiSubscriber(NoteScribbleViewModel noteScribbleViewModel, LifecycleEventListener lifecycleEventListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(noteScribbleViewModel, (i & 2) != 0 ? null : lifecycleEventListener);
    }

    public final void handleImageTakeResult(@NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        if (CollectionKt.isNullOrEmpty(uriList)) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new InsertImagesEvent(uriList));
    }
}

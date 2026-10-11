package com.onyx.galaxy.note.editor.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.IBinder;
import android.provider.Settings;
import androidx.core.app.NotificationCompat;
import androidx.core.content.IntentCompat;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.FileKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.universal.editor.action.image.ScreenCaptureAction;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.ScreenBitmapEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.action.SelectCaptureRectAction;
import com.onyx.galaxy.note.editor.service.ScreenCaptureService;
import com.onyx.galaxy.note.settings.action.ActiveEyesComfortAction;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.Date;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\"\u0010\u000b\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;", "Landroid/app/Service;", "", "onDestroy", "Landroid/content/Intent;", v6l.f87196g, "Landroid/os/IBinder;", "onBind", "", "flags", "startId", "onStartCommand", C6997f.f39671c, "d", "", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "c", C6999h.f39688c, "i", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nScreenCaptureService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenCaptureService.kt\ncom/onyx/galaxy/note/editor/service/ScreenCaptureService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,233:1\n1#2:234\n*E\n"})
/* loaded from: classes9.dex */
public final class ScreenCaptureService extends Service {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String NOTIFICATION_CHANNEL_ID = "ScreenCapture";

    @NotNull
    public static final String NOTIFICATION_CHANNEL_NAME = "ScreenCapture";
    public static final int NOTIFICATION_ID = 10;

    @NotNull
    public static final String SCREEN_BITMAP_CAPTURE = "screen_bitmap_capture";

    @NotNull
    public static final String SCREEN_CAPTURE = "screen_capture";

    @NotNull
    public static final String SHOW_EDITOR_WINDOW = "show_editor_widow";

    /* renamed from: e */
    @Nullable
    public static EventBus f58967e;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0001J\u0006\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0014J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;", "", "()V", "NOTIFICATION_CHANNEL_ID", "", "NOTIFICATION_CHANNEL_NAME", "NOTIFICATION_ID", "", "SCREEN_BITMAP_CAPTURE", "SCREEN_CAPTURE", "SHOW_EDITOR_WINDOW", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "postEvent", "", NotificationCompat.CATEGORY_EVENT, "resetEventBus", "resetEventBusIfMatch", "screenBitmapCapture", "context", "Landroid/content/Context;", "data", "Landroid/content/Intent;", "screenCapture", "selectCaptureRect", "activityContext", "setEventBus", "stopService", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void postEvent(@NotNull Object event) {
            Intrinsics.checkNotNullParameter(event, "event");
            EventBus eventBus = ScreenCaptureService.f58967e;
            if (eventBus != null) {
                EventBusHolderKt.safelyPostEvent(eventBus, event);
            }
        }

        public final void resetEventBus() {
            ScreenCaptureService.f58967e = null;
        }

        public final void resetEventBusIfMatch(@NotNull EventBus eventBus) {
            Intrinsics.checkNotNullParameter(eventBus, "eventBus");
            if (Intrinsics.areEqual(ScreenCaptureService.f58967e, eventBus)) {
                resetEventBus();
            }
        }

        public final void screenBitmapCapture(@NotNull Context context, @NotNull Intent data) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(data, "data");
            Intent intent = new Intent(context, (Class<?>) ScreenCaptureService.class);
            intent.putExtra("action", ScreenCaptureService.SCREEN_BITMAP_CAPTURE);
            intent.putExtra("args", data);
            context.startService(intent);
        }

        public final void screenCapture(@NotNull Context context, @NotNull Intent data) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(data, "data");
            Intent intent = new Intent(context, (Class<?>) ScreenCaptureService.class);
            intent.putExtra("action", ScreenCaptureService.SCREEN_CAPTURE);
            intent.putExtra("args", data);
            context.startService(intent);
        }

        public final void selectCaptureRect(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            RxBaseAction.execute$default(new SelectCaptureRectAction(activityContext), null, null, null, 7, null);
        }

        public final void setEventBus(@NotNull EventBus eventBus) {
            Intrinsics.checkNotNullParameter(eventBus, "eventBus");
            ScreenCaptureService.f58967e = eventBus;
        }

        public final void stopService(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.stopService(new Intent(context, (Class<?>) ScreenCaptureService.class));
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.service.ScreenCaptureService$a */
    /* loaded from: classes9.dex */
    public static final class C12135a<T> implements Consumer {

        /* renamed from: e */
        public static final C12135a<T> f58968e = new C12135a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EventBus eventBus = ScreenCaptureService.f58967e;
            if (eventBus != null) {
                EventBusHolderKt.safelyPostEvent(eventBus, new ScreenBitmapEvent(it2));
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.service.ScreenCaptureService$b */
    /* loaded from: classes9.dex */
    public static final class C12136b<T, R> implements Function {

        /* renamed from: e */
        public static final C12136b<T, R> f58969e = new C12136b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            File file = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), FileUtils.INSTANCE.combine(DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME().format(new Date()), "png"));
            BitmapKt.save$default(bitmap, file.getAbsolutePath(), 0, 2, null);
            return file.getAbsolutePath();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.service.ScreenCaptureService$c */
    /* loaded from: classes9.dex */
    public static final class C12137c<T> implements Predicate {

        /* renamed from: e */
        public static final C12137c<T> f58970e = new C12137c<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(String str) {
            boolean isNotEmpty = StringKt.isNotEmpty(str);
            if (!isNotEmpty) {
                LogUtils.file("screenCapture file path is empty");
            }
            return isNotEmpty;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.service.ScreenCaptureService$d */
    /* loaded from: classes9.dex */
    public static final class C12138d<T, R> implements Function {
        public C12138d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Uri apply(String str) {
            return FileKt.toProviderUri(new File(str), ScreenCaptureService.this);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.service.ScreenCaptureService$e */
    /* loaded from: classes9.dex */
    public static final class C12139e<T> implements Consumer {

        /* renamed from: e */
        public static final C12139e<T> f58972e = new C12139e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Uri it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EventBus eventBus = ScreenCaptureService.f58967e;
            if (eventBus != null) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(it2);
                EventBusHolderKt.safelyPostEvent(eventBus, new InsertImagesEvent(listOf));
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.service.ScreenCaptureService$f */
    /* loaded from: classes9.dex */
    public static final class C12140f<T> implements Consumer {

        /* renamed from: e */
        public static final C12140f<T> f58973e = new C12140f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            StringBuilder sb = new StringBuilder();
            sb.append("screenCapture error:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.file(sb.toString());
        }
    }

    /* renamed from: e */
    public static final void m46469e(ScreenCaptureService this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46471c(true);
    }

    /* renamed from: g */
    public static final void m46470g(ScreenCaptureService this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46471c(true);
    }

    /* renamed from: c */
    public final void m46471c(boolean active) {
        RxBaseAction.execute$default(new ActiveEyesComfortAction(active), null, null, null, 7, null);
    }

    /* renamed from: d */
    public final void m46472d(Intent intent) {
        Intent intent2 = (Intent) IntentCompat.getParcelableExtra(intent, "args", Intent.class);
        if (intent2 == null) {
            return;
        }
        m46471c(false);
        new ScreenCaptureAction(intent2, false, false).build().doOnNext(C12135a.f58968e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.f6m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ScreenCaptureService.m46469e(ScreenCaptureService.this);
            }
        }).subscribe();
    }

    /* renamed from: f */
    public final void m46473f(Intent intent) {
        Intent intent2 = (Intent) IntentCompat.getParcelableExtra(intent, "args", Intent.class);
        if (intent2 == null) {
            return;
        }
        m46471c(false);
        new ScreenCaptureAction(intent2, true, false, 4, null).build().observeOn(Schedulers.m61350io()).map(C12136b.f58969e).filter(C12137c.f58970e).map(new C12138d()).doOnNext(C12139e.f58972e).doOnError(C12140f.f58973e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.e6m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ScreenCaptureService.m46470g(ScreenCaptureService.this);
            }
        }).subscribe();
    }

    /* renamed from: h */
    public final void m46474h() {
        if (Settings.canDrawOverlays(this)) {
            RxBaseAction.execute$default(new SelectCaptureRectAction(this), null, null, null, 7, null);
        } else {
            ContextKt.requestOverlayPermission(this);
        }
    }

    /* renamed from: i */
    public final void m46475i() {
        PendingIntent service = PendingIntent.getService(this, 0, new Intent(this, (Class<?>) ScreenCaptureService.class), 67108864);
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(C10651R.string.star_note);
        NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this, "ScreenCapture").setLargeIcon(BitmapFactory.decodeResource(getResources(), C10651R.mipmap.ic_launcher_foreground)).setSmallIcon(C10651R.mipmap.ic_launcher_foreground).setContentTitle(stringSafely).setContentText(resManager.getStringSafely(C10651R.string.capture_service_is_running)).setContentIntent(service);
        Intrinsics.checkNotNullExpressionValue(contentIntent, "setContentIntent(...)");
        Notification build = contentIntent.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        NotificationChannel notificationChannel = new NotificationChannel("ScreenCapture", "ScreenCapture", 3);
        Object systemService = getSystemService(FunctionKey.NOTIFICATION);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        if (BuildKt.isApiLevelAbove(30)) {
            startForeground(10, build, 32);
        } else {
            startForeground(10, build);
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        INSTANCE.resetEventBus();
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int flags, int startId) {
        if (intent == null) {
            return super.onStartCommand(intent, flags, startId);
        }
        String stringExtra = intent.getStringExtra("action");
        if (!StringKt.isNotEmpty(stringExtra)) {
            stringExtra = null;
        }
        Object orElse = AnyKt.getOrElse(stringExtra, new Function0<String>() { // from class: com.onyx.galaxy.note.editor.service.ScreenCaptureService$onStartCommand$action$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return ScreenCaptureService.SHOW_EDITOR_WINDOW;
            }
        });
        Intrinsics.checkNotNullExpressionValue(orElse, "getOrElse(...)");
        String str = (String) orElse;
        Debug.INSTANCE.m32035d(ScreenCaptureService.class, "onStartCommand:" + str, new Object[0]);
        int hashCode = str.hashCode();
        if (hashCode != -1568406925) {
            if (hashCode != -1080031127) {
                if (hashCode == 738016746 && str.equals(SHOW_EDITOR_WINDOW)) {
                    m46474h();
                }
            } else if (str.equals(SCREEN_BITMAP_CAPTURE)) {
                m46475i();
                m46472d(intent);
            }
        } else if (str.equals(SCREEN_CAPTURE)) {
            m46475i();
            m46473f(intent);
        }
        return super.onStartCommand(intent, flags, startId);
    }
}

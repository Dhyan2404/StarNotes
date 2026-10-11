package com.onyx.android.sdk.universal.editor.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.onyx.android.sdk.universal.editor.data.RotatePageArgs;
import com.onyx.android.sdk.universal.editor.events.app.AdaptiveColorThemeEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangeLayoutTypeEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangePageColumnCountEvent;
import com.onyx.android.sdk.universal.editor.events.app.ClearCacheEvent;
import com.onyx.android.sdk.universal.editor.events.app.ClearRenderResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.DumpDisplayInfoEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableFreeMovePaperEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageFromPdfEvent;
import com.onyx.android.sdk.universal.editor.events.app.LocateLargeMatrixShapeEvent;
import com.onyx.android.sdk.universal.editor.events.app.MovePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemoveInvalidVirtualPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemovePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleReset;
import com.onyx.android.sdk.universal.editor.events.app.TryCorrectShapePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.TryRestorePageOrderEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraseTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraserWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeColorEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeSubShapeTypeEvent;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 52\u00020\u0001:\u00015B\u0007¢\u0006\u0004\b3\u00104J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010 \u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\"\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010#\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001c\u0010(\u001a\u00020\u00042\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010'\u001a\u0004\u0018\u00010\u0007H\u0016R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0017\u00102\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b\t\u0010/\u001a\u0004\b0\u00101¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver;", "Landroid/content/BroadcastReceiver;", "Lorg/greenrobot/eventbus/EventBus;", "eventBus", "", C4921e.f26537n, "q", "Landroid/content/Intent;", v6l.f87196g, "b", "c", "j", C6998g.f39679a, C6999h.f39688c, "i", "r", "d", "e", C6997f.f39671c, "l", "v", "y", "m", "x", "s", "t", "Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;", "p", "A", "z", "a", "u", "w", "Landroid/content/Context;", "context1", "intent1", "onReceive", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "Landroid/content/IntentFilter;", "Landroid/content/IntentFilter;", "getIntentFilter", "()Landroid/content/IntentFilter;", "intentFilter", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nApiBroadCastReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiBroadCastReceiver.kt\ncom/onyx/android/sdk/universal/editor/receiver/ApiBroadCastReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"})
/* loaded from: classes8.dex */
public final class ApiBroadCastReceiver extends BroadcastReceiver {

    @NotNull
    public static final String ACTION_ADAPTIVE_COLOR_THEME = "com.onyx.android.sdk.universal.adaptiveColorTheme";

    @NotNull
    public static final String ACTION_CHANGE_ERASER_WIDTH = "com.onyx.android.sdk.universal.changeEraserWidth";

    @NotNull
    public static final String ACTION_CHANGE_ERASE_TYPE = "com.onyx.android.sdk.universal.changeEraserType";

    @NotNull
    public static final String ACTION_CHANGE_LAYOUT_TYPE = "com.onyx.android.sdk.universal.changeLayoutType";

    @NotNull
    public static final String ACTION_CHANGE_PAGE_COLUMN_COUNT = "com.onyx.android.sdk.universal.changePageColumnCount";

    @NotNull
    public static final String ACTION_CHANGE_SCALE_VALUE = "com.onyx.android.sdk.universal.changeScale";

    @NotNull
    public static final String ACTION_CHANGE_SHAPE_TYPE = "com.onyx.android.sdk.universal.changeShapeType";

    @NotNull
    public static final String ACTION_CHANGE_STROKE_COLOR = "com.onyx.android.sdk.universal.changeStrokeColor";

    @NotNull
    public static final String ACTION_CHANGE_STROKE_WIDTH = "com.onyx.android.sdk.universal.changeStrokeWidth";

    @NotNull
    public static final String ACTION_CHANGE_SUB_SHAPE_TYPE = "com.onyx.android.sdk.universal.changeSubShapeType";

    @NotNull
    public static final String ACTION_CLEAR_CACHE = "com.onyx.android.sdk.universal.clearCache";

    @NotNull
    public static final String ACTION_CLEAR_RENDER_RESULT = "com.onyx.android.sdk.universal.clearRenderResult";

    @NotNull
    public static final String ACTION_COPY_PAGE = "com.onyx.android.sdk.universal.copyPage";

    @NotNull
    public static final String ACTION_DUMP_DISPLAY_INFO = "com.onyx.android.sdk.universal.dumpDisplayInfo";

    @NotNull
    public static final String ACTION_ENABLE_FREE_MOVE_PAPER = "com.onyx.android.sdk.universal.enableFreeMovePaper";

    @NotNull
    public static final String ACTION_INSERT_PAGE = "com.onyx.android.sdk.universal.insertPage";

    @NotNull
    public static final String ACTION_INSERT_PAGE_FROM_PDF = "com.onyx.android.sdk.universal.insertPageFromPdf";

    @NotNull
    public static final String ACTION_LOCATE_LARGE_MATRIX_SHAPE = "com.onyx.android.sdk.universal.locateLargeMatrixShape";

    @NotNull
    public static final String ACTION_MOVE_PAGE = "com.onyx.android.sdk.universal.movePage";

    @NotNull
    public static final String ACTION_PREFIX = "com.onyx.android.sdk.universal";

    @NotNull
    public static final String ACTION_REMOVE_INVALID_VIRTUAL_PAGE = "com.onyx.android.sdk.universal.removeInvalidVirtualPage";

    @NotNull
    public static final String ACTION_REMOVE_PAGE = "com.onyx.android.sdk.universal.removePage";

    @NotNull
    public static final String ACTION_ROTATE_PAGE = "com.onyx.android.sdk.universal.rotatePage";

    @NotNull
    public static final String ACTION_TRY_CORRECT_SHAPE_PAGE = "com.onyx.android.sdk.universal.tryCorrectShapePage";

    @NotNull
    public static final String ACTION_TRY_RESTORE_PAGE_ORDER = "com.onyx.android.sdk.universal.tryRestoreOrder";

    @NotNull
    public static final String ARGS_ERASER_WIDTH = "eraserWidth";

    @NotNull
    public static final String ARGS_ERASE_TYPE = "eraseType";

    @NotNull
    public static final String ARGS_FREE_MOVE_PAPER = "is_free_move_paper";

    @NotNull
    public static final String ARGS_FROM_INDEX = "fromIndex";

    @NotNull
    public static final String ARGS_INSERT_BEFORE = "insert_before";

    @NotNull
    public static final String ARGS_LAYOUT_TYPE = "layout_type";

    @NotNull
    public static final String ARGS_PAGE_COLUMN_COUNT = "page_column_count";

    @NotNull
    public static final String ARGS_PAGE_INDEX = "pageIndex";

    @NotNull
    public static final String ARGS_ROTATION = "rotation";

    @NotNull
    public static final String ARGS_SCALE_VALUE = "scale";

    @NotNull
    public static final String ARGS_SHAPE_TYPE = "shapeType";

    @NotNull
    public static final String ARGS_SINGLE_PAGE = "singlePage";

    @NotNull
    public static final String ARGS_STROKE_COLOR = "strokeColor";

    @NotNull
    public static final String ARGS_STROKE_WIDTH = "strokeWidth";

    @NotNull
    public static final String ARGS_TO_INDEX = "toIndex";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public EventBus eventBus;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final IntentFilter intentFilter;

    public ApiBroadCastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_CLEAR_CACHE);
        intentFilter.addAction(ACTION_DUMP_DISPLAY_INFO);
        intentFilter.addAction(ACTION_INSERT_PAGE);
        intentFilter.addAction(ACTION_INSERT_PAGE_FROM_PDF);
        intentFilter.addAction(ACTION_REMOVE_PAGE);
        intentFilter.addAction(ACTION_COPY_PAGE);
        intentFilter.addAction(ACTION_MOVE_PAGE);
        intentFilter.addAction(ACTION_ROTATE_PAGE);
        intentFilter.addAction(ACTION_CHANGE_PAGE_COLUMN_COUNT);
        intentFilter.addAction(ACTION_CHANGE_LAYOUT_TYPE);
        intentFilter.addAction(ACTION_ENABLE_FREE_MOVE_PAPER);
        intentFilter.addAction(ACTION_CHANGE_STROKE_WIDTH);
        intentFilter.addAction(ACTION_CHANGE_STROKE_COLOR);
        intentFilter.addAction(ACTION_CHANGE_SHAPE_TYPE);
        intentFilter.addAction(ACTION_CHANGE_SUB_SHAPE_TYPE);
        intentFilter.addAction(ACTION_CHANGE_ERASER_WIDTH);
        intentFilter.addAction(ACTION_CHANGE_ERASE_TYPE);
        intentFilter.addAction(ACTION_CHANGE_SCALE_VALUE);
        intentFilter.addAction(ACTION_CLEAR_RENDER_RESULT);
        intentFilter.addAction(ACTION_TRY_RESTORE_PAGE_ORDER);
        intentFilter.addAction(ACTION_TRY_CORRECT_SHAPE_PAGE);
        intentFilter.addAction(ACTION_ADAPTIVE_COLOR_THEME);
        intentFilter.addAction(ACTION_LOCATE_LARGE_MATRIX_SHAPE);
        intentFilter.addAction(ACTION_REMOVE_INVALID_VIRTUAL_PAGE);
        this.intentFilter = intentFilter;
    }

    /* renamed from: A */
    public final void m41364A(EventBus eventBus, Intent intent) {
        eventBus.post(new TryRestorePageOrderEvent());
    }

    /* renamed from: a */
    public final void m41365a(EventBus eventBus, Intent intent) {
        eventBus.post(new AdaptiveColorThemeEvent());
    }

    /* renamed from: b */
    public final void m41366b(EventBus eventBus, Intent intent) {
        eventBus.post(new ChangeEraseTypeEvent(intent.getIntExtra(ARGS_ERASE_TYPE, 0), false, 2, null));
    }

    /* renamed from: c */
    public final void m41367c(EventBus eventBus, Intent intent) {
        eventBus.post(new ChangeEraserWidthEvent(intent.getFloatExtra(ARGS_ERASER_WIDTH, 20.0f)));
    }

    /* renamed from: d */
    public final void m41368d(EventBus eventBus, Intent intent) {
        eventBus.post(new ChangeLayoutTypeEvent(intent.getIntExtra("layout_type", 1)));
    }

    /* renamed from: e */
    public final void m41369e(EventBus eventBus, Intent intent) {
        eventBus.post(new ChangePageColumnCountEvent(intent.getIntExtra("page_column_count", 1)));
    }

    /* renamed from: f */
    public final void m41370f(EventBus eventBus, Intent intent) {
        eventBus.post(new ScaleReset(intent.getFloatExtra("scale", 1.0f), 0.0f, 0.0f, 6, null));
    }

    /* renamed from: g */
    public final void m41371g(EventBus eventBus, Intent intent) {
        eventBus.post(new ChangeShapeTypeEvent(intent.getIntExtra("shapeType", 2)));
    }

    @Nullable
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @NotNull
    public final IntentFilter getIntentFilter() {
        return this.intentFilter;
    }

    /* renamed from: h */
    public final void m41372h(EventBus eventBus, Intent intent) {
        String stringExtra = intent.getStringExtra(ARGS_STROKE_COLOR);
        if (stringExtra == null) {
            stringExtra = "FF000000";
        }
        eventBus.post(new ChangeStrokeColorEvent(Color.parseColor('#' + stringExtra)));
    }

    /* renamed from: i */
    public final void m41373i(EventBus eventBus, Intent intent) {
        eventBus.post(new ChangeStrokeWidthEvent(intent.getFloatExtra(ARGS_STROKE_WIDTH, 10.0f)));
    }

    /* renamed from: j */
    public final void m41374j(EventBus eventBus, Intent intent) {
        eventBus.post(new ChangeSubShapeTypeEvent(intent.getIntExtra("shapeType", 1)));
    }

    /* renamed from: k */
    public final void m41375k(EventBus eventBus) {
        eventBus.post(new ClearCacheEvent());
    }

    /* renamed from: l */
    public final void m41376l(EventBus eventBus, Intent intent) {
        eventBus.post(new ClearRenderResultEvent());
    }

    /* renamed from: m */
    public final void m41377m(EventBus eventBus, Intent intent) {
        eventBus.post(m41378n(intent));
    }

    /* renamed from: n */
    public final CopyPageEvent m41378n(Intent intent) {
        int intExtra = intent.getIntExtra("pageIndex", 0);
        return new CopyPageEvent(CollectionKt.asList(new CopyPageArgs(intExtra, intExtra + 1, false, 4, null)));
    }

    /* renamed from: o */
    public final MovePageEvent m41379o(Intent intent) {
        return new MovePageEvent(new MovePageArgs(intent.getIntExtra(ARGS_FROM_INDEX, 0), intent.getIntExtra(ARGS_TO_INDEX, 0), intent.getBooleanExtra(ARGS_INSERT_BEFORE, false), false, 8, null));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context1, @Nullable Intent intent1) {
        if (context1 == null || intent1 == null) {
            return;
        }
        String action = intent1.getAction();
        Debug.INSTANCE.m32042d(Reflection.getOrCreateKotlinClass(ApiBroadCastReceiver.class), "action == " + action + ", intent = " + intent1, new Object[0]);
        EventBus eventBus = this.eventBus;
        if (eventBus == null || action == null) {
            return;
        }
        switch (action.hashCode()) {
            case -1676338034:
                if (action.equals(ACTION_CLEAR_CACHE)) {
                    m41375k(eventBus);
                    return;
                }
                return;
            case -1647037885:
                if (action.equals(ACTION_DUMP_DISPLAY_INFO)) {
                    m41381q(eventBus);
                    return;
                }
                return;
            case -1618410701:
                if (action.equals(ACTION_ENABLE_FREE_MOVE_PAPER)) {
                    m41382r(eventBus, intent1);
                    return;
                }
                return;
            case -1537379032:
                if (action.equals(ACTION_TRY_CORRECT_SHAPE_PAGE)) {
                    m41390z(eventBus, intent1);
                    return;
                }
                return;
            case -995968541:
                if (action.equals(ACTION_ROTATE_PAGE)) {
                    m41389y(eventBus, intent1);
                    return;
                }
                return;
            case -650055363:
                if (action.equals(ACTION_COPY_PAGE)) {
                    m41377m(eventBus, intent1);
                    return;
                }
                return;
            case -588357438:
                if (action.equals(ACTION_CHANGE_STROKE_COLOR)) {
                    m41372h(eventBus, intent1);
                    return;
                }
                return;
            case -570073307:
                if (action.equals(ACTION_CHANGE_STROKE_WIDTH)) {
                    m41373i(eventBus, intent1);
                    return;
                }
                return;
            case -412812601:
                if (action.equals(ACTION_CLEAR_RENDER_RESULT)) {
                    m41376l(eventBus, intent1);
                    return;
                }
                return;
            case -388300944:
                if (action.equals(ACTION_LOCATE_LARGE_MATRIX_SHAPE)) {
                    m41385u(eventBus, intent1);
                    return;
                }
                return;
            case -248516711:
                if (action.equals(ACTION_MOVE_PAGE)) {
                    m41386v(eventBus, intent1);
                    return;
                }
                return;
            case -96201472:
                if (action.equals(ACTION_REMOVE_INVALID_VIRTUAL_PAGE)) {
                    m41387w(eventBus, intent1);
                    return;
                }
                return;
            case -31386815:
                if (action.equals(ACTION_CHANGE_SCALE_VALUE)) {
                    m41370f(eventBus, intent1);
                    return;
                }
                return;
            case 48939073:
                if (action.equals(ACTION_INSERT_PAGE)) {
                    m41383s(eventBus, intent1);
                    return;
                }
                return;
            case 133990146:
                if (action.equals(ACTION_TRY_RESTORE_PAGE_ORDER)) {
                    m41364A(eventBus, intent1);
                    return;
                }
                return;
            case 181344396:
                if (action.equals(ACTION_REMOVE_PAGE)) {
                    m41388x(eventBus, intent1);
                    return;
                }
                return;
            case 447030852:
                if (action.equals(ACTION_CHANGE_SUB_SHAPE_TYPE)) {
                    m41374j(eventBus, intent1);
                    return;
                }
                return;
            case 487904661:
                if (action.equals(ACTION_ADAPTIVE_COLOR_THEME)) {
                    m41365a(eventBus, intent1);
                    return;
                }
                return;
            case 592761074:
                if (action.equals(ACTION_CHANGE_SHAPE_TYPE)) {
                    m41371g(eventBus, intent1);
                    return;
                }
                return;
            case 815395309:
                if (action.equals(ACTION_CHANGE_LAYOUT_TYPE)) {
                    m41368d(eventBus, intent1);
                    return;
                }
                return;
            case 1131758951:
                if (action.equals(ACTION_INSERT_PAGE_FROM_PDF)) {
                    m41384t(eventBus, intent1);
                    return;
                }
                return;
            case 1375787649:
                if (action.equals(ACTION_CHANGE_PAGE_COLUMN_COUNT)) {
                    m41369e(eventBus, intent1);
                    return;
                }
                return;
            case 1446393935:
                if (action.equals(ACTION_CHANGE_ERASE_TYPE)) {
                    m41366b(eventBus, intent1);
                    return;
                }
                return;
            case 1890821969:
                if (action.equals(ACTION_CHANGE_ERASER_WIDTH)) {
                    m41367c(eventBus, intent1);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* renamed from: p */
    public final RotatePageEvent m41380p(Intent intent) {
        List mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(intent.getIntExtra(ARGS_FROM_INDEX, 0)));
        return new RotatePageEvent(new RotatePageArgs(mutableListOf, intent.getIntExtra("rotation", 90), false, 4, null));
    }

    /* renamed from: q */
    public final void m41381q(EventBus eventBus) {
        eventBus.post(new DumpDisplayInfoEvent());
    }

    /* renamed from: r */
    public final void m41382r(EventBus eventBus, Intent intent) {
        eventBus.post(new EnableFreeMovePaperEvent(intent.getBooleanExtra(ARGS_FREE_MOVE_PAPER, false)));
    }

    /* renamed from: s */
    public final void m41383s(EventBus eventBus, Intent intent) {
        InsertPageArgs insertPageArgs = new InsertPageArgs();
        insertPageArgs.setInsertAt(intent.getIntExtra("pageIndex", 0));
        eventBus.post(new InsertPageEvent(insertPageArgs));
    }

    public final void setEventBus(@Nullable EventBus eventBus) {
        this.eventBus = eventBus;
    }

    /* renamed from: t */
    public final void m41384t(EventBus eventBus, Intent intent) {
        InsertPageArgs insertPageArgs = new InsertPageArgs();
        insertPageArgs.setInsertAt(intent.getIntExtra("pageIndex", 0));
        eventBus.post(new InsertPageFromPdfEvent(insertPageArgs));
    }

    /* renamed from: u */
    public final void m41385u(EventBus eventBus, Intent intent) {
        eventBus.post(new LocateLargeMatrixShapeEvent(intent.getFloatExtra("scale", 1000.0f)));
    }

    /* renamed from: v */
    public final void m41386v(EventBus eventBus, Intent intent) {
        eventBus.post(m41379o(intent));
    }

    /* renamed from: w */
    public final void m41387w(EventBus eventBus, Intent intent) {
        eventBus.post(new RemoveInvalidVirtualPageEvent());
    }

    /* renamed from: x */
    public final void m41388x(EventBus eventBus, Intent intent) {
        eventBus.post(new RemovePageEvent(intent.getIntExtra("pageIndex", 0)));
    }

    /* renamed from: y */
    public final void m41389y(EventBus eventBus, Intent intent) {
        eventBus.post(m41380p(intent));
    }

    /* renamed from: z */
    public final void m41390z(EventBus eventBus, Intent intent) {
        eventBus.post(new TryCorrectShapePageEvent());
    }
}

package com.onyx.galaxy.note.common.statistics;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.gson.JsonObject;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.action.DeleteNoteRecordAction;
import com.onyx.android.sdk.action.ReportOnyxStatisticModelAction;
import com.onyx.android.sdk.action.ReportOnyxStatisticNoteModelAction;
import com.onyx.android.sdk.action.ReportPriorOnyxStatisticModelAction;
import com.onyx.android.sdk.action.SaveNoteRecordAction;
import com.onyx.android.sdk.action.SaveOnyxStatisticModelAction;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.OnyxNoteRecordModel;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.OnyxStatisticModel;
import com.onyx.android.sdk.data.StatistConfig;
import com.onyx.android.sdk.data.StatisticsConfig;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.LongOption;
import com.onyx.android.sdk.event.BaseStatisticsEvent;
import com.onyx.android.sdk.note.common.data.shape.LaserShapeAttr;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.pen.utils.PenUtils;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.statistics.C7998R;
import com.onyx.android.sdk.statistics.StatisticsManager;
import com.onyx.android.sdk.statistics.StatisticsType;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.TapePropertyOption;
import com.onyx.android.sdk.universal.editor.events.note.SavedDocumentEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.action.GetStatisticConfigAction;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.event.DeleteDustbinNoteEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b|\u0010}J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\u0016\u0010\r\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u000bH\u0002J\u0016\u0010\u000f\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000bH\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u0011H\u0002J$\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b`\u0018H\u0002J$\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b`\u0018H\u0002Jt\u0010\u001c\u001an\u0012\u0004\u0012\u00020\u0017\u0012,\u0012*\u0012\u0004\u0012\u00020\b\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b`\u00180\u001b0\u0016j6\u0012\u0004\u0012\u00020\u0017\u0012,\u0012*\u0012\u0004\u0012\u00020\b\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b`\u00180\u001b`\u0018H\u0002J\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010 \u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001eJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0001J&\u0010%\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\b2\u0016\b\u0002\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0001\u0018\u00010#J\u000e\u0010'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0001J\u000e\u0010(\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0001J\u0006\u0010*\u001a\u00020)J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020+H\u0007J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u000200H\u0007J:\u0010%\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u00104\u001a\u00020\b2\u001a\u00106\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u001b\u0018\u000105JB\u0010%\u001a\u00020\u00042\u0006\u00107\u001a\u00020\b2\u0006\u00108\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u00104\u001a\u00020\b2\u001a\u00106\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u001b\u0018\u000105J\u0016\u0010;\u001a\u00020\u00042\u0006\u0010:\u001a\u0002092\u0006\u00103\u001a\u000202J(\u0010?\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u0010<\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010>\u001a\u0004\u0018\u00010=J0\u0010?\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u0010<\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u00104\u001a\u00020\b2\b\u0010>\u001a\u0004\u0018\u00010=J.\u0010?\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u0010<\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u00104\u001a\u00020\b2\u0006\u0010A\u001a\u00020@J\u000e\u0010D\u001a\u00020\u00042\u0006\u0010C\u001a\u00020BJ\u000e\u0010F\u001a\u00020\u00042\u0006\u0010$\u001a\u00020EJ\u0016\u0010I\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u0010H\u001a\u00020GJ\u001e\u0010I\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u00104\u001a\u00020\bJ\u001e\u0010K\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010J\u001a\u00020\bJ\u0006\u0010L\u001a\u00020\u0004J\u001c\u0010Q\u001a\u00020\u00042\f\u0010N\u001a\b\u0012\u0004\u0012\u00020M052\u0006\u0010P\u001a\u00020OJ\u001c\u0010S\u001a\u00020\u00042\f\u0010N\u001a\b\u0012\u0004\u0012\u00020M052\u0006\u0010R\u001a\u00020OR\u0014\u0010T\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\bT\u0010UR\u0017\u0010[\u001a\u00020V8\u0006¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR7\u0010`\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b`\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R7\u0010b\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b`\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010]\u001a\u0004\ba\u0010_R\u0087\u0001\u0010d\u001an\u0012\u0004\u0012\u00020\u0017\u0012,\u0012*\u0012\u0004\u0012\u00020\b\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b`\u00180\u001b0\u0016j6\u0012\u0004\u0012\u00020\u0017\u0012,\u0012*\u0012\u0004\u0012\u00020\b\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b`\u00180\u001b`\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010]\u001a\u0004\bc\u0010_R$\u0010i\u001a\u00020\u00132\u0006\u0010e\u001a\u00020\u00138\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\t\u0010f\u001a\u0004\bg\u0010hR\u001b\u0010l\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010]\u001a\u0004\bj\u0010kR\u0014\u0010m\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010UR\u0014\u0010n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010UR\u0014\u0010o\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010UR\u001d\u0010s\u001a\u0004\u0018\u00010p8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010]\u001a\u0004\bq\u0010rR\u0016\u0010u\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010fR\u0016\u0010v\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010fR\u0016\u0010w\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010fR\u001c\u0010{\u001a\b\u0012\u0004\u0012\u00020y0x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010z¨\u0006\u0080\u0001²\u0006\u0012\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020=0~8\nX\u008a\u0084\u0002"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;", "", "Landroid/content/Context;", "appContext", "", "l", "Lcom/onyx/android/sdk/data/OnyxStatisticEvent;", NotificationCompat.CATEGORY_EVENT, "", "e", GoogleApiAvailabilityLight.f29016b, "", "noteIds", "r", "ids", "s", "d", "Lio/reactivex/rxjava3/core/Observable;", "q", "", "m", "c", "Ljava/util/HashMap;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Lkotlin/collections/HashMap;", C6997f.f39671c, C6998g.f39679a, "Lkotlin/Pair;", C6999h.f39688c, "preInit", "Lkotlin/Function0;", "onInitialized", "init", "postEvent", "eventId", "", "eventData", "reportEvent", "subscriber", "ensureRegister", "ensureUnRegister", "Lorg/greenrobot/eventbus/EventBus;", "getStatisticsEventBus", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "onStatisticsEvent", "onOnyxStatisticEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SavedDocumentEvent;", "onSavedDocumentEvent", "Lcom/onyx/galaxy/note/settings/event/DeleteDustbinNoteEvent;", "onDeleteDustbinNoteEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "eventType", "", "additionInfo", "docID", "docName", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "reportItemClickEvent", "shapeDataKindKey", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "reportShowPopupMenuEvent", "Lcom/google/gson/JsonObject;", "jsonData", "Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;", "data", "reportEraserPopupMenuEvent", "Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;", "reportLassoPopupMenuEvent", "Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;", "popup", "reportCustomSettingPopupMenuEvent", "dockTypeName", "reportToolMenuDragEvent", "checkReportUserDailyActive", "Landroid/net/Uri;", "resultList", "", "requestCode", "reportPickPictureEventFromInsertShape", "triggerFrom", "reportPickPictureEventFromInsertPage", "STATISTICS_CONFIG_RAW_NAME", Constants.STRING_SIG, "Lcom/onyx/android/sdk/statistics/StatisticsManager;", "a", "Lcom/onyx/android/sdk/statistics/StatisticsManager;", "getStatisticsManager", "()Lcom/onyx/android/sdk/statistics/StatisticsManager;", "statisticsManager", "b", "Lkotlin/Lazy;", "getToolTypeMapToItemClickReportKey", "()Ljava/util/HashMap;", "toolTypeMapToItemClickReportKey", "getToolTypeMapToItemInitReportKey", "toolTypeMapToItemInitReportKey", "getToolTypeMapToPopupReportKey", "toolTypeMapToPopupReportKey", "<set-?>", Constants.HASIDCALL_INDEX_SIG, "getInitialized", Constants.BOOLEAN_VALUE_SIG, "initialized", "i", "()Lorg/greenrobot/eventbus/EventBus;", "eventBus", "patternStrTwoFloatDigits", "patternStrOneFloatDigits", "patternStrWithMMUnit", "Lcom/onyx/android/sdk/data/StatisticsConfig;", "j", "()Lcom/onyx/android/sdk/data/StatisticsConfig;", "statisticsConfig", C4921e.f26537n, "isReporting", "enableReport", "hasReportOnyxNoteRecord", "Ljava/util/concurrent/atomic/AtomicReference;", "Lcom/onyx/android/sdk/data/StatistConfig;", "Ljava/util/concurrent/atomic/AtomicReference;", AbstractLogger.CONFIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "penArgsOption", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStatisticsBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatisticsBundle.kt\ncom/onyx/galaxy/note/common/statistics/StatisticsBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,884:1\n1549#2:885\n1620#2,3:886\n1855#2,2:889\n1855#2,2:891\n1855#2,2:893\n*S KotlinDebug\n*F\n+ 1 StatisticsBundle.kt\ncom/onyx/galaxy/note/common/statistics/StatisticsBundle\n*L\n300#1:885\n300#1:886,3\n539#1:889,2\n812#1:891,2\n815#1:893,2\n*E\n"})
/* loaded from: classes9.dex */
public final class StatisticsBundle {

    @NotNull
    public static final StatisticsBundle INSTANCE;

    @NotNull
    public static final String STATISTICS_CONFIG_RAW_NAME = "statistics_config";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final StatisticsManager statisticsManager;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy toolTypeMapToItemClickReportKey;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Lazy toolTypeMapToItemInitReportKey;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Lazy toolTypeMapToPopupReportKey;

    /* renamed from: e, reason: from kotlin metadata */
    public static boolean initialized;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final Lazy eventBus;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String patternStrTwoFloatDigits;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String patternStrOneFloatDigits;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final String patternStrWithMMUnit;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public static final Lazy statisticsConfig;

    /* renamed from: k, reason: from kotlin metadata */
    public static volatile boolean isReporting;

    /* renamed from: l, reason: from kotlin metadata */
    public static volatile boolean enableReport;

    /* renamed from: m, reason: from kotlin metadata */
    public static volatile boolean hasReportOnyxNoteRecord;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public static AtomicReference<StatistConfig> config;

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$a */
    /* loaded from: classes9.dex */
    public static final class C11644a<T> implements Consumer {

        /* renamed from: e */
        public static final C11644a<T> f56155e = new C11644a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Map<String, ? extends Object> mutableMapOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_IDENTITIES, AccountDataBundle.INSTANCE.getRoleFlagList()));
            statisticsBundle.reportEvent(OnyxStatisticConstant.ID_USER_DAILY_ACTIVE, mutableMapOf);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$b */
    /* loaded from: classes9.dex */
    public static final class C11645b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LongOption f56156e;

        public C11645b(LongOption longOption) {
            this.f56156e = longOption;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f56156e.put(System.currentTimeMillis());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$c */
    /* loaded from: classes9.dex */
    public static final class C11646c<T> implements Consumer {

        /* renamed from: e */
        public static final C11646c<T> f56157e = new C11646c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StatistConfig it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsBundle.config.set(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$d */
    /* loaded from: classes9.dex */
    public static final class C11647d<T, R> implements Function {

        /* renamed from: e */
        public static final C11647d<T, R> f56158e = new C11647d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull StatistConfig it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(it2.getEnable());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$e */
    /* loaded from: classes9.dex */
    public static final class C11648e<T> implements Consumer {

        /* renamed from: e */
        public static final C11648e<T> f56159e = new C11648e<>();

        /* renamed from: a */
        public final void m45098a(boolean z) {
            StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
            StatisticsBundle.enableReport = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45098a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$f */
    /* loaded from: classes9.dex */
    public static final class C11649f<T> implements Consumer {

        /* renamed from: e */
        public static final C11649f<T> f56160e = new C11649f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AppConfigManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
            StatisticsBundle.enableReport = AppConfigManager.INSTANCE.isDefaultStatistEnable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$g */
    /* loaded from: classes9.dex */
    public static final class C11650g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ OnyxStatisticEvent f56161e;

        public C11650g(OnyxStatisticEvent onyxStatisticEvent) {
            this.f56161e = onyxStatisticEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull StatisticsBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StatisticsBundle.INSTANCE.m45082e(this.f56161e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$h */
    /* loaded from: classes9.dex */
    public static final class C11651h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ OnyxStatisticEvent f56162e;

        public C11651h(OnyxStatisticEvent onyxStatisticEvent) {
            this.f56162e = onyxStatisticEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new OnyxStatisticModel(this.f56162e.getEventId(), it2));
            return new SaveOnyxStatisticModelAction(listOf).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$i */
    /* loaded from: classes9.dex */
    public static final class C11652i<T> implements Consumer {

        /* renamed from: e */
        public static final C11652i<T> f56163e = new C11652i<>();

        /* renamed from: a */
        public final void m45102a(boolean z) {
            StatisticsBundle.INSTANCE.m45090n();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45102a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$j */
    /* loaded from: classes9.dex */
    public static final class C11653j<T, R> implements Function {

        /* renamed from: e */
        public static final C11653j<T, R> f56164e = new C11653j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull StatisticsBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StatisticsBundle.INSTANCE.m45080c();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$k */
    /* loaded from: classes9.dex */
    public static final class C11654k<T> implements Predicate {

        /* renamed from: e */
        public static final C11654k<T> f56165e = new C11654k<>();

        /* renamed from: a */
        public final boolean m45104a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m45104a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$l */
    /* loaded from: classes9.dex */
    public static final class C11655l<T, R> implements Function {

        /* renamed from: e */
        public static final C11655l<T, R> f56166e = new C11655l<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m45105a(boolean z) {
            Object obj = StatisticsBundle.config.get();
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            return new ReportPriorOnyxStatisticModelAction((StatistConfig) obj).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45105a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$m */
    /* loaded from: classes9.dex */
    public static final class C11656m<T, R> implements Function {

        /* renamed from: e */
        public static final C11656m<T, R> f56167e = new C11656m<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m45106a(boolean z) {
            Object obj = StatisticsBundle.config.get();
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            return new ReportOnyxStatisticNoteModelAction((StatistConfig) obj).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45106a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$n */
    /* loaded from: classes9.dex */
    public static final class C11657n<T, R> implements Function {

        /* renamed from: e */
        public static final C11657n<T, R> f56168e = new C11657n<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m45107a(boolean z) {
            Object obj = StatisticsBundle.config.get();
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            return new ReportOnyxStatisticModelAction((StatistConfig) obj).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45107a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$o */
    /* loaded from: classes9.dex */
    public static final class C11658o<T, R> implements Function {

        /* renamed from: e */
        public static final C11658o<T, R> f56169e = new C11658o<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends StatisticsBundle> m45108a(boolean z) {
            return StatisticsBundle.INSTANCE.m45091q();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45108a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$p */
    /* loaded from: classes9.dex */
    public static final class C11659p<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f56170e;

        /* renamed from: f */
        public final /* synthetic */ String f56171f;

        /* renamed from: g */
        public final /* synthetic */ String f56172g;

        /* renamed from: h */
        public final /* synthetic */ List<Pair<String, Object>> f56173h;

        public C11659p(EditorBundle editorBundle, String str, String str2, List<Pair<String, Object>> list) {
            this.f56170e = editorBundle;
            this.f56171f = str;
            this.f56172g = str2;
            this.f56173h = list;
        }

        /* renamed from: a */
        public final void m45109a(@NotNull StatisticsBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsBundle.INSTANCE.reportEvent(EditorBundleKt.docId(this.f56170e), String.valueOf(EditorBundleKt.noteBundle(this.f56170e).getNoteDoc().getNoteModel().getTitle()), this.f56171f, this.f56172g, this.f56173h);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45109a((StatisticsBundle) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$q */
    /* loaded from: classes9.dex */
    public static final class C11660q<T, R> implements Function {

        /* renamed from: e */
        public static final C11660q<T, R> f56174e = new C11660q<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m45110a(boolean z) {
            Object obj = StatisticsBundle.config.get();
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            return new ReportOnyxNoteRecordAction((StatistConfig) obj).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45110a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$r */
    /* loaded from: classes9.dex */
    public static final class C11661r<T> implements Consumer {

        /* renamed from: e */
        public static final C11661r<T> f56175e = new C11661r<>();

        /* renamed from: a */
        public final void m45111a(boolean z) {
            StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
            StatisticsBundle.hasReportOnyxNoteRecord = true;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45111a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$s */
    /* loaded from: classes9.dex */
    public static final class C11662s<T, R> implements Function {
        public C11662s() {
        }

        @NotNull
        /* renamed from: a */
        public final StatisticsBundle m45113a(boolean z) {
            return StatisticsBundle.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45113a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$t */
    /* loaded from: classes9.dex */
    public static final class C11663t<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f56180e;

        /* renamed from: f */
        public final /* synthetic */ JsonObject f56181f;

        public C11663t(String str, JsonObject jsonObject) {
            this.f56180e = str;
            this.f56181f = jsonObject;
        }

        /* renamed from: a */
        public final void m45114a(@NotNull UniversalShapeAttr it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String str = this.f56180e;
            if (Intrinsics.areEqual(str, OnyxStatisticConstant.KEY_NOTE_LASER_DATA)) {
                this.f56181f.addProperty(OnyxStatisticConstant.JSON_KEY_IS_POINT_LASER_POINTER, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(MMKVNote.INSTANCE.getLaserShapeAttrOption().get().isDotType()))));
                this.f56181f.addProperty(OnyxStatisticConstant.JSON_KEY_IS_LINEAR_LASER_POINTER, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(!r4.isDotType()))));
            } else if (Intrinsics.areEqual(str, "markerpen_data")) {
                String string = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getPenArgsOption(ShapeToolType.MARKER_PEN.getShapeType()).get().getRoundCorner() ? ResManager.INSTANCE.getString(C7998R.string.marker_pen_circle) : ResManager.INSTANCE.getString(C7998R.string.marker_pen_right_angle);
                if (string == null) {
                    string = "";
                }
                this.f56181f.addProperty("shape", string);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45114a((UniversalShapeAttr) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$u */
    /* loaded from: classes9.dex */
    public static final class C11664u<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f56182e;

        /* renamed from: f */
        public final /* synthetic */ String f56183f;

        /* renamed from: g */
        public final /* synthetic */ String f56184g;

        /* renamed from: h */
        public final /* synthetic */ String f56185h;

        /* renamed from: i */
        public final /* synthetic */ JsonObject f56186i;

        public C11664u(EditorBundle editorBundle, String str, String str2, String str3, JsonObject jsonObject) {
            this.f56182e = editorBundle;
            this.f56183f = str;
            this.f56184g = str2;
            this.f56185h = str3;
            this.f56186i = jsonObject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Pair(this.f56185h, this.f56186i.toString()));
            StatisticsBundle.INSTANCE.reportEvent(this.f56182e, this.f56183f, this.f56184g, arrayList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$v */
    /* loaded from: classes9.dex */
    public static final class C11665v<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f56187e;

        /* renamed from: f */
        public final /* synthetic */ String f56188f;

        /* renamed from: g */
        public final /* synthetic */ String f56189g;

        /* renamed from: h */
        public final /* synthetic */ String f56190h;

        /* renamed from: i */
        public final /* synthetic */ JsonObject f56191i;

        public C11665v(EditorBundle editorBundle, String str, String str2, String str3, JsonObject jsonObject) {
            this.f56187e = editorBundle;
            this.f56188f = str;
            this.f56189g = str2;
            this.f56190h = str3;
            this.f56191i = jsonObject;
        }

        /* renamed from: a */
        public final void m45116a(@NotNull StatisticsBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Pair(this.f56190h, this.f56191i.toString()));
            StatisticsBundle.INSTANCE.reportEvent(this.f56187e, this.f56188f, this.f56189g, arrayList);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45116a((StatisticsBundle) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.StatisticsBundle$w */
    /* loaded from: classes9.dex */
    public static final class C11666w<T> implements Consumer {

        /* renamed from: e */
        public static final C11666w<T> f56192e = new C11666w<>();

        /* renamed from: a */
        public final void m45117a(boolean z) {
            StatisticsBundle.INSTANCE.m45090n();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45117a(((Boolean) obj).booleanValue());
        }
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        StatisticsBundle statisticsBundle = new StatisticsBundle();
        INSTANCE = statisticsBundle;
        statisticsManager = new StatisticsManager();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<ShapeToolType, String>>() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$toolTypeMapToItemClickReportKey$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HashMap<ShapeToolType, String> invoke() {
                HashMap<ShapeToolType, String> m45083f;
                m45083f = StatisticsBundle.INSTANCE.m45083f();
                return m45083f;
            }
        });
        toolTypeMapToItemClickReportKey = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<ShapeToolType, String>>() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$toolTypeMapToItemInitReportKey$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HashMap<ShapeToolType, String> invoke() {
                HashMap<ShapeToolType, String> m45084g;
                m45084g = StatisticsBundle.INSTANCE.m45084g();
                return m45084g;
            }
        });
        toolTypeMapToItemInitReportKey = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<ShapeToolType, Pair<? extends String, ? extends HashMap<Boolean, String>>>>() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$toolTypeMapToPopupReportKey$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HashMap<ShapeToolType, Pair<? extends String, ? extends HashMap<Boolean, String>>> invoke() {
                HashMap<ShapeToolType, Pair<? extends String, ? extends HashMap<Boolean, String>>> m45085h;
                m45085h = StatisticsBundle.INSTANCE.m45085h();
                return m45085h;
            }
        });
        toolTypeMapToPopupReportKey = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<EventBus>() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$eventBus$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBus invoke() {
                return new EventBus();
            }
        });
        eventBus = lazy4;
        ResManager resManager = ResManager.INSTANCE;
        patternStrTwoFloatDigits = resManager.getStringSafely(C7373R.string.float_format_two_float_digits);
        patternStrOneFloatDigits = resManager.getStringSafely(C7373R.string.float_format_one_float_digit);
        patternStrWithMMUnit = resManager.getStringSafely(C7373R.string.float_format_two_float_point_with_mm);
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<StatisticsConfig>() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$statisticsConfig$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final StatisticsConfig invoke() {
                return (StatisticsConfig) ConfigLoader.INSTANCE.load(StatisticsConfig.class, StatisticsBundle.STATISTICS_CONFIG_RAW_NAME);
            }
        });
        statisticsConfig = lazy5;
        StatisticsConfig m45087j = statisticsBundle.m45087j();
        enableReport = m45087j != null ? m45087j.getEnableReport() : true;
        config = new AtomicReference<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void init$default(StatisticsBundle statisticsBundle, Context context, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        statisticsBundle.init(context, function0);
    }

    /* renamed from: k */
    public static final void m45077k(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* renamed from: o */
    public static final void m45078o() {
        isReporting = false;
    }

    /* renamed from: p */
    public static final JSONObjectOption<PenArgs> m45079p(Lazy<? extends JSONObjectOption<PenArgs>> lazy) {
        return lazy.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void reportEvent$default(StatisticsBundle statisticsBundle, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        statisticsBundle.reportEvent(str, map);
    }

    /* renamed from: c */
    public final Observable<Boolean> m45080c() {
        if (config.get() != null) {
            Observable<Boolean> just = Observable.just(Boolean.valueOf(config.get().getEnable()));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Boolean> doOnNext = new GetStatisticConfigAction().build().doOnNext(C11646c.f56157e).map(C11647d.f56158e).doOnNext(C11648e.f56159e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void checkReportUserDailyActive() {
        if (initialized) {
            LongOption userDailyActiveLastTimeOp = OnyxStatisticConstant.INSTANCE.getUserDailyActiveLastTimeOp();
            long j = userDailyActiveLastTimeOp.get();
            if (j == 0 || !DateUtils.isSameDay(new Date(), new Date(j))) {
                AccountDataBundle.INSTANCE.loadOnyxAccountObservable().doOnNext(C11644a.f56155e).doOnNext(new C11645b(userDailyActiveLastTimeOp)).subscribe();
            }
        }
    }

    /* renamed from: d */
    public final void m45081d(List<String> ids) {
        if (m45089m()) {
            RxBaseAction.execute$default(new DeleteNoteRecordAction(ids), null, null, null, 7, null);
        }
    }

    /* renamed from: e */
    public final String m45082e(OnyxStatisticEvent event) {
        String json;
        return (event.getEventData() == null || (json = JSONUtils.INSTANCE.toJson(event.getEventData())) == null) ? "" : json;
    }

    public final void ensureRegister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureRegister(m45086i(), subscriber);
    }

    public final void ensureUnRegister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureUnRegister(m45086i(), subscriber);
    }

    /* renamed from: f */
    public final HashMap<ShapeToolType, String> m45083f() {
        HashMap<ShapeToolType, String> hashMap = new HashMap<>();
        hashMap.put(ShapeToolType.INK_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PEN_BTN_CLICK);
        hashMap.put(ShapeToolType.BALLPOINT_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_BALLPOINT_PEN_BTN_CLICK);
        hashMap.put(ShapeToolType.MARKER_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_MARK_PEN_BTN_CLICK);
        hashMap.put(ShapeToolType.PENCIL, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PENCIL_BTN_CLICK);
        hashMap.put(ShapeToolType.ERASER, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ERASER_BTN_CLICK);
        hashMap.put(ShapeToolType.LASSO, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASSO_BTN_CLICK);
        hashMap.put(ShapeToolType.IMAGE, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_BTN_CLICK);
        hashMap.put(ShapeToolType.EDIT_TEXT, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_EDIT_TEXT_BTN_CLICK);
        hashMap.put(ShapeToolType.EXCERPT, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_EXCERPT_BTN_CLICK);
        hashMap.put(ShapeToolType.TAG, OnyxStatisticConstant.ID_EDIT_NOTE_TOOL_EDIT_TAG_CLICK);
        hashMap.put(ShapeToolType.GRAPH_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_GRAPH_PEN_BTN_CLICK);
        hashMap.put(ShapeToolType.IMAGE_STICKER, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_STICKER_BTN_CLICK);
        hashMap.put(ShapeToolType.TAPE_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_TAPE_PEN_BTN_CLICK);
        hashMap.put(ShapeToolType.LASER_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_PEN_BTN_CLICK);
        hashMap.put(ShapeToolType.CUSTOM, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_CUSTOM_SETTING_CLICK);
        return hashMap;
    }

    /* renamed from: g */
    public final HashMap<ShapeToolType, String> m45084g() {
        HashMap<ShapeToolType, String> hashMap = new HashMap<>();
        hashMap.put(ShapeToolType.INK_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PEN_BTN_SHOW);
        hashMap.put(ShapeToolType.BALLPOINT_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_BALLPOINT_PEN_BTN_SHOW);
        hashMap.put(ShapeToolType.MARKER_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_MARK_PEN_BTN_SHOW);
        hashMap.put(ShapeToolType.PENCIL, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PENCIL_BTN_SHOW);
        hashMap.put(ShapeToolType.ERASER, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ERASER_BTN_SHOW);
        hashMap.put(ShapeToolType.LASSO, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASSO_BTN_SHOW);
        hashMap.put(ShapeToolType.IMAGE, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_BTN_SHOW);
        hashMap.put(ShapeToolType.EDIT_TEXT, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_EDIT_TEXT_BTN_SHOW);
        hashMap.put(ShapeToolType.EXCERPT, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_EXCERPT_BTN_SHOW);
        hashMap.put(ShapeToolType.TAG, OnyxStatisticConstant.ID_EDIT_NOTE_TOOL_EDIT_TAG_VIEW);
        hashMap.put(ShapeToolType.GRAPH_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_GRAPH_PEN_BTN_SHOW);
        hashMap.put(ShapeToolType.IMAGE_STICKER, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_STICKER_BTN_SHOW);
        hashMap.put(ShapeToolType.TAPE_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_TAPE_PEN_BTN_SHOW);
        hashMap.put(ShapeToolType.LASER_PEN, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_PEN_BTN_SHOW);
        hashMap.put(ShapeToolType.CUSTOM, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_CUSTOM_SETTING_SHOW);
        return hashMap;
    }

    public final boolean getInitialized() {
        return initialized;
    }

    @NotNull
    public final EventBus getStatisticsEventBus() {
        return m45086i();
    }

    @NotNull
    public final StatisticsManager getStatisticsManager() {
        return statisticsManager;
    }

    @NotNull
    public final HashMap<ShapeToolType, String> getToolTypeMapToItemClickReportKey() {
        return (HashMap) toolTypeMapToItemClickReportKey.getValue();
    }

    @NotNull
    public final HashMap<ShapeToolType, String> getToolTypeMapToItemInitReportKey() {
        return (HashMap) toolTypeMapToItemInitReportKey.getValue();
    }

    @NotNull
    public final HashMap<ShapeToolType, Pair<String, HashMap<Boolean, String>>> getToolTypeMapToPopupReportKey() {
        return (HashMap) toolTypeMapToPopupReportKey.getValue();
    }

    /* renamed from: h */
    public final HashMap<ShapeToolType, Pair<String, HashMap<Boolean, String>>> m45085h() {
        HashMap<ShapeToolType, Pair<String, HashMap<Boolean, String>>> hashMap = new HashMap<>();
        ShapeToolType shapeToolType = ShapeToolType.INK_PEN;
        HashMap hashMap2 = new HashMap();
        Boolean bool = Boolean.TRUE;
        hashMap2.put(bool, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PEN_BTN_DOUBLE_CLICK_SHOW_MENU);
        Boolean bool2 = Boolean.FALSE;
        hashMap2.put(bool2, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PEN_BTN_DOUBLE_CLICK_CLOSE_MENU);
        Unit unit = Unit.INSTANCE;
        hashMap.put(shapeToolType, new Pair<>("pen_data", hashMap2));
        ShapeToolType shapeToolType2 = ShapeToolType.BALLPOINT_PEN;
        HashMap hashMap3 = new HashMap();
        hashMap3.put(bool, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_BALL_POINT_PEN_BTN_DOUBLE_CLICK_SHOW_MENU);
        hashMap3.put(bool2, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_BALL_POINT_PEN_BTN_DOUBLE_CLICK_CLOSE_MENU);
        hashMap.put(shapeToolType2, new Pair<>("ballpen_data", hashMap3));
        ShapeToolType shapeToolType3 = ShapeToolType.MARKER_PEN;
        HashMap hashMap4 = new HashMap();
        hashMap4.put(bool, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_MARK_PEN_BTN_DOUBLE_CLICK_SHOW_MENU);
        hashMap4.put(bool2, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_MARK_PEN_BTN_DOUBLE_CLICK_CLOSE_MENU);
        hashMap.put(shapeToolType3, new Pair<>("markerpen_data", hashMap4));
        ShapeToolType shapeToolType4 = ShapeToolType.PENCIL;
        HashMap hashMap5 = new HashMap();
        hashMap5.put(bool, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PENCIL_BTN_DOUBLE_CLICK_SHOW_MENU);
        hashMap5.put(bool2, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_PENCIL_BTN_DOUBLE_CLICK_CLOSE_MENU);
        hashMap.put(shapeToolType4, new Pair<>("pencil_data", hashMap5));
        ShapeToolType shapeToolType5 = ShapeToolType.LASER_PEN;
        HashMap hashMap6 = new HashMap();
        hashMap6.put(bool, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_BTN_DOUBLE_CLICK_SHOW_MENU);
        hashMap6.put(bool2, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_BTN_DOUBLE_CLICK_CLOSE_MENU);
        hashMap.put(shapeToolType5, new Pair<>(OnyxStatisticConstant.KEY_NOTE_LASER_DATA, hashMap6));
        HashMap hashMap7 = new HashMap();
        hashMap7.put(bool, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_BTN_DOUBLE_CLICK_SHOW_MENU);
        hashMap7.put(bool2, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_BTN_DOUBLE_CLICK_CLOSE_MENU);
        hashMap.put(shapeToolType5, new Pair<>(OnyxStatisticConstant.KEY_NOTE_LASER_DATA, hashMap7));
        ShapeToolType shapeToolType6 = ShapeToolType.GRAPH_PEN;
        HashMap hashMap8 = new HashMap();
        hashMap8.put(bool, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_GRAPH_PEN_BTN_DOUBLE_CLICK_SHOW_MENU);
        hashMap8.put(bool2, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_GRAPH_PEN_BTN_DOUBLE_CLICK_CLOSE_MENU);
        hashMap.put(shapeToolType6, new Pair<>("figure_data", hashMap8));
        return hashMap;
    }

    /* renamed from: i */
    public final EventBus m45086i() {
        return (EventBus) eventBus.getValue();
    }

    public final void init(@NotNull Context appContext, @Nullable final Function0<Unit> onInitialized) {
        StatisticsConfig m45087j;
        String statisticsType;
        Observable<ProviderCertificate> build;
        Observable<ProviderCertificate> doFinally;
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        if (initialized || (m45087j = m45087j()) == null || (statisticsType = m45087j.getStatisticsType()) == null) {
            return;
        }
        if (Intrinsics.areEqual(statisticsType, StatisticsType.UMeng.name())) {
            RxBaseAction<ProviderCertificate> createInitSdkAction = statisticsManager.createInitSdkAction(appContext);
            if (createInitSdkAction != null && (build = createInitSdkAction.build()) != null && (doFinally = build.doFinally(new Action() { // from class: com.sunia.HTREnginev2.hym
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    StatisticsBundle.m45077k(Function0.this);
                }
            })) != null) {
                doFinally.subscribe();
            }
        } else {
            StatisticsType statisticsType2 = StatisticsType.GOOGLE;
            if (Intrinsics.areEqual(statisticsType, statisticsType2.name())) {
                statisticsManager.init(appContext, new LinkedHashMap(), statisticsType2);
                if (onInitialized != null) {
                    onInitialized.invoke();
                }
            } else if (onInitialized != null) {
                onInitialized.invoke();
            }
        }
        m45088l(appContext);
        ensureRegister(this);
        GlobalBundle.INSTANCE.register(this);
        initialized = true;
    }

    /* renamed from: j */
    public final StatisticsConfig m45087j() {
        return (StatisticsConfig) statisticsConfig.getValue();
    }

    /* renamed from: l */
    public final void m45088l(Context appContext) {
        StatisticsConfig m45087j = m45087j();
        boolean z = false;
        if (m45087j != null && !m45087j.getEnableReport()) {
            z = true;
        }
        if (z) {
            return;
        }
        AppConfigManager.INSTANCE.ensureLoadObservable(appContext).doOnNext(C11649f.f56160e).subscribe();
    }

    /* renamed from: m */
    public final boolean m45089m() {
        return AccountDataBundle.INSTANCE.isAlreadyLogin() && enableReport;
    }

    /* renamed from: n */
    public final void m45090n() {
        if (isReporting) {
            return;
        }
        isReporting = true;
        Observable.just(this).flatMap(C11653j.f56164e).filter(C11654k.f56165e).flatMap(C11655l.f56166e).flatMap(C11656m.f56167e).flatMap(C11657n.f56168e).flatMap(C11658o.f56169e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.gym
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                StatisticsBundle.m45078o();
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.ASYNC)
    public final void onDeleteDustbinNoteEvent(@NotNull DeleteDustbinNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        List<String> noteIds = event.getNoteIds();
        m45092r(noteIds);
        m45081d(noteIds);
    }

    @Subscribe(threadMode = ThreadMode.ASYNC)
    public final void onOnyxStatisticEvent(@NotNull OnyxStatisticEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (enableReport) {
            Observable.just(this).map(new C11650g(event)).flatMap(new C11651h(event)).doOnNext(C11652i.f56163e).subscribe();
        }
    }

    @Subscribe(threadMode = ThreadMode.ASYNC)
    public final void onSavedDocumentEvent(@NotNull SavedDocumentEvent event) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getIsDirty()) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(event.getNoteModel().getUniqueId());
            m45092r(listOf);
            m45093s(listOf);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStatisticsEvent(@NotNull BaseStatisticsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        statisticsManager.onEvent(ResManager.INSTANCE.getAppContext(), event.getEventId(), event.dataToMap());
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m45086i().post(event);
    }

    public final void preInit(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        statisticsManager.beforeInit(appContext);
    }

    /* renamed from: q */
    public final Observable<StatisticsBundle> m45091q() {
        if (!m45089m() || hasReportOnyxNoteRecord) {
            Observable<StatisticsBundle> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<StatisticsBundle> map = new CheckOnyxNoteRecordAction().build().flatMap(C11660q.f56174e).doOnNext(C11661r.f56175e).map(new C11662s());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final void m45092r(List<String> noteIds) {
        if (m45089m()) {
            new SaveOnyxStatisticNoteModelAction(noteIds).build().doOnNext(C11666w.f56192e).subscribe();
        }
    }

    public final void reportCustomSettingPopupMenuEvent(@NotNull final EditorBundle editorBundle, @NotNull ShapeToolbarCustomPopup popup) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(popup, "popup");
        if (popup.isShowing()) {
            INSTANCE.reportCustomSettingPopupMenuEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_CUSTOM_SETTING_BTN_DOUBLE_CLICK_SHOW_MENU, "view");
        }
        popup.getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$reportCustomSettingPopupMenuEvent$1$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportCustomSettingPopupMenuEvent(EditorBundle.this, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_CUSTOM_SETTING_BTN_DOUBLE_CLICK_CLOSE_MENU, OnyxStatisticConstant.EVENT_TYPE_CLICK);
            }
        });
    }

    public final void reportEraserPopupMenuEvent(@NotNull EraserPopupMenuEventBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_ERASER_PIXEL, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(data.isEraserPixel()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_ERASER_STROKES, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(data.isEraseStrokes()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_ERASER_SELECTION, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(data.isEraseSelection()))));
        jsonObject.addProperty("thickness", OnyxStatisticConstant.INSTANCE.thicknessValueFormat(data.getThickness()));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_ERASER_PRESSURE_ERASER, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(data.isPressureEraser()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_ERASER_HIGH_LIGHTER_ONLY, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(data.isEraseHighlighterOnly()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_ERASER_TAPE_ONLY, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(data.isEraseTapeOnly()))));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(OnyxStatisticConstant.KEY_NOTE_ERASER_DATA, jsonObject.toString()));
        reportEvent(data.getEditorBundle(), data.getEvent(), data.getEventType(), arrayList);
    }

    public final void reportEvent(@NotNull String eventId, @Nullable Map<String, ? extends Object> eventData) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        postEvent(new OnyxStatisticEvent(eventId, eventData));
    }

    public final void reportItemClickEvent(@NotNull PenViewModel penViewModel, @NotNull EditorBundle editorBundle) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        final ShapeToolType value = penViewModel.getPenType().getValue();
        if (value != null) {
            NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
            final PenPropertyBean penProperty = noteConfigManager.getNoteEditConfigInfo().getPenProperty();
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<PenArgs>>() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$reportItemClickEvent$1$penArgsOption$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final JSONObjectOption<PenArgs> invoke() {
                    return PenPropertyBean.this.getPenArgsOption(value.getShapeType());
                }
            });
            int shapeType = value.getShapeType();
            if (shapeType == ShapeToolType.INK_PEN.getShapeType()) {
                INSTANCE.reportShowPopupMenuEvent(editorBundle, "pen_data", "click_galaxy_pen_param_0002", "view", m45079p(lazy).get());
                return;
            }
            if (shapeType == ShapeToolType.BALLPOINT_PEN.getShapeType()) {
                INSTANCE.reportShowPopupMenuEvent(editorBundle, "ballpen_data", "click_galaxy_ballpen_param_0002", "view", m45079p(lazy).get());
                return;
            }
            if (shapeType == ShapeToolType.MARKER_PEN.getShapeType()) {
                INSTANCE.reportShowPopupMenuEvent(editorBundle, "markerpen_data", OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_MARK_PEN_SHORTCUT_MENU_CLICK, "view", m45079p(lazy).get());
                return;
            }
            if (shapeType == ShapeToolType.PENCIL.getShapeType()) {
                INSTANCE.reportShowPopupMenuEvent(editorBundle, "pencil_data", OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_PENCIL_SHORTCUT_MENU_CLICK, "view", m45079p(lazy).get());
                return;
            }
            if (shapeType == ShapeToolType.ERASER.getShapeType()) {
                INSTANCE.reportShowPopupMenuEvent(editorBundle, OnyxStatisticConstant.KEY_NOTE_ERASER_DATA, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_ERASER_SHORTCUT_MENU_CLICK, "view", m45079p(lazy).get());
                return;
            }
            if (shapeType == ShapeToolType.GRAPH_PEN.getShapeType()) {
                INSTANCE.reportShowPopupMenuEvent(editorBundle, "figure_data", "click_galaxy_shape_param_0002", "view", m45079p(lazy).get());
                return;
            }
            if (shapeType == ShapeToolType.TAPE_PEN.getShapeType()) {
                TapePropertyOption tapePropertyOption = noteConfigManager.getNoteEditConfigInfo().getPenProperty().getTapePropertyOption();
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_IS_LINEAR_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption.getTapeType() == 0))));
                jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_IS_RECT_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption.getTapeType() == 1))));
                jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_IS_SHOW_ALL_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption.isShowAllTape()))));
                OnyxStatisticConstant onyxStatisticConstant = OnyxStatisticConstant.INSTANCE;
                jsonObject.addProperty("color", onyxStatisticConstant.rgbaValueFormat(m45079p(lazy).get().getColor()));
                jsonObject.addProperty("thickness", onyxStatisticConstant.thicknessValueFormat(PensizeConvertExtKt.sizeToValue(m45079p(lazy).get().getWidth())));
                INSTANCE.reportShowPopupMenuEvent(editorBundle, OnyxStatisticConstant.KEY_NOTE_TAPE_DATA, "click_galaxy_tap_param_0002", "view", jsonObject);
                return;
            }
            if (shapeType == ShapeToolType.LASER_PEN.getShapeType()) {
                LaserShapeAttr laserShapeAttr = MMKVNote.INSTANCE.getLaserShapeAttrOption().get();
                TapePropertyOption tapePropertyOption2 = noteConfigManager.getNoteEditConfigInfo().getPenProperty().getTapePropertyOption();
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty(OnyxStatisticConstant.JSON_KEY_IS_POINT_LASER_POINTER, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(laserShapeAttr.isDotType()))));
                jsonObject2.addProperty(OnyxStatisticConstant.JSON_KEY_IS_LINEAR_LASER_POINTER, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(!laserShapeAttr.isDotType()))));
                jsonObject2.addProperty(OnyxStatisticConstant.JSON_KEY_IS_LINEAR_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption2.getTapeType() == 0))));
                jsonObject2.addProperty(OnyxStatisticConstant.JSON_KEY_IS_RECT_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption2.getTapeType() == 1))));
                jsonObject2.addProperty(OnyxStatisticConstant.JSON_KEY_IS_SHOW_ALL_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption2.isShowAllTape()))));
                OnyxStatisticConstant onyxStatisticConstant2 = OnyxStatisticConstant.INSTANCE;
                jsonObject2.addProperty("color", onyxStatisticConstant2.rgbaValueFormat(m45079p(lazy).get().getColor()));
                jsonObject2.addProperty("thickness", onyxStatisticConstant2.thicknessValueFormat(PensizeConvertExtKt.sizeToValue(m45079p(lazy).get().getWidth())));
                INSTANCE.reportShowPopupMenuEvent(editorBundle, OnyxStatisticConstant.KEY_NOTE_LASER_DATA, "click_galaxy_laserpointer_param_0002", "view", jsonObject2);
            }
        }
    }

    public final void reportLassoPopupMenuEvent(@NotNull LassoPopupMenuEventBean eventData) {
        Intrinsics.checkNotNullParameter(eventData, "eventData");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_IS_FREE_LASSO, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isFreeLasso()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_IS_RECT_LASSO, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isRectLasso()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_SHAPE, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isShape()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_PIC, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isPic()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isTape()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_TEXT_BOX, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isTextBox()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_HANDWRITING, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isHandwriting()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_HIGHLIGHTER, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isHighLighter()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_LINK, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isLink()))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_LASSO_TAG, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(eventData.isTag()))));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(OnyxStatisticConstant.KEY_NOTE_LASSO_DATA, jsonObject.toString()));
        reportEvent(eventData.getEditorBundle(), eventData.getEvent(), eventData.getEventType(), arrayList);
    }

    public final void reportPickPictureEventFromInsertPage(@NotNull List<Uri> resultList, int triggerFrom) {
        Map<String, ? extends Object> mutableMapOf;
        Intrinsics.checkNotNullParameter(resultList, "resultList");
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(triggerFrom)));
        mutableMapOf.put(OnyxStatisticConstant.KEY_IMAGE_AMOUNT, Integer.valueOf(resultList.size()));
        reportEvent(OnyxStatisticConstant.ID_PICK_PIC_FINISHED, mutableMapOf);
    }

    public final void reportPickPictureEventFromInsertShape(@NotNull List<Uri> resultList, int requestCode) {
        Map<String, ? extends Object> mutableMapOf;
        Intrinsics.checkNotNullParameter(resultList, "resultList");
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(requestCode == 1006 ? OnyxStatisticConstant.TRIGGER_FROM_EDIT_NOTE_TOOL_BAR_PHOTO_POPUP : OnyxStatisticConstant.TRIGGER_FROM_EDIT_NOTE_TOOL_BAR_QUICK_PHOTO_LIST_ITEM)));
        mutableMapOf.put(OnyxStatisticConstant.KEY_IMAGE_AMOUNT, Integer.valueOf(resultList.size()));
        reportEvent(OnyxStatisticConstant.ID_PICK_PIC_FINISHED, mutableMapOf);
    }

    public final void reportShowPopupMenuEvent(@NotNull EditorBundle editorBundle, @NotNull String shapeDataKindKey, @NotNull String event, @Nullable PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeDataKindKey, "shapeDataKindKey");
        Intrinsics.checkNotNullParameter(event, "event");
        reportShowPopupMenuEvent(editorBundle, shapeDataKindKey, event, "view", penArgs);
    }

    public final void reportToolMenuDragEvent(@NotNull EditorBundle editorBundle, @NotNull String event, @NotNull String dockTypeName) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(dockTypeName, "dockTypeName");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(OnyxStatisticConstant.KEY_NOTE_TOOL_BAR_SITE, dockTypeName);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(OnyxStatisticConstant.KEY_NOTE_EDIT_PAGE_SHAPE_TOOL_DRAG, jsonObject.toString()));
        reportEvent(editorBundle, event, OnyxStatisticConstant.KEY_NOTE_DRAG, arrayList);
    }

    /* renamed from: s */
    public final void m45093s(List<String> ids) {
        int collectionSizeOrDefault;
        if (m45089m()) {
            List<String> list = ids;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new OnyxNoteRecordModel((String) it2.next(), false));
            }
            RxBaseAction.execute$default(new SaveNoteRecordAction(arrayList), null, null, null, 7, null);
        }
    }

    public final void reportEvent(@NotNull EditorBundle editorBundle, @NotNull String event, @NotNull String eventType, @Nullable List<Pair<String, Object>> additionInfo) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Observable map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(editorBundle)).map(new C11659p(editorBundle, event, eventType, additionInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        map.subscribe();
    }

    public final void reportShowPopupMenuEvent(@NotNull EditorBundle editorBundle, @NotNull String shapeDataKindKey, @NotNull String event, @NotNull String eventType, @Nullable final PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeDataKindKey, "shapeDataKindKey");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        final JsonObject jsonObject = new JsonObject();
        Observable doOnNext = Observable.just(MMKVNote.INSTANCE.getGraphShapeOption().get()).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.common.statistics.StatisticsBundle$reportShowPopupMenuEvent$ob$1

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes9.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[ShapeToolType.values().length];
                    try {
                        iArr[ShapeToolType.GRAPH_PEN.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull UniversalShapeAttr universalShapeAttr) {
                String str;
                String str2;
                String str3;
                Intrinsics.checkNotNullParameter(universalShapeAttr, "universalShapeAttr");
                PenArgs penArgs2 = PenArgs.this;
                if (penArgs2 != null) {
                    JsonObject jsonObject2 = jsonObject;
                    ShapeToolType.Companion companion = ShapeToolType.INSTANCE;
                    ShapeToolType shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(companion, penArgs2.getType(), null, 2, null);
                    if (shapeToolType$default == null || (str = shapeToolType$default.name()) == null) {
                        str = "";
                    }
                    ShapeToolType shapeToolType$default2 = ShapeToolType.Companion.getShapeToolType$default(companion, penArgs2.getType(), null, 2, null);
                    if ((shapeToolType$default2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[shapeToolType$default2.ordinal()]) == 1) {
                        String type = universalShapeAttr.getType();
                        str = type != null ? type : "";
                    }
                    jsonObject2.addProperty(OnyxStatisticConstant.JSON_KEY_FIGURE_NAME, str);
                    OnyxStatisticConstant onyxStatisticConstant = OnyxStatisticConstant.INSTANCE;
                    jsonObject2.addProperty("color", onyxStatisticConstant.rgbaValueFormat(penArgs2.getColor()));
                    jsonObject2.addProperty("thickness", onyxStatisticConstant.thicknessValueFormat(PensizeConvertExtKt.sizeToValue(penArgs2.getWidth())));
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    str2 = StatisticsBundle.patternStrTwoFloatDigits;
                    String format = String.format(str2, Arrays.copyOf(new Object[]{Float.valueOf(PenUtils.INSTANCE.toPercentPressureSensitivity(penArgs2.getPressureSensitivity()))}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                    jsonObject2.addProperty("pressure", format);
                    str3 = StatisticsBundle.patternStrWithMMUnit;
                    String format2 = String.format(str3, Arrays.copyOf(new Object[]{Float.valueOf(penArgs2.getNib())}, 1));
                    Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                    jsonObject2.addProperty("nib", format2);
                    jsonObject2.addProperty(OnyxStatisticConstant.JSON_KEY_IS_FIGURE_FILL, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(universalShapeAttr.getFillColorEnable()))));
                }
            }
        }).map(new C11663t(shapeDataKindKey, jsonObject)).doOnNext(new C11664u(editorBundle, event, eventType, shapeDataKindKey, jsonObject));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        doOnNext.subscribe();
    }

    public final void reportCustomSettingPopupMenuEvent(@NotNull EditorBundle editorBundle, @NotNull String event, @NotNull String eventType) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        String str = new String();
        String str2 = new String();
        Iterator<T> it2 = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShapeToolbarData().getEnabledList().iterator();
        while (it2.hasNext()) {
            str = str + ((String) it2.next()) + NameUtil.USCORE;
        }
        Iterator<T> it3 = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShapeToolbarData().getDisabledList().iterator();
        while (it3.hasNext()) {
            str2 = str2 + ((String) it3.next()) + NameUtil.USCORE;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("note_tool_bar_sort", str));
        arrayList.add(new Pair("note_tool_bar_hide", str2));
        reportEvent(editorBundle, event, eventType, arrayList);
    }

    public final void reportEvent(@NotNull String docID, @NotNull String docName, @NotNull String event, @NotNull String eventType, @Nullable List<Pair<String, Object>> additionInfo) {
        Intrinsics.checkNotNullParameter(docID, "docID");
        Intrinsics.checkNotNullParameter(docName, "docName");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, docID);
        if (additionInfo != null) {
            Iterator<T> it2 = additionInfo.iterator();
            while (it2.hasNext()) {
                Pair pair = (Pair) it2.next();
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
        }
        if (docID.length() == 0) {
            return;
        }
        reportEvent(event, linkedHashMap);
    }

    public final void reportShowPopupMenuEvent(@NotNull EditorBundle editorBundle, @NotNull String shapeDataKindKey, @NotNull String event, @NotNull String eventType, @NotNull JsonObject jsonData) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeDataKindKey, "shapeDataKindKey");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(jsonData, "jsonData");
        Observable map = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).map(new C11665v(editorBundle, event, eventType, shapeDataKindKey, jsonData));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        map.subscribe();
    }
}

package com.onyx.android.sdk.universal.editor.extension;

import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONListOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.neohwr.fontmgr.FontConfig;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.note.common.data.shape.ExcerptType;
import com.onyx.android.sdk.note.common.data.shape.LaserShapeAttr;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.note.common.data.text.TextInputConfig;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.EnumUtils;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bC\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\t\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\nJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\u0012J \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\n2\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u0002J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00160\n2\b\b\u0002\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0019\u001a\u00020\u00102\b\b\u0002\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00102\b\b\u0002\u0010\u0014\u001a\u00020\u0004J\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\nJ\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\nJ\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u001fJ\u0006\u0010\"\u001a\u00020!J\u000e\u0010#\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u001dJ\u000e\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0004J\u0016\u0010'\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0002J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0004J\u0016\u0010)\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0002J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0004J\u0016\u0010+\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0002J\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0\nJ\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020.0\n2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00100\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u00101\u001a\u00020\u0002J\u000e\u00103\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u0002J\u000e\u00104\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u0002J\u0010\u00105\u001a\u00020\u00022\b\b\u0002\u00102\u001a\u00020\u0002J\f\u00107\u001a\b\u0012\u0004\u0012\u0002060\nJ\u0006\u00108\u001a\u00020!J\u0006\u00109\u001a\u00020!J\u0006\u0010;\u001a\u00020:J\u0006\u0010<\u001a\u00020!J\f\u0010>\u001a\b\u0012\u0004\u0012\u00020=0\nJ\u0006\u0010?\u001a\u00020=J\u0006\u0010@\u001a\u00020\u0012J\u0010\u0010B\u001a\u00020\u00072\b\b\u0002\u0010A\u001a\u00020\u0004J\u0018\u0010D\u001a\u00020\u00102\u0006\u0010C\u001a\u00020\u00072\b\b\u0002\u0010A\u001a\u00020\u0004J\u0006\u0010E\u001a\u00020\u0007J\u0006\u0010F\u001a\u00020\u0007J\u0006\u0010G\u001a\u00020!J\u0006\u0010H\u001a\u00020:J\u0006\u0010I\u001a\u00020!J\u0006\u0010K\u001a\u00020JJ\u0014\u0010O\u001a\u00020N2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00020LJ\u0014\u0010P\u001a\u00020N2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00020LJ\u0006\u0010R\u001a\u00020QR\u0014\u0010T\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010SR\u0014\u0010U\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010SR\u0014\u0010W\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bV\u0010SR\u0014\u0010Y\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bX\u0010SR\u0014\u0010[\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bZ\u0010SR\u0014\u0010]\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\\\u0010SR\u0014\u0010_\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b^\u0010SR\u0014\u0010a\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b`\u0010SR\u0014\u0010c\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bb\u0010SR\u0014\u0010e\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bd\u0010SR\u0014\u0010g\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bf\u0010SR\u0014\u0010i\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bh\u0010SR\u0014\u0010k\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bj\u0010SR\u0014\u0010m\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bl\u0010SR\u0014\u0010o\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bn\u0010SR\u0014\u0010q\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bp\u0010SR\u0014\u0010s\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\br\u0010SR\u0014\u0010u\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\bt\u0010SR\u0014\u0010v\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bv\u0010SR\u0014\u0010w\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bw\u0010SR\u0014\u0010x\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bx\u0010SR\u0014\u0010y\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\by\u0010SR\u0014\u0010z\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bz\u0010SR\u0014\u0010{\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b{\u0010SR\u0014\u0010|\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b|\u0010SR\u0014\u0010}\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b}\u0010SR\u0014\u0010~\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b~\u0010SR\u0014\u0010\u007f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u007f\u0010SR\u0016\u0010\u0080\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010SR\u0016\u0010\u0081\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010SR\u0016\u0010\u0082\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010SR\u0016\u0010\u0083\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010SR\u0016\u0010\u0084\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010SR\u0016\u0010\u0085\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010SR\u0016\u0010\u0086\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010SR\u0016\u0010\u0087\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010SR\u0016\u0010\u0088\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010SR\u0016\u0010\u0089\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010SR\u0016\u0010\u008a\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010SR\u0016\u0010\u008b\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010SR\u0016\u0010\u008c\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010SR\u0016\u0010\u008d\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008d\u0001\u0010SR\u0016\u0010\u008e\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010SR\u0016\u0010\u008f\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010SR\u0017\u0010\u0090\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001¨\u0006\u0094\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;", "", "", "penType", "", "a", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "toggle", "b", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;", "getLaserShapeAttrOption", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "getExcerptShapeAttrOption", "option", "", "setExcerptShapeAttrOption", "", "isTextExcerpt", CouchFieldKey.KEY_UID, "templateType", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "getTemplateOption", "getCoverOption", "resetCoverOption", "resetTemplateOption", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "getQuickNoteOption", "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "getGraphShapeOption", "Lcom/onyx/android/sdk/data/utils/JSONListOption;", "getUniversalFavoriteListOption", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getEnableStylusSelectTextOption", "setGraphShapeOption", Constant.TAG_USER_ID, "getUserTemplateRevision", "revision", "setUserTemplateRevision", "getUserCounterInitDataVersion", "setUserCounterInitDataVersion", "getUserCoverRevision", "setUserCoverRevision", "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;", "getPencilBoxOption", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenArgsOption", "containsPenAttr", "getLastSelectShapeType", "shapeType", "saveLastSelectShapeType", "saveLastWriteGroupShapeType", "getLastWriteGroupShapeType", "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", "getTextInputConfigOption", "getGraphConvert", "getGraphConvertWithPressure", "Lcom/onyx/android/sdk/data/utils/StringOption;", "getInkLastBeautifyFontOption", "getRealtimeBeautifyEnabledOption", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "getRealtimeBeautifyTypesetOption", "getRealtimeBeautifyTypesetArgs", "isStylusLongPressEraser", "key", "getEditTouchMode", "touchMode", "saveEditTouchMode", "toggleScribbleEditTouchMode", "toggleReadingEditTouchMode", "getPalmRejectionOption", "getNoteLockPasswordOption", "getNoteFingerLockPasswordOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getNoteIdleAutoLockIntervalOption", "", "defaultColors", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "getFolderColorListOption", "getTagColorListOption", "Lcom/tencent/mmkv/MMKV;", "getMMKV", Constants.STRING_SIG, MMKVNote.ONYX_UNIVERSAL_SHAPE_ATTR, MMKVNote.UNIVERSAL_FAVORITE_SHAPE_LIST, "c", "LASER_SHAPE_ATTR", "d", "EXCERPT_SHAPE_ATTR", "e", MMKVNote.TEMPLATE_JSON_ATTR, C6997f.f39671c, MMKVNote.TEMPLATE_BOUNDLESS_ATTR, C6998g.f39679a, MMKVNote.COVER_JSON_ATTR, C6999h.f39688c, MMKVNote.QUICK_NOTE_JSON_ATTR, "i", MMKVNote.PEN_BOX_SET, "j", MMKVNote.TEMPLATE_REVISION, C4921e.f26537n, MMKVNote.COVER_REVISION, "l", MMKVNote.PEN_JSON_ATTR, "m", MMKVNote.LAST_SELECTED_SHAPE_TYPE, GoogleApiAvailabilityLight.f29016b, MMKVNote.LAST_SELECTED_WRITE_GROUP_SHAPE_TYPE, C4921e.f26528e, MMKVNote.TEXT_INPUT_CONFIG_ATTR, "p", MMKVNote.COUNTER_INIT_DATA_VERSION, "q", MMKVNote.FOLDER_COLOR_LIST, "r", MMKVNote.TAG_COLOR_LIST, MMKVNote.ONYX_NOTE_EDIT_LASSO_TYPE, MMKVNote.ONYX_NOTE_EDIT_LASSO_ELEMENT, MMKVNote.ONYX_NOTE_EDIT_ERASER_TYPE, MMKVNote.ONYX_NOTE_EDIT_ERASER_WIDTH, MMKVNote.ONYX_NOTE_EDIT_ERASER_PRESSURE_SWITCH, MMKVNote.ONYX_NOTE_EDIT_ERASER_PRESSURE, MMKVNote.ONYX_NOTE_EDIT_ERASER_SCRATCH_ERASE, MMKVNote.ONYX_NOTE_EDIT_ERASER_ELEMENT_ONLY, MMKVNote.ONYX_NOTE_EDIT_ERASER_ALL_CONTAINS, MMKVNote.ONYX_NOTE_EDIT_ERASER_AUTO_CANCEL, MMKVNote.ONYX_NOTE_EDIT_TAPE_TYPE, MMKVNote.ONYX_NOTE_EDIT_TAPE_SHOW_ALL, MMKVNote.ONYX_NOTE_EDIT_TAPE_STROKE_WIDTH, MMKVNote.ONYX_NOTE_EDIT_TAPE_COLOR, "ONYX_NOTE_EDIT_TOUCH_MODE", MMKVNote.ONYX_NOTE_EDIT_SCRIBBLE_TOUCH_MODE, "SETTINGS_TOOLS_GRAPH_CONVERT", "SETTINGS_STYLUS_SELECT_TEXT", "SETTINGS_PALM_REJECTION", "SETTINGS_TOOLS_GRAPH_CONVERT_WITH_PRESSURE", "SETTINGS_INK_LAST_BEAUTIFY_FONT", "SETTINGS_REALTIME_BEAUTIFY_ENABLED", "SETTINGS_REALTIME_BEAUTIFY_TYPESET", "NOTE_LOCK_PASSWORD", "NOTE_LOCK_FINGER_PASSWORD", "NOTE_IDLE_AUTO_LOCK_INTERVAL", "NOTE_IDLE_AUTO_LOCK_INTERVAL_DEFAULT", "I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMMKVNote.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MMKVNote.kt\ncom/onyx/android/sdk/universal/editor/extension/MMKVNote\n+ 2 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,388:1\n326#2,5:389\n316#2:394\n323#2:395\n312#2:396\n*S KotlinDebug\n*F\n+ 1 MMKVNote.kt\ncom/onyx/android/sdk/universal/editor/extension/MMKVNote\n*L\n184#1:389,5\n184#1:394\n294#1:395\n294#1:396\n*E\n"})
/* loaded from: classes8.dex */
public final class MMKVNote {

    @NotNull
    public static final MMKVNote INSTANCE = new MMKVNote();

    @NotNull
    public static final String NOTE_IDLE_AUTO_LOCK_INTERVAL = "note_idle_auto_lock_interval";
    public static final int NOTE_IDLE_AUTO_LOCK_INTERVAL_DEFAULT = 10;

    @NotNull
    public static final String NOTE_LOCK_FINGER_PASSWORD = "note_lock_finger_password";

    @NotNull
    public static final String NOTE_LOCK_PASSWORD = "note_lock_password";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_ALL_CONTAINS = "ONYX_NOTE_EDIT_ERASER_ALL_CONTAINS";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_AUTO_CANCEL = "ONYX_NOTE_EDIT_ERASER_AUTO_CANCEL";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_ELEMENT_ONLY = "ONYX_NOTE_EDIT_ERASER_ELEMENT_ONLY";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_PRESSURE = "ONYX_NOTE_EDIT_ERASER_PRESSURE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_PRESSURE_SWITCH = "ONYX_NOTE_EDIT_ERASER_PRESSURE_SWITCH";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_SCRATCH_ERASE = "ONYX_NOTE_EDIT_ERASER_SCRATCH_ERASE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_TYPE = "ONYX_NOTE_EDIT_ERASER_TYPE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ERASER_WIDTH = "ONYX_NOTE_EDIT_ERASER_WIDTH";

    @NotNull
    public static final String ONYX_NOTE_EDIT_LASSO_ELEMENT = "ONYX_NOTE_EDIT_LASSO_ELEMENT";

    @NotNull
    public static final String ONYX_NOTE_EDIT_LASSO_TYPE = "ONYX_NOTE_EDIT_LASSO_TYPE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_SCRIBBLE_TOUCH_MODE = "ONYX_NOTE_EDIT_SCRIBBLE_TOUCH_MODE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TAPE_COLOR = "ONYX_NOTE_EDIT_TAPE_COLOR";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TAPE_SHOW_ALL = "ONYX_NOTE_EDIT_TAPE_SHOW_ALL";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TAPE_STROKE_WIDTH = "ONYX_NOTE_EDIT_TAPE_STROKE_WIDTH";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TAPE_TYPE = "ONYX_NOTE_EDIT_TAPE_TYPE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TOUCH_MODE = "ONYX_NOTE_EDIT_TOUCH_MODE";

    @NotNull
    public static final String SETTINGS_INK_LAST_BEAUTIFY_FONT = "ink_last_beautify_font";

    @NotNull
    public static final String SETTINGS_PALM_REJECTION = "settings_palm_rejection";

    @NotNull
    public static final String SETTINGS_REALTIME_BEAUTIFY_ENABLED = "settings_tools_realtime_beautify_enabled";

    @NotNull
    public static final String SETTINGS_REALTIME_BEAUTIFY_TYPESET = "realtime_beautify_typeset";

    @NotNull
    public static final String SETTINGS_STYLUS_SELECT_TEXT = "settings_stylus_select_text";

    @NotNull
    public static final String SETTINGS_TOOLS_GRAPH_CONVERT = "settings_tools_graph_convert";

    @NotNull
    public static final String SETTINGS_TOOLS_GRAPH_CONVERT_WITH_PRESSURE = "settings_tools_graph_convert_with_pressure";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String ONYX_UNIVERSAL_SHAPE_ATTR = "ONYX_UNIVERSAL_SHAPE_ATTR";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String UNIVERSAL_FAVORITE_SHAPE_LIST = "UNIVERSAL_FAVORITE_SHAPE_LIST";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String LASER_SHAPE_ATTR = "ONYX_LASER_SHAPE_ATTR";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String EXCERPT_SHAPE_ATTR = "ONYX_EXCERPT_SHAPE_ATTR";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String TEMPLATE_JSON_ATTR = "TEMPLATE_JSON_ATTR";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String TEMPLATE_BOUNDLESS_ATTR = "TEMPLATE_BOUNDLESS_ATTR";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String COVER_JSON_ATTR = "COVER_JSON_ATTR";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String QUICK_NOTE_JSON_ATTR = "QUICK_NOTE_JSON_ATTR";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final String PEN_BOX_SET = "PEN_BOX_SET";

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public static final String TEMPLATE_REVISION = "TEMPLATE_REVISION";

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public static final String COVER_REVISION = "COVER_REVISION";

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public static final String PEN_JSON_ATTR = "PEN_JSON_ATTR";

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public static final String LAST_SELECTED_SHAPE_TYPE = "LAST_SELECTED_SHAPE_TYPE";

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public static final String LAST_SELECTED_WRITE_GROUP_SHAPE_TYPE = "LAST_SELECTED_WRITE_GROUP_SHAPE_TYPE";

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public static final String TEXT_INPUT_CONFIG_ATTR = "TEXT_INPUT_CONFIG_ATTR";

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public static final String COUNTER_INIT_DATA_VERSION = "COUNTER_INIT_DATA_VERSION";

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public static final String FOLDER_COLOR_LIST = "FOLDER_COLOR_LIST";

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_COLOR_LIST = "TAG_COLOR_LIST";

    public static /* synthetic */ JSONObjectOption getCoverOption$default(MMKVNote mMKVNote, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        return mMKVNote.getCoverOption(str);
    }

    public static /* synthetic */ EditorTouchMode getEditTouchMode$default(MMKVNote mMKVNote, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "ONYX_NOTE_EDIT_TOUCH_MODE";
        }
        return mMKVNote.getEditTouchMode(str);
    }

    public static /* synthetic */ int getLastWriteGroupShapeType$default(MMKVNote mMKVNote, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 5;
        }
        return mMKVNote.getLastWriteGroupShapeType(i);
    }

    public static /* synthetic */ JSONObjectOption getTemplateOption$default(MMKVNote mMKVNote, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return mMKVNote.getTemplateOption(str, i);
    }

    public static /* synthetic */ void resetCoverOption$default(MMKVNote mMKVNote, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        mMKVNote.resetCoverOption(str);
    }

    public static /* synthetic */ void resetTemplateOption$default(MMKVNote mMKVNote, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        mMKVNote.resetTemplateOption(str);
    }

    public static /* synthetic */ void saveEditTouchMode$default(MMKVNote mMKVNote, EditorTouchMode editorTouchMode, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "ONYX_NOTE_EDIT_TOUCH_MODE";
        }
        mMKVNote.saveEditTouchMode(editorTouchMode, str);
    }

    /* renamed from: a */
    public final String m40875a(int penType) {
        return PEN_JSON_ATTR + penType;
    }

    /* renamed from: b */
    public final EditorTouchMode m40876b(Function1<? super EditorTouchMode, ? extends EditorTouchMode> toggle) {
        EditorTouchMode invoke = toggle.invoke(getEditTouchMode$default(this, null, 1, null));
        saveEditTouchMode$default(this, invoke, null, 2, null);
        return invoke;
    }

    public final boolean containsPenAttr(int penType) {
        return getMMKV().contains(m40875a(penType));
    }

    @NotNull
    public final JSONObjectOption<TemplateJsonBean> getCoverOption(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        return new JSONObjectOption<>(getMMKV(), uid + "_COVER_JSON_ATTR", new TypeReference<TemplateJsonBean>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getCoverOption$1
        }, new Function0<TemplateJsonBean>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getCoverOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TemplateJsonBean invoke() {
                return TemplateJsonBean.INSTANCE.defaultCover();
            }
        });
    }

    @NotNull
    public final EditorTouchMode getEditTouchMode(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (EditorTouchMode) AnyKt.getOrElse(EnumUtils.getEnum(EditorTouchMode.class, MMKVUtils.INSTANCE.getString(key, "STYLUS_SCRIBBLE")), new Function0<EditorTouchMode>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getEditTouchMode$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EditorTouchMode invoke() {
                return EditorTouchMode.STYLUS_SCRIBBLE;
            }
        });
    }

    @NotNull
    public final BooleanOption getEnableStylusSelectTextOption() {
        return MMKVUtils.INSTANCE.booleanOption(SETTINGS_STYLUS_SELECT_TEXT, true);
    }

    @NotNull
    public final JSONObjectOption<ExcerptAttr> getExcerptShapeAttrOption() {
        return new JSONObjectOption<>(getMMKV(), EXCERPT_SHAPE_ATTR, new TypeReference<ExcerptAttr>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getExcerptShapeAttrOption$1
        }, new Function0<ExcerptAttr>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getExcerptShapeAttrOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExcerptAttr invoke() {
                return new ExcerptAttr();
            }
        });
    }

    @NotNull
    public final IntListOption getFolderColorListOption(@NotNull List<Integer> defaultColors) {
        Intrinsics.checkNotNullParameter(defaultColors, "defaultColors");
        return new IntListOption(getMMKV(), FOLDER_COLOR_LIST, TypeExtKt.toIntList(defaultColors));
    }

    @NotNull
    public final BooleanOption getGraphConvert() {
        return new BooleanOption(getMMKV(), SETTINGS_TOOLS_GRAPH_CONVERT, true);
    }

    @NotNull
    public final BooleanOption getGraphConvertWithPressure() {
        if (!getMMKV().contains(SETTINGS_TOOLS_GRAPH_CONVERT_WITH_PRESSURE)) {
            getMMKV().putBoolean(SETTINGS_TOOLS_GRAPH_CONVERT_WITH_PRESSURE, true);
        }
        return new BooleanOption(getMMKV(), SETTINGS_TOOLS_GRAPH_CONVERT_WITH_PRESSURE, true);
    }

    @NotNull
    public final JSONObjectOption<UniversalShapeAttr> getGraphShapeOption() {
        return new JSONObjectOption<>(getMMKV(), ONYX_UNIVERSAL_SHAPE_ATTR, new TypeReference<UniversalShapeAttr>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getGraphShapeOption$1
        }, new Function0<UniversalShapeAttr>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getGraphShapeOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UniversalShapeAttr invoke() {
                return new UniversalShapeAttr();
            }
        });
    }

    @NotNull
    public final StringOption getInkLastBeautifyFontOption() {
        return MMKVUtils.INSTANCE.stringOption(SETTINGS_INK_LAST_BEAUTIFY_FONT, FontConfig.INSTANCE.ensureDefaultFontPath());
    }

    @NotNull
    public final JSONObjectOption<LaserShapeAttr> getLaserShapeAttrOption() {
        return new JSONObjectOption<>(getMMKV(), LASER_SHAPE_ATTR, new TypeReference<LaserShapeAttr>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getLaserShapeAttrOption$1
        }, new Function0<LaserShapeAttr>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getLaserShapeAttrOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LaserShapeAttr invoke() {
                return new LaserShapeAttr();
            }
        });
    }

    public final int getLastSelectShapeType() {
        return getMMKV().getInt(LAST_SELECTED_SHAPE_TYPE, 5);
    }

    public final int getLastWriteGroupShapeType(int shapeType) {
        return getMMKV().getInt(LAST_SELECTED_WRITE_GROUP_SHAPE_TYPE, shapeType);
    }

    @NotNull
    public final MMKV getMMKV() {
        return MMKVUtils.INSTANCE.get();
    }

    @NotNull
    public final BooleanOption getNoteFingerLockPasswordOption() {
        return new BooleanOption(getMMKV(), NOTE_LOCK_FINGER_PASSWORD + AccountDataBundle.INSTANCE.getSyncUserId(), false, 4, null);
    }

    @NotNull
    public final IntOption getNoteIdleAutoLockIntervalOption() {
        return new IntOption(getMMKV(), NOTE_IDLE_AUTO_LOCK_INTERVAL + AccountDataBundle.INSTANCE.getSyncUserId(), 10);
    }

    @NotNull
    public final StringOption getNoteLockPasswordOption() {
        return new StringOption(getMMKV(), NOTE_LOCK_PASSWORD + AccountDataBundle.INSTANCE.getSyncUserId(), null, 4, null);
    }

    @NotNull
    public final BooleanOption getPalmRejectionOption() {
        return new BooleanOption(getMMKV(), SETTINGS_PALM_REJECTION, DeviceFactory.INSTANCE.getCurrentDevice().getDefaultPalmRejectEnable());
    }

    @NotNull
    public final JSONObjectOption<PenArgs> getPenArgsOption(final int penType) {
        return new JSONObjectOption<>(getMMKV(), m40875a(penType), new TypeReference<PenArgs>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getPenArgsOption$1
        }, new Function0<PenArgs>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getPenArgsOption$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PenArgs invoke() {
                return PenUtils.INSTANCE.defaultPenArgs(penType);
            }
        });
    }

    @NotNull
    public final JSONObjectOption<PencilBoxManager> getPencilBoxOption() {
        return new JSONObjectOption<>(getMMKV(), PEN_BOX_SET, new TypeReference<PencilBoxManager>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getPencilBoxOption$1
        }, new Function0<PencilBoxManager>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getPencilBoxOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PencilBoxManager invoke() {
                return new PencilBoxManager();
            }
        });
    }

    @NotNull
    public final JSONObjectOption<NoteCreateInfo> getQuickNoteOption() {
        return new JSONObjectOption<>(getMMKV(), QUICK_NOTE_JSON_ATTR, new TypeReference<NoteCreateInfo>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getQuickNoteOption$1
        }, new Function0<NoteCreateInfo>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getQuickNoteOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteCreateInfo invoke() {
                return NoteCreateInfo.INSTANCE.quicklyNoteInfo();
            }
        });
    }

    @NotNull
    public final BooleanOption getRealtimeBeautifyEnabledOption() {
        return MMKVUtils.INSTANCE.booleanOption(SyncStateOptions.getComposedKey$default(SyncStateOptions.INSTANCE, SETTINGS_REALTIME_BEAUTIFY_ENABLED, null, 2, null), false);
    }

    @NotNull
    public final ShapeTypesetArgs getRealtimeBeautifyTypesetArgs() {
        return getRealtimeBeautifyTypesetOption().get();
    }

    @NotNull
    public final JSONObjectOption<ShapeTypesetArgs> getRealtimeBeautifyTypesetOption() {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        return new JSONObjectOption<>(mMKVUtils.get(), SETTINGS_REALTIME_BEAUTIFY_TYPESET, new TypeReference<ShapeTypesetArgs>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getRealtimeBeautifyTypesetOption$$inlined$objectOption$1
        }, new Function0<ShapeTypesetArgs>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getRealtimeBeautifyTypesetOption$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShapeTypesetArgs invoke() {
                ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
                shapeTypesetArgs.setEnableUnifiedParams(false);
                shapeTypesetArgs.setTypeface(FontConfig.INSTANCE.ensureDefaultFontPath());
                shapeTypesetArgs.setFontSize(Float.valueOf(DimenUtils.INSTANCE.pt2px(ResManager.INSTANCE.getAppContext(), 16.0f)));
                shapeTypesetArgs.setCharSpacing(Float.valueOf(0.0f));
                shapeTypesetArgs.setLineSpacing(Float.valueOf(1.2f));
                return shapeTypesetArgs;
            }
        });
    }

    @NotNull
    public final IntListOption getTagColorListOption(@NotNull List<Integer> defaultColors) {
        Intrinsics.checkNotNullParameter(defaultColors, "defaultColors");
        return new IntListOption(getMMKV(), TAG_COLOR_LIST, TypeExtKt.toIntList(defaultColors));
    }

    @NotNull
    public final JSONObjectOption<TemplateJsonBean> getTemplateOption(@NotNull String uid, int templateType) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        String str = templateType == 1 ? TEMPLATE_BOUNDLESS_ATTR : TEMPLATE_JSON_ATTR;
        final TemplateJsonBean defaultBoundlessPaper = templateType == 1 ? TemplateJsonBean.INSTANCE.defaultBoundlessPaper() : TemplateJsonBean.INSTANCE.defaultPaper();
        return new JSONObjectOption<>(getMMKV(), uid + NameUtil.USCORE + str, new TypeReference<TemplateJsonBean>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getTemplateOption$1
        }, new Function0<TemplateJsonBean>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getTemplateOption$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TemplateJsonBean invoke() {
                return TemplateJsonBean.this;
            }
        });
    }

    @NotNull
    public final JSONObjectOption<TextInputConfig> getTextInputConfigOption() {
        return new JSONObjectOption<>(getMMKV(), TEXT_INPUT_CONFIG_ATTR, new TypeReference<TextInputConfig>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getTextInputConfigOption$1
        }, new Function0<TextInputConfig>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getTextInputConfigOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TextInputConfig invoke() {
                return new TextInputConfig();
            }
        });
    }

    @NotNull
    public final JSONListOption<String> getUniversalFavoriteListOption() {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        return new JSONListOption<>(mMKVUtils.get(), UNIVERSAL_FAVORITE_SHAPE_LIST, new TypeReference<ArrayList<String>>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getUniversalFavoriteListOption$$inlined$listOption$default$2
        }, new Function0<ArrayList<String>>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$getUniversalFavoriteListOption$$inlined$listOption$default$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ArrayList<String> invoke() {
                return new ArrayList<>();
            }
        });
    }

    public final int getUserCounterInitDataVersion(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return getMMKV().getInt("COUNTER_INIT_DATA_VERSION_" + userId, 0);
    }

    public final int getUserCoverRevision(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return getMMKV().getInt("COVER_REVISION_" + userId, 0);
    }

    public final int getUserTemplateRevision(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return getMMKV().getInt("TEMPLATE_REVISION_" + userId, 0);
    }

    public final boolean isStylusLongPressEraser() {
        return new IntOption(getMMKV(), QuicklyFunTypeConst.SETTINGS_STYLUS_LONG_PRESS, -1).get() == 0;
    }

    public final boolean isTextExcerpt() {
        return ExcerptType.TEXT == getExcerptShapeAttrOption().get().getType();
    }

    public final void resetCoverOption(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        getCoverOption(uid).put(TemplateJsonBean.INSTANCE.defaultCover());
    }

    public final void resetTemplateOption(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        JSONObjectOption<TemplateJsonBean> templateOption = getTemplateOption(uid, 0);
        TemplateJsonBean.Companion companion = TemplateJsonBean.INSTANCE;
        templateOption.put(companion.defaultPaper());
        getTemplateOption(uid, 1).put(companion.defaultBoundlessPaper());
    }

    public final void saveEditTouchMode(@NotNull EditorTouchMode touchMode, @NotNull String key) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        Intrinsics.checkNotNullParameter(key, "key");
        MMKVUtils.INSTANCE.putString(key, touchMode.name());
    }

    public final void saveLastSelectShapeType(int shapeType) {
        getMMKV().putInt(LAST_SELECTED_SHAPE_TYPE, shapeType);
    }

    public final void saveLastWriteGroupShapeType(int shapeType) {
        getMMKV().putInt(LAST_SELECTED_WRITE_GROUP_SHAPE_TYPE, shapeType);
    }

    public final void setExcerptShapeAttrOption(@NotNull ExcerptAttr option) {
        Intrinsics.checkNotNullParameter(option, "option");
        getMMKV().putString(EXCERPT_SHAPE_ATTR, JSONUtils.INSTANCE.toJson(option));
    }

    public final void setGraphShapeOption(@NotNull UniversalShapeAttr option) {
        Intrinsics.checkNotNullParameter(option, "option");
        getMMKV().putString(ONYX_UNIVERSAL_SHAPE_ATTR, JSONUtils.INSTANCE.toJson(option));
    }

    public final void setUserCounterInitDataVersion(@NotNull String userId, int revision) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        getMMKV().putInt("COUNTER_INIT_DATA_VERSION_" + userId, revision);
    }

    public final void setUserCoverRevision(@NotNull String userId, int revision) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        getMMKV().putInt("COVER_REVISION_" + userId, revision);
    }

    public final void setUserTemplateRevision(@NotNull String userId, int revision) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        getMMKV().putInt("TEMPLATE_REVISION_" + userId, revision);
    }

    @NotNull
    public final EditorTouchMode toggleReadingEditTouchMode() {
        return m40876b(new Function1<EditorTouchMode, EditorTouchMode>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$toggleReadingEditTouchMode$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final EditorTouchMode invoke(@NotNull EditorTouchMode it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2.isReadingMode()) {
                    return MMKVNote.INSTANCE.getEditTouchMode(MMKVNote.ONYX_NOTE_EDIT_SCRIBBLE_TOUCH_MODE);
                }
                MMKVNote.INSTANCE.saveEditTouchMode(it2, MMKVNote.ONYX_NOTE_EDIT_SCRIBBLE_TOUCH_MODE);
                return EditorTouchMode.READING;
            }
        });
    }

    @NotNull
    public final EditorTouchMode toggleScribbleEditTouchMode() {
        return m40876b(new Function1<EditorTouchMode, EditorTouchMode>() { // from class: com.onyx.android.sdk.universal.editor.extension.MMKVNote$toggleScribbleEditTouchMode$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final EditorTouchMode invoke(@NotNull EditorTouchMode it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2.isStylusMode()) {
                    return EditorTouchMode.FINGER_SCRIBBLE;
                }
                return EditorTouchMode.STYLUS_SCRIBBLE;
            }
        });
    }
}

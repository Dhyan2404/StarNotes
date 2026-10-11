package com.onyx.galaxy.note.editor.view.toolbar;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticsNoteToolbarEvent;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.data.erase.EraseType;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.data.LassoPropertyOption;
import com.onyx.android.sdk.universal.editor.data.TapePropertyOption;
import com.onyx.android.sdk.universal.editor.events.app.GlobalDocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierCheckEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierToolEvent;
import com.onyx.android.sdk.universal.editor.events.app.RulerCheckEvent;
import com.onyx.android.sdk.universal.editor.events.app.RulerEvent;
import com.onyx.android.sdk.universal.editor.events.app.RulerToolEvent;
import com.onyx.android.sdk.universal.editor.events.note.ActivateShapeHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraserWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeColorEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeSubShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertTagEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapeToolTypeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartEraseHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartLaserShapeDrawingEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartSelectionHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextInputHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartUniversalShapeDrawingEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.category.action.EditTagForNoteAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.MaxWidthFrameLayout;
import com.onyx.galaxy.note.databinding.LayoutShapeToolAutoBinding;
import com.onyx.galaxy.note.editor.data.NoteEditConfigInfo;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.event.EraserPopupDismissEvent;
import com.onyx.galaxy.note.editor.event.ShowEraserSettingEvent;
import com.onyx.galaxy.note.editor.view.IShapeViewOpt;
import com.onyx.galaxy.note.editor.view.popup.BallpointPenPopup;
import com.onyx.galaxy.note.editor.view.popup.CalligraphyPenPopup;
import com.onyx.galaxy.note.editor.view.popup.EraserPopup;
import com.onyx.galaxy.note.editor.view.popup.ExcerptPenMenuPopup;
import com.onyx.galaxy.note.editor.view.popup.ImagePopup;
import com.onyx.galaxy.note.editor.view.popup.InkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.LaserShapePopup;
import com.onyx.galaxy.note.editor.view.popup.LassoPopup;
import com.onyx.galaxy.note.editor.view.popup.MagnifierToolPopup;
import com.onyx.galaxy.note.editor.view.popup.MarkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.popup.PencilPopup;
import com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup;
import com.onyx.galaxy.note.editor.view.popup.SoftPaintPenPopup;
import com.onyx.galaxy.note.editor.view.popup.StickerManagePopup;
import com.onyx.galaxy.note.editor.view.popup.TapePenPopup;
import com.onyx.galaxy.note.editor.view.popup.UniversalShapePopup;
import com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0084\u0001B\u0011\b\u0016\u0012\u0006\u0010|\u001a\u00020{¢\u0006\u0004\b}\u0010~B\u001f\b\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\u000b\b\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f¢\u0006\u0005\b}\u0010\u0081\u0001B(\b\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\u000b\b\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f\u0012\u0007\u0010\u0082\u0001\u001a\u00020\u0018¢\u0006\u0005\b}\u0010\u0083\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u0016\u0010\u0015\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0013H\u0002J\u0016\u0010\u0016\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0018H\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0018H\u0002J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0018\u0010'\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000eH\u0002J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u000eH\u0002J\b\u0010.\u001a\u00020\u0002H\u0002J\b\u0010/\u001a\u00020\u0002H\u0002J\u0016\u00102\u001a\u00020\u00022\f\u00101\u001a\b\u0012\u0004\u0012\u0002000\u0013H\u0002J\u0018\u00104\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00105\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00106\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00107\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00108\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00109\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010:\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010<\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010=\u001a\u00020\u00022\u0006\u00103\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>2\u0006\u00103\u001a\u00020\u000bH\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BH\u0002J\u0010\u0010E\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BH\u0002J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010H\u001a\u00020G2\u0006\u00103\u001a\u00020\u000bH\u0002J\u0010\u0010K\u001a\u00020J2\u0006\u0010I\u001a\u00020GH\u0002J\b\u0010L\u001a\u00020\u0002H\u0014J\b\u0010M\u001a\u00020\u0002H\u0014J\u000e\u0010P\u001a\u00020\u00022\u0006\u0010O\u001a\u00020NJ\u000e\u0010R\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020\u001bJ\u0014\u0010U\u001a\u00020\u00022\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00020SJ\u0006\u0010V\u001a\u00020\u0018J\u0006\u0010W\u001a\u00020\u0002J\u0010\u0010Y\u001a\u00020\u00022\u0006\u0010C\u001a\u00020XH\u0007J\u0010\u0010[\u001a\u00020\u00022\u0006\u0010C\u001a\u00020ZH\u0007J\u000e\u0010^\u001a\u00020\u00022\u0006\u0010]\u001a\u00020\\J\u0010\u0010_\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010`\u001a\u00020\u0002J\u0010\u0010b\u001a\u00020\u00022\u0006\u0010C\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u00022\u0006\u0010C\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010C\u001a\u00020eH\u0007J\u000e\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020gRL\u0010p\u001a:\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020l0k\u0012\n\u0012\b\u0012\u0004\u0012\u00020l0m0jj\u001c\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020l0k\u0012\n\u0012\b\u0012\u0004\u0012\u00020l0m`n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010oR\u0016\u0010]\u001a\u00020\\8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010qR\u0016\u0010t\u001a\u00020r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010sR\u0016\u0010O\u001a\u00020N8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u0010uR\u0018\u0010Q\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010vR\u0016\u0010w\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010FR\u0016\u0010z\u001a\u00020x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010y¨\u0006\u0085\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;", "Lcom/onyx/galaxy/note/common/view/MaxWidthFrameLayout;", "", "q", C4921e.f26528e, "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;", "iShapeViewOpt", "m", GoogleApiAvailabilityLight.f29016b, "shapeOpt", "l", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "F", "Landroid/view/View;", "view", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "N", "p", "", "shapeToolTypes", "G", C6998g.f39679a, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "", "color", "d", "", "size", C6997f.f39671c, "toolType", "s", "x", "r", "t", "shapeType", "e", "j", "A", "B", "z", "v", "u", Constants.ELEMNAME_ANCHOR_STRING, "w", "y", "U", "K", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "list", "i", "viewShapeType", "Y", "Q", "J", "V", "I", "S", "T", "M", "R", "X", "Landroid/widget/PopupWindow;", "popup", "H", "W", "", NotificationCompat.CATEGORY_EVENT, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "E", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;", C6999h.f39688c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TRANSLET_OUTPUT_PNAME, "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", C4921e.f26537n, "onAttachedToWindow", "onDetachedFromWindow", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "rotation", "setOrientationChanged", "Lkotlin/Function0;", "callBack", "addShapeToolChildChangeCallback", "getShapeToolWidth", "ensureToolVisible", "Lcom/onyx/galaxy/note/editor/event/ShowEraserSettingEvent;", "onShowEraserSettingEvent", "Lcom/onyx/galaxy/note/editor/event/EraserPopupDismissEvent;", "onEraserPopupDismissEvent", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "setPenViewModel", "setSelectByType", "dismissAllPopup", "Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;", "onGlobalDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RulerToolEvent;", "onRulerToolEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;", "onMagnifierToolEvent", "", "enable", "enableShapeToolViewAuto", "Ljava/util/LinkedHashMap;", "Ljava/lang/Class;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Ljava/lang/ref/WeakReference;", "Lkotlin/collections/LinkedHashMap;", "Ljava/util/LinkedHashMap;", "curPopupMenus", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;", "Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;", "binding", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Ljava/lang/Float;", "hadReportItemInit", "Landroid/graphics/Rect;", "Landroid/graphics/Rect;", "offerRect", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeToolViewAuto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolViewAuto.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,804:1\n1#2:805\n1855#3,2:806\n215#4,2:808\n*S KotlinDebug\n*F\n+ 1 ShapeToolViewAuto.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto\n*L\n406#1:806,2\n755#1:808,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeToolViewAuto extends MaxWidthFrameLayout {

    @NotNull
    public static final String TAG = "ShapeToolViewAuto";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<Class<? extends BasePopupWindow>, WeakReference<BasePopupWindow>> curPopupMenus;

    /* renamed from: g, reason: from kotlin metadata */
    public PenViewModel penViewModel;

    /* renamed from: h, reason: from kotlin metadata */
    public LayoutShapeToolAutoBinding binding;

    /* renamed from: i, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Float rotation;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean hadReportItemInit;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Rect offerRect;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShapeToolType.values().length];
            try {
                iArr[ShapeToolType.IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeToolType.IMAGE_STICKER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeToolType.WRITE_PEN_GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeToolType.INK_PEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeToolType.CALLIGRAPHY_PEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeToolType.SOFT_PAINT_PEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ShapeToolType.BALLPOINT_PEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ShapeToolType.MARKER_PEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ShapeToolType.PENCIL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ShapeToolType.ERASER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ShapeToolType.LASSO.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ShapeToolType.EXCERPT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ShapeToolType.GRAPH_PEN.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ShapeToolType.TAPE_PEN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ShapeToolType.LASER_PEN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ShapeToolType.RULER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ShapeToolType.MAGNIFIER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ShapeToolType.EDIT_TEXT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$a */
    /* loaded from: classes9.dex */
    public static final class C12546a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f60974a;

        public C12546a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f60974a = function;
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
            return this.f60974a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f60974a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeToolViewAuto(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: L */
    public static final void m50204L(EditTagForNoteContext editTagForNoteContext, ShapeToolViewAuto this$0) {
        Intrinsics.checkNotNullParameter(editTagForNoteContext, "$editTagForNoteContext");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<NoteTagBean> selectedNoteTagBean = editTagForNoteContext.getSelectedNoteTagBean();
        if (selectedNoteTagBean.isEmpty()) {
            return;
        }
        this$0.m50237i(selectedNoteTagBean);
    }

    /* renamed from: P */
    public static final void m50205P(ShapeToolViewAuto this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        PenViewModel penViewModel = this$0.penViewModel;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        ImagePopup imagePopup = new ImagePopup(context, editorBundle, penViewModel.getPopupType());
        this$0.curPopupMenus.put(ImagePopup.class, new WeakReference<>(imagePopup));
        imagePopup.show(view);
        if (imagePopup.isShowing()) {
            StatisticsBundle.INSTANCE.reportEvent(imagePopup.getEditorBundle(), OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_IMAGE_BTN_DOUBLE_CLICK_SHOW_MENU, "view", null);
        }
    }

    /* renamed from: A */
    public final void m50208A(ShapeToolType toolType) {
        m50212E(new StartUniversalShapeDrawingEvent(true));
    }

    /* renamed from: B */
    public final void m50209B(ShapeToolType toolType, View view) {
        EditorBundle editorBundle;
        PenViewModel penViewModel;
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel2 = null;
        }
        DockType popupType = penViewModel2.getPopupType();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        } else {
            penViewModel = penViewModel3;
        }
        UniversalShapePopup universalShapePopup = new UniversalShapePopup(context, editorBundle, toolType, penViewModel, popupType);
        this.curPopupMenus.put(UniversalShapePopup.class, new WeakReference<>(universalShapePopup));
        universalShapePopup.show(view);
        m50215H(universalShapePopup, ShapeToolType.GRAPH_PEN);
    }

    /* renamed from: C */
    public final void m50210C(ShapeToolType shapeToolType) {
        GlobalBundle.INSTANCE.postEvent(new ShapeToolTypeChangedEvent(shapeToolType.getShapeType()));
        int i = WhenMappings.$EnumSwitchMapping$0[shapeToolType.ordinal()];
        if (i == 2) {
            m50249u(shapeToolType);
            return;
        }
        if (i == 18) {
            m50246r(shapeToolType);
            return;
        }
        switch (i) {
            case 10:
                m50247s(shapeToolType);
                return;
            case 11:
                m50252x(shapeToolType);
                return;
            case 12:
                m50248t(shapeToolType);
                return;
            case 13:
                m50208A(shapeToolType);
                return;
            case 14:
                m50254z(shapeToolType);
                return;
            case 15:
                m50250v(shapeToolType);
                return;
            default:
                m50233e(shapeToolType.getShapeType());
                return;
        }
    }

    /* renamed from: D */
    public final void m50211D(Object event) {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.postEvent(editorBundle, event);
    }

    /* renamed from: E */
    public final void m50212E(Object event) {
        DocCollectionBundle.INSTANCE.postEvent(event);
    }

    /* renamed from: F */
    public final void m50213F(ShapeToolType shapeToolType) {
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        String str = statisticsBundle.getToolTypeMapToItemClickReportKey().get(shapeToolType);
        if (str != null) {
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            statisticsBundle.reportEvent(editorBundle, str, OnyxStatisticConstant.EVENT_TYPE_CLICK, null);
        }
    }

    /* renamed from: G */
    public final void m50214G(List<? extends ShapeToolType> shapeToolTypes) {
        if (this.hadReportItemInit) {
            return;
        }
        for (ShapeToolType shapeToolType : shapeToolTypes) {
            StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
            String str = statisticsBundle.getToolTypeMapToItemInitReportKey().get(shapeToolType);
            if (str != null) {
                EditorBundle editorBundle = this.editorBundle;
                if (editorBundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle = null;
                }
                Intrinsics.checkNotNull(str);
                statisticsBundle.reportEvent(editorBundle, str, "view", null);
            }
        }
        this.hadReportItemInit = true;
    }

    /* JADX WARN: Type inference failed for: r10v5, types: [T, java.lang.Object] */
    /* renamed from: H */
    public final void m50215H(PopupWindow popup, ShapeToolType viewShapeType) {
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        final Pair<String, HashMap<Boolean, String>> pair = statisticsBundle.getToolTypeMapToPopupReportKey().get(viewShapeType);
        if (pair != null) {
            final JSONObjectOption<PenArgs> penArgsOption = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getPenArgsOption(viewShapeType.getShapeType());
            final String first = pair.getFirst();
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? r10 = pair.getSecond().get(Boolean.valueOf(popup.isShowing()));
            objectRef.element = r10;
            String str = (String) r10;
            if (str != null) {
                EditorBundle editorBundle = this.editorBundle;
                if (editorBundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle = null;
                }
                statisticsBundle.reportShowPopupMenuEvent(editorBundle, first, str, penArgsOption.get());
            }
            popup.getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$reportShowBasePopup$1$2
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v) {
                    Intrinsics.checkNotNullParameter(v, "v");
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v) {
                    EditorBundle editorBundle2;
                    Intrinsics.checkNotNullParameter(v, "v");
                    objectRef.element = pair.getSecond().get(Boolean.FALSE);
                    String str2 = objectRef.element;
                    if (str2 != null) {
                        ShapeToolViewAuto shapeToolViewAuto = this;
                        String str3 = first;
                        JSONObjectOption<PenArgs> jSONObjectOption = penArgsOption;
                        StatisticsBundle statisticsBundle2 = StatisticsBundle.INSTANCE;
                        editorBundle2 = shapeToolViewAuto.editorBundle;
                        if (editorBundle2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                            editorBundle2 = null;
                        }
                        statisticsBundle2.reportShowPopupMenuEvent(editorBundle2, str3, str2, jSONObjectOption.get());
                    }
                }
            });
        }
    }

    /* renamed from: I */
    public final void m50216I(ShapeToolType viewShapeType, View view) {
        BallpointPenPopup ballpointPenPopup = new BallpointPenPopup(m50239k(m50236h(viewShapeType)));
        this.curPopupMenus.put(BallpointPenPopup.class, new WeakReference<>(ballpointPenPopup));
        ballpointPenPopup.show(view);
        m50215H(ballpointPenPopup, viewShapeType);
    }

    /* renamed from: J */
    public final void m50217J(ShapeToolType viewShapeType, View view) {
        CalligraphyPenPopup calligraphyPenPopup = new CalligraphyPenPopup(m50239k(m50236h(viewShapeType)));
        this.curPopupMenus.put(CalligraphyPenPopup.class, new WeakReference<>(calligraphyPenPopup));
        calligraphyPenPopup.show(view);
        m50215H(calligraphyPenPopup, viewShapeType);
    }

    /* renamed from: K */
    public final void m50218K() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Activity activity = editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity == null) {
            return;
        }
        final EditTagForNoteContext editTagForNoteContext = new EditTagForNoteContext();
        m50211D(new QuitTransformEvent(false, 1, null));
        new EditTagForNoteAction(editTagForNoteContext, TAG).setActivityContext(activity).build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.imm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ShapeToolViewAuto.m50204L(EditTagForNoteContext.this, this);
            }
        }).subscribe();
    }

    /* renamed from: M */
    public final void m50219M(View view) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel2 = null;
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel3;
        }
        EraserPopup eraserPopup = new EraserPopup(context, editorBundle, penViewModel2, penViewModel.getPopupType());
        this.curPopupMenus.put(EraserPopup.class, new WeakReference<>(eraserPopup));
        eraserPopup.show(view);
    }

    /* renamed from: N */
    public final void m50220N(View view) {
        EditorBundle editorBundle = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel2;
        }
        ExcerptPenMenuPopup excerptPenMenuPopup = new ExcerptPenMenuPopup(editorBundle, context, penViewModel.getPopupType());
        this.curPopupMenus.put(ExcerptPenMenuPopup.class, new WeakReference<>(excerptPenMenuPopup));
        excerptPenMenuPopup.show(view);
    }

    /* renamed from: O */
    public final void m50221O(final View view) {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestImagePermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_IMPORT_PHOTOS_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.jmm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ShapeToolViewAuto.m50205P(ShapeToolViewAuto.this, view, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: Q */
    public final void m50222Q(ShapeToolType viewShapeType, View view) {
        ShapeToolPenArgsHandler m50236h = m50236h(viewShapeType);
        InkPenPopup inkPenPopup = new InkPenPopup(m50239k(m50236h), m50236h.getInkPenArgsChangeListener());
        this.curPopupMenus.put(InkPenPopup.class, new WeakReference<>(inkPenPopup));
        inkPenPopup.show(view);
        m50215H(inkPenPopup, viewShapeType);
    }

    /* renamed from: R */
    public final void m50223R(ShapeToolType viewShapeType, View view) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel2;
        }
        LassoPopup lassoPopup = new LassoPopup(context, editorBundle, penViewModel.getPopupType());
        this.curPopupMenus.put(LassoPopup.class, new WeakReference<>(lassoPopup));
        lassoPopup.show(view);
    }

    /* renamed from: S */
    public final void m50224S(ShapeToolType viewShapeType, View view) {
        ShapeToolPenArgsHandler m50236h = m50236h(viewShapeType);
        MarkPenPopup markPenPopup = new MarkPenPopup(m50239k(m50236h), m50236h.getMarkPenArgsChangeListener());
        this.curPopupMenus.put(MarkPenPopup.class, new WeakReference<>(markPenPopup));
        markPenPopup.show(view);
        m50215H(markPenPopup, viewShapeType);
    }

    /* renamed from: T */
    public final void m50225T(ShapeToolType viewShapeType, View view) {
        ShapeToolPenArgsHandler m50236h = m50236h(viewShapeType);
        PencilPopup pencilPopup = new PencilPopup(m50239k(m50236h), m50236h.getPencilArgsChangeListener());
        this.curPopupMenus.put(PencilPopup.class, new WeakReference<>(pencilPopup));
        pencilPopup.show(view);
        m50215H(pencilPopup, viewShapeType);
    }

    /* renamed from: U */
    public final void m50226U() {
        EditorBundle editorBundle = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Activity activity = editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity == null) {
            return;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel2;
        }
        ShapeToolbarCustomPopup shapeToolbarCustomPopup = new ShapeToolbarCustomPopup(context, editorBundle2, penViewModel.getPopupType());
        this.curPopupMenus.put(ShapeToolbarCustomPopup.class, new WeakReference<>(shapeToolbarCustomPopup));
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        shapeToolbarCustomPopup.showAtLocation(decorView, 17, 0, 0);
        StatisticsBundle.INSTANCE.reportCustomSettingPopupMenuEvent(shapeToolbarCustomPopup.getEditorBundle(), shapeToolbarCustomPopup);
    }

    /* renamed from: V */
    public final void m50227V(ShapeToolType viewShapeType, View view) {
        SoftPaintPenPopup softPaintPenPopup = new SoftPaintPenPopup(m50239k(m50236h(viewShapeType)));
        this.curPopupMenus.put(SoftPaintPenPopup.class, new WeakReference<>(softPaintPenPopup));
        softPaintPenPopup.show(view);
        m50215H(softPaintPenPopup, viewShapeType);
    }

    /* renamed from: W */
    public final void m50228W(View view) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel2;
        }
        StickerManagePopup stickerManagePopup = new StickerManagePopup(context, editorBundle, penViewModel.getPopupType());
        this.curPopupMenus.put(StickerManagePopup.class, new WeakReference<>(stickerManagePopup));
        stickerManagePopup.show(view);
    }

    /* renamed from: X */
    public final void m50229X(ShapeToolType viewShapeType, View view) {
        EditorBundle editorBundle;
        PenViewModel penViewModel;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle2 = this.editorBundle;
        PenViewModel penViewModel2 = null;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        } else {
            penViewModel = penViewModel3;
        }
        PenViewModel penViewModel4 = this.penViewModel;
        if (penViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel2 = penViewModel4;
        }
        TapePenPopup tapePenPopup = new TapePenPopup(context, viewShapeType, editorBundle, penViewModel, penViewModel2.getPopupType());
        this.curPopupMenus.put(TapePenPopup.class, new WeakReference<>(tapePenPopup));
        tapePenPopup.show(view);
    }

    /* renamed from: Y */
    public final void m50230Y(ShapeToolType viewShapeType, final View view) {
        ShapeToolPenArgsHandler m50236h = m50236h(viewShapeType);
        WritePenGroupPopup writePenGroupPopup = new WritePenGroupPopup(m50239k(m50236h), m50236h.getWritePenGroupChangeListener(), new Function1<ShapeToolType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$showWriteGroupPopup$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShapeToolType shapeToolType) {
                PenViewModel penViewModel;
                Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
                View view2 = view;
                if (view2 instanceof ShapeIconGroupView) {
                    ((ShapeIconGroupView) view2).setShapeTool(shapeToolType);
                }
                penViewModel = this.penViewModel;
                if (penViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                    penViewModel = null;
                }
                penViewModel.getPenType().postValue(shapeToolType);
                this.m50213F(shapeToolType);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeToolType shapeToolType) {
                invoke2(shapeToolType);
                return Unit.INSTANCE;
            }
        });
        this.curPopupMenus.put(WritePenGroupPopup.class, new WeakReference<>(writePenGroupPopup));
        writePenGroupPopup.show(view);
        m50215H(writePenGroupPopup, viewShapeType);
    }

    /* renamed from: Z */
    public final void m50231Z(IShapeViewOpt shapeOpt) {
        String eraseNmeByType;
        ShapeToolType viewShapeType = shapeOpt.getViewShapeType();
        int i = WhenMappings.$EnumSwitchMapping$0[viewShapeType.ordinal()];
        if (i == 10) {
            eraseNmeByType = EraseType.INSTANCE.getEraseNmeByType(EraserPropertyOption.INSTANCE.getEraserTypeOption().get());
        } else if (i == 11) {
            LassoPropertyOption.Companion companion = LassoPropertyOption.INSTANCE;
            eraseNmeByType = companion.getLassoNameByType(companion.getLassoTypeOption().get());
        } else if (i == 14) {
            TapePropertyOption.Companion companion2 = TapePropertyOption.INSTANCE;
            eraseNmeByType = companion2.getTapeNameByType(companion2.getTapeTypeOption().get());
        } else if (i != 15) {
            eraseNmeByType = viewShapeType.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(eraseNmeByType, "toLowerCase(...)");
        } else {
            eraseNmeByType = MMKVNote.INSTANCE.getLaserShapeAttrOption().get().getLaserShapeName();
        }
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteToolbarEvent(eraseNmeByType));
    }

    public final void addShapeToolChildChangeCallback(@NotNull Function0<Unit> callBack) {
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        layoutShapeToolAutoBinding.llShapeToolContainer.addChildViewChangeCallback(callBack);
    }

    /* renamed from: d */
    public final void m50232d(int color) {
        m50212E(new ChangeStrokeColorEvent(color));
    }

    public final void dismissAllPopup() {
        Iterator<Map.Entry<Class<? extends BasePopupWindow>, WeakReference<BasePopupWindow>>> it2 = this.curPopupMenus.entrySet().iterator();
        while (it2.hasNext()) {
            BasePopupWindow basePopupWindow = it2.next().getValue().get();
            if (basePopupWindow != null) {
                basePopupWindow.dismiss();
            }
        }
        this.curPopupMenus.clear();
    }

    /* renamed from: e */
    public final void m50233e(int shapeType) {
        m50238j(shapeType);
        m50212E(new ChangeShapeTypeEvent(shapeType));
    }

    public final void enableShapeToolViewAuto(boolean enable) {
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        layoutShapeToolAutoBinding.llShapeToolContainer.enableShapeIconViews(enable);
    }

    public final void ensureToolVisible() {
        PenViewModel penViewModel = this.penViewModel;
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = null;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        ShapeToolType value = penViewModel.getPenType().getValue();
        if (value != null) {
            LayoutShapeToolAutoBinding layoutShapeToolAutoBinding2 = this.binding;
            if (layoutShapeToolAutoBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutShapeToolAutoBinding = layoutShapeToolAutoBinding2;
            }
            layoutShapeToolAutoBinding.llShapeToolContainer.ensureShapeToolViewVisible(value);
        }
    }

    /* renamed from: f */
    public final void m50234f(float size) {
        m50212E(new ChangeStrokeWidthEvent(size));
    }

    /* renamed from: g */
    public final void m50235g(List<? extends ShapeToolType> shapeToolTypes) {
        boolean z;
        PenViewModel penViewModel;
        Object obj;
        Iterator<T> it2 = shapeToolTypes.iterator();
        while (true) {
            z = true;
            penViewModel = null;
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            ShapeToolType shapeToolType = (ShapeToolType) obj;
            PenViewModel penViewModel2 = this.penViewModel;
            if (penViewModel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                penViewModel2 = null;
            }
            if (shapeToolType == penViewModel2.getPenType().getValue()) {
                break;
            }
        }
        if (((ShapeToolType) obj) != null) {
            PenViewModel penViewModel3 = this.penViewModel;
            if (penViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                penViewModel3 = null;
            }
            MutableLiveData<ShapeToolType> penType = penViewModel3.getPenType();
            PenViewModel penViewModel4 = this.penViewModel;
            if (penViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            } else {
                penViewModel = penViewModel4;
            }
            penType.postValue(penViewModel.getPenType().getValue());
        } else {
            z = false;
        }
        if (!z) {
            m50212E(new ActivateShapeHandlerEvent("dummy", true, null, 4, null));
        }
        m50211D(new RulerCheckEvent());
        m50211D(new MagnifierCheckEvent());
    }

    public final int getShapeToolWidth() {
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        ShapeToolContainer llShapeToolContainer = layoutShapeToolAutoBinding.llShapeToolContainer;
        Intrinsics.checkNotNullExpressionValue(llShapeToolContainer, "llShapeToolContainer");
        return ViewKt.getMeasureSize$default(llShapeToolContainer, 0, 0, 3, null).getWidth();
    }

    /* renamed from: h */
    public final ShapeToolPenArgsHandler m50236h(ShapeToolType viewShapeType) {
        EditorBundle editorBundle = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel2;
        }
        return new ShapeToolPenArgsHandler(viewShapeType, editorBundle, penViewModel);
    }

    /* renamed from: i */
    public final void m50237i(List<? extends SyncTagModel> list) {
        List<? extends SyncTagModel> list2 = list;
        if (CollectionKt.isNullOrEmpty(list2)) {
            return;
        }
        ShapeTagBean shapeTagBean = new ShapeTagBean();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        TouchPoint center = geometryUtils.center(EditorBundleKt.viewportRect(editorBundle));
        CollectionKt.safeAddAll(shapeTagBean.getTagList(), list2);
        m50211D(new InsertTagEvent(shapeTagBean, center, true));
    }

    /* renamed from: j */
    public final void m50238j(int shapeType) {
        NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().ensurePenArgsInitialized(shapeType);
    }

    /* renamed from: k */
    public final NormalPenPopup.NormalPenPopupContext m50239k(ShapeToolPenArgsHandler handler) {
        EditorBundle editorBundle;
        int shapeType = handler.getViewShapeType().getShapeType();
        PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        JSONObjectOption<PenArgs> penArgsOption = penProperty.getPenArgsOption(shapeType);
        IntList value = penProperty.getColorListOption(shapeType).getValue();
        int i = penProperty.getColorIndexOption(shapeType).get();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle2 = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        ShapeToolType viewShapeType = handler.getViewShapeType();
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel2;
        }
        NormalPenPopup.NormalPenPopupContext normalPenPopupContext = new NormalPenPopup.NormalPenPopupContext(context, editorBundle, viewShapeType, penViewModel.getPopupType(), penArgsOption.get().m72358clone());
        normalPenPopupContext.setAddOperation(true);
        normalPenPopupContext.setListener(handler.getPenArgsChangeListener());
        normalPenPopupContext.setColorList(value);
        normalPenPopupContext.setColorIndex(i);
        return normalPenPopupContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public final void m50240l(IShapeViewOpt shapeOpt) {
        ShapeToolType viewShapeType = shapeOpt.getViewShapeType();
        Intrinsics.checkNotNull(shapeOpt, "null cannot be cast to non-null type android.view.View");
        View view = (View) shapeOpt;
        switch (WhenMappings.$EnumSwitchMapping$0[shapeOpt.getViewShapeType().ordinal()]) {
            case 1:
                m50221O(view);
                return;
            case 2:
                m50228W(view);
                return;
            case 3:
                m50230Y(shapeOpt.getViewShapeType(), view);
                return;
            case 4:
                m50222Q(viewShapeType, view);
                return;
            case 5:
                m50217J(viewShapeType, view);
                return;
            case 6:
                m50227V(viewShapeType, view);
                return;
            case 7:
                m50216I(viewShapeType, view);
                return;
            case 8:
                m50224S(viewShapeType, view);
                return;
            case 9:
                m50225T(viewShapeType, view);
                return;
            case 10:
                m50219M(view);
                return;
            case 11:
                m50223R(viewShapeType, view);
                return;
            case 12:
                m50220N(view);
                return;
            case 13:
                m50209B(viewShapeType, view);
                return;
            case 14:
                m50229X(viewShapeType, view);
                return;
            case 15:
                m50251w(viewShapeType, view);
                return;
            case 16:
                GlobalBundle.INSTANCE.postEvent(new RulerEvent());
                return;
            case 17:
                m50253y(view);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public final void m50241m(IShapeViewOpt iShapeViewOpt) {
        PenViewModel penViewModel = null;
        View view = iShapeViewOpt instanceof View ? (View) iShapeViewOpt : null;
        if (view == null) {
            return;
        }
        ShapeToolType viewShapeType = iShapeViewOpt.getViewShapeType();
        ShapeToolType shapeToolType = ShapeToolType.CUSTOM;
        if (viewShapeType == shapeToolType) {
            m50226U();
            m50213F(shapeToolType);
            return;
        }
        ShapeToolType shapeToolType2 = ShapeToolType.TAG;
        if (viewShapeType == shapeToolType2) {
            m50218K();
            m50213F(shapeToolType2);
            return;
        }
        if (viewShapeType == ShapeToolType.RULER) {
            GlobalBundle.INSTANCE.postEvent(new RulerEvent());
            return;
        }
        if (viewShapeType == ShapeToolType.MAGNIFIER) {
            GlobalBundle.INSTANCE.postEvent(new MagnifierEvent());
            return;
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel2;
        }
        penViewModel.getPenType().postValue(viewShapeType);
        int i = WhenMappings.$EnumSwitchMapping$0[viewShapeType.ordinal()];
        if (i == 1) {
            m50221O(view);
        } else if (i == 2) {
            m50228W(view);
        }
        m50213F(viewShapeType);
    }

    /* renamed from: n */
    public final void m50242n(IShapeViewOpt iShapeViewOpt) {
        m50241m(iShapeViewOpt);
    }

    /* renamed from: o */
    public final void m50243o() {
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        layoutShapeToolAutoBinding.llShapeToolContainer.setItemClickListener(new ShapeToolContainer.IShapeClickListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$initListener$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer.IShapeClickListener
            public void onDoubleClicked(@NotNull IShapeViewOpt iShapeViewOpt) {
                Intrinsics.checkNotNullParameter(iShapeViewOpt, "iShapeViewOpt");
                ShapeToolViewAuto.this.m50231Z(iShapeViewOpt);
                ShapeToolViewAuto.this.m50240l(iShapeViewOpt);
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer.IShapeClickListener
            public void onNormalItemClicked(@NotNull IShapeViewOpt iShapeViewOpt) {
                Intrinsics.checkNotNullParameter(iShapeViewOpt, "iShapeViewOpt");
                ShapeToolViewAuto.this.m50231Z(iShapeViewOpt);
                ShapeToolViewAuto.this.m50241m(iShapeViewOpt);
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer.IShapeClickListener
            public void onVipItemClicked(@NotNull IShapeViewOpt iShapeViewOpt) {
                Intrinsics.checkNotNullParameter(iShapeViewOpt, "iShapeViewOpt");
                ShapeToolViewAuto.this.m50231Z(iShapeViewOpt);
                ShapeToolViewAuto.this.m50242n(iShapeViewOpt);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        GlobalBundle.INSTANCE.register(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEraserPopupDismissEvent(@NotNull EraserPopupDismissEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
        EditorBundle editorBundle = null;
        if (!companion.hasPenBox() || PencilBoxManager.Companion.getPenBox$default(companion, null, 1, null).getSelectedId() == null) {
            LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
            if (layoutShapeToolAutoBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutShapeToolAutoBinding = null;
            }
            layoutShapeToolAutoBinding.llShapeToolContainer.setSelectByType(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().ensureSelectShapeType());
        } else {
            LayoutShapeToolAutoBinding layoutShapeToolAutoBinding2 = this.binding;
            if (layoutShapeToolAutoBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutShapeToolAutoBinding2 = null;
            }
            layoutShapeToolAutoBinding2.llShapeToolContainer.setSelectByType(null);
        }
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        EditorBundleKt.shapeHandlerManager(editorBundle).restoreUserProvider();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGlobalDocumentOpenSuccessEvent(@NotNull GlobalDocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PenViewModel penViewModel = this.penViewModel;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        List<ShapeToolType> value = penViewModel.getShapeShowList().getValue();
        if (value != null) {
            m50214G(value);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMagnifierToolEvent(@NotNull MagnifierToolEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        layoutShapeToolAutoBinding.llShapeToolContainer.updateSelectByType(ShapeToolType.MAGNIFIER, event.getSelected());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRulerToolEvent(@NotNull RulerToolEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        layoutShapeToolAutoBinding.llShapeToolContainer.updateSelectByType(ShapeToolType.RULER, event.getSelected());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowEraserSettingEvent(@NotNull ShowEraserSettingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding2 = null;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        layoutShapeToolAutoBinding.llShapeToolContainer.setSelectByType(ShapeToolType.ERASER);
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding3 = this.binding;
        if (layoutShapeToolAutoBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutShapeToolAutoBinding2 = layoutShapeToolAutoBinding3;
        }
        ViewKt.postSelf(layoutShapeToolAutoBinding2.llShapeToolContainer, new Function1<ShapeToolContainer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$onShowEraserSettingEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeToolContainer shapeToolContainer) {
                invoke2(shapeToolContainer);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShapeToolContainer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                View findViewByType = it2.findViewByType(ShapeToolType.ERASER);
                if (findViewByType != null) {
                    ShapeToolViewAuto.this.m50219M(findViewByType);
                }
            }
        });
    }

    /* renamed from: p */
    public final void m50244p() {
        Object context = getContext();
        if (context instanceof AppCompatActivity) {
            PenViewModel penViewModel = this.penViewModel;
            PenViewModel penViewModel2 = null;
            if (penViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                penViewModel = null;
            }
            LifecycleOwner lifecycleOwner = (LifecycleOwner) context;
            penViewModel.getColor().observe(lifecycleOwner, new C12546a(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$initObservable$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke2(num);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Integer num) {
                    LayoutShapeToolAutoBinding layoutShapeToolAutoBinding;
                    layoutShapeToolAutoBinding = ShapeToolViewAuto.this.binding;
                    if (layoutShapeToolAutoBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        layoutShapeToolAutoBinding = null;
                    }
                    ShapeToolContainer shapeToolContainer = layoutShapeToolAutoBinding.llShapeToolContainer;
                    Intrinsics.checkNotNull(num);
                    shapeToolContainer.setSelectedColorChange(num.intValue());
                    ShapeToolViewAuto.this.m50232d(num.intValue());
                }
            }));
            PenViewModel penViewModel3 = this.penViewModel;
            if (penViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                penViewModel3 = null;
            }
            penViewModel3.getSize().observe(lifecycleOwner, new C12546a(new Function1<Float, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$initObservable$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                    invoke2(f);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Float f) {
                    PenViewModel penViewModel4;
                    ShapeToolViewAuto shapeToolViewAuto = ShapeToolViewAuto.this;
                    Intrinsics.checkNotNull(f);
                    shapeToolViewAuto.m50234f(f.floatValue());
                    penViewModel4 = ShapeToolViewAuto.this.penViewModel;
                    if (penViewModel4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                        penViewModel4 = null;
                    }
                    if (penViewModel4.getPenType().getValue() == ShapeToolType.ERASER) {
                        EraserPropertyOption.INSTANCE.getEraserWidth().put(f.floatValue());
                        ShapeToolViewAuto.this.m50212E(new ChangeEraserWidthEvent(f.floatValue()));
                    }
                }
            }));
            PenViewModel penViewModel4 = this.penViewModel;
            if (penViewModel4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                penViewModel4 = null;
            }
            penViewModel4.getShapeShowList().observe(lifecycleOwner, new C12546a(new Function1<List<? extends ShapeToolType>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$initObservable$3
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShapeToolType> list) {
                    invoke2(list);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(List<? extends ShapeToolType> list) {
                    LayoutShapeToolAutoBinding layoutShapeToolAutoBinding;
                    Float f;
                    LayoutShapeToolAutoBinding layoutShapeToolAutoBinding2;
                    Float f2;
                    layoutShapeToolAutoBinding = ShapeToolViewAuto.this.binding;
                    LayoutShapeToolAutoBinding layoutShapeToolAutoBinding3 = null;
                    if (layoutShapeToolAutoBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        layoutShapeToolAutoBinding = null;
                    }
                    ShapeToolContainer shapeToolContainer = layoutShapeToolAutoBinding.llShapeToolContainer;
                    Intrinsics.checkNotNull(list);
                    shapeToolContainer.addAllChildView(list);
                    f = ShapeToolViewAuto.this.rotation;
                    if (f != null) {
                        layoutShapeToolAutoBinding2 = ShapeToolViewAuto.this.binding;
                        if (layoutShapeToolAutoBinding2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        } else {
                            layoutShapeToolAutoBinding3 = layoutShapeToolAutoBinding2;
                        }
                        ShapeToolContainer llShapeToolContainer = layoutShapeToolAutoBinding3.llShapeToolContainer;
                        Intrinsics.checkNotNullExpressionValue(llShapeToolContainer, "llShapeToolContainer");
                        f2 = ShapeToolViewAuto.this.rotation;
                        Intrinsics.checkNotNull(f2);
                        ViewKt.rotationAllChildView(llShapeToolContainer, f2.floatValue());
                    }
                    ShapeToolViewAuto.this.m50235g(list);
                }
            }));
            PenViewModel penViewModel5 = this.penViewModel;
            if (penViewModel5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            } else {
                penViewModel2 = penViewModel5;
            }
            penViewModel2.getPenType().observe(lifecycleOwner, new C12546a(new Function1<ShapeToolType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto$initObservable$4
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ShapeToolType shapeToolType) {
                    invoke2(shapeToolType);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ShapeToolType shapeToolType) {
                    PenViewModel penViewModel6;
                    ShapeToolViewAuto.this.setSelectByType(shapeToolType);
                    penViewModel6 = ShapeToolViewAuto.this.penViewModel;
                    if (penViewModel6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                        penViewModel6 = null;
                    }
                    NoteEditConfigInfo noteConfig = penViewModel6.getNoteConfig();
                    Intrinsics.checkNotNull(shapeToolType);
                    noteConfig.saveSelectShapeType(shapeToolType);
                    ShapeToolViewAuto.this.m50210C(shapeToolType);
                }
            }));
        }
    }

    /* renamed from: q */
    public final void m50245q() {
        LayoutShapeToolAutoBinding inflate = LayoutShapeToolAutoBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m50243o();
    }

    /* renamed from: r */
    public final void m50246r(ShapeToolType toolType) {
        m50212E(new StartTextInputHandlerEvent(null, true, null, false, 5, null));
    }

    /* renamed from: s */
    public final void m50247s(ShapeToolType toolType) {
        m50212E(new StartEraseHandlerEvent(true));
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setOrientationChanged(float rotation) {
        this.rotation = Float.valueOf(rotation);
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        ShapeToolContainer llShapeToolContainer = layoutShapeToolAutoBinding.llShapeToolContainer;
        Intrinsics.checkNotNullExpressionValue(llShapeToolContainer, "llShapeToolContainer");
        ViewKt.rotationAllChildView(llShapeToolContainer, rotation);
        ensureToolVisible();
    }

    public final void setPenViewModel(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        this.penViewModel = penViewModel;
        m50244p();
    }

    public final void setSelectByType(@Nullable ShapeToolType shapeToolType) {
        LayoutShapeToolAutoBinding layoutShapeToolAutoBinding = this.binding;
        if (layoutShapeToolAutoBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShapeToolAutoBinding = null;
        }
        layoutShapeToolAutoBinding.llShapeToolContainer.setSelectByType(shapeToolType);
    }

    /* renamed from: t */
    public final void m50248t(ShapeToolType toolType) {
        m50212E(new StartExcerptHandlerEvent());
    }

    /* renamed from: u */
    public final void m50249u(ShapeToolType toolType) {
        m50212E(new ActivateShapeHandlerEvent(ShapeToolType.INSTANCE.toShapeHandlerProviderName(toolType), true, Integer.valueOf(toolType.getShapeType())));
    }

    /* renamed from: v */
    public final void m50250v(ShapeToolType toolType) {
        m50212E(new StartLaserShapeDrawingEvent());
        m50212E(new ChangeShapeTypeEvent(toolType.getShapeType()));
    }

    /* renamed from: w */
    public final void m50251w(ShapeToolType toolType, View anchor) {
        EditorBundle editorBundle;
        PenViewModel penViewModel;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorBundle editorBundle2 = this.editorBundle;
        PenViewModel penViewModel2 = null;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        } else {
            penViewModel = penViewModel3;
        }
        PenViewModel penViewModel4 = this.penViewModel;
        if (penViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel2 = penViewModel4;
        }
        LaserShapePopup laserShapePopup = new LaserShapePopup(context, editorBundle, toolType, penViewModel, penViewModel2.getPopupType());
        this.curPopupMenus.put(LaserShapePopup.class, new WeakReference<>(laserShapePopup));
        laserShapePopup.show(anchor);
    }

    /* renamed from: x */
    public final void m50252x(ShapeToolType toolType) {
        m50212E(new StartSelectionHandlerEvent());
    }

    /* renamed from: y */
    public final void m50253y(View anchor) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PenViewModel penViewModel = this.penViewModel;
        PenViewModel penViewModel2 = null;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel2 = penViewModel3;
        }
        MagnifierToolPopup magnifierToolPopup = new MagnifierToolPopup(context, penViewModel, penViewModel2.getPopupType());
        this.curPopupMenus.put(MagnifierToolPopup.class, new WeakReference<>(magnifierToolPopup));
        magnifierToolPopup.show(anchor);
    }

    /* renamed from: z */
    public final void m50254z(ShapeToolType toolType) {
        m50233e(toolType.getShapeType());
        PenViewModel penViewModel = this.penViewModel;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        m50212E(new ChangeSubShapeTypeEvent(TapePropertyOption.INSTANCE.toSubShapeType(penViewModel.getNoteConfig().getPenProperty().getTapePropertyOption().getTapeType())));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeToolViewAuto(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapeToolViewAuto(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeToolViewAuto(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.curPopupMenus = new LinkedHashMap<>();
        ResManager resManager = ResManager.INSTANCE;
        this.offerRect = new Rect(0, 0, -((int) resManager.getDimension(C7384R.dimen.dp_20)), -((int) resManager.getDimension(C7384R.dimen.dp_20)));
        m50245q();
    }

    public /* synthetic */ ShapeToolViewAuto(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}

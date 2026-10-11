package com.onyx.android.sdk.universal.editor.helper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.font.CJKCompat;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeTextUtils;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.NoteChineseConvertType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextAlignType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.textbox.action.LoadRichTextFontAction;
import com.onyx.android.sdk.textbox.action.TextBoxFinishEditAction;
import com.onyx.android.sdk.textbox.action.TextBoxStartEditAction;
import com.onyx.android.sdk.textbox.data.EditorContent;
import com.onyx.android.sdk.textbox.data.EditorState;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.textbox.editor.IEditor;
import com.onyx.android.sdk.textbox.event.EditorContentChangeEvent;
import com.onyx.android.sdk.textbox.event.EditorFontLoadEvent;
import com.onyx.android.sdk.textbox.event.EditorLayoutChangeEvent;
import com.onyx.android.sdk.textbox.event.EditorRestartInputEvent;
import com.onyx.android.sdk.textbox.event.TextInputStateChangeEvent;
import com.onyx.android.sdk.textbox.richtext.RichTextFont;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction;
import com.onyx.android.sdk.universal.editor.action.page.UpdateVirtualPageAction;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.action.textinput.UpdateTextShapeRectAction;
import com.onyx.android.sdk.universal.editor.events.note.AbortEditTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.AppendInputTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeAttributesEvent;
import com.onyx.android.sdk.universal.editor.events.note.CutEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditTextShapeUpdateResultEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideEditTextShapeSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowEditTextShapeSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextAlignEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextBoldEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextChineseConvertTypeChangeEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextEditFinishEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextEditStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextFontChangeEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextFontEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextItalicEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextSelectionRectEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextSizeEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextSpacingEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextStartTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextToolViewVisibleChangeEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextUnderlineEvent;
import com.onyx.android.sdk.universal.editor.events.note.TransformEditEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.TextInputHelper;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ð\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010B\u001a\u00020A\u0012\b\u0010\u008b\u0001\u001a\u00030\u0086\u0001¢\u0006\u0006\b·\u0001\u0010¸\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u001a\u0010\u000b\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u0010\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\b\u0002\u0010\u000f\u001a\u00020\tH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0018\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\rH\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\u0012\u0010\u001c\u001a\u00020\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002J\u0014\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u001e2\u0006\u0010\u0014\u001a\u00020\u001dH\u0002J\b\u0010 \u001a\u00020\u0002H\u0002J \u0010$\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001e2\u0006\u0010\"\u001a\u00020!2\b\b\u0002\u0010#\u001a\u00020\tH\u0003J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\rH\u0002J\f\u0010&\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0002J\b\u0010'\u001a\u00020\tH\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0002J\u0012\u0010-\u001a\u00020\u00022\b\u0010,\u001a\u0004\u0018\u00010+H\u0002J\b\u0010/\u001a\u00020.H\u0002J\n\u00101\u001a\u0004\u0018\u000100H\u0002J\b\u00102\u001a\u000200H\u0002J\u0010\u00104\u001a\u00020\u00182\u0006\u00103\u001a\u00020\u0018H\u0002J\u0014\u00105\u001a\u0004\u0018\u00010\u00182\b\u00103\u001a\u0004\u0018\u00010\u0018H\u0002J\u0014\u00106\u001a\u0004\u0018\u00010\u00182\b\u00103\u001a\u0004\u0018\u00010\u0018H\u0002J\u0016\u00108\u001a\b\u0012\u0004\u0012\u0002000\u001e2\u0006\u00107\u001a\u00020(H\u0002J\b\u00109\u001a\u00020\u0002H\u0007J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u00020:J\u0006\u0010=\u001a\u00020\u0002J\u0006\u0010>\u001a\u00020\u0002J\n\u0010?\u001a\u0006\u0012\u0002\b\u00030\u001eJ\u0006\u0010@\u001a\u00020\u0002J\u000e\u0010C\u001a\u00020\t2\u0006\u0010B\u001a\u00020AJ\b\u0010D\u001a\u0004\u0018\u00010\rJ\u0010\u0010F\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020KH\u0007J\u0010\u0010M\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0007J\u0010\u0010O\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020VH\u0007J\u0010\u0010Y\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020XH\u0007J\u0010\u0010[\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020ZH\u0007J\u0010\u0010]\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\\H\u0007J\u0010\u0010_\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020^H\u0007J\u0010\u0010a\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020`H\u0007J\u0010\u0010c\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020bH\u0007J\u0010\u0010e\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020dH\u0007J\u0010\u0010g\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020fH\u0007J\u0010\u0010i\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020hH\u0007J\u0010\u0010k\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020jH\u0007J\u0010\u0010m\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020lH\u0007J\u0010\u0010o\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020nH\u0007J\u0010\u0010q\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020pH\u0007J\u000e\u0010s\u001a\u00020\u00022\u0006\u0010r\u001a\u00020\tJ\u0006\u0010u\u001a\u00020tJ\u000e\u0010v\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u0001J\u0016\u0010z\u001a\u00020\u00022\u0006\u0010x\u001a\u00020w2\u0006\u0010y\u001a\u00020wJ\u000e\u0010|\u001a\u00020\u00022\u0006\u0010{\u001a\u00020wJ\u0006\u0010~\u001a\u00020}J\u0010\u0010\u0081\u0001\u001a\u00020\u00022\u0007\u0010\u0080\u0001\u001a\u00020\u007fR\u001b\u0010B\u001a\u00020A8\u0006¢\u0006\u0010\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001d\u0010\u008b\u0001\u001a\u00030\u0086\u00018\u0006¢\u0006\u0010\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u008c\u00018\u0002X\u0082D¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001a\u0010\u0093\u0001\u001a\u00030\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001b\u0010\u0096\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001b\u0010\u0099\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010\u009a\u0001R\u001a\u0010\u009c\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0010\u0010\u0095\u0001R\u001a\u0010 \u0001\u001a\u00030\u009d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u0019\u0010£\u0001\u001a\u00030¡\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0005\u0010¢\u0001R\u0019\u0010¦\u0001\u001a\u00030¤\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b8\u0010¥\u0001R\u0018\u0010¨\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0017\u0010§\u0001R\u0019\u0010«\u0001\u001a\u00030©\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0019\u0010ª\u0001R!\u0010®\u0001\u001a\u000b\u0012\u0004\u0012\u00020\r\u0018\u00010¬\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b1\u0010\u00ad\u0001R\u001a\u0010°\u0001\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b/\u0010¯\u0001R\u0019\u0010³\u0001\u001a\u00030±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b2\u0010²\u0001R\u001a\u0010´\u0001\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0004\u0010¯\u0001R\u0017\u0010x\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b'\u0010µ\u0001R\u0017\u0010y\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b*\u0010µ\u0001R\u0018\u0010¶\u0001\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b4\u0010µ\u0001¨\u0006¹\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;", "", "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "q", "j", "A", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "transformType", "", "updateRectOnly", "M", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "addToCmdStack", C6999h.f39688c, "visible", "N", "Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;", "action", "shape", "x", "l", "Landroid/graphics/RectF;", "m", "Lcom/onyx/android/sdk/textbox/data/EditorContent;", "editorContent", "E", "Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;", "Lio/reactivex/rxjava3/core/Observable;", C6998g.f39679a, "y", "Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;", NotificationCompat.CATEGORY_EVENT, "addToUndoCommand", "F", "L", "B", "r", "", "fontData", "s", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "fontInfo", "K", "", C4921e.f26528e, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", GoogleApiAvailabilityLight.f29016b, "p", "rectF", "t", "u", "v", CouchFieldKey.KEY_PAGE_ID, C4921e.f26537n, "initRichListener", "Landroid/view/View;", "view", "setToolView", "resetLimitRect", "destroy", "saveTextShape", "unregisterEventBus", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "isEditorBundleChanges", "getTextShape", "Lcom/onyx/android/sdk/textbox/event/EditorContentChangeEvent;", "onEditorContentChangeEvent", "Lcom/onyx/android/sdk/textbox/event/EditorLayoutChangeEvent;", "onEditorLayoutChangeEvent", "Lcom/onyx/android/sdk/textbox/event/EditorRestartInputEvent;", "onEditorRestartInputEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;", "onTextEditStartEvent", "onTextEditFinishEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SaveEditTextShapeEvent;", "onSaveEditTextShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;", "onTransformEditEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionRectEvent;", "onTextSelectionRectEvent", "Lcom/onyx/android/sdk/textbox/event/TextInputStateChangeEvent;", "onTextInputStateChangeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextBoldEvent;", "onTextBoldEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextItalicEvent;", "onTextItalicEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextUnderlineEvent;", "onTextUnderlineEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSizeEvent;", "onTextSizeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextAlignEvent;", "onTextAlignEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSpacingEvent;", "onTextSpacingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextFontEvent;", "onTextFontEvent", "Lcom/onyx/android/sdk/textbox/event/EditorFontLoadEvent;", "onEditorFontLoadEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;", "onChangeShapeAttributesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextChineseConvertTypeChangeEvent;", "onTextChineseConvertTypeChangeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/AppendInputTextEvent;", "onAppendInputTextEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextFontChangeEvent;", "onTextFontChangeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CutEditTextShapeEvent;", "onCutEditTextShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteEditTextShapeEvent;", "onDeleteEditTextShapeEvent", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "activateEventListening", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "postEvent", "", "offsetX", "offsetY", "setOffset", TypedValues.CycleType.S_WAVE_OFFSET, "normalizeExtraVerticalOffset", "", "getOffset", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "attributes", "postChangeShapeAttributesEvent", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "b", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBoxView", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", "", "c", "J", "stashFilterTimeMs", "Lcom/onyx/android/sdk/textbox/editor/IEditor;", "d", "Lcom/onyx/android/sdk/textbox/editor/IEditor;", "richEditor", "e", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", C6997f.f39671c, Constants.STRING_SIG, "lastRichText", Constants.HASIDCALL_INDEX_SIG, "isCreateNewShape", "beforeTransformShape", "Landroid/graphics/Matrix;", "i", "Landroid/graphics/Matrix;", "lastShapeMatrix", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "shapeTransformBean", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "contentChangeFilter", "Landroid/view/View;", "contentView", "Landroid/graphics/Rect;", "Landroid/graphics/Rect;", "contentViewPreviousRect", "toolView", "I", "extraVerticalOffset", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextInputHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,765:1\n1#2:766\n288#3,2:767\n1549#3:769\n1620#3,3:770\n*S KotlinDebug\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper\n*L\n242#1:767,2\n364#1:769\n364#1:770,3\n*E\n"})
/* loaded from: classes8.dex */
public final class TextInputHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBoxView;

    /* renamed from: c, reason: from kotlin metadata */
    public final long stashFilterTimeMs;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public IEditor richEditor;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Shape textShape;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String lastRichText;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isCreateNewShape;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Shape beforeTransformShape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Matrix lastShapeMatrix;

    /* renamed from: j, reason: from kotlin metadata */
    public RenderContext renderContext;

    /* renamed from: k, reason: from kotlin metadata */
    public NotePage notePage;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualBoxInfo;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public ShapeTransformBean shapeTransformBean;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public RxFilter<Shape> contentChangeFilter;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public View contentView;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public Rect contentViewPreviousRect;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public View toolView;

    /* renamed from: r, reason: from kotlin metadata */
    public int offsetX;

    /* renamed from: s, reason: from kotlin metadata */
    public int offsetY;

    /* renamed from: t, reason: from kotlin metadata */
    public int extraVerticalOffset;

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$a */
    /* loaded from: classes8.dex */
    public static final class C10545a<T, R> implements Function {
        public C10545a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextInputHelper apply(@NotNull Command it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextInputHelper.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$b */
    /* loaded from: classes8.dex */
    public static final class C10546b<T, R> implements Function {
        public C10546b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            if (virtualPageBoxInfo != null) {
                return virtualPageBoxInfo;
            }
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) EditorBundleKt.visibleBoxList(TextInputHelper.this.getEditorBundle()));
            return (BoxInfo) first;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$c */
    /* loaded from: classes8.dex */
    public static final class C10547c<T> implements Consumer {
        public C10547c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.noteBundle(TextInputHelper.this.getEditorBundle()).postStashEditTextShapeEvent(TextInputHelper.this.virtualBoxInfo, it2);
        }
    }

    @SourceDebugExtension({"SMAP\nTextInputHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper$loadFont$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,765:1\n1855#2,2:766\n*S KotlinDebug\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper$loadFont$1\n*L\n681#1:766,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$d */
    /* loaded from: classes8.dex */
    public static final class C10548d<T> implements Consumer {
        public C10548d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<FontInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHelper textInputHelper = TextInputHelper.this;
            Iterator<T> it3 = it2.iterator();
            while (it3.hasNext()) {
                textInputHelper.m41281K((FontInfo) it3.next());
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$e */
    /* loaded from: classes8.dex */
    public static final class C10549e<T> implements Consumer {

        /* renamed from: e */
        public static final C10549e<T> f52495e = new C10549e<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            List<? extends Shape> listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            Shape shape = it2 instanceof Shape ? (Shape) it2 : null;
            if (shape == null) {
                return;
            }
            GlobalBundle globalBundle = GlobalBundle.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
            globalBundle.copyShapes(listOf);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$f */
    /* loaded from: classes8.dex */
    public static final class C10550f<T> implements Consumer {
        public C10550f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHelper.this.m41279E(it2.getEditorContent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$g */
    /* loaded from: classes8.dex */
    public static final class C10551g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextEditFinishEvent f52498f;

        public C10551g(TextEditFinishEvent textEditFinishEvent) {
            this.f52498f = textEditFinishEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateTextShapeRectAction> apply(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextInputHelper.this.m41280F(this.f52498f, true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$h */
    /* loaded from: classes8.dex */
    public static final class C10552h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextEditFinishEvent f52500f;

        public C10552h(TextEditFinishEvent textEditFinishEvent) {
            this.f52500f = textEditFinishEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateVirtualPageAction> apply(@NotNull UpdateTextShapeRectAction it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TextInputHelper.this.getEditorBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f52500f.getShape().getPageUniqueId());
            return new UpdateVirtualPageAction(editorBundle, listOf).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$i */
    /* loaded from: classes8.dex */
    public static final class C10553i<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TextEditStartEvent f52502f;

        public C10553i(TextEditStartEvent textEditStartEvent) {
            this.f52502f = textEditStartEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TextBoxStartEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHelper.this.m41300x(it2, this.f52502f.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$j */
    /* loaded from: classes8.dex */
    public static final class C10554j<T> implements Consumer {
        public C10554j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(TextInputHelper.this.getEditorBundle(), new AbortEditTextEvent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$k */
    /* loaded from: classes8.dex */
    public static final class C10555k<T> implements Consumer {
        public C10555k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHelper.this.m41279E(it2.getEditorContent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$l */
    /* loaded from: classes8.dex */
    public static final class C10556l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextEditFinishEvent f52507f;

        public C10556l(TextEditFinishEvent textEditFinishEvent) {
            this.f52507f = textEditFinishEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateTextShapeRectAction> apply(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextInputHelper.this.m41280F(this.f52507f, true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$m */
    /* loaded from: classes8.dex */
    public static final class C10557m<T, R> implements Function {

        /* renamed from: e */
        public static final C10557m<T, R> f52508e = new C10557m<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Shape apply(@NotNull UpdateTextShapeRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getSavedShape();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$n */
    /* loaded from: classes8.dex */
    public static final class C10558n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<Shape> f52509e;

        public C10558n(Ref.ObjectRef<Shape> objectRef) {
            this.f52509e = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52509e.element = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$o */
    /* loaded from: classes8.dex */
    public static final class C10559o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<Shape> f52511f;

        public C10559o(Ref.ObjectRef<Shape> objectRef) {
            this.f52511f = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GetReferenceShapeAction> apply(@NotNull Object it2) {
            List mutableListOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TextInputHelper.this.getEditorBundle();
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this.f52511f.element);
            return new GetReferenceShapeAction(editorBundle, mutableListOf).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$p */
    /* loaded from: classes8.dex */
    public static final class C10560p<T, R> implements Function {
        public C10560p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteShapesAction(TextInputHelper.this.getEditorBundle(), it2.mergeShapeList(true), true, false, 8, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$q */
    /* loaded from: classes8.dex */
    public static final class C10561q<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<Shape> f52513e;

        public C10561q(Ref.ObjectRef<Shape> objectRef) {
            this.f52513e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Shape apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52513e.element;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$r */
    /* loaded from: classes8.dex */
    public static final class C10562r<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UpdateTextShapeRectAction f52514e;

        public C10562r(UpdateTextShapeRectAction updateTextShapeRectAction) {
            this.f52514e = updateTextShapeRectAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextShapeRectAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52514e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$s */
    /* loaded from: classes8.dex */
    public static final class C10563s<T> implements Consumer {
        public C10563s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHelper.this.m41279E(it2.getEditorContent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$t */
    /* loaded from: classes8.dex */
    public static final class C10564t<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextEditFinishEvent f52517f;

        /* renamed from: g */
        public final /* synthetic */ boolean f52518g;

        public C10564t(TextEditFinishEvent textEditFinishEvent, boolean z) {
            this.f52517f = textEditFinishEvent;
            this.f52518g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateTextShapeRectAction> apply(@NotNull TextBoxFinishEditAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextInputHelper.this.m41280F(this.f52517f, this.f52518g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$u */
    /* loaded from: classes8.dex */
    public static final class C10565u<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Shape f52520f;

        public C10565u(Shape shape) {
            this.f52520f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TextInputHelper.this.getEditorBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f52520f);
            EditorBundleKt.postEvent(editorBundle, new ShowEditTextShapeSelectionMenuEvent(it2, listOf));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$v */
    /* loaded from: classes8.dex */
    public static final class C10566v<T> implements Consumer {
        public C10566v() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateTextShapeRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(TextInputHelper.this.getEditorBundle(), new EditTextShapeUpdateResultEvent(TextInputHelper.this.getTextBoxView().isReadOnly()));
        }
    }

    public TextInputHelper(@NotNull EditorBundle editorBundle, @NotNull TextBoxView textBoxView) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        this.editorBundle = editorBundle;
        this.textBoxView = textBoxView;
        this.stashFilterTimeMs = 2000L;
        this.richEditor = textBoxView.getEditor();
        Shape shape = this.textShape;
        this.lastShapeMatrix = MatrixKt.copy(shape != null ? shape.getShapeMatrix() : null);
        this.virtualBoxInfo = new BoxInfo();
        this.shapeTransformBean = new ShapeTransformBean();
        this.contentViewPreviousRect = new Rect();
    }

    /* renamed from: C */
    public static final void m41262C(TextInputHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41301y();
    }

    /* renamed from: G */
    public static /* synthetic */ Observable m41263G(TextInputHelper textInputHelper, TextEditFinishEvent textEditFinishEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return textInputHelper.m41280F(textEditFinishEvent, z);
    }

    /* renamed from: H */
    public static final void m41264H(TextInputHelper this$0, Shape shape, UpdateTextShapeRectAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shape, "$shape");
        Intrinsics.checkNotNullParameter(it2, "it");
        m41273i(this$0, CollectionKt.asList(shape), false, 2, null);
    }

    /* renamed from: I */
    public static final void m41265I(TextInputHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41301y();
    }

    /* renamed from: J */
    public static final void m41266J(TextInputHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Shape shape = this$0.textShape;
        this$0.lastShapeMatrix = MatrixKt.copy(shape != null ? shape.getShapeMatrix() : null);
    }

    /* renamed from: i */
    public static /* synthetic */ void m41273i(TextInputHelper textInputHelper, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        textInputHelper.m41286h(list, z);
    }

    /* renamed from: w */
    public static final void m41274w(TextInputHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41283M(null, true);
    }

    /* renamed from: z */
    public static final void m41275z(TextInputHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m41301y();
    }

    /* renamed from: A */
    public final void m41276A() {
        RxFilter<Shape> rxFilter;
        Shape shape = this.textShape;
        if (shape == null || (rxFilter = this.contentChangeFilter) == null) {
            return;
        }
        rxFilter.onNext(shape);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.onyx.android.sdk.note.common.shape.Shape] */
    /* renamed from: B */
    public final Observable<?> m41277B() {
        final ?? r0 = this.textShape;
        if (r0 == 0) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        boolean isNotBlankRichText = ShapeTextUtils.INSTANCE.isNotBlankRichText(r0);
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        TextEditFinishEvent textEditFinishEvent = new TextEditFinishEvent(r0, textRenderUtil.getRenderRect(renderContext), true, isNotBlankRichText);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = r0;
        m41287j();
        Observable doOnNext = new TextBoxFinishEditAction(this.textBoxView).setNeedSaveShape(textEditFinishEvent.getSaveShape()).build().doOnNext(new C10555k()).flatMap(new C10556l(textEditFinishEvent)).map(C10557m.f52508e).doOnNext(new C10558n(objectRef));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<?> doFinally = RxjavaKt.flatMapIf(doOnNext, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$quitAndDeleteShapeObservable$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!StringUtils.equals(Shape.this.getShapeUniqueId(), it2.getShapeUniqueId()));
            }
        }, new Function1<Shape, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$quitAndDeleteShapeObservable$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Shape it2) {
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = TextInputHelper.this.getEditorBundle();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(r0);
                DeleteShapesAction deleteShapesAction = new DeleteShapesAction(editorBundle, listOf, false, false, 8, null);
                deleteShapesAction.setRender(false);
                return deleteShapesAction.build();
            }
        }).flatMap(new C10559o(objectRef)).flatMap(new C10560p()).map(new C10561q(objectRef)).doOnNext(new C10554j()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ddn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TextInputHelper.m41262C(TextInputHelper.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: D */
    public final void m41278D() {
        View view = this.contentView;
        if (view != null) {
            view.setY(0.0f);
        }
        View view2 = this.contentView;
        if (view2 != null) {
            view2.requestLayout();
        }
        this.contentViewPreviousRect.setEmpty();
        View view3 = this.toolView;
        if (view3 != null) {
            view3.setTranslationY(0.0f);
        }
        View view4 = this.toolView;
        if (view4 != null) {
            view4.requestLayout();
        }
    }

    /* renamed from: E */
    public final void m41279E(EditorContent editorContent) {
        if (editorContent != null) {
            onEditorContentChangeEvent(new EditorContentChangeEvent(editorContent));
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: F */
    public final Observable<UpdateTextShapeRectAction> m41280F(TextEditFinishEvent event, final boolean addToUndoCommand) {
        RenderContext renderContext;
        NotePage notePage;
        EditorBundle editorBundle = this.editorBundle;
        TextBoxView textBoxView = this.textBoxView;
        RenderContext renderContext2 = this.renderContext;
        if (renderContext2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        } else {
            renderContext = renderContext2;
        }
        NotePage notePage2 = this.notePage;
        if (notePage2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notePage");
            notePage = null;
        } else {
            notePage = notePage2;
        }
        UpdateTextShapeRectAction updateTextShapeRectAction = new UpdateTextShapeRectAction(editorBundle, textBoxView, renderContext, notePage, event.getShape());
        if (!this.textBoxView.isAttachedToWindow()) {
            Debug.INSTANCE.m32044e(TextInputHelper.class, "saveShapeRect with invalid view state.", new Object[0]);
            Observable<UpdateTextShapeRectAction> just = Observable.just(updateTextShapeRectAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        updateTextShapeRectAction.setLastShapeMatrix(this.lastShapeMatrix).setRenderRect(event.getRenderRect()).setEditorRect(m41298u(this.textBoxView.getEditorRect())).setTextWidth(this.textBoxView.getEditorContentWidth()).setTextHeight(this.textBoxView.getEditorContentHeight()).setSaveShape(true).setLastRichText(this.lastRichText).setOriginShape(this.beforeTransformShape).setVirtualBoxInfo(getVirtualBoxInfo()).setShapeTransformBean(this.shapeTransformBean);
        this.shapeTransformBean = new ShapeTransformBean();
        Observable map = RxjavaKt.flatMapIf(updateTextShapeRectAction.build(), new Function1<UpdateTextShapeRectAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$saveShapeRect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull UpdateTextShapeRectAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(addToUndoCommand);
            }
        }, new Function1<UpdateTextShapeRectAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$saveShapeRect$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull UpdateTextShapeRectAction it2) {
                Observable<? extends Object> m41285g;
                Intrinsics.checkNotNullParameter(it2, "it");
                m41285g = TextInputHelper.this.m41285g(it2);
                return m41285g;
            }
        }).map(new C10562r(updateTextShapeRectAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: K */
    public final void m41281K(FontInfo fontInfo) {
        if (fontInfo == null) {
            return;
        }
        String safelyGetStr = StringKt.safelyGetStr(fontInfo.getFontName());
        String safelyGetStr2 = StringKt.safelyGetStr(fontInfo.getFontTypeName());
        this.richEditor.setFontFace(safelyGetStr, StringKt.safelyGetStr(fontInfo.getFilePath()), safelyGetStr2);
    }

    /* renamed from: L */
    public final void m41282L(Shape shape) {
        m41288k(shape.getPageUniqueId()).doOnNext(new C10565u(shape)).subscribe();
    }

    /* renamed from: M */
    public final void m41283M(TransformType transformType, boolean updateRectOnly) {
        RenderContext renderContext;
        NotePage notePage;
        if (!m41295r() || this.textBoxView.isTextBoxMoved() || this.textShape == null) {
            EditorBundleKt.postEvent(this.editorBundle, new EditTextShapeUpdateResultEvent(this.textBoxView.isReadOnly()));
            return;
        }
        m41276A();
        EditorBundle editorBundle = this.editorBundle;
        TextBoxView textBoxView = this.textBoxView;
        RenderContext renderContext2 = this.renderContext;
        RenderContext renderContext3 = null;
        if (renderContext2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        } else {
            renderContext = renderContext2;
        }
        NotePage notePage2 = this.notePage;
        if (notePage2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notePage");
            notePage = null;
        } else {
            notePage = notePage2;
        }
        Shape shape = this.textShape;
        Intrinsics.checkNotNull(shape);
        UpdateTextShapeRectAction lastShapeMatrix = new UpdateTextShapeRectAction(editorBundle, textBoxView, renderContext, notePage, shape).setLastShapeMatrix(this.lastShapeMatrix);
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        RenderContext renderContext4 = this.renderContext;
        if (renderContext4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
        } else {
            renderContext3 = renderContext4;
        }
        lastShapeMatrix.setRenderRect(textRenderUtil.getRenderRect(renderContext3)).setEditorRect(m41298u(this.textBoxView.getEditorRect())).setTextWidth(this.textBoxView.getEditorViewWidth()).setTextHeight(this.textBoxView.getEditorViewHeight()).setTransformType(transformType).setUpdateRectOnly(updateRectOnly).setVirtualBoxInfo(getVirtualBoxInfo()).build().doOnNext(new C10566v()).subscribe();
    }

    /* renamed from: N */
    public final void m41284N(boolean visible) {
        if (!visible) {
            EditorBundleKt.postEvent(this.editorBundle, new TextToolViewVisibleChangeEvent(0.0f));
            return;
        }
        View view = this.toolView;
        if ((view != null ? ViewKt.getMeasureSize$default(view, 0, 0, 3, null) : null) != null) {
            EditorBundleKt.postEvent(this.editorBundle, new TextToolViewVisibleChangeEvent(r0.getHeight()));
        }
    }

    public final void activateEventListening(boolean active) {
        if (active) {
            EventBusHolderKt.ensureRegister(getEventBus(), this);
        } else {
            EventBusHolderKt.ensureUnRegister(getEventBus(), this);
        }
    }

    public final void destroy() {
        this.textBoxView.finishEdit();
        this.textBoxView.clear();
        unregisterEventBus();
        postEvent(new SaveTextShapeEvent());
        this.textShape = null;
        this.shapeTransformBean = new ShapeTransformBean();
        m41287j();
    }

    /* renamed from: g */
    public final Observable<?> m41285g(UpdateTextShapeRectAction action) {
        List<? extends Shape> listOfNotNull;
        if (this.isCreateNewShape && this.textShape != null) {
            CompositeCommand compositeCommand = action.getCompositeCommand();
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.textShape);
            compositeCommand.addShapesUndoRedoCommand(listOfNotNull);
        }
        if (action.getCompositeCommand().hasCommand()) {
            Observable map = new AddUndoRedoCommandAction(this.editorBundle, action.getCompositeCommand()).build().map(new C10545a());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final EventBus getEventBus() {
        return EditorBundleKt.appEventBus(this.editorBundle);
    }

    @NotNull
    public final int[] getOffset() {
        return new int[]{this.offsetX, this.offsetY};
    }

    @NotNull
    public final TextBoxView getTextBoxView() {
        return this.textBoxView;
    }

    @Nullable
    public final Shape getTextShape() {
        return this.textShape;
    }

    /* renamed from: h */
    public final void m41286h(List<? extends Shape> shapes, boolean addToCmdStack) {
        Object obj;
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("deleteTextShape:");
        sb.append(addToCmdStack);
        sb.append(',');
        Iterator<T> it2 = shapes.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (ShapeTypes.INSTANCE.isTextShape((Shape) obj)) {
                    break;
                }
            }
        }
        Shape shape = (Shape) obj;
        sb.append(shape != null ? shape.getRichText() : null);
        debug.m32052i(TextInputHelper.class, sb.toString(), new Object[0]);
        DeleteShapesAction deleteShapesAction = new DeleteShapesAction(this.editorBundle, shapes, addToCmdStack, false, 8, null);
        deleteShapesAction.setRender(false);
        RxBaseAction.execute$default(deleteShapesAction, null, null, null, 7, null);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void initRichListener() {
        activateEventListening(true);
        this.textBoxView.setEventBusHolder(new EventBusHolder(getEventBus()));
        this.textBoxView.setLimitTranslateRect(true);
        this.textBoxView.setTransformListener(new TextInputHelper$initRichListener$1(this));
    }

    public final boolean isEditorBundleChanges(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        return this.editorBundle != editorBundle;
    }

    /* renamed from: j */
    public final void m41287j() {
        RxFilter<Shape> rxFilter = this.contentChangeFilter;
        if (rxFilter != null) {
            rxFilter.dispose();
        }
        this.contentChangeFilter = null;
    }

    /* renamed from: k */
    public final Observable<BoxInfo> m41288k(String pageUniqueId) {
        Object obj;
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(this.editorBundle).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((BoxInfo) obj).getId(), pageUniqueId)) {
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo != null) {
            Observable<BoxInfo> just = Observable.just(boxInfo);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = EditorBundleKt.findVisibleBoxInfoByNotePageId(this.editorBundle, pageUniqueId, true).map(new C10546b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m41289l() {
        if (this.editorBundle.getUiBundle().getHandlerManager().getShapeHandlerManager().isTextInputHandler()) {
            return;
        }
        saveTextShape().subscribe();
    }

    /* renamed from: m */
    public final RectF m41290m() {
        List<BoxInfo> copyBoxList;
        int collectionSizeOrDefault;
        BoxManager boxManager = this.editorBundle.getWorkBundle().getBoxManager();
        if (boxManager == null || (copyBoxList = boxManager.copyBoxList()) == null) {
            return new RectF();
        }
        BoxManager boxManager2 = this.editorBundle.getWorkBundle().getBoxManager();
        if (boxManager2 != null) {
            boxManager2.convertToVisibleBoxList(copyBoxList);
        }
        List<BoxInfo> list = copyBoxList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BoxInfo boxInfo : list) {
            RectF copy = RectFKt.copy(boxInfo.getOriginRectFWithMargin());
            BoxInfoUtils.INSTANCE.noteRenderMatrix(boxInfo).mapRect(copy);
            arrayList.add(copy);
        }
        RectF boundingRectF = RectFKt.boundingRectF(arrayList);
        boundingRectF.offset(this.offsetX, this.offsetY);
        return boundingRectF;
    }

    /* renamed from: n */
    public final BoxInfo m41291n() {
        Object obj;
        String id = this.virtualBoxInfo.getId();
        NotePage notePage = this.notePage;
        if (notePage == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notePage");
            notePage = null;
        }
        if (Intrinsics.areEqual(id, notePage.getPageUniqueId())) {
            return this.virtualBoxInfo.getNoteInfo();
        }
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(this.editorBundle).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            BoxInfo noteInfo = ((BoxInfo) obj).getNoteInfo();
            String id2 = noteInfo != null ? noteInfo.getId() : null;
            NotePage notePage2 = this.notePage;
            if (notePage2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notePage");
                notePage2 = null;
            }
            if (Intrinsics.areEqual(id2, notePage2.getPageUniqueId())) {
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo != null) {
            return boxInfo.getNoteInfo();
        }
        return null;
    }

    public final void normalizeExtraVerticalOffset(int offset) {
        this.extraVerticalOffset += offset;
    }

    /* renamed from: o */
    public final float m41292o() {
        BoxInfo m41291n = m41291n();
        if (m41291n != null) {
            return m41291n.getActualScale();
        }
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return FLOAT_ONE.floatValue();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAppendInputTextEvent(@NotNull AppendInputTextEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r() && ViewKt.isVisible(this.textBoxView) && StringUtils.isNotBlank(event.getAppendText())) {
            this.richEditor.insertText(event.getAppendText());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeShapeAttributesEvent(@NotNull ChangeShapeAttributesEvent event) {
        ShapeAttributesBean shapeAttributesBean;
        Shape shape;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r() && (shapeAttributesBean = (ShapeAttributesBean) CollectionKt.getFirst(event.getShapeAttrPairs().values())) != null) {
            Shape shape2 = this.textShape;
            String text = shape2 != null ? shape2.getText() : null;
            if ((text == null || text.length() == 0) && (shape = this.textShape) != null) {
                shape.setStrokeColor(shapeAttributesBean.getColor());
            }
            this.richEditor.setFontColor(shapeAttributesBean.getColor());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCutEditTextShapeEvent(@NotNull CutEditTextShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41277B().doOnNext(C10549e.f52495e).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteEditTextShapeEvent(@NotNull DeleteEditTextShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41277B().subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorContentChangeEvent(@NotNull EditorContentChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Shape shape = this.textShape;
        if (shape == null) {
            return;
        }
        if (!Intrinsics.areEqual(event.getEditorContent().getRichText(), shape.getRichText())) {
            m41276A();
        }
        shape.setRichText(event.getEditorContent().getRichText());
        shape.setText(CJKCompat.INSTANCE.CJKToStandard(event.getEditorContent().getPlainText()));
        Debug debug = Debug.INSTANCE;
        debug.m32035d(TextInputHelper.class, "buildTextShape:" + event.getEditorContent().getRichText(), new Object[0]);
        debug.m32035d(TextInputHelper.class, "buildTextShape:" + event.getEditorContent().getPlainText(), new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorFontLoadEvent(@NotNull EditorFontLoadEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41296s(event.getResult());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorLayoutChangeEvent(@NotNull EditorLayoutChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.textBoxView.post(new Runnable() { // from class: com.sunia.HTREnginev2.cdn
            @Override // java.lang.Runnable
            public final void run() {
                TextInputHelper.m41274w(TextInputHelper.this);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorRestartInputEvent(@NotNull EditorRestartInputEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.textBoxView.isEditing()) {
            this.textBoxView.requestFocus();
            ViewKt.postToShowInputKeyboardWithDelay(this.richEditor.getRichEditor());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveEditTextShapeEvent(@NotNull SaveEditTextShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        saveTextShape().subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextAlignEvent(@NotNull TextAlignEvent event) {
        Shape shape;
        ShapeTextStyle textStyle;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            Shape shape2 = this.textShape;
            String text = shape2 != null ? shape2.getText() : null;
            if ((text == null || text.length() == 0) && (shape = this.textShape) != null && (textStyle = shape.getTextStyle()) != null) {
                textStyle.setAlignType(event.getAlignType());
            }
            this.richEditor.setTextAlign(ShapeTextAlignType.INSTANCE.toString(event.getAlignType()));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextBoldEvent(@NotNull TextBoldEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            this.richEditor.setBold(event.getEnable());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextChineseConvertTypeChangeEvent(@NotNull TextChineseConvertTypeChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            if (event.getConvertType() == NoteChineseConvertType.S_TO_T) {
                this.richEditor.convert2Traditional();
            } else if (event.getConvertType() == NoteChineseConvertType.T_TO_S) {
                this.richEditor.convert2Simplified();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextEditFinishEvent(@NotNull TextEditFinishEvent event) {
        Set mutableSetOf;
        List<? extends Shape> list;
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.textShape == null) {
            return;
        }
        Debug.INSTANCE.m32035d(TextInputHelper.class, "editor finish event, enable: " + m41295r() + " ,shape " + event.getShape() + " ,textShape " + this.textShape, new Object[0]);
        if (!event.getSaveShape()) {
            Shape shape = event.getShape();
            Shape shape2 = this.beforeTransformShape;
            shape.setText(shape2 != null ? shape2.getText() : null);
            Shape shape3 = this.beforeTransformShape;
            shape.setRichText(shape3 != null ? shape3.getRichText() : null);
            mutableSetOf = SetsKt__SetsKt.mutableSetOf(shape);
            mutableSetOf.addAll(this.shapeTransformBean.getTransformShapes());
            list = CollectionsKt___CollectionsKt.toList(mutableSetOf);
            m41286h(list, StringUtils.isNotBlank(shape.getText()));
        }
        m41287j();
        new TextBoxFinishEditAction(this.textBoxView).setNeedSaveShape(event.getSaveShape()).build().doOnNext(new C10550f()).flatMap(new C10551g(event)).flatMap(new C10552h(event)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.bdn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TextInputHelper.m41275z(TextInputHelper.this);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    @SuppressLint({"CheckResult"})
    public final void onTextEditStartEvent(@NotNull TextEditStartEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        boolean z = true;
        ViewKt.setViewVisibleOrGone(this.toolView, true);
        m41284N(true);
        this.textBoxView.setEnableHandleTouchEvent(true);
        RenderContext renderContext = null;
        if (this.textShape != null) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("onTextEditStartEvent, editor illegal start, last edit is not finished: ");
            Shape shape = this.textShape;
            sb.append(shape != null ? shape.getText() : null);
            debug.m32059w(TextInputHelper.class, sb.toString(), new Object[0]);
            return;
        }
        Debug.INSTANCE.m32035d(TextInputHelper.class, "onTextEditStartEvent, editor starting", new Object[0]);
        this.renderContext = event.getRenderContext();
        this.notePage = event.getNotePage();
        this.virtualBoxInfo = event.getVirtualBoxInfo();
        this.isCreateNewShape = event.getCreateNewShape();
        this.extraVerticalOffset = 0;
        ShapeTextStyle textStyle = event.getShape().getTextStyle();
        if (textStyle == null) {
            return;
        }
        float m41292o = m41292o();
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        RenderContext renderContext2 = this.renderContext;
        if (renderContext2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext2 = null;
        }
        Pair<Float, Float> renderScale = textRenderUtil.getRenderScale(renderContext2, event.getShape());
        RenderContext renderContext3 = this.renderContext;
        if (renderContext3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext3 = null;
        }
        SelectionRect selectionRect = textRenderUtil.getSelectionRect(renderContext3, event.getShape());
        if (selectionRect == null) {
            return;
        }
        float angle = ShapeMatrixUtils.INSTANCE.getTransformRect(selectionRect.getOriginRect(), selectionRect.getMatrix()).getAngle();
        RectF m41297t = m41297t(textRenderUtil.getRenderRect(selectionRect));
        TextBoxInitArgs fromTextStyle = TextBoxInitArgs.INSTANCE.fromTextStyle(event.getShape().getRichText(), textStyle);
        RenderContext renderContext4 = this.renderContext;
        if (renderContext4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
        } else {
            renderContext = renderContext4;
        }
        TextBoxInitArgs limitRect = fromTextStyle.setDarkTheme(renderContext.isDarkBackground()).setRenderRect(m41299v(m41297t)).setScale(((Number) renderScale.first).floatValue() * m41292o, ((Number) renderScale.second).floatValue() * m41292o).setRotation(angle).setTextColor(event.getShape().getStrokeColor()).setLimitRect(m41290m());
        String text = event.getShape().getText();
        if (text != null && text.length() != 0) {
            z = false;
        }
        TextBoxInitArgs showEditorDirectly = limitRect.setShowEditorDirectly(z);
        String text2 = event.getShape().getText();
        new TextBoxStartEditAction(this.textBoxView, event.getEditForAll()).setTextBoxInitArgs(showEditorDirectly.setPlainTextLen(text2 != null ? text2.length() : 0)).build().doOnNext(new C10553i(event)).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextFontChangeEvent(@NotNull TextFontChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.textBoxView.getEditor().reloadFont(event.getModel().getName(), FontModelExt.getSavePath$default(FontModelExt.INSTANCE, event.getModel(), null, 1, null));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextFontEvent(@NotNull TextFontEvent event) {
        Shape shape;
        ShapeTextStyle textStyle;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            Shape shape2 = this.textShape;
            String text = shape2 != null ? shape2.getText() : null;
            if ((text == null || text.length() == 0) && (shape = this.textShape) != null && (textStyle = shape.getTextStyle()) != null) {
                FontInfo fontInfo = event.getFontInfo();
                textStyle.setFontFace(fontInfo != null ? fontInfo.getFilePath() : null);
            }
            m41281K(event.getFontInfo());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextInputStateChangeEvent(@NotNull TextInputStateChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getState().isEditing() || event.getState().isReadOnly()) {
            if (event.getState().isEditing()) {
                postEvent(new HideEditTextShapeSelectionMenuEvent());
            }
            postEvent(new TextStartTransformEvent());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextItalicEvent(@NotNull TextItalicEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            this.richEditor.setItalic(event.getEnable());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextSelectionRectEvent(@NotNull TextSelectionRectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        RectF renderRect = textRenderUtil.getRenderRect(renderContext);
        if (renderRect == null) {
            return;
        }
        RectF m41297t = m41297t(renderRect);
        Debug.INSTANCE.m32052i(TextInputHelper.class, "render rect=" + m41297t + ", poi:" + this.textBoxView.getX() + '-' + this.textBoxView.getY(), new Object[0]);
        TextBoxView textBoxView = this.textBoxView;
        textBoxView.resetPosition(m41297t.left - ((float) textBoxView.getPadding()), m41297t.top - ((float) this.textBoxView.getPadding()));
        TextBoxView textBoxView2 = this.textBoxView;
        ShapeTextStyle textStyle = event.getTextStyle();
        textBoxView2.changeOrientation(textStyle != null ? textStyle.isVertical() : false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextSizeEvent(@NotNull TextSizeEvent event) {
        Shape shape;
        ShapeTextStyle textStyle;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
            Context context = this.textBoxView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            float pointToPixel = textRenderUtil.pointToPixel(context, event.getTextSize());
            Shape shape2 = this.textShape;
            String text = shape2 != null ? shape2.getText() : null;
            if ((text == null || text.length() == 0) && (shape = this.textShape) != null && (textStyle = shape.getTextStyle()) != null) {
                textStyle.setTextSize(pointToPixel);
            }
            this.richEditor.setFontSize(pointToPixel);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextSpacingEvent(@NotNull TextSpacingEvent event) {
        ShapeTextStyle textStyle;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            this.richEditor.setLineSpacing(event.getSpacingAdd());
            Shape shape = this.textShape;
            if (shape != null && (textStyle = shape.getTextStyle()) != null) {
                textStyle.setTextSpacing(event.getSpacingAdd());
            }
            m41276A();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextUnderlineEvent(@NotNull TextUnderlineEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41295r()) {
            this.richEditor.setUnderline(event.getEnable());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTransformEditEvent(@NotNull TransformEditEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Shape shape = this.textShape;
        if (shape == null) {
            return;
        }
        List<Shape> transformShapes = this.shapeTransformBean.getTransformShapes();
        CollectionKt.addIfNotContains((Collection) transformShapes, (Collection) event.getTransformBean().getTransformShapes());
        ShapeTransformBean transformBean = event.getTransformBean();
        this.shapeTransformBean = transformBean;
        transformBean.setTransformShapes(transformShapes);
        if (RectKt.isNullOrEmpty(shape.getBoundingRect())) {
            return;
        }
        this.textBoxView.showEditorView();
        if (this.textBoxView.isReadOnly()) {
            m41282L(shape);
        }
    }

    /* renamed from: p, reason: from getter */
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    public final void postChangeShapeAttributesEvent(@NotNull ShapeAttributesBean attributes) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        HashMap hashMap = new HashMap();
        Shape shape = this.textShape;
        if (shape != null) {
            hashMap.put(shape, attributes);
        }
        postEvent(new ChangeShapeAttributesEvent(hashMap));
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(this.editorBundle, event);
    }

    /* renamed from: q */
    public final void m41294q() {
        m41287j();
        RxFilter<Shape> rxFilter = new RxFilter<>();
        this.contentChangeFilter = rxFilter;
        rxFilter.subscribeThrottleLast(this.stashFilterTimeMs, new C10547c());
    }

    /* renamed from: r */
    public final boolean m41295r() {
        return this.textShape != null && this.textBoxView.isOperable();
    }

    public final void resetLimitRect() {
        this.textBoxView.clearTouchLimitRect();
        this.textBoxView.setLimitRect(m41290m());
    }

    /* renamed from: s */
    public final void m41296s(String fontData) {
        List list = (List) JSONUtils.INSTANCE.parseObject(fontData, new TypeReference<List<? extends RichTextFont>>() { // from class: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$loadFont$richFontList$1
        });
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        new LoadRichTextFontAction(list).build().doOnNext(new C10548d()).subscribe();
    }

    @NotNull
    public final Observable<?> saveTextShape() {
        final Shape shape = this.textShape;
        if (shape == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        boolean isNotBlankRichText = ShapeTextUtils.INSTANCE.isNotBlankRichText(shape);
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        final TextEditFinishEvent textEditFinishEvent = new TextEditFinishEvent(shape, textRenderUtil.getRenderRect(renderContext), true, isNotBlankRichText);
        this.textShape = null;
        Debug.INSTANCE.m32035d(TextInputHelper.class, "editor finish event, saveTextShape", new Object[0]);
        m41287j();
        Observable<R> flatMap = new TextBoxFinishEditAction(this.textBoxView).setNeedSaveShape(textEditFinishEvent.getSaveShape()).build().doOnNext(new C10563s()).flatMap(new C10564t(textEditFinishEvent, false));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<?> doFinally = RxjavaKt.doOnNextIf(flatMap, new Function1<UpdateTextShapeRectAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.helper.TextInputHelper$saveTextShape$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull UpdateTextShapeRectAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!TextEditFinishEvent.this.getSaveShape());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.ycn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                TextInputHelper.m41264H(TextInputHelper.this, shape, (UpdateTextShapeRectAction) obj);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.zcn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TextInputHelper.m41265I(TextInputHelper.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.adn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TextInputHelper.m41266J(TextInputHelper.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final void setOffset(int offsetX, int offsetY) {
        this.offsetX = offsetX;
        this.offsetY = offsetY;
    }

    public final void setToolView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.toolView = view;
    }

    /* renamed from: t */
    public final RectF m41297t(RectF rectF) {
        BoxInfo m41291n = m41291n();
        if (m41291n == null) {
            return rectF;
        }
        BoxInfoUtils.INSTANCE.renderMatrix(m41291n).mapRect(rectF);
        return rectF;
    }

    /* renamed from: u */
    public final RectF m41298u(RectF rectF) {
        if (rectF == null) {
            return null;
        }
        rectF.offset(-this.offsetX, (-this.offsetY) + this.extraVerticalOffset);
        return rectF;
    }

    public final void unregisterEventBus() {
        EventBusHolderKt.ensureUnRegister(getEventBus(), this);
    }

    /* renamed from: v */
    public final RectF m41299v(RectF rectF) {
        if (rectF == null) {
            return null;
        }
        rectF.offset(this.offsetX, this.offsetY);
        return rectF;
    }

    /* renamed from: x */
    public final void m41300x(TextBoxStartEditAction action, Shape shape) {
        if (action.getStartEditorSuccess() && this.textBoxView.isOperable()) {
            this.textShape = shape;
            this.lastRichText = shape.getRichText();
            this.lastShapeMatrix = MatrixKt.copy(shape.getShapeMatrix());
            Shape clone = ShapeCopyUtils.INSTANCE.clone(shape);
            clone.updateShapeRect();
            this.beforeTransformShape = clone;
            m41294q();
        }
        m41289l();
    }

    /* renamed from: y */
    public final void m41301y() {
        this.extraVerticalOffset = 0;
        this.textBoxView.finishEdit();
        m41278D();
        this.textShape = null;
        this.shapeTransformBean = new ShapeTransformBean();
        postEvent(new TextInputStateChangeEvent(EditorState.IDLE));
        ViewKt.setViewVisibleOrGone(this.toolView, false);
        m41284N(false);
        EditorBundleKt.postEvent(this.editorBundle, new HideEditTextShapeSelectionMenuEvent());
    }
}

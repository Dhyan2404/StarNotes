package com.onyx.android.sdk.textbox.widget;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.app.NotificationCompat;
import androidx.core.util.Consumer;
import androidx.core.view.GestureDetectorCompat;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.data.text.EditorInputData;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.textbox.data.EditorCursor;
import com.onyx.android.sdk.textbox.data.EditorLayoutInfo;
import com.onyx.android.sdk.textbox.data.EditorStyleInfo;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.onyx.android.sdk.textbox.event.EditorFontLoadEvent;
import com.onyx.android.sdk.textbox.event.EditorLoadFontResultEvent;
import com.onyx.android.sdk.textbox.event.SelectionChangeEvent;
import com.onyx.android.sdk.textbox.listener.ActionModeCallbackWrapper;
import com.onyx.android.sdk.textbox.listener.FinishEventObserver;
import com.onyx.android.sdk.textbox.listener.RichEditorGestureListener;
import com.onyx.android.sdk.textbox.mode.TextBoxMode;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.onyx.android.sdk.textbox.widget.RichEditor;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.global.HWREngineConstant;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u0000 \u0098\u00022\u00020\u0001:\n\u0099\u0002\u0098\u0002\u009a\u0002\u009b\u0002\u009c\u0002B\u0015\b\u0016\u0012\b\u0010\u0090\u0002\u001a\u00030\u008f\u0002¢\u0006\u0006\b\u0091\u0002\u0010\u0092\u0002B!\b\u0016\u0012\b\u0010\u0090\u0002\u001a\u00030\u008f\u0002\u0012\n\u0010\u0094\u0002\u001a\u0005\u0018\u00010\u0093\u0002¢\u0006\u0006\b\u0091\u0002\u0010\u0095\u0002B*\b\u0016\u0012\b\u0010\u0090\u0002\u001a\u00030\u008f\u0002\u0012\n\u0010\u0094\u0002\u001a\u0005\u0018\u00010\u0093\u0002\u0012\u0007\u0010\u0096\u0002\u001a\u00020.¢\u0006\u0006\b\u0091\u0002\u0010\u0097\u0002J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0015J\f\u0010\n\u001a\u00060\tR\u00020\u0000H\u0014J\u0012\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0012\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0015\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0014J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0018H\u0014J\u000e\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001dJ\u0016\u0010!\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0018J(\u0010&\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\"H\u0016J\b\u0010)\u001a\u00020\"H\u0016J\b\u0010*\u001a\u00020\"H\u0016J\b\u0010+\u001a\u00020\"H\u0016J\b\u0010,\u001a\u00020\"H\u0016J0\u00103\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020.2\u0006\u00102\u001a\u00020.H\u0014J\u0010\u00104\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001c\u00108\u001a\u0004\u0018\u0001072\b\u0010\u001a\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020.H\u0016J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010:\u001a\u000209H\u0014J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010:\u001a\u000209H\u0014J\u0010\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010=H\u0016J\b\u0010@\u001a\u00020\u0002H\u0016J\u001a\u0010@\u001a\u00020\u00022\u0010\u0010B\u001a\f\u0012\u0006\u0012\u0004\u0018\u000109\u0018\u00010AH\u0016J\u0012\u0010C\u001a\u00020\u00062\b\u0010:\u001a\u0004\u0018\u000109H\u0014J\u001e\u0010F\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00162\u0006\u0010:\u001a\u0002092\u0006\u0010E\u001a\u00020.J\u001e\u0010H\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00162\u0006\u0010:\u001a\u0002092\u0006\u0010G\u001a\u00020.J\u0018\u0010K\u001a\u00020\u00062\u0006\u0010I\u001a\u00020.2\u0006\u0010J\u001a\u00020.H\u0014J\u0018\u0010N\u001a\u00020\u00062\u0006\u0010L\u001a\u00020.2\u0006\u0010M\u001a\u00020.H\u0014J\b\u0010O\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020PH\u0016J\u0010\u0010S\u001a\u00020\u00022\u0006\u0010R\u001a\u00020\u0006H\u0016J\u0012\u0010U\u001a\u00020\u00022\b\u0010T\u001a\u0004\u0018\u00010\u0018H\u0016J\"\u0010U\u001a\u00020\u00022\b\u0010T\u001a\u0004\u0018\u00010\u00182\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0012\u0010W\u001a\u00020\u00022\b\u0010V\u001a\u0004\u0018\u00010\u0018H\u0016J\n\u0010X\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010Y\u001a\u00020\u0002H\u0016J\b\u0010Z\u001a\u00020\u0002H\u0016J\u0010\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010^\u001a\u00020\u00022\u0006\u0010]\u001a\u00020\"H\u0016J\u0010\u0010`\u001a\u00020\u00022\u0006\u0010_\u001a\u00020.H\u0016J(\u0010a\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\"2\u0006\u00100\u001a\u00020\"2\u0006\u00101\u001a\u00020\"2\u0006\u00102\u001a\u00020\"H\u0016J(\u0010`\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020.2\u0006\u00102\u001a\u00020.H\u0016J(\u0010d\u001a\u00020\u00022\u0006\u0010b\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u0010c\u001a\u00020.2\u0006\u00102\u001a\u00020.H\u0016J\u0010\u0010e\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010h\u001a\u00020\u00022\u0006\u0010g\u001a\u00020.H\u0016J\u0010\u0010k\u001a\u00020\u00022\u0006\u0010j\u001a\u00020iH\u0016J\u0010\u0010n\u001a\u00020m2\u0006\u0010l\u001a\u00020iH\u0014J\u0010\u0010k\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0018\u0010r\u001a\u00020\u00022\u0006\u0010p\u001a\u00020\u00062\u0006\u0010q\u001a\u00020\u0006H\u0016J\u0010\u0010s\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0010\u0010u\u001a\u00020\u00022\u0006\u0010t\u001a\u00020\u0006H\u0016J\u0010\u0010v\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0010\u0010w\u001a\u00020\u00022\u0006\u0010t\u001a\u00020\u0006H\u0016J\u0018\u0010z\u001a\u00020\u00022\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u0010\u0010{\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J \u0010{\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0010\u0010|\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0010\u0010~\u001a\u00020\u00022\u0006\u0010}\u001a\u00020\u0018H\u0016J!\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010\u007f\u001a\u00020\u00062\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\u0007\u0010\u0081\u0001\u001a\u00020\u0002J\u0012\u0010\u0083\u0001\u001a\u00020\u00022\u0007\u0010\u0082\u0001\u001a\u00020\u0018H\u0016J\t\u0010\u0084\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u0085\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00022\u0007\u0010\u0086\u0001\u001a\u00020.H\u0016J\u001b\u0010\u008a\u0001\u001a\u00020\u00022\u0007\u0010\u0088\u0001\u001a\u00020\u00182\u0007\u0010\u0089\u0001\u001a\u00020\u0018H\u0016J,\u0010\u008e\u0001\u001a\u00020\u00022\u0007\u0010\u008b\u0001\u001a\u00020\u00182\u0006\u0010o\u001a\u00020\u00182\u0007\u0010\u008c\u0001\u001a\u00020\u00182\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0011\u0010\u008f\u0001\u001a\u00020\u00022\u0006\u0010]\u001a\u00020.H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00022\u0007\u0010\u0090\u0001\u001a\u00020\"H\u0016J\u0012\u0010\u0092\u0001\u001a\u00020\u00022\u0007\u0010\u0090\u0001\u001a\u00020\"H\u0016J\t\u0010\u0093\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0094\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\u00022\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\u00022\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\t\u0010\u0097\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0098\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0099\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010\u009a\u0001\u001a\u00020\u00022\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0011\u0010\u009b\u0001\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u001a\u0010\u009c\u0001\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.2\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\u0011\u0010\u009d\u0001\u001a\u00020\u00022\u0006\u0010[\u001a\u00020.H\u0016J\u001b\u0010\u009f\u0001\u001a\u00020\u00022\u0007\u0010\u009e\u0001\u001a\u00020\"2\u0007\u0010\u008d\u0001\u001a\u00020\u0006H\u0016J\t\u0010 \u0001\u001a\u00020\u0002H\u0016J\u0012\u0010¢\u0001\u001a\u00020\u00022\u0007\u0010¡\u0001\u001a\u00020.H\u0016J\t\u0010£\u0001\u001a\u00020\u0002H\u0016J\t\u0010¤\u0001\u001a\u00020\u0002H\u0016J\t\u0010¥\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010§\u0001\u001a\u00020\u00022\u0007\u0010¦\u0001\u001a\u00020\u0018H\u0016J\t\u0010¨\u0001\u001a\u00020\u0002H\u0016J\t\u0010©\u0001\u001a\u00020\u0002H\u0016J\t\u0010ª\u0001\u001a\u00020\u0002H\u0016J\t\u0010«\u0001\u001a\u00020\u0002H\u0016J\t\u0010¬\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u00ad\u0001\u001a\u00020\u0002H\u0016J\t\u0010®\u0001\u001a\u00020\u0002H\u0016J\u0011\u0010¯\u0001\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0012\u0010±\u0001\u001a\u00020\u00022\u0007\u0010°\u0001\u001a\u00020\u0018H\u0016J\u001a\u0010³\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0007\u0010²\u0001\u001a\u00020\u0018H\u0016J\"\u0010³\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0007\u0010²\u0001\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.H\u0016J*\u0010³\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0007\u0010²\u0001\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u0011\u0010´\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0019\u0010´\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.H\u0016J!\u0010´\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u0011\u0010µ\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0011\u0010¶\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0018H\u0016J\u0019\u0010¶\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.H\u0016J!\u0010¶\u0001\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u00182\u0006\u0010x\u001a\u00020.2\u0006\u0010y\u001a\u00020.H\u0016J\u001b\u0010¹\u0001\u001a\u00020\u00022\u0007\u0010·\u0001\u001a\u00020\u00182\u0007\u0010¸\u0001\u001a\u00020\u0018H\u0016J\t\u0010º\u0001\u001a\u00020\u0002H\u0016J\t\u0010»\u0001\u001a\u00020\u0002H\u0016J\u0019\u0010¼\u0001\u001a\u00020\u00022\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0016J\t\u0010½\u0001\u001a\u00020\u0002H\u0016J\u000f\u0010¾\u0001\u001a\b\u0012\u0004\u0012\u00020\u00180=H\u0016J\u0011\u0010¿\u0001\u001a\u00020\u00182\u0006\u0010[\u001a\u00020.H\u0014J\t\u0010À\u0001\u001a\u00020\u0002H\u0016J\u0012\u0010Â\u0001\u001a\u00020\u00022\u0007\u0010Á\u0001\u001a\u00020\u0018H\u0014J\"\u0010Â\u0001\u001a\u00020\u00022\u0007\u0010Á\u0001\u001a\u00020\u00182\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0014J\"\u0010Ã\u0001\u001a\u00020\u00022\u0007\u0010Á\u0001\u001a\u00020\u00182\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010%H\u0014J\u0012\u0010Å\u0001\u001a\u00020\u00022\u0007\u0010Ä\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010Ç\u0001\u001a\u00020\u00022\u0007\u0010Æ\u0001\u001a\u00020\u0006H\u0016J\u0012\u0010É\u0001\u001a\u00020\u00022\u0007\u0010È\u0001\u001a\u00020\u0006H\u0016J\t\u0010Ê\u0001\u001a\u00020\u0002H\u0016J\t\u0010Ë\u0001\u001a\u00020\u0002H\u0016J\u0018\u0010Ï\u0001\u001a\u0005\u0018\u00010Î\u00012\n\u0010Í\u0001\u001a\u0005\u0018\u00010Ì\u0001H\u0016J\f\u0010Ð\u0001\u001a\u0005\u0018\u00010Î\u0001H\u0016R\u0019\u0010\u0085\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010Ò\u0001R\u001b\u0010Õ\u0001\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010Ô\u0001R\u001b\u0010Ø\u0001\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010×\u0001R\u001b\u0010Û\u0001\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010Ú\u0001R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0003\u0010Ü\u0001R\u001c\u0010à\u0001\u001a\u0005\u0018\u00010Ý\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010ß\u0001R\u001c\u0010ä\u0001\u001a\u0005\u0018\u00010á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010ã\u0001R\u001b\u0010ç\u0001\u001a\u0005\u0018\u00010å\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0007\u0010æ\u0001R\u001b\u0010ê\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001R\u001a\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0001\u0010ì\u0001R\u0019\u0010\u0086\u0001\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010î\u0001R\u0019\u0010Æ\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bï\u0001\u0010Ò\u0001R\u0019\u0010È\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bð\u0001\u0010Ò\u0001R\u001b\u0010ó\u0001\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0001\u0010ò\u0001R\u001c\u0010ö\u0001\u001a\u0005\u0018\u00010Î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010õ\u0001R,\u0010þ\u0001\u001a\u0005\u0018\u00010÷\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bø\u0001\u0010ù\u0001\u001a\u0006\bú\u0001\u0010û\u0001\"\u0006\bü\u0001\u0010ý\u0001R*\u0010\u0086\u0002\u001a\u00030ÿ\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0080\u0002\u0010\u0081\u0002\u001a\u0006\b\u0082\u0002\u0010\u0083\u0002\"\u0006\b\u0084\u0002\u0010\u0085\u0002R,\u0010\u008e\u0002\u001a\u0005\u0018\u00010\u0087\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0088\u0002\u0010\u0089\u0002\u001a\u0006\b\u008a\u0002\u0010\u008b\u0002\"\u0006\b\u008c\u0002\u0010\u008d\u0002¨\u0006\u009d\u0002"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/RichEditor;", "Landroid/webkit/WebView;", "", "i", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "l", "init", "Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;", "createWebviewClient", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "holder", "setEventBusHolder", "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnTextChangeListener", "Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;", "setOnInitialLoadListener", "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;", "editorInitListener", "setEditorInitListener", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getEditorContainer", "", "text", "callback", "state", "stateCheck", "", "postEvent", "name", "path", "reloadFont", "", "sx", "sy", "Landroid/webkit/ValueCallback;", "setScale", "degree", "setRotate", "getEditorContentWidth", "getEditorContentHeight", "getEditorMinWidth", "getEditorMinHeight", "changed", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "onTouchEvent", "Landroid/view/ActionMode$Callback;", "type", "Landroid/view/ActionMode;", "startActionMode", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "sizeInfo", "onEditorSizeChanged", "processLayoutChange", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "getTextRun", "requestEditorLayout", "Landroidx/core/util/Consumer;", "consumer", "adjustEditorLayout", "textBoxView", "contentWidth", "adjustEditorWidth", "contentHeight", "adjustEditorHeight", "editorSize", "viewSize", "sizeChanged", FirebaseInstallationServiceClient.f35986m, WechatLoadWebWidget.ACTION_SYMBOL_REPLACE, "sizeDiff", "clearHtml", "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "args", "enable", "setSizeChangeCallbackEnable", Constants.ELEMNAME_CONTENTS_STRING, "setHtml", "content", "resetHtml", "getHtml", "convert2Simplified", "convert2Traditional", "color", "setEditorFontColor", ExtUnits.UNIT_PX, "setEditorFontSize", Constant.PADDING_TAG, "setPadding", "setEditorPadding", gon.f71290o0, "end", "setPaddingRelative", "setEditorBackgroundColor", "setBackgroundColor", HWREngineConstant.Constant.RES_ID, "setBackgroundResource", "Landroid/graphics/drawable/Drawable;", NotificationCompat.WearableExtender.f5054t, "setBackground", ResourceManager.f46830c, "Landroid/graphics/Bitmap;", "toBitmap", "url", "wrapWidth", "wrapHeight", "resetEditorSize", "setEditorWidth", "wrapContent", "resetEditorWidth", "setEditorHeight", "resetEditorHeight", "width", "height", "setContainerSize", "setContainerWidth", "setContainerHeight", IStyleSheet.CLASS_PLACEHOLDER, "setPlaceholder", "inputEnabled", "setInputEnabled", "setEditAll", "cssFile", "loadCSS", "isVertical", "isReady", "orientation", "setEditorOrientation", gon.f71258K, "fontPath", "setEditorFontFamily", "family", "source", "editAll", "setCustomFontFamilyWithUrl", "setEditorLetterSpacing", "multi", "setEditorLineHeight", "setLineHeight", "undo", "redo", "setBold", "setItalic", "setSubscript", "setSuperscript", "setStrikeThrough", "setUnderline", "setCaretColor", "setTextColor", "setTextBackgroundColor", gon.f71257J, "setFontSize", "removeFormat", "heading", "setHeading", "setParagraph", "setIndent", "setOutdent", "align", "setTextAlign", "setAlignLeft", "setAlignCenter", "setAlignRight", "setAlignJustify", "setBlockquote", "setBullets", "setNumbers", "insertText", "html", "insertFormatText", "alt", "insertImage", "insertVideo", "insertAudio", "insertYoutubeVideo", "href", "title", "insertLink", "insertTodo", "wordsCount", "focusEditor", "clearFocusEditor", "clearEditState", "convertHexColorString", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.CLEAR_ATTRIBUTES, "trigger", "exec", "load", "hasFocus", "dispatchWindowFocusChanged", "subMenuShow", "setSubMenuShow", "movable", "setMovable", "destroyActionMode", "releaseActionMode", "Landroid/view/inputmethod/EditorInfo;", "outAttrs", "Landroid/view/inputmethod/InputConnection;", "onCreateInputConnection", "getInputConnection", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, C6997f.f39671c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "mContents", C6998g.f39679a, "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;", "mTextChangeListener", C6999h.f39688c, "Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;", "mLoadListener", "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;", "Landroidx/core/view/GestureDetectorCompat;", "j", "Landroidx/core/view/GestureDetectorCompat;", "gestureDetector", "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;", C4921e.f26537n, "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;", "gestureListener", "Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;", "Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;", "finishObserver", "m", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", C4921e.f26528e, "I", "p", "q", "r", "Landroid/view/ActionMode;", "actionMode", "s", "Landroid/view/inputmethod/InputConnection;", "inputConnection", "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "t", "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "getMode", "()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "setMode", "(Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;)V", Constants.ATTRNAME_MODE, "Landroid/graphics/RectF;", "u", "Landroid/graphics/RectF;", "getLimitRect", "()Landroid/graphics/RectF;", "setLimitRect", "(Landroid/graphics/RectF;)V", "limitRect", "Lcom/onyx/android/sdk/textbox/data/EditorCursor;", "v", "Lcom/onyx/android/sdk/textbox/data/EditorCursor;", "getCursor", "()Lcom/onyx/android/sdk/textbox/data/EditorCursor;", "setCursor", "(Lcom/onyx/android/sdk/textbox/data/EditorCursor;)V", "cursor", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "AfterInitialLoadListener", "EditorWebViewClient", "OnEditorInitListener", "OnTextChangeListener", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class RichEditor extends WebView {

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isReady;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String mContents;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public OnTextChangeListener mTextChangeListener;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public AfterInitialLoadListener mLoadListener;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public OnEditorInitListener editorInitListener;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public GestureDetectorCompat gestureDetector;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public RichEditorGestureListener gestureListener;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public FinishEventObserver finishObserver;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public EventBusHolder eventBusHolder;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public EditorLayoutInfo sizeInfo;

    /* renamed from: o, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean subMenuShow;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean movable;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public ActionMode actionMode;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public InputConnection inputConnection;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public TextBoxMode mode;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public RectF limitRect;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public EditorCursor cursor;

    /* renamed from: w */
    @NotNull
    public static final String f46774w = "file:///android_asset/richEditor.html";

    /* renamed from: x */
    @NotNull
    public static final String f46775x = "re-callback://";

    /* renamed from: y */
    @NotNull
    public static final String f46776y = "re-state://";

    /* renamed from: z */
    public static final int f46777z = 16;

    /* renamed from: J */
    public static final int f46773J = 18;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;", "", "onAfterInitialLoad", "", "isReady", "", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface AfterInitialLoadListener {
        void onAfterInitialLoad(boolean isReady);
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;", "", "onInitFinish", "", FirebaseAnalytics.Param.SUCCESS, "", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface OnEditorInitListener {
        void onInitFinish(boolean success);
    }

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;", "", "onTextChange", "", "text", "", "onTextSizeChange", "layoutInfo", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface OnTextChangeListener {
        void onTextChange(@Nullable String text);

        void onTextSizeChange(@Nullable EditorLayoutInfo layoutInfo);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RichEditor(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: j */
    public static final void m36166j(PublishSubject subject, String str) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        RxjavaKt.done(subject, String.valueOf(str));
    }

    /* renamed from: k */
    public static final void m36167k(RichEditor this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RichEditorGestureListener richEditorGestureListener = this$0.gestureListener;
        if (richEditorGestureListener != null) {
            richEditorGestureListener.destroyActionMode();
        }
        ActionMode actionMode = this$0.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        this$0.actionMode = null;
    }

    /* renamed from: m */
    public static final void m36168m(RichEditor this$0, String trigger, ValueCallback valueCallback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(trigger, "$trigger");
        this$0.exec(trigger, valueCallback);
    }

    /* renamed from: n */
    public static final void m36169n(PublishSubject subject, String str) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Object parseObject = JSONUtils.INSTANCE.parseObject(str, (Class<Object>) RichTextRun.class);
        Intrinsics.checkNotNull(parseObject);
        RxjavaKt.done(subject, (RichTextRun) parseObject);
    }

    /* renamed from: o */
    public static final void m36170o(RichEditor this$0, String trigger, ValueCallback valueCallback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(trigger, "$trigger");
        Debug debug = Debug.INSTANCE;
        debug.m32035d(this$0.getClass(), "exec js function: " + trigger, new Object[0]);
        if (this$0.getParent() != null) {
            this$0.evaluateJavascript(trigger, valueCallback);
            return;
        }
        debug.m32059w(this$0.getClass(), "exec js function after webView destroy: " + trigger, new Object[0]);
        if (valueCallback != null) {
            valueCallback.onReceiveValue("");
        }
    }

    /* renamed from: p */
    public static final void m36171p(RichEditor this$0, EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sizeInfo, "$sizeInfo");
        this$0.processLayoutChange(sizeInfo);
    }

    /* renamed from: q */
    public static final void m36172q(RichEditor this$0, final Consumer consumer, String value) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(value, "value");
        Debug.INSTANCE.m32035d(this$0.getClass(), "request size info: " + value + ", visible: " + this$0.isShown() + ", orientation: " + this$0.orientation, new Object[0]);
        final EditorLayoutInfo editorLayoutInfo = (EditorLayoutInfo) JSONUtils.INSTANCE.parseObject(JSON.parse(JSONObject.toJSONString(value, new JSONWriter.Feature[0])).toString(), EditorLayoutInfo.class);
        this$0.adjustEditorLayout(editorLayoutInfo);
        if (consumer == null || editorLayoutInfo == null) {
            return;
        }
        this$0.post(new Runnable() { // from class: com.sunia.HTREnginev2.qrl
            @Override // java.lang.Runnable
            public final void run() {
                RichEditor.m36173r(Consumer.this, editorLayoutInfo);
            }
        });
    }

    /* renamed from: r */
    public static final void m36173r(Consumer consumer, EditorLayoutInfo editorLayoutInfo) {
        consumer.accept(editorLayoutInfo);
    }

    public final boolean adjustEditorHeight(@NotNull TextBoxView textBoxView, @NotNull EditorLayoutInfo sizeInfo, int contentHeight) {
        boolean z;
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (getLayoutParams().height == -2 || !sizeChanged(contentHeight, getHeight())) {
            z = false;
        } else {
            textBoxView.updateHeight(contentHeight);
            textBoxView.requestLayout();
            requestLayout();
            z = true;
        }
        if (textBoxView.isTextBoxMoved()) {
            return false;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int min = Math.min(sizeInfo.getContentWidth(context), (int) this.limitRect.width());
        if ((!sizeDiff(min, getWidth()) && (!sizeInfo.getScale() || getMinimumHeight() != 0)) || getLayoutParams().width == -2) {
            return z;
        }
        textBoxView.updateWidth(min);
        textBoxView.requestLayout();
        requestLayout();
        return true;
    }

    public boolean adjustEditorLayout(@Nullable EditorLayoutInfo sizeInfo) {
        if (this.mode != null && sizeInfo != null) {
            Debug debug = Debug.INSTANCE;
            debug.m32035d(getClass(), "adjustEditorLayout: w=" + sizeInfo.getWidth() + ", h=" + sizeInfo.getHeight(), new Object[0]);
            this.sizeInfo = sizeInfo;
            TextBoxView editorContainer = getEditorContainer();
            if (editorContainer != null && !editorContainer.isIdleState() && isShown()) {
                if (isVertical()) {
                    TextBoxMode textBoxMode = this.mode;
                    if (textBoxMode != null) {
                        return textBoxMode.resizeEditorWidth(sizeInfo);
                    }
                    return false;
                }
                TextBoxMode textBoxMode2 = this.mode;
                if (textBoxMode2 != null) {
                    return textBoxMode2.resizeEditorHeight(sizeInfo);
                }
                return false;
            }
            debug.m32059w(getClass(), "adjustEditorLayout after editor state changed!", new Object[0]);
        }
        return false;
    }

    public final boolean adjustEditorWidth(@NotNull TextBoxView textBoxView, @NotNull EditorLayoutInfo sizeInfo, int contentWidth) {
        boolean z;
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (getLayoutParams().width == -2 || !sizeChanged(contentWidth, getWidth())) {
            z = false;
        } else {
            textBoxView.updateWidth(contentWidth);
            textBoxView.requestLayout();
            requestLayout();
            z = true;
        }
        if (textBoxView.isTextBoxMoved()) {
            return false;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int min = Math.min(sizeInfo.getContentHeight(context), (int) this.limitRect.height());
        if ((!sizeDiff(min, getHeight()) && (!sizeInfo.getScale() || getMinimumWidth() != 0)) || getLayoutParams().height == -2) {
            return z;
        }
        textBoxView.updateHeight(min);
        textBoxView.requestLayout();
        requestLayout();
        return true;
    }

    public void callback(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        TextBoxView editorContainer = getEditorContainer();
        if (editorContainer == null || !editorContainer.isOperable()) {
            return;
        }
        String str = this.mContents;
        if (str == null || str.length() == 0) {
            destroyActionMode();
        }
        this.mContents = new Regex(f46775x).replaceFirst(text, "");
        OnTextChangeListener onTextChangeListener = this.mTextChangeListener;
        if (onTextChangeListener != null) {
            Intrinsics.checkNotNull(onTextChangeListener);
            onTextChangeListener.onTextChange(this.mContents);
        }
    }

    public void clear() {
        clearFormData();
        clearCache(false);
        clearView();
        clearHistory();
        clearDisappearingChildren();
        destroyDrawingCache();
        freeMemory();
        this.inputConnection = null;
    }

    @NotNull
    public Observable<String> clearEditState() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        exec("javascript:RE.clearSelectionStatus();javascript:RE.setInputEnabled(false);javascript:RE.blurFocus();", new ValueCallback() { // from class: com.sunia.HTREnginev2.srl
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                RichEditor.m36166j(PublishSubject.this, (String) obj);
            }
        });
        destroyActionMode();
        return create;
    }

    public void clearFocusEditor() {
        exec("javascript:RE.blurFocus();");
    }

    public void clearHtml() {
        if (StringKt.isNotBlank(this.mContents)) {
            setHtml("");
        }
    }

    public void convert2Simplified() {
        exec("RE.changeSlim();");
    }

    public void convert2Traditional() {
        exec("RE.changeTrad();");
    }

    @NotNull
    public String convertHexColorString(int color) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ColorUtils.HEX_CSS_COLOR_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(16777215 & color)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public EditorWebViewClient createWebviewClient() {
        return new EditorWebViewClient();
    }

    public void destroyActionMode() {
        post(new Runnable() { // from class: com.sunia.HTREnginev2.nrl
            @Override // java.lang.Runnable
            public final void run() {
                RichEditor.m36167k(RichEditor.this);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchWindowFocusChanged(boolean hasFocus) {
        if (this.subMenuShow) {
            super.dispatchWindowFocusChanged(false);
        } else {
            super.dispatchWindowFocusChanged(hasFocus);
        }
    }

    public void exec(@NotNull String trigger) {
        Intrinsics.checkNotNullParameter(trigger, "trigger");
        exec(trigger, null);
    }

    public void focusEditor(@Nullable ValueCallback<String> callback) {
        requestFocus();
        exec("javascript:RE.focus();", callback);
    }

    @Nullable
    public final EditorCursor getCursor() {
        return this.cursor;
    }

    @Nullable
    public TextBoxView getEditorContainer() {
        if (getParent() == null) {
            return null;
        }
        ViewParent parent = getParent().getParent().getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type com.onyx.android.sdk.textbox.widget.TextBoxView");
        return (TextBoxView) parent;
    }

    public float getEditorContentHeight() {
        if (this.sizeInfo == null) {
            return getHeight();
        }
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorLayoutInfo editorLayoutInfo = this.sizeInfo;
        Intrinsics.checkNotNull(editorLayoutInfo);
        return textRenderUtil.revertRenderSize(context, editorLayoutInfo.getHeight());
    }

    public float getEditorContentWidth() {
        if (this.sizeInfo == null) {
            return getWidth();
        }
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorLayoutInfo editorLayoutInfo = this.sizeInfo;
        Intrinsics.checkNotNull(editorLayoutInfo);
        return textRenderUtil.revertRenderSize(context, editorLayoutInfo.getWidth());
    }

    public float getEditorMinHeight() {
        if (this.sizeInfo == null) {
            return f46773J;
        }
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorLayoutInfo editorLayoutInfo = this.sizeInfo;
        Intrinsics.checkNotNull(editorLayoutInfo);
        return textRenderUtil.revertRenderSize(context, editorLayoutInfo.getMiniHeight());
    }

    public float getEditorMinWidth() {
        if (this.sizeInfo == null) {
            return f46777z;
        }
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        EditorLayoutInfo editorLayoutInfo = this.sizeInfo;
        Intrinsics.checkNotNull(editorLayoutInfo);
        return textRenderUtil.revertRenderSize(context, editorLayoutInfo.getMiniWidth());
    }

    @Nullable
    /* renamed from: getHtml, reason: from getter */
    public String getMContents() {
        return this.mContents;
    }

    @Nullable
    public InputConnection getInputConnection() {
        return this.inputConnection;
    }

    @NotNull
    public final RectF getLimitRect() {
        return this.limitRect;
    }

    @Nullable
    public final TextBoxMode getMode() {
        return this.mode;
    }

    @Nullable
    public Observable<RichTextRun> getTextRun() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        exec("javascript:RE.getTextRun()", new ValueCallback() { // from class: com.sunia.HTREnginev2.orl
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                RichEditor.m36169n(PublishSubject.this, (String) obj);
            }
        });
        return create;
    }

    /* renamed from: i */
    public final void m36174i() {
        addJavascriptInterface(new Object() { // from class: com.onyx.android.sdk.textbox.widget.RichEditor$addJavascriptInterface$1
            @JavascriptInterface
            public final void onEditorSizeChanged(@NotNull String data) {
                int i;
                Intrinsics.checkNotNullParameter(data, "data");
                TextBoxView editorContainer = RichEditor.this.getEditorContainer();
                if (RichEditor.this.getLimitRect().isEmpty() || editorContainer == null || !editorContainer.isOperable()) {
                    return;
                }
                Debug debug = Debug.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append(data);
                sb.append("， visible: ");
                sb.append(RichEditor.this.isShown());
                sb.append(", orientation: ");
                i = RichEditor.this.orientation;
                sb.append(i);
                sb.append(", state: ");
                sb.append(editorContainer.getEditorState());
                debug.m32038d("RichEditor", sb.toString(), new Object[0]);
                Object parseObject = JSONUtils.INSTANCE.parseObject(data, (Class<Object>) EditorLayoutInfo.class);
                Intrinsics.checkNotNull(parseObject);
                RichEditor.this.onEditorSizeChanged((EditorLayoutInfo) parseObject);
            }

            @JavascriptInterface
            public final void onInitFinish(boolean success) {
                RichEditor.OnEditorInitListener onEditorInitListener;
                onEditorInitListener = RichEditor.this.editorInitListener;
                if (onEditorInitListener != null) {
                    onEditorInitListener.onInitFinish(success);
                }
            }

            @JavascriptInterface
            public final void onLoadFontResult(int code) {
                Debug.INSTANCE.m32038d("RichEditor", "onLoadFontResult: " + code, new Object[0]);
                RichEditor.this.postEvent(new EditorLoadFontResultEvent(code));
            }

            @JavascriptInterface
            public final void onReCallback(@Nullable String content) {
                String decode = Uri.decode(content);
                RichEditor richEditor = RichEditor.this;
                Intrinsics.checkNotNull(decode);
                richEditor.callback(decode);
            }

            @JavascriptInterface
            public final void onReState(@Nullable String content) {
                String decode = Uri.decode(content);
                RichEditor richEditor = RichEditor.this;
                Intrinsics.checkNotNull(decode);
                richEditor.stateCheck(decode);
            }

            @JavascriptInterface
            public final void onRequestFontFamily(@NotNull String data) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (data.length() == 0) {
                    return;
                }
                Debug.INSTANCE.m32038d("RichEditor", "onRequestFontFamily: " + data, new Object[0]);
                RichEditor.this.postEvent(new EditorFontLoadEvent(data));
            }
        }, "editor");
    }

    @SuppressLint({"CheckResult"})
    public void init() {
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setOverScrollMode(2);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAllowFileAccess(true);
        getSettings().setMinimumFontSize(1);
        getSettings().setMinimumLogicalFontSize(1);
        getSettings().setTextZoom(100);
        setWebChromeClient(new WebChromeClient());
        setWebViewClient(createWebviewClient());
        this.gestureListener = new RichEditorGestureListener(this);
        Context context = getContext();
        RichEditorGestureListener richEditorGestureListener = this.gestureListener;
        Intrinsics.checkNotNull(richEditorGestureListener);
        this.gestureDetector = new GestureDetectorCompat(context, richEditorGestureListener);
        m36174i();
        loadUrl(f46774w);
    }

    public void insertAudio(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.insertAudio('" + url + "');");
    }

    public void insertFormatText(@NotNull String html) {
        Intrinsics.checkNotNullParameter(html, "html");
        exec("javascript:RE.insertHTML(`" + html + "`);");
    }

    public void insertImage(@NotNull String url, @NotNull String alt) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(alt, "alt");
        exec("javascript:RE.insertImage('" + url + "', '" + alt + "');");
    }

    public void insertLink(@NotNull String href, @NotNull String title) {
        Intrinsics.checkNotNullParameter(href, "href");
        Intrinsics.checkNotNullParameter(title, "title");
        exec("javascript:RE.insertLink('" + href + "', '" + title + "');");
    }

    public void insertText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        exec("javascript:RE.insertText('" + text + "');");
    }

    public void insertTodo() {
        exec("javascript:RE.setTodo('" + System.currentTimeMillis() + "');");
    }

    public void insertVideo(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.insertVideo('" + url + "');");
    }

    public void insertYoutubeVideo(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.insertYoutubeVideo('" + url + "');");
    }

    /* renamed from: isReady, reason: from getter */
    public boolean getIsReady() {
        return this.isReady;
    }

    public boolean isVertical() {
        return this.orientation != 0;
    }

    /* renamed from: l */
    public final boolean m36175l(MotionEvent event) {
        TextBoxView editorContainer = getEditorContainer();
        return editorContainer != null ? editorContainer.isEditing() : false ? this.movable && !MotionEventKt.isStylusTouchType(event) : this.movable;
    }

    public void load(@NotNull final String trigger, @Nullable final ValueCallback<String> callback) {
        Intrinsics.checkNotNullParameter(trigger, "trigger");
        post(new Runnable() { // from class: com.sunia.HTREnginev2.prl
            @Override // java.lang.Runnable
            public final void run() {
                RichEditor.m36170o(RichEditor.this, trigger, callback);
            }
        });
    }

    public void loadCSS(@NotNull String cssFile) {
        Intrinsics.checkNotNullParameter(cssFile, "cssFile");
        exec("javascript:" + ("(function() {    var head  = document.getElementsByTagName(\"head\")[0];    var link  = document.createElement(\"link\");    link.rel  = \"stylesheet\";    link.type = \"text/css\";    link.href = \"" + cssFile + "\";    link.media = \"all\";    head.appendChild(link);}) ();"));
    }

    @Override // android.webkit.WebView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@Nullable EditorInfo outAttrs) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(outAttrs);
        this.inputConnection = onCreateInputConnection;
        return onCreateInputConnection;
    }

    public void onEditorSizeChanged(@NotNull final EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        post(new Runnable() { // from class: com.sunia.HTREnginev2.mrl
            @Override // java.lang.Runnable
            public final void run() {
                RichEditor.m36171p(RichEditor.this, sizeInfo);
            }
        });
    }

    @Override // android.widget.AbsoluteLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            Debug.INSTANCE.m32035d(getClass(), "onLayout: " + left + ", " + top + ", " + right + ", " + bottom, new Object[0]);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        GestureDetectorCompat gestureDetectorCompat;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m36175l(event) && (gestureDetectorCompat = this.gestureDetector) != null && this.gestureListener != null) {
            if (gestureDetectorCompat != null) {
                gestureDetectorCompat.onTouchEvent(event);
            }
            if (event.getAction() == 0) {
                RxTimerUtil.INSTANCE.cancel(this.finishObserver);
            } else if (event.getAction() == 1 || event.getAction() == 3) {
                if (Build.VERSION.SDK_INT > 29) {
                    RichEditorGestureListener richEditorGestureListener = this.gestureListener;
                    Intrinsics.checkNotNull(richEditorGestureListener);
                    FinishEventObserver finishEventObserver = new FinishEventObserver(richEditorGestureListener);
                    this.finishObserver = finishEventObserver;
                    Intrinsics.checkNotNull(finishEventObserver);
                    MotionEvent obtain = MotionEvent.obtain(event);
                    Intrinsics.checkNotNullExpressionValue(obtain, "obtain(...)");
                    finishEventObserver.setEvent(obtain);
                    RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
                    FinishEventObserver finishEventObserver2 = this.finishObserver;
                    Intrinsics.checkNotNull(finishEventObserver2);
                    rxTimerUtil.timer(5L, finishEventObserver2);
                } else {
                    RichEditorGestureListener richEditorGestureListener2 = this.gestureListener;
                    if (richEditorGestureListener2 != null) {
                        richEditorGestureListener2.onFinish(event);
                    }
                }
            }
        } else if (event.getAction() == 0) {
            destroyActionMode();
        }
        return super.onTouchEvent(event);
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventBusHolder eventBusHolder = this.eventBusHolder;
        if (eventBusHolder != null) {
            eventBusHolder.safelyPostEvent(event);
        }
    }

    public void processLayoutChange(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (adjustEditorLayout(sizeInfo) && isShown()) {
            OnTextChangeListener onTextChangeListener = this.mTextChangeListener;
            Intrinsics.checkNotNull(onTextChangeListener);
            onTextChangeListener.onTextSizeChange(sizeInfo);
        }
    }

    public void redo() {
        exec("javascript:RE.redo();");
    }

    public void releaseActionMode() {
        this.actionMode = null;
    }

    public final void reloadFont(@NotNull final String name, @NotNull final String path) {
        List listOf;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(path, "path");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new Object(name, path) { // from class: com.onyx.android.sdk.textbox.widget.RichEditor$reloadFont$args$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final String family;

            /* renamed from: b, reason: from kotlin metadata */
            @NotNull
            public final String url;

            {
                this.family = name;
                this.url = path;
            }

            @NotNull
            public final String getFamily() {
                return this.family;
            }

            @NotNull
            public final String getUrl() {
                return this.url;
            }
        });
        exec("javascript:RE.loadFonts(" + JSONUtils.INSTANCE.toJson(listOf) + ')');
    }

    public void removeFormat() {
        exec("javascript:RE.removeFormat();");
    }

    public void requestEditorLayout() {
        requestEditorLayout(null);
    }

    public void resetEditorHeight(boolean wrapContent) {
        if (wrapContent) {
            exec("javascript:RE.setHeight('auto');");
        } else {
            exec("javascript:RE.setHeight('100%');");
        }
    }

    public void resetEditorSize(boolean wrapWidth, boolean wrapHeight) {
        exec("javascript:RE.setEditorSize('" + (wrapWidth ? "auto" : XWPFTable.DEFAULT_PERCENTAGE_WIDTH) + "', '" + (wrapHeight ? "auto" : XWPFTable.DEFAULT_PERCENTAGE_WIDTH) + "');");
    }

    public void resetEditorWidth(boolean wrapContent) {
        if (wrapContent) {
            exec("javascript:RE.setWidth('auto');");
        } else {
            exec("javascript:RE.setWidth('100%');");
        }
    }

    public void resetHtml(@Nullable String content) {
        exec("javascript:RE.backupcursor();");
        setHtml(content);
        exec("javascript:RE.restorecursor();");
    }

    public void setAlignCenter() {
        exec("javascript:RE.setJustifyCenter();");
    }

    public void setAlignJustify() {
        exec("javascript:RE.setJustifyFull();");
    }

    public void setAlignLeft() {
        exec("javascript:RE.setJustifyLeft();");
    }

    public void setAlignRight() {
        exec("javascript:RE.setJustifyRight();");
    }

    @Override // android.view.View
    public void setBackground(@NotNull Drawable background) {
        Intrinsics.checkNotNullParameter(background, "background");
        Bitmap bitmap = toBitmap(background);
        String valueOf = String.valueOf(BitmapKt.encodeToBase64$default(bitmap, 0, 1, null));
        bitmap.recycle();
        exec("javascript:RE.setBackgroundImage('url(data:image/png;base64," + valueOf + ")');");
    }

    @Override // android.webkit.WebView, android.view.View
    public void setBackgroundColor(int color) {
        super.setBackgroundColor(color);
    }

    @Override // android.view.View
    public void setBackgroundResource(int resId) {
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), resId);
        Intrinsics.checkNotNull(decodeResource);
        String valueOf = String.valueOf(BitmapKt.encodeToBase64$default(decodeResource, 0, 1, null));
        decodeResource.recycle();
        exec("javascript:RE.setBackgroundImage('url(data:image/png;base64," + valueOf + ")');");
    }

    public void setBlockquote() {
        exec("javascript:RE.setBlockquote();");
    }

    public void setBold(boolean editAll) {
        exec("javascript:RE.setBold(" + editAll + ");");
    }

    public void setBullets() {
        exec("javascript:RE.setBullets();");
    }

    public void setCaretColor(int color) {
        exec("javascript:RE.setCaretColor('" + convertHexColorString(color) + "');");
    }

    public void setContainerHeight(int px) {
        exec("javascript:RE.setContainerHeight('" + px + "px');");
    }

    public void setContainerSize(int width, int height) {
        exec("javascript:RE.setContainerSize('" + width + "px', '" + height + "px');");
    }

    public void setContainerWidth(int px) {
        setContainerWidth(px, null);
    }

    public final void setCursor(@Nullable EditorCursor editorCursor) {
        this.cursor = editorCursor;
    }

    public void setCustomFontFamilyWithUrl(@NotNull String family, @NotNull String url, @NotNull String source, boolean editAll) {
        Intrinsics.checkNotNullParameter(family, "family");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(source, "source");
        exec("javascript:RE.setCustomFontFamilyWithUrl(`" + family + "`, `" + url + "`, '" + source + "', '', " + editAll + ')');
    }

    public final void setEditAll() {
        exec("javascript:RE.enabledEditingItems()");
    }

    public void setEditorBackgroundColor(int color) {
        setBackgroundColor(color);
    }

    public void setEditorFontColor(int color) {
        exec("javascript:RE.setBaseTextColor('" + convertHexColorString(color) + "');");
    }

    public void setEditorFontFamily(@NotNull String fontFamily, @NotNull String fontPath) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontPath, "fontPath");
        if (fontFamily.length() == 0) {
            exec("javascript:RE.setBaseFontFamily('', '');");
            return;
        }
        exec("javascript:RE.setBaseFontFamily('" + fontFamily + "', 'file://" + fontPath + "');");
    }

    public void setEditorFontSize(float px) {
        exec("javascript:RE.setBaseFontSize('" + px + "px');");
    }

    public void setEditorHeight(int px) {
        exec("javascript:RE.setHeight('" + px + "px');");
    }

    public void setEditorInitListener(@Nullable OnEditorInitListener editorInitListener) {
        this.editorInitListener = editorInitListener;
    }

    public void setEditorLetterSpacing(int px) {
        exec("javascript:RE.setBaseLetterSpacing('" + px + "px');");
    }

    public void setEditorLineHeight(float multi) {
        exec("javascript:RE.setBaseLineHeight('" + multi + "');");
    }

    public void setEditorOrientation(int orientation) {
        this.orientation = orientation;
        exec("javascript:RE.setBaseOrientation('" + orientation + "');");
    }

    public void setEditorPadding(float left, float top, float right, float bottom) {
        exec("javascript:RE.setPadding('" + left + "px', '" + top + "px', '" + right + "px', '" + bottom + "px');");
    }

    public void setEditorWidth(int px) {
        exec("javascript:RE.setWidth('" + px + "px');");
    }

    public void setEventBusHolder(@Nullable EventBusHolder holder) {
        this.eventBusHolder = holder;
    }

    public void setFontSize(float fontSize, boolean editAll) {
        exec("javascript:RE.setFontSize('" + fontSize + "px', " + editAll + ");");
    }

    public void setHeading(int heading) {
        exec("javascript:RE.setHeading('" + heading + "');");
    }

    public void setHtml(@Nullable String contents) {
        setHtml(contents, null);
    }

    public void setIndent() {
        exec("javascript:RE.setIndent();");
    }

    public void setInputEnabled(boolean inputEnabled, @Nullable ValueCallback<String> callback) {
        exec("javascript:RE.setInputEnabled(" + inputEnabled + ')', callback);
        destroyActionMode();
    }

    public void setItalic(boolean editAll) {
        exec("javascript:RE.setItalic(" + editAll + ");");
    }

    public final void setLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.limitRect = rectF;
    }

    public void setLineHeight(float multi) {
        exec("javascript:RE.setLineHeight('" + multi + "');");
    }

    public final void setMode(@Nullable TextBoxMode textBoxMode) {
        this.mode = textBoxMode;
    }

    public void setMovable(boolean movable) {
        this.movable = movable;
    }

    public void setNumbers() {
        exec("javascript:RE.setNumbers();");
    }

    public void setOnInitialLoadListener(@Nullable AfterInitialLoadListener listener) {
        this.mLoadListener = listener;
    }

    public void setOnTextChangeListener(@Nullable OnTextChangeListener listener) {
        this.mTextChangeListener = listener;
    }

    public void setOutdent() {
        exec("javascript:RE.setOutdent();");
    }

    public void setPadding(int padding) {
        setPadding(padding, padding, padding, padding);
    }

    @Override // android.view.View
    public void setPaddingRelative(int start, int top, int end, int bottom) {
        setPadding(start, top, end, bottom);
    }

    public void setParagraph() {
        exec("javascript:RE.setParagraph();");
    }

    public void setPlaceholder(@NotNull String placeholder) {
        Intrinsics.checkNotNullParameter(placeholder, "placeholder");
        exec("javascript:RE.setPlaceholder('" + placeholder + "');");
    }

    public void setRotate(float degree) {
        if (degree == 0.0f) {
            exec("javascript:RE.setBaseTransform(\"none\")");
            return;
        }
        exec("javascript:RE.setBaseTransform(\"rotate(" + degree + "deg)\", \"center\")");
    }

    public void setScale(float sx, float sy, @Nullable ValueCallback<String> callback) {
        Debug.INSTANCE.m32035d(getClass(), "sx=" + sx + ", sy=" + sy, new Object[0]);
        exec("javascript:RE.setScale(" + sx + ", " + sy + ')', callback);
    }

    public void setSizeChangeCallbackEnable(boolean enable) {
        exec("RE.enableResizeCallback(" + enable + ')');
    }

    public void setStrikeThrough() {
        exec("javascript:RE.setStrikeThrough();");
    }

    public void setSubMenuShow(boolean subMenuShow) {
        this.subMenuShow = subMenuShow;
        dispatchWindowFocusChanged(!subMenuShow);
    }

    public void setSubscript() {
        exec("javascript:RE.setSubscript();");
    }

    public void setSuperscript() {
        exec("javascript:RE.setSuperscript();");
    }

    public void setTextAlign(@NotNull String align) {
        Intrinsics.checkNotNullParameter(align, "align");
        exec("javascript:RE.setContainerTextAlign(`" + align + "`);");
    }

    public void setTextBackgroundColor(int color) {
        exec("javascript:RE.setTextBackgroundColor('" + convertHexColorString(color) + "');");
    }

    public void setTextColor(int color, boolean editAll) {
        exec("javascript:RE.setTextColor('" + convertHexColorString(color) + "', " + editAll + ");");
    }

    public void setUnderline(boolean editAll) {
        exec("javascript:RE.setUnderline(" + editAll + ");");
    }

    public boolean sizeChanged(int editorSize, int viewSize) {
        return Math.abs(editorSize - viewSize) > 1;
    }

    public boolean sizeDiff(int v1, int v2) {
        return v1 - v2 > 1;
    }

    @Override // android.view.View
    @Nullable
    public ActionMode startActionMode(@Nullable ActionMode.Callback callback, int type) {
        Intrinsics.checkNotNull(callback);
        ActionMode startActionMode = super.startActionMode(new ActionModeCallbackWrapper(this, callback), type);
        this.actionMode = startActionMode;
        return startActionMode;
    }

    public void stateCheck(@NotNull String state) {
        EditorStyleInfo editorStyleInfo;
        Intrinsics.checkNotNullParameter(state, "state");
        Debug.INSTANCE.m32035d(getClass(), "state: " + state, new Object[0]);
        TextBoxView editorContainer = getEditorContainer();
        boolean isOperable = editorContainer != null ? editorContainer.isOperable() : false;
        if (isShown() && isOperable && (editorStyleInfo = (EditorStyleInfo) JSONUtils.INSTANCE.parseObject(state, EditorStyleInfo.class)) != null) {
            this.cursor = editorStyleInfo.getCursor();
            editorStyleInfo.setLineHeight(String.valueOf(TextRenderUtil.INSTANCE.revertLineHeight(editorStyleInfo.getLineHeight())));
            postEvent(new SelectionChangeEvent(editorStyleInfo));
        }
    }

    @NotNull
    public Bitmap toBitmap(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            Intrinsics.checkNotNullExpressionValue(bitmap, "getBitmap(...)");
            return bitmap;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = 1;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight > 0 ? intrinsicHeight : 1, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public void undo() {
        exec("javascript:RE.undo();");
    }

    public void wordsCount() {
        exec("javascript:RE.wordsCount();");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RichEditor(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public void exec(@NotNull final String trigger, @Nullable final ValueCallback<String> callback) {
        Intrinsics.checkNotNullParameter(trigger, "trigger");
        if (this.isReady) {
            load(trigger, callback);
        } else {
            postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.lrl
                @Override // java.lang.Runnable
                public final void run() {
                    RichEditor.m36168m(RichEditor.this, trigger, callback);
                }
            }, 100L);
        }
    }

    public void insertImage(@NotNull String url, @NotNull String alt, int width) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(alt, "alt");
        exec("javascript:RE.insertImageW('" + url + "', '" + alt + "','" + width + "');");
    }

    public void insertVideo(@NotNull String url, int width) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.insertVideoW('" + url + "', '" + width + "');");
    }

    public void insertYoutubeVideo(@NotNull String url, int width) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.insertYoutubeVideoW('" + url + "', '" + width + "');");
    }

    public void requestEditorLayout(@Nullable final Consumer<EditorLayoutInfo> consumer) {
        exec("javascript:RE.getEditorSize()", new ValueCallback() { // from class: com.sunia.HTREnginev2.rrl
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                RichEditor.m36172q(RichEditor.this, consumer, (String) obj);
            }
        });
    }

    public void setContainerWidth(int px, @Nullable ValueCallback<String> callback) {
        exec("javascript:RE.setContainerWidth('" + px + "px');", callback);
    }

    public void setHtml(@Nullable String contents, @Nullable ValueCallback<String> callback) {
        if (contents == null) {
            contents = "";
        }
        exec("javascript:RE.setHtml(`" + contents + "`);", callback);
        this.mContents = contents;
    }

    @Override // android.view.View
    public void setPadding(int left, int top, int right, int bottom) {
        super.setPadding(left, top, right, bottom);
        exec("javascript:RE.setPadding('" + left + "px', '" + top + "px', '" + right + "px', '" + bottom + "px');");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RichEditor(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.webViewStyle);
        Intrinsics.checkNotNullParameter(context, "context");
        this.movable = true;
        this.limitRect = new RectF();
        init();
    }

    public void insertImage(@NotNull String url, @NotNull String alt, int width, int height) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(alt, "alt");
        exec("javascript:RE.insertImageWH('" + url + "', '" + alt + "','" + width + "', '" + height + "');");
    }

    public void insertVideo(@NotNull String url, int width, int height) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.insertVideoWH('" + url + "', '" + width + "', '" + height + "');");
    }

    public void insertYoutubeVideo(@NotNull String url, int width, int height) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.insertYoutubeVideoWH('" + url + "', '" + width + "', '" + height + "');");
    }

    public void setBackground(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        exec("javascript:RE.setBackgroundImage('url(" + url + ")');");
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0084\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0017J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;", "Landroid/webkit/WebViewClient;", "(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V", "onPageFinished", "", "view", "Landroid/webkit/WebView;", "url", "", "shouldOverrideUrlLoading", "", AbstractLogger.REQUEST, "Landroid/webkit/WebResourceRequest;", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public final class EditorWebViewClient extends WebViewClient {
        public EditorWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@NotNull WebView view, @NotNull String url) {
            boolean equals;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            RichEditor richEditor = RichEditor.this;
            equals = StringsKt__StringsJVMKt.equals(url, RichEditor.f46774w, true);
            richEditor.isReady = equals;
            AfterInitialLoadListener afterInitialLoadListener = RichEditor.this.mLoadListener;
            if (afterInitialLoadListener != null) {
                afterInitialLoadListener.onAfterInitialLoad(RichEditor.this.isReady);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@NotNull WebView view, @NotNull String url) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            String decode = Uri.decode(url);
            if (TextUtils.indexOf(url, RichEditor.f46775x) == 0) {
                RichEditor richEditor = RichEditor.this;
                Intrinsics.checkNotNull(decode);
                richEditor.callback(decode);
                return true;
            }
            if (TextUtils.indexOf(url, RichEditor.f46776y) == 0) {
                RichEditor richEditor2 = RichEditor.this;
                Intrinsics.checkNotNull(decode);
                richEditor2.stateCheck(decode);
                return true;
            }
            return super.shouldOverrideUrlLoading(view, url);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(21)
        public boolean shouldOverrideUrlLoading(@NotNull WebView view, @NotNull WebResourceRequest request) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(request, "request");
            String uri = request.getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            String decode = Uri.decode(uri);
            if (TextUtils.indexOf(uri, RichEditor.f46775x) == 0) {
                RichEditor richEditor = RichEditor.this;
                Intrinsics.checkNotNull(decode);
                richEditor.callback(decode);
                return true;
            }
            if (TextUtils.indexOf(uri, RichEditor.f46776y) == 0) {
                RichEditor richEditor2 = RichEditor.this;
                Intrinsics.checkNotNull(decode);
                richEditor2.stateCheck(decode);
                return true;
            }
            return super.shouldOverrideUrlLoading(view, request);
        }
    }

    public void init(@NotNull TextBoxInitArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        EditorInputData editorInputData = new EditorInputData();
        editorInputData.addAction("setBaseOrientation", Integer.valueOf(args.getOrientation()));
        editorInputData.addAction("setContainerTextAlign", args.getAlignType());
        editorInputData.addAction("setBaseFontFamily", args.getFontFamily(), args.getFontPath());
        editorInputData.addAction("setBaseFontSize", args.getFontSize() + ExtUnits.UNIT_PX);
        TextRenderUtil textRenderUtil = TextRenderUtil.INSTANCE;
        editorInputData.addAction("setBaseLineHeight", Float.valueOf(textRenderUtil.getLineHeight(args.getLineHeight())));
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RectF renderRect = args.getRenderRect();
        Intrinsics.checkNotNull(renderRect);
        float renderSize = textRenderUtil.getRenderSize(context, renderRect.width() / args.getScaleX());
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        RectF renderRect2 = args.getRenderRect();
        Intrinsics.checkNotNull(renderRect2);
        float renderSize2 = textRenderUtil.getRenderSize(context2, renderRect2.height() / args.getScaleY());
        editorInputData.addAction("setContainerSize", renderSize + ExtUnits.UNIT_PX, renderSize2 + ExtUnits.UNIT_PX);
        editorInputData.addAction("setScale", Float.valueOf(args.getScaleX()), Float.valueOf(args.getScaleY()));
        editorInputData.content = args.getContent();
        exec("RE.init(" + editorInputData.toJson() + ')');
        this.mContents = args.getContent();
        this.cursor = null;
    }
}

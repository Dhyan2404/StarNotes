package com.onyx.android.sdk.reader.cbox;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.api.PaginationChapterInfo;
import com.onyx.android.sdk.reader.api.ReaderChineseConvertType;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderHitTestArgs;
import com.onyx.android.sdk.reader.api.ReaderHitTestOptions;
import com.onyx.android.sdk.reader.api.ReaderImage;
import com.onyx.android.sdk.reader.api.ReaderPageProgressionDirection;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSearchOptions;
import com.onyx.android.sdk.reader.api.ReaderSearchProgressCallback;
import com.onyx.android.sdk.reader.api.ReaderSelectTextArgs;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderSentence;
import com.onyx.android.sdk.reader.api.ReaderTextSplitter;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.onyx.android.sdk.reader.cbox.CBoxDocument;
import com.onyx.android.sdk.reader.cbox.page.BookManager;
import com.onyx.android.sdk.reader.cbox.page.CBoxDataOnScreen;
import com.onyx.android.sdk.reader.cbox.page.LayoutChapter;
import com.onyx.android.sdk.reader.cbox.page.PaginationInfo;
import com.onyx.android.sdk.reader.cbox.page.PositionHandler;
import com.onyx.android.sdk.reader.cbox.page.ScreenDataLruCache;
import com.onyx.android.sdk.reader.cbox.utils.CBoxTextStyleUtils;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.android.sdk.reader.cbox.utils.LinkInfoUtils;
import com.onyx.android.sdk.reader.extension.ReaderPositionImplKt;
import com.onyx.android.sdk.reader.impl.ReaderImageImpl;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl;
import com.onyx.android.sdk.reader.plugins.internal.PluginPositionUtils;
import com.onyx.android.sdk.reader.utils.ReaderSelectionUtils;
import com.onyx.android.sdk.readercore.BuildConfig;
import com.onyx.android.sdk.readercore.C7592R;
import com.onyx.engine.sdk.BookOpenResult;
import com.onyx.engine.sdk.CellOfScreen;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.DisplayMetrics;
import com.onyx.engine.sdk.FontSpec;
import com.onyx.engine.sdk.ImageInfo;
import com.onyx.engine.sdk.LinkInfo;
import com.onyx.engine.sdk.LinkType;
import com.onyx.engine.sdk.NeoBaseNative;
import com.onyx.engine.sdk.OpenOptions;
import com.onyx.engine.sdk.PageInfo;
import com.onyx.engine.sdk.PageRange;
import com.onyx.engine.sdk.PinPosition;
import com.onyx.engine.sdk.Resource;
import com.onyx.engine.sdk.SearchOptions;
import com.onyx.engine.sdk.SearchResult;
import com.onyx.engine.sdk.TableOfContent;
import com.onyx.engine.sdk.TableOfContentEntry;
import com.onyx.engine.sdk.TextRun;
import com.onyx.engine.sdk.WritingMode;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009c\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 Ç\u00022\u00020\u0001:\u0002Ç\u0002B\u0015\b\u0016\u0012\b\u0010¥\u0002\u001a\u00030\u0091\u0001¢\u0006\u0006\bÄ\u0002\u0010Å\u0002B\u001f\b\u0016\u0012\b\u0010¥\u0002\u001a\u00030\u0091\u0001\u0012\b\u0010\u009a\u0001\u001a\u00030\u0099\u0001¢\u0006\u0006\bÄ\u0002\u0010Æ\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\tH\u0002J\u0014\u0010\u001d\u001a\u00020\u00042\n\u0010\u001c\u001a\u00060\u001aj\u0002`\u001bH\u0002J\u0014\u0010\u001e\u001a\u00020\u00042\n\u0010\u001c\u001a\u00060\u001aj\u0002`\u001bH\u0002J\b\u0010 \u001a\u00020\u001fH\u0002J\b\u0010!\u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u000bH\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010$\u001a\u00020\u0006H\u0002J\b\u0010%\u001a\u00020\u0006H\u0002J\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020)0&2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020'0&H\u0002J\u001e\u0010/\u001a\b\u0012\u0004\u0012\u00020.0&2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u0002H\u0002J,\u00102\u001a\b\u0012\u0004\u0012\u00020.0&2\f\u00101\u001a\b\u0012\u0004\u0012\u0002000&2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u001e\u00103\u001a\b\u0012\u0004\u0012\u00020'0&2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u0016\u00104\u001a\b\u0012\u0004\u0012\u00020)0&2\u0006\u0010,\u001a\u00020+H\u0002J,\u00109\u001a\b\u0012\u0004\u0012\u00020)0&2\f\u00106\u001a\b\u0012\u0004\u0012\u0002050&2\u0006\u0010,\u001a\u00020+2\u0006\u00108\u001a\u000207H\u0002J\b\u0010:\u001a\u00020\u0004H\u0002J\b\u0010;\u001a\u00020\tH\u0002J\u0010\u0010>\u001a\u00020\u00062\u0006\u0010=\u001a\u00020<H\u0002J\b\u0010?\u001a\u00020\u0006H\u0002J \u0010C\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u0006H\u0002J\u0010\u0010F\u001a\u00020D2\u0006\u0010E\u001a\u00020DH\u0002J\b\u0010G\u001a\u00020\u0006H\u0002J\u0018\u0010J\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020.H\u0002J\u0010\u0010L\u001a\u00020\u00022\u0006\u0010K\u001a\u00020DH\u0002J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010M\u001a\u00020DH\u0002J\u0010\u0010O\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DH\u0002J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DH\u0002J\u001e\u0010T\u001a\u0004\u0018\u00010S2\b\u0010Q\u001a\u0004\u0018\u00010.2\b\u0010R\u001a\u0004\u0018\u00010.H\u0002J(\u0010X\u001a\u00020\u00042\u0006\u0010I\u001a\u00020.2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u001a2\u0006\u0010W\u001a\u00020VH\u0002J\u0010\u0010Z\u001a\u00020Y2\u0006\u0010M\u001a\u00020DH\u0002J\u0018\u0010[\u001a\u00020Y2\u0006\u0010M\u001a\u00020<2\u0006\u0010K\u001a\u00020<H\u0002J\u0018\u0010\\\u001a\u00020Y2\u0006\u0010M\u001a\u00020D2\u0006\u0010K\u001a\u00020DH\u0002J$\u0010a\u001a\u00020\u00042\f\u0010_\u001a\b\u0012\u0004\u0012\u00020^0]2\f\u0010`\u001a\b\u0012\u0004\u0012\u00020)0&H\u0002J\u0018\u0010b\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u0018\u0010c\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u0002H\u0002J\u0010\u0010e\u001a\u00020\u00022\u0006\u0010d\u001a\u00020\u0002H\u0002J\u0012\u0010h\u001a\u0004\u0018\u00010\u000f2\u0006\u0010g\u001a\u00020fH\u0002J\u0012\u0010k\u001a\u0004\u0018\u00010'2\u0006\u0010j\u001a\u00020iH\u0002J\b\u0010l\u001a\u00020\u000bH\u0002J\u0012\u0010m\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010n\u001a\u00020\u000bH\u0002J\n\u0010o\u001a\u0004\u0018\u00010\u000bH\u0002J\n\u0010p\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010q\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010<H\u0002J\b\u0010r\u001a\u00020\u0004H\u0002J\b\u0010s\u001a\u00020\u0006H\u0002J\u0018\u0010x\u001a\u00020\u00042\u0006\u0010u\u001a\u00020t2\u0006\u0010w\u001a\u00020vH\u0002J\u0010\u0010{\u001a\u00020S2\u0006\u0010z\u001a\u00020yH\u0002J\u0012\u0010}\u001a\u00020\t2\b\u0010|\u001a\u0004\u0018\u00010\tH\u0002J\u0018\u0010~\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020+2\u0006\u0010\u0015\u001a\u00020+H\u0002J\u001a\u0010\u007f\u001a\u0004\u0018\u00010.2\u0006\u0010E\u001a\u00020D2\u0006\u0010R\u001a\u00020\u0006H\u0002J\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010.2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J3\u0010\u0083\u0001\u001a\u0004\u0018\u00010.2\r\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020.0&2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00022\u0007\u0010\u0082\u0001\u001a\u00020+H\u0002J\u001a\u0010\u0085\u0001\u001a\u00020.2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u001a\u0010\u0086\u0001\u001a\u00020.2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u001a\u0010\u0087\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u001a\u0010\u0088\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u0002H\u0002J\u000f\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020V0&H\u0002J\u0013\u0010\u008a\u0001\u001a\u0004\u0018\u00010.2\u0006\u0010M\u001a\u00020DH\u0002J\u0011\u0010\u008b\u0001\u001a\u00020^2\u0006\u0010I\u001a\u00020.H\u0002J\u0012\u0010\u008f\u0001\u001a\u00030\u008e\u00012\b\u0010\u008d\u0001\u001a\u00030\u008c\u0001J\u001b\u0010\u008f\u0001\u001a\u00030\u008e\u00012\b\u0010\u008d\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u0090\u0001\u001a\u00020\tJ\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001J\u0007\u0010\u0093\u0001\u001a\u00020\tJ\b\u0010\u0095\u0001\u001a\u00030\u0094\u0001J\u0019\u0010\u0098\u0001\u001a\u00020\u00042\u0007\u0010\u0096\u0001\u001a\u00020\u00022\u0007\u0010\u0097\u0001\u001a\u00020\u0002J\u0011\u0010\u009b\u0001\u001a\u00020\u00042\b\u0010\u009a\u0001\u001a\u00030\u0099\u0001J\b\u0010\u009d\u0001\u001a\u00030\u009c\u0001J\u0007\u0010\u009e\u0001\u001a\u00020\u0004J\u0011\u0010¡\u0001\u001a\u00020\u00042\b\u0010 \u0001\u001a\u00030\u009f\u0001J\u0010\u0010£\u0001\u001a\u00020\t2\u0007\u0010¢\u0001\u001a\u00020\tJ\t\u0010¤\u0001\u001a\u0004\u0018\u00010\tJ\u0011\u0010§\u0001\u001a\u00020\u00042\b\u0010¦\u0001\u001a\u00030¥\u0001J\u0010\u0010©\u0001\u001a\u00020\u00042\u0007\u0010¨\u0001\u001a\u00020+J\u001c\u0010\u00ad\u0001\u001a\u00020\u00042\u0007\u0010ª\u0001\u001a\u00020\u00022\n\u0010¬\u0001\u001a\u0005\u0018\u00010«\u0001J\b\u0010®\u0001\u001a\u00030\u009f\u0001J\b\u0010°\u0001\u001a\u00030¯\u0001J\b\u0010±\u0001\u001a\u00030\u009f\u0001J\u0007\u0010²\u0001\u001a\u00020\u0006J\u0011\u0010³\u0001\u001a\u00020\u00042\b\u0010 \u0001\u001a\u00030\u009f\u0001J\u000f\u0010´\u0001\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010¶\u0001\u001a\u000b\u0012\u0005\u0012\u00030µ\u0001\u0018\u00010&J\u0007\u0010·\u0001\u001a\u00020\tJ\u0017\u0010¸\u0001\u001a\u00020\t2\u0006\u0010M\u001a\u00020D2\u0006\u0010K\u001a\u00020DJ\r\u0010¹\u0001\u001a\b\u0012\u0004\u0012\u00020\t0&J\u0012\u0010»\u0001\u001a\u0005\u0018\u00010º\u00012\u0006\u0010M\u001a\u00020DJ\n\u0010¼\u0001\u001a\u0005\u0018\u00010º\u0001J\r\u0010½\u0001\u001a\b\u0012\u0004\u0012\u00020^0&J\u0012\u0010¿\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010¾\u0001\u001a\u00020^J\r\u0010À\u0001\u001a\b\u0012\u0004\u0012\u00020i0&J\u0017\u0010Á\u0001\u001a\u00020\u00062\u0006\u0010E\u001a\u00020D2\u0006\u0010d\u001a\u00020\u0002J\u0019\u0010Â\u0001\u001a\u0004\u0018\u00010i2\u0006\u0010E\u001a\u00020D2\u0006\u0010d\u001a\u00020\u0002J\t\u0010Ã\u0001\u001a\u0004\u0018\u00010\u000fJ\u0011\u0010Ä\u0001\u001a\u0004\u0018\u00010\u000f2\u0006\u0010j\u001a\u00020iJ\u0007\u0010Å\u0001\u001a\u00020\u0002J\u0007\u0010Æ\u0001\u001a\u00020\u0002J\u0007\u0010Ç\u0001\u001a\u00020\u0002J\u0007\u0010È\u0001\u001a\u00020DJ\u0007\u0010É\u0001\u001a\u00020DJ\u0007\u0010Ê\u0001\u001a\u00020DJ\u0011\u0010Ë\u0001\u001a\u00020<2\b\u0010E\u001a\u0004\u0018\u00010DJ\u0007\u0010Ì\u0001\u001a\u00020<J\u0007\u0010Í\u0001\u001a\u00020<J\u0007\u0010Î\u0001\u001a\u00020\u0002J\u0007\u0010Ï\u0001\u001a\u00020\u0006J\u0007\u0010Ð\u0001\u001a\u00020\u0006J\u0007\u0010Ñ\u0001\u001a\u00020\u0006J\u0007\u0010Ò\u0001\u001a\u00020\u0006J\u000f\u0010Ó\u0001\u001a\u00020\u00062\u0006\u0010=\u001a\u00020DJ\u000f\u0010Ó\u0001\u001a\u00020\u00062\u0006\u0010=\u001a\u00020<J\u000f\u0010Ô\u0001\u001a\u00020\u00062\u0006\u0010E\u001a\u00020DJ\u0010\u0010Ö\u0001\u001a\u00020\u00062\u0007\u0010Õ\u0001\u001a\u00020\u0002J\u0010\u0010×\u0001\u001a\u00020D2\u0007\u0010Õ\u0001\u001a\u00020\u0002J\u000f\u0010Ø\u0001\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DJ\u000f\u0010Ø\u0001\u001a\u00020\u00022\u0006\u0010E\u001a\u00020<J\u0011\u0010Ù\u0001\u001a\u00020\u00062\b\u0010E\u001a\u0004\u0018\u00010DJ\u0011\u0010Ü\u0001\u001a\u00020\u00042\b\u0010Û\u0001\u001a\u00030Ú\u0001J\u0011\u0010Ý\u0001\u001a\u00020\u00062\b\u0010Û\u0001\u001a\u00030Ú\u0001J \u0010ß\u0001\u001a\u00020\u00062\b\u0010\u008d\u0001\u001a\u00030Þ\u00012\r\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020^0]J\u001d\u0010ã\u0001\u001a\u0004\u0018\u00010^2\b\u0010á\u0001\u001a\u00030à\u00012\b\u0010â\u0001\u001a\u00030à\u0001J&\u0010ã\u0001\u001a\u0004\u0018\u00010^2\b\u0010á\u0001\u001a\u00030à\u00012\b\u0010â\u0001\u001a\u00030à\u00012\u0007\u0010ä\u0001\u001a\u00020\u0006J%\u0010ç\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010Q\u001a\u00030à\u00012\u0007\u0010R\u001a\u00030à\u00012\b\u0010æ\u0001\u001a\u00030å\u0001J\u001c\u0010ê\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010Q\u001a\u00030à\u00012\b\u0010é\u0001\u001a\u00030è\u0001J\u001b\u0010ã\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010ë\u0001\u001a\u00020D2\u0007\u0010ì\u0001\u001a\u00020DJ\u0013\u0010ã\u0001\u001a\u0004\u0018\u00010^2\b\u0010î\u0001\u001a\u00030í\u0001J\u001b\u0010ð\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010ë\u0001\u001a\u00020D2\u0007\u0010ï\u0001\u001a\u00020\u0002J\t\u0010ñ\u0001\u001a\u0004\u0018\u00010^J\t\u0010ò\u0001\u001a\u0004\u0018\u00010^J\t\u0010ó\u0001\u001a\u0004\u0018\u00010.J\u0011\u0010ô\u0001\u001a\u0004\u0018\u00010^2\u0006\u0010M\u001a\u00020DJ\u0011\u0010õ\u0001\u001a\u0004\u0018\u00010^2\u0006\u0010M\u001a\u00020DJ\u0007\u0010ö\u0001\u001a\u00020\u0006J\u0011\u0010÷\u0001\u001a\u0004\u0018\u00010\t2\u0006\u0010E\u001a\u00020DJ\r\u0010ø\u0001\u001a\b\u0012\u0004\u0012\u00020\t0&J\u0011\u0010ù\u0001\u001a\u0004\u0018\u00010\t2\u0006\u0010E\u001a\u00020DJ\u0011\u0010ú\u0001\u001a\u0004\u0018\u00010\t2\u0006\u0010E\u001a\u00020DJ\u000f\u0010û\u0001\u001a\u00020D2\u0006\u0010E\u001a\u00020DJ\u0010\u0010ý\u0001\u001a\u00020D2\u0007\u0010ü\u0001\u001a\u00020\tJ\u0013\u0010\u0080\u0002\u001a\u00020\u00062\n\u0010ÿ\u0001\u001a\u0005\u0018\u00010þ\u0001J\u0014\u0010\u0081\u0002\u001a\u0005\u0018\u00010þ\u00012\b\u0010ÿ\u0001\u001a\u00030þ\u0001J\u0007\u0010\u0082\u0002\u001a\u00020\u0006J\u0007\u0010\u0083\u0002\u001a\u00020\u0006J\u0007\u0010\u0084\u0002\u001a\u00020+J\u0007\u0010\u0085\u0002\u001a\u00020\u0006J\u0007\u0010\u0086\u0002\u001a\u00020\u0004J\u0010\u0010\u0088\u0002\u001a\u00020\u00042\u0007\u0010\u0087\u0002\u001a\u00020\u0006J\u0007\u0010\u0089\u0002\u001a\u00020\u0006J\u0010\u0010\u008a\u0002\u001a\u00020\u00042\u0007\u0010\u0087\u0002\u001a\u00020\u0006J\u0016\u0010\u008c\u0002\u001a\b\u0012\u0004\u0012\u00020\t0]2\u0007\u0010\u008b\u0002\u001a\u00020\tJ\u0007\u0010\u008d\u0002\u001a\u00020\u0006J\u0007\u0010\u008e\u0002\u001a\u00020\u0004J\u0010\u0010\u0090\u0002\u001a\u00020\u00042\u0007\u0010\u008f\u0002\u001a\u00020\tJ\b\u0010\u0092\u0002\u001a\u00030\u0091\u0002J\u0007\u0010\u0093\u0002\u001a\u00020\u0006J\u0007\u0010\u0094\u0002\u001a\u00020+J\u0007\u0010\u0095\u0002\u001a\u00020\u0002J\u0007\u0010\u0096\u0002\u001a\u00020\u0002J\r\u0010\u0097\u0002\u001a\b\u0012\u0004\u0012\u00020^0&J\u0007\u0010\u0098\u0002\u001a\u00020\u0004J\b\u0010\u009a\u0002\u001a\u00030\u0099\u0002J\b\u0010\u009b\u0002\u001a\u00030\u0099\u0002J\u0010\u0010\u009c\u0002\u001a\u00030\u0099\u00022\u0006\u0010=\u001a\u00020\u0002J\u0013\u0010\u009d\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0&0&J\u0012\u0010\u009f\u0002\u001a\u00020D2\t\u0010\u009e\u0002\u001a\u0004\u0018\u00010\tJ\u000f\u0010 \u0002\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DJ\u0007\u0010¡\u0002\u001a\u00020\u0004J\u0007\u0010¢\u0002\u001a\u00020\u0004R\u0018\u0010¥\u0002\u001a\u00030\u0091\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b£\u0002\u0010¤\u0002R\u0018\u0010\u009a\u0001\u001a\u00030\u0099\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¦\u0002\u0010§\u0002R\u0019\u0010ª\u0002\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¨\u0002\u0010©\u0002R\u0019\u0010\u0090\u0001\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b«\u0002\u0010©\u0002R\u0018\u0010¯\u0002\u001a\u00030¬\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u00ad\u0002\u0010®\u0002R$\u0010³\u0002\u001a\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0°\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0002\u0010²\u0002R\u0018\u0010·\u0002\u001a\u00030´\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0002\u0010¶\u0002R\u001a\u0010H\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0002\u0010¹\u0002R\u0019\u0010\u0087\u0002\u001a\u00030º\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\ba\u0010»\u0002R\u0017\u0010½\u0002\u001a\u00030\u009c\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bX\u0010¼\u0002R\u0018\u0010¿\u0002\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001d\u0010¾\u0002R\u0017\u0010À\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010eR\u0017\u0010Á\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010eR\u0017\u0010Â\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010eR\u0017\u0010Ã\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010e¨\u0006È\u0002"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;", "", "", "pagingMode", "", "J0", "", "styleChanged", "H0", "", "y0", "Lcom/onyx/engine/sdk/PageInfo;", "pageInfo", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;", "t", "Landroid/graphics/Bitmap;", "bitmap", "B", "A", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "x", "y", "z", "B0", "A0", "P", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", C4921e.f26537n, "l", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "r0", "E", "C0", "w0", "z0", "", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;", "imageList", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;", "R", "", "dx", CouchFieldKey.KEY_PAGE_NUMBER, "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;", "b0", "Lcom/onyx/engine/sdk/CellOfScreen;", "screenCharRectList", "d0", "V", "W", "Lcom/onyx/engine/sdk/LinkInfo;", "resultList", "Lcom/onyx/engine/sdk/LinkType;", "linkType", "s", "F0", "g0", "Lcom/onyx/engine/sdk/PinPosition;", "pos", "i0", "n0", "pageWidth", FirebaseAnalytics.Param.INDEX, "rtl", "a0", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "x0", "k0", "dataOnScreen", "pieceOfText", "q0", "endPosition", "G", "startPosition", "L", "K", "H", gon.f71290o0, "end", "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "q", "originTextSb", "Landroid/graphics/RectF;", "lineRect", "j", "Lcom/onyx/android/sdk/reader/api/PageRange;", "u", "w", "v", "", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "linkInfoList", "i", "o0", "j0", "column", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/engine/sdk/Resource;", "resource", "D0", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "readerImage", "c0", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "F", "h0", "Q", "S", "I0", "E0", "p0", "Lcom/onyx/engine/sdk/TableOfContentEntry;", "nativeTocEntry", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "tocEntry", "m", "Lcom/onyx/engine/sdk/SearchResult;", "searchResult", C4921e.f26528e, "text", "r", GoogleApiAvailabilityLight.f29016b, "M", "l0", "list", Constant.PADDING_TAG, "m0", "length", "T", "e0", "U", "f0", "N", "J", "p", "Lcom/onyx/engine/sdk/OpenOptions;", "options", "Lcom/onyx/engine/sdk/BookOpenResult;", "open", "bookKeyCode", "Lcom/onyx/engine/sdk/NeoBaseNative;", "getNeoBaseNative", "getBookPath", "Lcom/onyx/engine/sdk/Metadata;", "getMetadata", "width", "height", "setViewSize", "Lcom/onyx/engine/sdk/DisplayMetrics;", "displayMetrics", "setupDisplayMetrics", "Lcom/onyx/android/sdk/base/data/Size;", "getViewSize", "updateDocumentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "style", "setStyle", "tag", "metadataString", "readLanguage", "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "convertType", "setChineseConvertType", "gamma", "setTextGamma", SymmLQ.f108603e, "", "colorTable", "setFontEnhancement", "getReaderTextStyle", "Lcom/onyx/engine/sdk/ReaderTextStyle;", "getEngineTextStyle", "getOriginCssStyle", "canBuy", "updateImgStyle", "draw", "Lcom/onyx/engine/sdk/FontSpec;", "getFontFamilyList", "getScreenText", "getText", "getPageParagraphList", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "getSentence", "getLastSentence", "getPageLinks", "link", "getLinkTargetSelection", "getPageImages", "isImagePage", "getImagePage", "readCover", "getBitmap", "getTotalPage", "getScreenStartPage", "getScreenEndPage", "getInitPosition", "getScreenStartPosition", "getScreenEndPosition", "toEnginePosition", "getStartPosition", "getEndPosition", "getBookSize", "isFirstPage", "isLastPage", "nextScreen", "preScreen", "gotoPosition", "hitPageCache", "page", "gotoPage", "getPositionByPageNumber", "getPageNumberOfPosition", "isValidPosition", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "updateTocPageNumber", "readTableOfContent", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "search", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", "startArgs", "endArgs", "selectTextOnScreen", "findWord", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;", "hitTestOptions", "selectOnScreen", "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;", "splitter", "selectWordOnScreen", "startPos", "endPos", "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "args", "textNum", "selectSelection", "firstText", "lastText", "lastPieceOfText", "lastSelectionEndOfLine", "lastTextEndOfLine", "hasText", "getXPathByPosition", "chapterList", "getChapterId", "getChapterName", "getChapterStartPosition", "chapterID", "getInitPaginationPosition", "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", PrivilegedApp.f6532i, "hasPaginationNext", "paginationNext", "isAllPaginationComplete", "isCurrentChapterPaginationComplete", "getPaginationProgress", "onPaginationStart", "onPaginationFinally", "abort", "setAbortPagination", "isAbortPagination", "setAborted", "dirPath", "saveLogFiles", "isNeedClearPaginationCache", "clearPaginationCache", "chapterId", "updateReaderPageInfo", "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;", "getReaderPageProgressDirection", "supportCssOriginStyle", "getTotalReadingProgress", "getPageNumberInCurrentChapter", "getTotalPageCountInCurrentChapter", "allText", "layoutPageForSimpleDocument", "Lcom/onyx/engine/sdk/Chapter;", "getNextScreenChapter", "getPrevScreenChapter", "getChapter", "getAllPieceOfText", "positionStr", "getPositionFromString", "getPositionInt", "destroy", "close", "a", "Lcom/onyx/engine/sdk/NeoBaseNative;", "neoNative", "b", "Lcom/onyx/engine/sdk/DisplayMetrics;", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "path", "d", "Lcom/onyx/android/sdk/reader/cbox/page/BookManager;", "e", "Lcom/onyx/android/sdk/reader/cbox/page/BookManager;", "bookManager", "Ljava/util/TreeMap;", C6997f.f39671c, "Ljava/util/TreeMap;", "screenPageInfoMap", "Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;", "screenDataLruCache", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "I", "columnCount", "lazyLoadLink", "debugImageRegion", "debugLinkRegion", "debugTextRegion", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/NeoBaseNative;)V", "(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/engine/sdk/DisplayMetrics;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCBoxDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBoxDocument.kt\ncom/onyx/android/sdk/reader/cbox/CBoxDocument\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,2035:1\n731#2,9:2036\n731#2,9:2047\n1855#2,2:2063\n37#3,2:2045\n37#3,2:2056\n32#4,5:2058\n*S KotlinDebug\n*F\n+ 1 CBoxDocument.kt\ncom/onyx/android/sdk/reader/cbox/CBoxDocument\n*L\n422#1:2036,9\n433#1:2047,9\n1370#1:2063,2\n422#1:2045,2\n433#1:2056,2\n763#1:2058,5\n*E\n"})
/* loaded from: classes8.dex */
public final class CBoxDocument {

    /* renamed from: A */
    public static final int f44624A = 2;

    /* renamed from: B */
    @NotNull
    public static final String f44625B = "[($(*+.\\[?\\^\\{\\\\)]";

    /* renamed from: C */
    @NotNull
    public static final String f44626C = "\\\\$0";

    /* renamed from: D */
    public static final int f44627D = 500;

    /* renamed from: E */
    public static final int f44628E = 100;

    /* renamed from: p */
    public static long f44629p = 0;

    /* renamed from: y */
    public static final int f44638y = 50;

    /* renamed from: z */
    public static final int f44639z = 200;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NeoBaseNative neoNative;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final DisplayMetrics displayMetrics;

    /* renamed from: c, reason: from kotlin metadata */
    public String path;

    /* renamed from: d, reason: from kotlin metadata */
    public String bookKeyCode;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BookManager bookManager;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final TreeMap<Integer, PageInfo> screenPageInfoMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ScreenDataLruCache screenDataLruCache;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public CBoxDataOnScreen dataOnScreen;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public AtomicBoolean abort;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Size viewSize;

    /* renamed from: k, reason: from kotlin metadata */
    public int columnCount;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean lazyLoadLink;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean debugImageRegion;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean debugLinkRegion;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean debugTextRegion;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q */
    public static long f44630q = 1;

    /* renamed from: r */
    public static long f44631r = 2;

    /* renamed from: s */
    public static long f44632s = 3;

    /* renamed from: t */
    public static long f44633t = 4;

    /* renamed from: u */
    public static long f44634u = 5;

    /* renamed from: v */
    public static long f44635v = 6;

    /* renamed from: w */
    public static long f44636w = 7;

    /* renamed from: x */
    public static long f44637x = 8;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001a\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001fX\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0006\"\u0004\b%\u0010\bR\u000e\u0010&\u001a\u00020'X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020'X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001fX\u0082T¢\u0006\u0002\n\u0000¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/CBoxDocument$Companion;", "", "()V", "ERROR_ADOBE_DRM_INVALID", "", "getERROR_ADOBE_DRM_INVALID", "()J", "setERROR_ADOBE_DRM_INVALID", "(J)V", "ERROR_DRM_INVALID", "getERROR_DRM_INVALID", "setERROR_DRM_INVALID", "ERROR_FILE_INVALID", "getERROR_FILE_INVALID", "setERROR_FILE_INVALID", "ERROR_FILE_NOT_FOUND", "getERROR_FILE_NOT_FOUND", "setERROR_FILE_NOT_FOUND", "ERROR_PAGE_NOT_FOUND", "getERROR_PAGE_NOT_FOUND", "setERROR_PAGE_NOT_FOUND", "ERROR_PASSWORD_INVALID", "getERROR_PASSWORD_INVALID", "setERROR_PASSWORD_INVALID", "ERROR_SECURITY", "getERROR_SECURITY", "setERROR_SECURITY", "ERROR_UNKNOWN", "getERROR_UNKNOWN", "setERROR_UNKNOWN", "LAYOUT_SIMPLE_DOCUMENT_WARNING_SPEED_THRESHOLD", "", "LAYOUT_SIMPLE_DOCUMENT_WARNING_TIME_THRESHOLD", "MAX_SENTENCE_LENGTH", "MIN_SENTENCE_LENGTH", "NO_ERROR", "getNO_ERROR", "setNO_ERROR", "SEARCH_REGEX", "", "SEARCH_REGEX_ESCAPE_CHARACTER", "WORD_EDGE_OFFSET", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getERROR_ADOBE_DRM_INVALID() {
            return CBoxDocument.f44637x;
        }

        public final long getERROR_DRM_INVALID() {
            return CBoxDocument.f44636w;
        }

        public final long getERROR_FILE_INVALID() {
            return CBoxDocument.f44632s;
        }

        public final long getERROR_FILE_NOT_FOUND() {
            return CBoxDocument.f44631r;
        }

        public final long getERROR_PAGE_NOT_FOUND() {
            return CBoxDocument.f44635v;
        }

        public final long getERROR_PASSWORD_INVALID() {
            return CBoxDocument.f44633t;
        }

        public final long getERROR_SECURITY() {
            return CBoxDocument.f44634u;
        }

        public final long getERROR_UNKNOWN() {
            return CBoxDocument.f44630q;
        }

        public final long getNO_ERROR() {
            return CBoxDocument.f44629p;
        }

        public final void setERROR_ADOBE_DRM_INVALID(long j) {
            CBoxDocument.f44637x = j;
        }

        public final void setERROR_DRM_INVALID(long j) {
            CBoxDocument.f44636w = j;
        }

        public final void setERROR_FILE_INVALID(long j) {
            CBoxDocument.f44632s = j;
        }

        public final void setERROR_FILE_NOT_FOUND(long j) {
            CBoxDocument.f44631r = j;
        }

        public final void setERROR_PAGE_NOT_FOUND(long j) {
            CBoxDocument.f44635v = j;
        }

        public final void setERROR_PASSWORD_INVALID(long j) {
            CBoxDocument.f44633t = j;
        }

        public final void setERROR_SECURITY(long j) {
            CBoxDocument.f44634u = j;
        }

        public final void setERROR_UNKNOWN(long j) {
            CBoxDocument.f44630q = j;
        }

        public final void setNO_ERROR(long j) {
            CBoxDocument.f44629p = j;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LinkType.values().length];
            try {
                iArr[LinkType.WEBSITE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LinkType.NOT_LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LinkType.NORMAL_POSITION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LinkType.FOOTNOTE_REF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LinkType.TOC_REF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LinkType.FOOTNOTE_CONTENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[LinkType.FOOTNOTE_REF_CONTENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[LinkType.FOOTNOTE_HINT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        CBoxUtils.INSTANCE.init();
    }

    public CBoxDocument(@NotNull NeoBaseNative neoNative) {
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        this.screenPageInfoMap = new TreeMap<>();
        this.screenDataLruCache = new ScreenDataLruCache(3);
        this.abort = new AtomicBoolean(false);
        Size size = new Size(0, 0, 3, null);
        this.viewSize = size;
        this.columnCount = 1;
        this.lazyLoadLink = true;
        this.neoNative = neoNative;
        DisplayMetrics displayMetrics = CBoxUtils.INSTANCE.getDisplayMetrics(size);
        this.displayMetrics = displayMetrics;
        this.bookManager = new BookManager(neoNative, displayMetrics);
    }

    /* renamed from: G0 */
    public static final void m34477G0(CBoxDocument this$0, AtomicBoolean isAbort) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(isAbort, "$isAbort");
        Debug.INSTANCE.m32035d(this$0.getClass(), "NativeDocument abort search", new Object[0]);
        this$0.neoNative.abortSearch();
        isAbort.set(true);
    }

    /* renamed from: I */
    public static final int m34478I(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: X */
    public static final List m34479X(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: Y */
    public static final List m34480Y(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: s0 */
    public static final List m34489s0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: t0 */
    public static final List m34490t0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: u0 */
    public static final List m34491u0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: v0 */
    public static final List m34492v0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: A */
    public final void m34493A(Bitmap bitmap) {
        m34504F0();
        this.screenPageInfoMap.clear();
        boolean m34544n0 = m34544n0();
        int width = bitmap.getWidth() / this.columnCount;
        Bitmap createBitmap = Bitmap.createBitmap(width, bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Paint createBitmapPaint = BitmapUtils.INSTANCE.createBitmapPaint();
        Canvas canvas = new Canvas(bitmap);
        int i = this.columnCount;
        for (int i2 = 0; i2 < i; i2++) {
            float m34525a0 = m34525a0(width, i2, m34544n0);
            m34497C(createBitmap);
            canvas.drawBitmap(createBitmap, m34525a0, 0.0f, createBitmapPaint);
            if (i2 >= this.columnCount - 1 || !m34558w0()) {
                break;
            }
        }
        BitmapUtils.INSTANCE.recycle(createBitmap);
        m34504F0();
    }

    /* renamed from: A0 */
    public final void m34494A0() {
        List emptyList;
        List listOf;
        if (Debug.INSTANCE.getDebug()) {
            List<String> split = new Regex("\n").split(m34516P(), 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (!(listIterator.previous().length() == 0)) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            String[] strArr = (String[]) emptyList.toArray(new String[0]);
            listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(strArr, strArr.length));
            Iterator it2 = listOf.iterator();
            while (it2.hasNext()) {
                Debug.INSTANCE.m32035d(CBoxDocument.class, (String) it2.next(), new Object[0]);
            }
        }
    }

    /* renamed from: B */
    public final void m34495B(Bitmap bitmap) {
        this.screenPageInfoMap.clear();
        m34497C(bitmap);
    }

    /* renamed from: B0 */
    public final void m34496B0() {
        List emptyList;
        if (Debug.INSTANCE.getDebug()) {
            StringBuilder sb = new StringBuilder();
            m34539l(sb);
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            List<String> split = new Regex("\n").split(sb2, 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (!(listIterator.previous().length() == 0)) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            for (String str : (String[]) emptyList.toArray(new String[0])) {
                Debug.INSTANCE.m32035d(CBoxDocument.class, str, new Object[0]);
            }
        }
    }

    /* renamed from: C */
    public final void m34497C(Bitmap bitmap) {
        m34498C0(this.bookManager.drawPage(bitmap));
    }

    /* renamed from: C0 */
    public final void m34498C0(PageInfo pageInfo) {
        this.screenPageInfoMap.put(Integer.valueOf(pageInfo.getPageNumber()), pageInfo);
    }

    /* renamed from: D */
    public final PageInfo m34499D() {
        return m34503F(m34517Q());
    }

    /* renamed from: D0 */
    public final Bitmap m34500D0(Resource resource) {
        return this.neoNative.readBitmap(resource);
    }

    /* renamed from: E */
    public final PageInfo m34501E() {
        PageInfo layoutCurrentPage = this.bookManager.layoutCurrentPage();
        m34498C0(layoutCurrentPage);
        return layoutCurrentPage;
    }

    /* renamed from: E0 */
    public final void m34502E0() {
        this.dataOnScreen = null;
    }

    /* renamed from: F */
    public final PageInfo m34503F(PageInfo pageInfo) {
        return pageInfo == null ? m34532h0() : pageInfo;
    }

    /* renamed from: F0 */
    public final void m34504F0() {
        PinPosition start = m34499D().getPageRange().getStart();
        Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
        m34534i0(start);
    }

    /* renamed from: G */
    public final int m34505G(ReaderPosition endPosition) {
        int coerceAtMost;
        int m34506H = m34506H(endPosition);
        if (m34506H >= 0) {
            return m34506H;
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(Math.abs(m34506H), m34515O().getTextList().size() - 1);
        return coerceAtMost;
    }

    /* renamed from: H */
    public final int m34506H(ReaderPosition position) {
        int indexOf;
        PinPosition enginePosition = toEnginePosition(position);
        CBoxDataOnScreen m34515O = m34515O();
        CBoxDataOnScreen.PieceOfText pieceOfText = m34515O.getPositionTextMap().get(Integer.valueOf(enginePosition.getPositionInt()));
        if (pieceOfText == null) {
            CBoxDataOnScreen.PieceOfText pieceOfText2 = new CBoxDataOnScreen.PieceOfText(new CellOfScreen(), new ReaderPositionImpl().fromInteger(enginePosition.getPositionInt()));
            List<CBoxDataOnScreen.PieceOfText> textList = m34515O.getTextList();
            final CBoxDocument$findIndexByPositionOnScreen$index$1 cBoxDocument$findIndexByPositionOnScreen$index$1 = new Function2<CBoxDataOnScreen.PieceOfText, CBoxDataOnScreen.PieceOfText, Integer>() { // from class: com.onyx.android.sdk.reader.cbox.CBoxDocument$findIndexByPositionOnScreen$index$1
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(@NotNull CBoxDataOnScreen.PieceOfText p1, @NotNull CBoxDataOnScreen.PieceOfText p2) {
                    Intrinsics.checkNotNullParameter(p1, "p1");
                    Intrinsics.checkNotNullParameter(p2, "p2");
                    ReaderPosition position2 = p2.getPosition();
                    if (p1.contains(position2)) {
                        return 0;
                    }
                    if (p1.getPosition().getIntPosition() > position2.getIntPosition()) {
                        return 1;
                    }
                    return -1;
                }
            };
            indexOf = Collections.binarySearch(textList, pieceOfText2, new Comparator() { // from class: com.sunia.HTREnginev2.x00
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m34478I;
                    m34478I = CBoxDocument.m34478I(Function2.this, obj, obj2);
                    return m34478I;
                }
            });
        } else {
            indexOf = m34515O.getTextList().indexOf(pieceOfText);
        }
        if (indexOf < 0) {
            Debug.INSTANCE.m32044e(CBoxDocument.class, "findIndexByPositionOnScreen fail, position = " + position, new Object[0]);
        }
        return indexOf;
    }

    /* renamed from: H0 */
    public final void m34507H0(boolean styleChanged) {
        if (styleChanged) {
            this.screenPageInfoMap.clear();
            m34502E0();
            Debug.INSTANCE.m32035d(CBoxDocument.class, "style hash changed", new Object[0]);
            m34496B0();
        }
    }

    /* renamed from: I0 */
    public final ReaderPosition m34508I0(PinPosition position) {
        return CBoxUtils.INSTANCE.convert(position);
    }

    /* renamed from: J */
    public final CBoxDataOnScreen.PieceOfText m34509J(ReaderPosition startPosition) {
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O().getTextList();
        int m34512L = m34512L(startPosition);
        int size = textList.size();
        CBoxDataOnScreen.PieceOfText pieceOfText = null;
        CBoxDataOnScreen.PieceOfText pieceOfText2 = null;
        while (m34512L < size) {
            CBoxDataOnScreen.PieceOfText pieceOfText3 = textList.get(m34512L);
            if (pieceOfText2 != null) {
                if (pieceOfText3.getCellOfScreen().getParaNumber() != pieceOfText2.getCellOfScreen().getParaNumber() || pieceOfText3.getCellOfScreen().getLineNumber() != pieceOfText2.getCellOfScreen().getLineNumber()) {
                    break;
                }
            } else {
                pieceOfText2 = pieceOfText3;
            }
            m34512L++;
            pieceOfText = pieceOfText3;
        }
        return pieceOfText;
    }

    /* renamed from: J0 */
    public final void m34510J0(int pagingMode) {
        ReaderTextStyle.Companion companion = ReaderTextStyle.INSTANCE;
        int i = 1;
        if (pagingMode != companion.getPAGING_MODE_SINGLE_COLUMN() && pagingMode == companion.getPAGING_MODE_TWO_COLUMN()) {
            i = 2;
        }
        if (this.columnCount != i) {
            this.columnCount = i;
            this.bookManager.setViewSize(this.viewSize.getWidth() / i, this.viewSize.getHeight());
        }
    }

    /* renamed from: K */
    public final int m34511K(ReaderPosition position) {
        int coerceAtLeast;
        int coerceAtMost;
        int m34506H = m34506H(position);
        if (m34506H < 0) {
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(Math.abs(m34506H) - 1, m34515O().getTextList().size() - 1);
            return coerceAtMost;
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(m34506H, 0);
        return coerceAtLeast;
    }

    /* renamed from: L */
    public final int m34512L(ReaderPosition startPosition) {
        return m34511K(startPosition);
    }

    /* renamed from: M */
    public final CBoxDataOnScreen.PieceOfText m34513M(ReaderPosition position, boolean end) {
        int indexOf;
        Object lastOrNull;
        CBoxDataOnScreen m34515O = m34515O();
        CBoxDataOnScreen.PieceOfText pieceOfText = m34515O.getPositionTextMap().get(Integer.valueOf(position.getIntPosition()));
        List<CBoxDataOnScreen.PieceOfText> halfWordTextList = m34515O.getHalfWordTextList();
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends CBoxDataOnScreen.PieceOfText>) ((List<? extends Object>) halfWordTextList), pieceOfText);
        if (indexOf < 0) {
            return pieceOfText;
        }
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkNotNull(pieceOfText);
        arrayList.add(pieceOfText);
        if (pieceOfText.getCellOfScreen().isHalfWord()) {
            int size = halfWordTextList.size();
            for (int i = indexOf + 1; i < size; i++) {
                arrayList.add(halfWordTextList.get(i));
                if (!halfWordTextList.get(i).getCellOfScreen().isHalfWord()) {
                    break;
                }
            }
        }
        while (true) {
            indexOf--;
            if (-1 >= indexOf || !halfWordTextList.get(indexOf).getCellOfScreen().isHalfWord()) {
                break;
            }
            arrayList.add(0, halfWordTextList.get(indexOf));
        }
        if (!end) {
            return (CBoxDataOnScreen.PieceOfText) arrayList.get(0);
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) arrayList);
        return (CBoxDataOnScreen.PieceOfText) lastOrNull;
    }

    /* renamed from: N */
    public final List<RectF> m34514N() {
        List<RectF> emptyList;
        if (!m34538k0()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<CBoxDataOnScreen.PieceOfText> it2 = m34515O().getTextList().iterator();
        while (it2.hasNext()) {
            RectF rectF = new RectF(it2.next().getCellOfScreen().getRect());
            if (!RectUtils.INSTANCE.isNullOrEmpty(rectF)) {
                arrayList.add(rectF);
            }
        }
        return arrayList;
    }

    /* renamed from: O */
    public final CBoxDataOnScreen m34515O() {
        if (this.dataOnScreen == null) {
            String m34531g0 = m34531g0();
            CBoxDataOnScreen cBoxDataOnScreen = this.screenDataLruCache.get(m34531g0);
            if (cBoxDataOnScreen != null) {
                this.dataOnScreen = cBoxDataOnScreen;
                Debug.INSTANCE.m32035d(CBoxDocument.class, "getDataOnScreen hit cache", new Object[0]);
            } else {
                CBoxDataOnScreen m34552r0 = m34552r0();
                this.dataOnScreen = m34552r0;
                this.screenDataLruCache.put(m34531g0, m34552r0);
            }
        }
        CBoxDataOnScreen cBoxDataOnScreen2 = this.dataOnScreen;
        Intrinsics.checkNotNull(cBoxDataOnScreen2);
        return cBoxDataOnScreen2;
    }

    /* renamed from: P */
    public final String m34516P() {
        StringBuilder sb = new StringBuilder();
        sb.append("--- start debug info ---");
        sb.append("\n");
        m34539l(sb);
        m34537k(sb);
        sb.append("--- end debug info ---");
        sb.append("\n");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: Q */
    public final PageInfo m34517Q() {
        Map.Entry<Integer, PageInfo> firstEntry = this.screenPageInfoMap.firstEntry();
        if (firstEntry != null) {
            return firstEntry.getValue();
        }
        return null;
    }

    /* renamed from: R */
    public final List<CBoxDataOnScreen.PieceOfLink> m34518R(List<CBoxDataOnScreen.PieceOfImage> imageList) {
        return LinkInfoUtils.INSTANCE.getImageFootnoteLinks(this.neoNative, imageList);
    }

    /* renamed from: S */
    public final PageInfo m34519S() {
        Map.Entry<Integer, PageInfo> lastEntry = this.screenPageInfoMap.lastEntry();
        if (lastEntry != null) {
            return lastEntry.getValue();
        }
        return null;
    }

    /* renamed from: T */
    public final CBoxDataOnScreen.PieceOfText m34520T(CBoxDataOnScreen.PieceOfText pieceOfText, int length) {
        List<CBoxDataOnScreen.PieceOfText> textList;
        int indexOf;
        if (length == 0 || (indexOf = (textList = m34515O().getTextList()).indexOf(pieceOfText)) <= 0) {
            return pieceOfText;
        }
        CBoxDataOnScreen.PieceOfText pieceOfText2 = null;
        int i = 0;
        for (int i2 = indexOf - 1; -1 < i2; i2--) {
            pieceOfText2 = textList.get(i2);
            String word = pieceOfText2.getCellOfScreen().getWord();
            Intrinsics.checkNotNull(word);
            i += word.length();
            if (i >= length) {
                return pieceOfText2;
            }
        }
        Intrinsics.checkNotNull(pieceOfText2);
        return pieceOfText2;
    }

    /* renamed from: U */
    public final String m34521U(CBoxDataOnScreen.PieceOfText pieceOfText, int length) {
        List<CBoxDataOnScreen.PieceOfText> textList;
        if (!m34538k0() || length <= 0 || (r4 = (textList = m34515O().getTextList()).indexOf(pieceOfText)) <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        do {
            int indexOf = indexOf - 1;
            if (-1 >= indexOf) {
                break;
            }
            sb.insert(0, textList.get(indexOf).getCellOfScreen().getWord());
        } while (sb.length() < length);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: V */
    public final List<CBoxDataOnScreen.PieceOfImage> m34522V(float dx, int pageNumber) {
        List<CBoxDataOnScreen.PieceOfImage> emptyList;
        List<CBoxDataOnScreen.PieceOfImage> emptyList2;
        try {
            List<ImageInfo> pageImages = this.neoNative.getPageImages();
            Intrinsics.checkNotNullExpressionValue(pageImages, "getPageImages(...)");
            if (CollectionKt.isNullOrEmpty(pageImages)) {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                return emptyList2;
            }
            ArrayList arrayList = new ArrayList();
            for (ImageInfo imageInfo : pageImages) {
                CBoxDataOnScreen.PieceOfImage pieceOfImage = new CBoxDataOnScreen.PieceOfImage(imageInfo, null, 2, null);
                imageInfo.getRect().offset(dx, 0.0f);
                pieceOfImage.m72333setPageNumber(pageNumber);
                arrayList.add(pieceOfImage);
            }
            return arrayList;
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    /* renamed from: W */
    public final List<CBoxDataOnScreen.PieceOfLink> m34523W(float dx) {
        List<CBoxDataOnScreen.PieceOfLink> emptyList;
        List<CBoxDataOnScreen.PieceOfLink> emptyList2;
        try {
            LinkInfoUtils linkInfoUtils = LinkInfoUtils.INSTANCE;
            List<LinkInfo> pageLinks = this.neoNative.getPageLinks();
            Intrinsics.checkNotNullExpressionValue(pageLinks, "getPageLinks(...)");
            List<LinkInfo> filterInvalidLink = linkInfoUtils.filterInvalidLink(pageLinks);
            if (CollectionKt.isNullOrEmpty(filterInvalidLink)) {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                return emptyList2;
            }
            Map<LinkType, List<LinkInfo>> splitLinkInfoByType = linkInfoUtils.splitLinkInfoByType(filterInvalidLink);
            LinkType linkType = LinkType.NOT_LOADED;
            final CBoxDocument$getPageLinksImpl$internalNormalLinkList$1 cBoxDocument$getPageLinksImpl$internalNormalLinkList$1 = new Function1<LinkType, List<LinkInfo>>() { // from class: com.onyx.android.sdk.reader.cbox.CBoxDocument$getPageLinksImpl$internalNormalLinkList$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<LinkInfo> invoke(@NotNull LinkType it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            List<LinkInfo> computeIfAbsent = splitLinkInfoByType.computeIfAbsent(linkType, new Function() { // from class: com.sunia.HTREnginev2.q00
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m34479X;
                    m34479X = CBoxDocument.m34479X(Function1.this, obj);
                    return m34479X;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
            LinkType linkType2 = LinkType.WEBSITE;
            final CBoxDocument$getPageLinksImpl$websiteLinkList$1 cBoxDocument$getPageLinksImpl$websiteLinkList$1 = new Function1<LinkType, List<LinkInfo>>() { // from class: com.onyx.android.sdk.reader.cbox.CBoxDocument$getPageLinksImpl$websiteLinkList$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<LinkInfo> invoke(@NotNull LinkType it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            List<LinkInfo> computeIfAbsent2 = splitLinkInfoByType.computeIfAbsent(linkType2, new Function() { // from class: com.sunia.HTREnginev2.r00
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m34480Y;
                    m34480Y = CBoxDocument.m34480Y(Function1.this, obj);
                    return m34480Y;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent2, "computeIfAbsent(...)");
            ArrayList arrayList = new ArrayList();
            List<CBoxDataOnScreen.PieceOfLink> m34553s = m34553s(computeIfAbsent, dx, linkType);
            arrayList.addAll(m34553s);
            arrayList.addAll(m34553s(computeIfAbsent2, dx, linkType2));
            if (!this.lazyLoadLink) {
                linkInfoUtils.updateInternalNormalLinkInfo(this.neoNative, m34553s);
            }
            return arrayList;
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    /* renamed from: Z */
    public final int m34524Z(int column) {
        List arrayList = new ArrayList(this.screenPageInfoMap.values());
        if (m34544n0()) {
            arrayList = CollectionsKt__ReversedViewsKt.asReversedMutable(arrayList);
        }
        PageInfo pageInfo = (PageInfo) CollectionKt.getElement(arrayList, column);
        if (pageInfo == null) {
            return -1;
        }
        return pageInfo.getPageNumber();
    }

    /* renamed from: a0 */
    public final int m34525a0(int pageWidth, int index, boolean rtl) {
        return rtl ? ((this.columnCount - 1) - index) * pageWidth : index * pageWidth;
    }

    @NotNull
    public final List<ReaderSelection> allText() {
        List<ReaderSelection> emptyList;
        if (!m34538k0()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<CBoxDataOnScreen.PieceOfText> it2 = m34515O().getTextList().iterator();
        while (it2.hasNext()) {
            arrayList.add(m34547p(it2.next()));
        }
        return arrayList;
    }

    /* renamed from: b0 */
    public final List<CBoxDataOnScreen.PieceOfText> m34526b0(float dx, int pageNumber) {
        List<CBoxDataOnScreen.PieceOfText> emptyList;
        try {
            m34501E();
            List<CellOfScreen> cellOfScreenList = this.neoNative.getCellOfScreenList();
            Intrinsics.checkNotNullExpressionValue(cellOfScreenList, "getCellOfScreenList(...)");
            return m34528d0(cellOfScreenList, dx, pageNumber);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    /* renamed from: c0 */
    public final CBoxDataOnScreen.PieceOfImage m34527c0(ReaderImage readerImage) {
        Map<Integer, CBoxDataOnScreen.PieceOfImage> positionImageMap = m34515O().getPositionImageMap();
        if (CollectionKt.isNullOrEmpty(positionImageMap)) {
            return null;
        }
        return positionImageMap.get(Integer.valueOf(readerImage.position().getIntPosition()));
    }

    public final boolean canBuy() {
        return this.bookManager.getCanBuy();
    }

    @NotNull
    public final List<String> chapterList() {
        return this.bookManager.getChapterIdList();
    }

    public final void clearPaginationCache() {
        this.screenPageInfoMap.clear();
        m34502E0();
        this.bookManager.clearPaginationCache();
    }

    public final void close() {
        this.abort.set(true);
        this.dataOnScreen = null;
        this.screenDataLruCache.clear();
        this.screenPageInfoMap.clear();
        this.bookManager.close();
    }

    /* renamed from: d0 */
    public final List<CBoxDataOnScreen.PieceOfText> m34528d0(List<? extends CellOfScreen> screenCharRectList, float dx, int pageNumber) {
        List<CBoxDataOnScreen.PieceOfText> emptyList;
        if (CollectionKt.isNullOrEmpty(screenCharRectList)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        for (CellOfScreen cellOfScreen : screenCharRectList) {
            if (!cellOfScreen.isRt()) {
                CBoxDataOnScreen.PieceOfText pieceOfText = new CBoxDataOnScreen.PieceOfText(cellOfScreen, null, 2, null);
                cellOfScreen.getRect().offset(dx, 0.0f);
                pieceOfText.m72336setPageNumber(pageNumber);
                arrayList.add(pieceOfText);
            }
        }
        return arrayList;
    }

    public final void destroy() {
        this.dataOnScreen = null;
        this.screenDataLruCache.clear();
        this.screenPageInfoMap.clear();
        this.bookManager.destroy();
    }

    public final void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        m34502E0();
        if (m34548p0()) {
            m34495B(bitmap);
        } else {
            m34493A(bitmap);
        }
        m34559x(bitmap);
        m34561y(bitmap);
        m34494A0();
    }

    /* renamed from: e0 */
    public final CBoxDataOnScreen.PieceOfText m34529e0(CBoxDataOnScreen.PieceOfText pieceOfText, int length) {
        List<CBoxDataOnScreen.PieceOfText> textList;
        int indexOf;
        if (length == 0 || (indexOf = (textList = m34515O().getTextList()).indexOf(pieceOfText)) >= textList.size() - 1) {
            return pieceOfText;
        }
        int size = textList.size();
        CBoxDataOnScreen.PieceOfText pieceOfText2 = null;
        int i = 0;
        for (int i2 = indexOf + 1; i2 < size; i2++) {
            pieceOfText2 = textList.get(i2);
            String word = pieceOfText2.getCellOfScreen().getWord();
            Intrinsics.checkNotNull(word);
            i += word.length();
            if (i >= length) {
                return pieceOfText2;
            }
        }
        Intrinsics.checkNotNull(pieceOfText2);
        return pieceOfText2;
    }

    /* renamed from: f0 */
    public final String m34530f0(CBoxDataOnScreen.PieceOfText pieceOfText, int length) {
        List<CBoxDataOnScreen.PieceOfText> textList;
        int indexOf;
        if (!m34538k0() || length <= 0 || (indexOf = (textList = m34515O().getTextList()).indexOf(pieceOfText)) >= textList.size() - 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = textList.size();
        for (int i = indexOf + 1; i < size; i++) {
            sb.append(textList.get(i).getCellOfScreen().getWord());
            if (sb.length() >= length) {
                break;
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Nullable
    public final ReaderSelection firstText() {
        if (m34538k0()) {
            return m34547p(m34515O().getTextList().get(0));
        }
        return null;
    }

    /* renamed from: g0 */
    public final String m34531g0() {
        String screenDataHashKey = this.bookManager.getScreenDataHashKey();
        PageInfo m34499D = m34499D();
        return screenDataHashKey + '-' + m34499D.getStartPositionInt() + '-' + m34499D.getEndPositionInt();
    }

    @NotNull
    public final List<List<CBoxDataOnScreen.PieceOfText>> getAllPieceOfText() {
        ArrayList arrayList = new ArrayList();
        PageInfo m34501E = m34501E();
        for (TextRun textRun : this.neoNative.getTextRunList()) {
            if (!textRun.getCellOfScreenList().isEmpty()) {
                List<CellOfScreen> cellOfScreenList = textRun.getCellOfScreenList();
                Intrinsics.checkNotNullExpressionValue(cellOfScreenList, "getCellOfScreenList(...)");
                arrayList.add(m34528d0(cellOfScreenList, 0.0f, m34501E.getPageNumber()));
            }
        }
        return arrayList;
    }

    @Nullable
    public final Bitmap getBitmap(@NotNull ReaderImage readerImage) {
        Intrinsics.checkNotNullParameter(readerImage, "readerImage");
        CBoxDataOnScreen.PieceOfImage m34527c0 = m34527c0(readerImage);
        if (m34527c0 == null) {
            return null;
        }
        Resource resource = new Resource(m34527c0.getImageInfo().getBaseUrl(), m34527c0.getImageInfo().getUrl());
        resource.setFormat(m34527c0.getImageInfo().getFormat());
        if (m34527c0.getImageInfo().getRect() != null) {
            resource.setWidth(m34527c0.getImageInfo().getRect().width());
            resource.setHeight(m34527c0.getImageInfo().getRect().height());
        }
        return m34500D0(resource);
    }

    @NotNull
    public final String getBookPath() {
        String str = this.path;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("path");
        return null;
    }

    public final int getBookSize() {
        return this.neoNative.getBookSize();
    }

    @NotNull
    public final Chapter getChapter(int pos) throws ReaderException {
        try {
            return this.bookManager.getChapter(pos);
        } catch (Exception e) {
            throw new ReaderException(e);
        }
    }

    @Nullable
    public final String getChapterId(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        PinPosition enginePosition = toEnginePosition(position);
        if (enginePosition.isInvalid()) {
            return null;
        }
        return enginePosition.getChapterID();
    }

    @Nullable
    public final String getChapterName(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        try {
            return this.bookManager.getChapterName(position.getIntPosition());
        } catch (Exception e) {
            Debug.INSTANCE.m32045e(CBoxDocument.class, e);
            return null;
        }
    }

    @NotNull
    public final ReaderPosition getChapterStartPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        try {
            return m34508I0(new PinPosition(this.bookManager.getChapter(position.getIntPosition())));
        } catch (Exception e) {
            Debug.INSTANCE.m32045e(CBoxDocument.class, e);
            return PluginPositionUtils.INSTANCE.getINVALID_POSITION();
        }
    }

    @NotNull
    public final PinPosition getEndPosition() {
        PinPosition end = m34503F(m34519S()).getPageRange().getEnd();
        Intrinsics.checkNotNullExpressionValue(end, "getEnd(...)");
        return end;
    }

    @NotNull
    public final com.onyx.engine.sdk.ReaderTextStyle getEngineTextStyle() {
        return this.bookManager.getEngineTextStyle();
    }

    @Nullable
    public final List<FontSpec> getFontFamilyList() {
        return this.neoNative.getFontFamilyList();
    }

    @Nullable
    public final ReaderImage getImagePage(@NotNull ReaderPosition position, int column) {
        Intrinsics.checkNotNullParameter(position, "position");
        CBoxDataOnScreen m34515O = m34515O();
        if (!isImagePage(position, column)) {
            return null;
        }
        List<CBoxDataOnScreen.PieceOfImage> list = m34515O.getPageImageMap().get(Integer.valueOf(m34524Z(column)));
        Intrinsics.checkNotNull(list);
        CBoxDataOnScreen.PieceOfImage pieceOfImage = list.get(0);
        return new ReaderImageImpl(RectKt.orEmpty(pieceOfImage.getImageInfo().getRect()), null, pieceOfImage.getPosition().copy(), 0.0f, 8, null);
    }

    @NotNull
    public final ReaderPosition getInitPaginationPosition(@NotNull String chapterID) {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        return m34508I0(this.bookManager.getInitPosition(chapterID));
    }

    @NotNull
    public final ReaderPosition getInitPosition() {
        return m34508I0(this.bookManager.getInitPosition());
    }

    @Nullable
    public final ReaderSentence getLastSentence() {
        Object last;
        CBoxDataOnScreen.PieceOfText pieceOfText = null;
        if (!m34538k0()) {
            return null;
        }
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O().getTextList();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) textList);
        CBoxDataOnScreen.PieceOfText pieceOfText2 = (CBoxDataOnScreen.PieceOfText) last;
        int size = textList.size() - 1;
        if (size >= 0) {
            int i = 0;
            boolean z = false;
            while (true) {
                int i2 = size - 1;
                CBoxDataOnScreen.PieceOfText pieceOfText3 = textList.get(size);
                int textLength = pieceOfText3.getCellOfScreen().getTextLength() - 1;
                while (-1 < textLength) {
                    i++;
                    if (i < 200) {
                        if (!ReaderTextSplitterImpl.INSTANCE.sharedInstance().isSentenceBreakSplitter(pieceOfText3.getCellOfScreen().getWord().charAt(textLength)) || i < 2) {
                            textLength--;
                            pieceOfText = pieceOfText3;
                        }
                    }
                    pieceOfText = pieceOfText3;
                    z = true;
                    break;
                }
                if (z || i2 < 0) {
                    break;
                }
                size = i2;
            }
        }
        Intrinsics.checkNotNull(pieceOfText);
        ReaderSelectionImpl m34549q = m34549q(pieceOfText, pieceOfText2);
        boolean isLastPage = isLastPage();
        Intrinsics.checkNotNull(m34549q);
        return new ReaderSentence(m34549q, PluginPositionUtils.INSTANCE.getINVALID_POSITION(), true, isLastPage);
    }

    @Nullable
    public final ReaderSelection getLinkTargetSelection(@NotNull ReaderSelection link) {
        List<CBoxDataOnScreen.PieceOfLink> listOf;
        Intrinsics.checkNotNullParameter(link, "link");
        CBoxDataOnScreen m34515O = m34515O();
        if (CollectionKt.isNullOrEmpty(link.rectangles())) {
            Debug.INSTANCE.m32035d(CBoxDocument.class, "no rect, no link.", new Object[0]);
            return null;
        }
        CBoxDataOnScreen.PieceOfLink pieceOfLink = m34515O.getRectHashLinkMap().get(Integer.valueOf(link.rectangles().get(0).hashCode()));
        if (pieceOfLink == null) {
            Debug.INSTANCE.m32035d(CBoxDocument.class, "hit cache fail, no link.", new Object[0]);
            return null;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pieceOfLink);
        try {
            if (pieceOfLink.getLinkType() == LinkType.NOT_LOADED) {
                LinkInfoUtils.INSTANCE.updateInternalNormalLinkInfo(this.neoNative, listOf);
            }
            ArrayList arrayList = new ArrayList();
            m34533i(arrayList, listOf);
            return (ReaderSelection) arrayList.get(0);
        } catch (Exception e) {
            Debug.INSTANCE.m32060w(CBoxDocument.class, e);
            return null;
        }
    }

    @NotNull
    public final com.onyx.engine.sdk.Metadata getMetadata() {
        return this.bookManager.getMetadata();
    }

    @NotNull
    /* renamed from: getNeoBaseNative, reason: from getter */
    public final NeoBaseNative getNeoNative() {
        return this.neoNative;
    }

    @NotNull
    public final Chapter getNextScreenChapter() throws ReaderException {
        return this.bookManager.getNextScreenChapter();
    }

    @NotNull
    public final ReaderTextStyle getOriginCssStyle() {
        PageInfo m34499D = m34499D();
        ReaderTextStyle readerTextStyle = new ReaderTextStyle();
        readerTextStyle.setPageMargin(m34554t(m34499D));
        CBoxTextStyleUtils cBoxTextStyleUtils = CBoxTextStyleUtils.INSTANCE;
        readerTextStyle.setParagraphSpacing(cBoxTextStyleUtils.createParagraphSpacing(m34499D));
        readerTextStyle.setLineSpacing(cBoxTextStyleUtils.createLineHeight(m34499D));
        readerTextStyle.setLetterSpacing(cBoxTextStyleUtils.createLetterSpacing(m34499D));
        readerTextStyle.setWordSpacing(cBoxTextStyleUtils.createWordSpacing(getEngineTextStyle()));
        return readerTextStyle;
    }

    @NotNull
    public final List<ReaderImage> getPageImages() {
        CBoxDataOnScreen m34515O = m34515O();
        ArrayList arrayList = new ArrayList();
        for (CBoxDataOnScreen.PieceOfImage pieceOfImage : m34515O.getImageList()) {
            arrayList.add(new ReaderImageImpl(RectKt.orEmpty(pieceOfImage.getImageInfo().getRect()), null, pieceOfImage.getPosition().copy(), 0.0f, 8, null));
        }
        return arrayList;
    }

    @NotNull
    public final List<ReaderSelection> getPageLinks() {
        CBoxDataOnScreen m34515O = m34515O();
        ArrayList arrayList = new ArrayList();
        List<CBoxDataOnScreen.PieceOfLink> linkList = m34515O.getLinkList();
        if (CollectionKt.isNullOrEmpty(linkList)) {
            return arrayList;
        }
        m34533i(arrayList, linkList);
        return arrayList;
    }

    public final int getPageNumberInCurrentChapter() {
        return PositionHandler.INSTANCE.getPageNumberInChapter(this.bookManager.getBookPositionInt(), this.bookManager.getCurrentChapter());
    }

    public final int getPageNumberOfPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.bookManager.getPageNumberOfPosition(toEnginePosition(position));
    }

    @NotNull
    public final List<String> getPageParagraphList() {
        return m34515O().getParagraphList();
    }

    public final float getPaginationProgress() {
        return this.bookManager.getPaginationProgress();
    }

    @NotNull
    public final ReaderPosition getPositionByPageNumber(int page) {
        return m34508I0(this.bookManager.getPositionOfPageNumber(page));
    }

    @NotNull
    public final ReaderPosition getPositionFromString(@Nullable String positionStr) {
        PinPosition fromJson = PinPosition.fromJson(positionStr);
        if (fromJson.isInvalid()) {
            if (!(positionStr == null || positionStr.length() == 0) && StringKt.isNumberStr(positionStr)) {
                return PluginPositionUtils.INSTANCE.getPosition(Integer.parseInt(positionStr));
            }
        }
        return m34508I0(fromJson);
    }

    public final int getPositionInt(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return position.getIntPosition() >= 0 ? position.getIntPosition() : toEnginePosition(position).getPositionInt();
    }

    @NotNull
    public final Chapter getPrevScreenChapter() throws ReaderException {
        return this.bookManager.getPrevScreenChapter();
    }

    @NotNull
    public final ReaderPageProgressionDirection getReaderPageProgressDirection() {
        return this.bookManager.getDirection();
    }

    @NotNull
    public final ReaderTextStyle getReaderTextStyle() {
        return this.bookManager.getReaderTextStyle();
    }

    public final int getScreenEndPage() {
        return m34503F(m34519S()).getPageNumber();
    }

    @NotNull
    public final ReaderPosition getScreenEndPosition() {
        return m34508I0(m34503F(m34519S()).getPageRange().getEnd());
    }

    public final int getScreenStartPage() {
        return m34499D().getPageNumber();
    }

    @NotNull
    public final ReaderPosition getScreenStartPosition() {
        return m34508I0(m34499D().getPageRange().getStart());
    }

    @NotNull
    public final String getScreenText() {
        CBoxDataOnScreen m34515O = m34515O();
        StringBuilder sb = new StringBuilder();
        Iterator<CBoxDataOnScreen.PieceOfText> it2 = m34515O.getTextList().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().getCellOfScreen().getWord());
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Nullable
    public final ReaderSentence getSentence(@NotNull ReaderPosition startPosition) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        if (startPosition.compare(getScreenStartPosition()) < 0 || startPosition.compare(getScreenEndPosition()) > 0 || !m34538k0()) {
            return null;
        }
        CBoxDataOnScreen m34515O = m34515O();
        int m34511K = m34511K(startPosition);
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O.getTextList();
        CBoxDataOnScreen.PieceOfText pieceOfText = textList.get(m34511K);
        int size = textList.size() - 1;
        if (m34511K > size) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int paraNumber = textList.get(m34511K).getCellOfScreen().getParaNumber();
        CBoxDataOnScreen.PieceOfText pieceOfText2 = null;
        if (m34511K <= size) {
            int i = 0;
            boolean z = false;
            while (true) {
                CBoxDataOnScreen.PieceOfText pieceOfText3 = textList.get(m34511K);
                if (pieceOfText3.getCellOfScreen().getParaNumber() <= paraNumber) {
                    int length = pieceOfText3.getCellOfScreen().getWord().length();
                    int i2 = 0;
                    while (i2 < length) {
                        i++;
                        if (i < 200 || ReaderTextSplitterImpl.INSTANCE.sharedInstance().isUseTtsParagraphSplitters()) {
                            if (!ReaderTextSplitterImpl.INSTANCE.isSentenceBreakSplitter(pieceOfText3.getCellOfScreen().getWord().charAt(i2), arrayList)) {
                                i2++;
                                pieceOfText2 = pieceOfText3;
                            }
                        }
                        pieceOfText2 = pieceOfText3;
                        z = true;
                        break;
                    }
                    if (z || m34511K == size) {
                        break;
                    }
                    m34511K++;
                } else {
                    break;
                }
            }
        }
        if (pieceOfText2 == null) {
            pieceOfText2 = pieceOfText;
        }
        Intrinsics.checkNotNull(pieceOfText2);
        ReaderSelectionImpl m34549q = m34549q(pieceOfText, pieceOfText2);
        if (m34549q == null) {
            return null;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) m34515O.getTextList());
        boolean areEqual = Intrinsics.areEqual(pieceOfText2, lastOrNull);
        return new ReaderSentence(m34549q, m34560x0(pieceOfText2.getPosition()), areEqual, isLastPage() && areEqual);
    }

    @NotNull
    public final PinPosition getStartPosition() {
        PinPosition start = m34499D().getPageRange().getStart();
        Intrinsics.checkNotNullExpressionValue(start, "getStart(...)");
        return start;
    }

    @NotNull
    public final String getText(@NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        String text = this.neoNative.getText(startPosition.getIntPosition(), endPosition.getIntPosition());
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        return text;
    }

    public final int getTotalPage() {
        return this.bookManager.getTotalPage();
    }

    public final int getTotalPageCountInCurrentChapter() {
        return PositionHandler.INSTANCE.getChapterTotalPageCount(this.bookManager.getCurrentChapter());
    }

    public final float getTotalReadingProgress() {
        int coerceAtLeast;
        if (isLastPage()) {
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            return FLOAT_ONE.floatValue();
        }
        float bookPositionInt = this.bookManager.getBookPositionInt();
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(this.neoNative.getBookSize(), 1);
        return bookPositionInt / coerceAtLeast;
    }

    @NotNull
    public final Size getViewSize() {
        return this.viewSize;
    }

    @Nullable
    public final String getXPathByPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return toEnginePosition(position).getXpathString();
    }

    public final boolean gotoPage(int page) throws ReaderException {
        return gotoPosition(this.bookManager.getPositionOfPageNumber(page));
    }

    public final boolean gotoPosition(@NotNull ReaderPosition pos) {
        Intrinsics.checkNotNullParameter(pos, "pos");
        return gotoPosition(toEnginePosition(pos));
    }

    /* renamed from: h0 */
    public final PageInfo m34532h0() {
        return this.bookManager.getCurrentPage();
    }

    public final boolean hasPaginationNext(@Nullable PaginationChapterInfo info) {
        if (info != null) {
            return this.bookManager.hasPaginationNext(info);
        }
        Debug.INSTANCE.m32035d(CBoxDocument.class, "maybe abort, no next.", new Object[0]);
        return false;
    }

    public final boolean hasText() {
        return m34538k0();
    }

    public final boolean hitPageCache(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.bookManager.hitPageCache(toEnginePosition(position));
    }

    /* renamed from: i */
    public final void m34533i(List<ReaderSelection> result, List<CBoxDataOnScreen.PieceOfLink> linkInfoList) {
        List<RectF> mutableListOf;
        for (CBoxDataOnScreen.PieceOfLink pieceOfLink : linkInfoList) {
            ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
            readerSelectionImpl.setPageIndex(getScreenStartPage());
            readerSelectionImpl.setPageRange(m34556v(getScreenStartPosition(), getScreenEndPosition()));
            switch (WhenMappings.$EnumSwitchMapping$0[pieceOfLink.getLinkType().ordinal()]) {
                case 1:
                    String href = pieceOfLink.getLinkInfo().getHref();
                    readerSelectionImpl.setText(href != null ? href : "");
                    readerSelectionImpl.setLinkType(1);
                    break;
                case 2:
                    String targetText = pieceOfLink.getTargetText();
                    readerSelectionImpl.setText(targetText != null ? targetText : "");
                    readerSelectionImpl.setLinkType(4);
                    break;
                case 3:
                    String targetText2 = pieceOfLink.getTargetText();
                    readerSelectionImpl.setText(targetText2 != null ? targetText2 : "");
                    readerSelectionImpl.setLinkType(2);
                    break;
                case 4:
                case 5:
                    readerSelectionImpl.setText("");
                    readerSelectionImpl.setLinkType(3);
                    break;
                case 6:
                case 7:
                case 8:
                    String targetText3 = pieceOfLink.getTargetText();
                    readerSelectionImpl.setText(targetText3 != null ? targetText3 : "");
                    readerSelectionImpl.setLinkType(2);
                    break;
                default:
                    String targetText4 = pieceOfLink.getTargetText();
                    readerSelectionImpl.setText(targetText4 != null ? targetText4 : "");
                    readerSelectionImpl.setLinkType(2);
                    break;
            }
            ReaderPosition invalid_position = (pieceOfLink.getLinkType() == LinkType.FOOTNOTE_HINT || pieceOfLink.getLinkInfo().isInvalidTarget()) ? PluginPositionUtils.INSTANCE.getINVALID_POSITION() : m34508I0(pieceOfLink.getLinkInfo().getTarget().getPosition());
            readerSelectionImpl.setSelectionRange(m34556v(invalid_position, invalid_position.copy()));
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(RectKt.orEmpty(pieceOfLink.getLinkInfo().getRect()));
            readerSelectionImpl.setCharRectList(mutableListOf);
            CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
            WritingMode writingMode = pieceOfLink.getLinkInfo().getWritingMode();
            Intrinsics.checkNotNullExpressionValue(writingMode, "getWritingMode(...)");
            readerSelectionImpl.setWritingMode(cBoxUtils.convert(writingMode));
            readerSelectionImpl.setLinkType(ReaderSelectionUtils.INSTANCE.ensureParseLinkType(readerSelectionImpl));
            result.add(readerSelectionImpl);
        }
    }

    /* renamed from: i0 */
    public final boolean m34534i0(PinPosition pos) {
        PageInfo gotoPage = this.bookManager.gotoPage(new PageInfo(new PageRange(pos)));
        if (gotoPage == null) {
            return false;
        }
        m34498C0(gotoPage);
        return true;
    }

    public final boolean isAbortPagination() {
        return this.bookManager.isAbortPagination();
    }

    public final boolean isAllPaginationComplete() {
        return this.bookManager.isAllPaginationComplete();
    }

    public final boolean isCurrentChapterPaginationComplete() {
        return this.bookManager.isCurrentChapterPaginationComplete();
    }

    public final boolean isFirstPage() {
        return m34499D().getStartPositionInt() == 0;
    }

    public final boolean isImagePage(@NotNull ReaderPosition position, int column) {
        Intrinsics.checkNotNullParameter(position, "position");
        CBoxDataOnScreen m34515O = m34515O();
        int m34524Z = m34524Z(column);
        return !m34536j0(m34515O, m34524Z) && m34546o0(m34515O, m34524Z);
    }

    public final boolean isLastPage() {
        return m34503F(m34519S()).getEndPositionInt() >= this.neoNative.getBookSize();
    }

    public final boolean isNeedClearPaginationCache() {
        return this.bookManager.isNeedClearPaginationCache();
    }

    public final boolean isValidPosition(@Nullable ReaderPosition position) {
        PinPosition enginePosition = toEnginePosition(position);
        if (enginePosition.isInvalid()) {
            return false;
        }
        int bookSize = getBookSize();
        int positionInt = enginePosition.getPositionInt();
        return positionInt >= 0 && positionInt < bookSize;
    }

    /* renamed from: j */
    public final void m34535j(CBoxDataOnScreen.PieceOfText pieceOfText, StringBuilder sb, StringBuilder originTextSb, RectF lineRect) {
        sb.append(pieceOfText.getCellOfScreen().getWord());
        originTextSb.append(pieceOfText.getCellOfScreen().getOriginWord());
        CBoxDataOnScreen cBoxDataOnScreen = this.dataOnScreen;
        Intrinsics.checkNotNull(cBoxDataOnScreen);
        if (m34550q0(cBoxDataOnScreen, pieceOfText)) {
            return;
        }
        lineRect.union(pieceOfText.getCellOfScreen().getRect());
    }

    /* renamed from: j0 */
    public final boolean m34536j0(CBoxDataOnScreen dataOnScreen, int pageNumber) {
        return CollectionKt.isNonBlank(dataOnScreen.getPageTextMap().get(Integer.valueOf(pageNumber)));
    }

    /* renamed from: k */
    public final void m34537k(StringBuilder sb) {
        sb.append("--- start screenPage debug info ---");
        sb.append("\n");
        sb.append("\n");
        sb.append("pagination progress: ");
        sb.append(this.bookManager.getPaginationProgress());
        sb.append("\n");
        sb.append("screenPageInfoMap:");
        sb.append("\n");
        Iterator<Map.Entry<Integer, PageInfo>> it2 = this.screenPageInfoMap.entrySet().iterator();
        while (it2.hasNext()) {
            PageInfo value = it2.next().getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            PageInfo pageInfo = value;
            try {
                sb.append("viewInfo: page start: ");
                sb.append(pageInfo.getPageRange().getStart().toString());
                sb.append("\n");
                sb.append("page end: ");
                sb.append(pageInfo.getPageRange().getEnd().toString());
                sb.append("\n");
                sb.append("isTablePage: ");
                sb.append(pageInfo.getPageRange().hasTable());
                sb.append("\n");
                sb.append("chapterId: ");
                sb.append(pageInfo.getStartChapterID());
                sb.append("\n");
                sb.append("chapterPath: ");
                sb.append(this.bookManager.getCurrentChapter().getChapter().getBasePath());
                sb.append("\n");
                sb.append("chapter range: ");
                sb.append(IteratorUtils.f104923a);
                sb.append(this.bookManager.getCurrentChapter().getChapter().getStartPos());
                sb.append(", ");
                sb.append(this.bookManager.getCurrentChapter().getChapter().getEndPos());
                sb.append(MotionUtils.f31762d);
                sb.append("\n");
                sb.append("page progress: ");
                sb.append(pageInfo.getPageNumber() + 1);
                sb.append("/");
                sb.append(pageInfo.getTotalPage());
                sb.append("\n");
                sb.append("page range: ");
                sb.append(IteratorUtils.f104923a);
                sb.append(pageInfo.getStartPositionInt());
                sb.append(", ");
                sb.append(pageInfo.getEndPositionInt());
                sb.append(MotionUtils.f31762d);
                sb.append("\n");
            } catch (Throwable th) {
                Debug.INSTANCE.m32063w(th);
            }
        }
        sb.append("\n");
        sb.append("hasTextOnScreen: ");
        sb.append(m34538k0());
        sb.append("\n");
        CBoxDataOnScreen m34515O = m34515O();
        sb.append("paragraph total = ");
        sb.append(m34515O.getParagraphList().size());
        sb.append("\n");
        sb.append("line total = ");
        sb.append(m34515O.getScreenLineNumberTextMap().size());
        sb.append("\n");
        sb.append("text total = ");
        sb.append(m34515O.getTextList().size());
        sb.append("\n");
        sb.append("positionTextMap.size = ");
        sb.append(m34515O.getPositionTextMap().size());
        sb.append("\n");
        sb.append("image total = ");
        sb.append(m34515O.getImageList().size());
        sb.append("\n");
        sb.append("link total = ");
        sb.append(m34515O.getLinkList().size());
        sb.append("\n");
        sb.append("--- end screenPage debug info ---");
        sb.append("\n");
    }

    /* renamed from: k0 */
    public final boolean m34538k0() {
        return CollectionKt.isNonBlank(m34515O().getTextList());
    }

    /* renamed from: l */
    public final void m34539l(StringBuilder sb) {
        com.onyx.engine.sdk.ReaderTextStyle engineTextStyle = this.bookManager.getEngineTextStyle();
        sb.append("--- start style debug info ---");
        sb.append("\n");
        sb.append("ENGINE_VERSION: ");
        sb.append(BuildConfig.ENGINE_VERSION);
        sb.append("\n");
        sb.append("JSOUP_VERSION: ");
        sb.append(BuildConfig.JSOUP_VERSION);
        sb.append("\n");
        sb.append("device: ");
        sb.append(Build.FINGERPRINT);
        sb.append("\n");
        String str = this.path;
        String str2 = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("path");
            str = null;
        }
        sb.append(str);
        sb.append("\n");
        sb.append("page cache dir: ");
        String str3 = this.bookKeyCode;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bookKeyCode");
        } else {
            str2 = str3;
        }
        sb.append(str2);
        sb.append("\n");
        sb.append("style hash: ");
        sb.append(this.bookManager.getStyleHashKey());
        sb.append("\n");
        sb.append("columnCount: ");
        sb.append(this.columnCount);
        sb.append("\n");
        sb.append("viewport: ");
        sb.append(this.viewSize.toString());
        sb.append("\n");
        sb.append("engine style: ");
        sb.append(engineTextStyle.toJson());
        sb.append("\n");
        sb.append("display metrics: ");
        sb.append(this.displayMetrics.toJson());
        sb.append("\n");
        sb.append("--- end style debug info ---");
        sb.append("\n");
    }

    /* renamed from: l0 */
    public final CBoxDataOnScreen.PieceOfText m34540l0(int x, int y) {
        if (!m34538k0()) {
            return null;
        }
        CBoxDataOnScreen m34515O = m34515O();
        CBoxDataOnScreen.PieceOfText m34542m0 = m34542m0(m34515O.getTextList(), x, y, 0.0f);
        if (m34542m0 != null) {
            return m34542m0;
        }
        return m34542m0(m34515O.getTextList(), x, y, ResManager.INSTANCE.getDimens(C7592R.dimen.select_text_hit_test_padding));
    }

    @Nullable
    public final CBoxDataOnScreen.PieceOfText lastPieceOfText() {
        Object lastOrNull;
        if (!m34538k0()) {
            return null;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) m34515O().getTextList());
        return (CBoxDataOnScreen.PieceOfText) lastOrNull;
    }

    @Nullable
    public final ReaderSelection lastSelectionEndOfLine(@NotNull ReaderPosition startPosition) {
        CBoxDataOnScreen.PieceOfText m34509J;
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        CBoxDataOnScreen.PieceOfText m34513M = m34513M(startPosition, false);
        if (m34513M == null || (m34509J = m34509J(startPosition)) == null) {
            return null;
        }
        return m34549q(m34513M, m34509J);
    }

    @Nullable
    public final ReaderSelection lastText() {
        Object last;
        if (!m34538k0()) {
            return null;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) m34515O().getTextList());
        return m34547p((CBoxDataOnScreen.PieceOfText) last);
    }

    @Nullable
    public final ReaderSelection lastTextEndOfLine(@NotNull ReaderPosition startPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        CBoxDataOnScreen.PieceOfText m34509J = m34509J(startPosition);
        if (m34509J == null) {
            return null;
        }
        return m34547p(m34509J);
    }

    public final void layoutPageForSimpleDocument() {
        try {
            Benchmark benchmark = new Benchmark();
            PinPosition startPosition = getStartPosition();
            gotoPosition(getInitPosition());
            while (!isLastPage() && nextScreen()) {
            }
            gotoPosition(startPosition);
            int duration = (int) (benchmark.duration() / getTotalPage());
            StringBuilder sb = new StringBuilder();
            sb.append(CBoxDocument.class.getSimpleName());
            sb.append(", layoutPageForSimpleDocument, PageCount = ");
            sb.append(getTotalPage());
            sb.append(", Speed = ");
            sb.append(duration);
            sb.append(" Ms/Page");
            benchmark.report(sb.toString());
            if (benchmark.duration() >= 500 || duration >= 100) {
                Debug.INSTANCE.m32059w(CBoxDocument.class, "layoutPageForSimpleDocument slowly!", new Object[0]);
                m34494A0();
            }
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    /* renamed from: m */
    public final void m34541m(TableOfContentEntry nativeTocEntry, ReaderDocumentTableOfContentEntry tocEntry) {
        if (CollectionKt.isNullOrEmpty(nativeTocEntry.getChildren())) {
            return;
        }
        for (TableOfContentEntry tableOfContentEntry : nativeTocEntry.getChildren()) {
            ReaderPosition convert = CBoxUtils.INSTANCE.convert(tableOfContentEntry.getPosition());
            ReaderDocumentTableOfContentEntry.Companion companion = ReaderDocumentTableOfContentEntry.INSTANCE;
            String title = tableOfContentEntry.getTitle();
            Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
            ReaderDocumentTableOfContentEntry createEntry = companion.createEntry(title, convert);
            companion.addEntry(tocEntry, createEntry);
            Intrinsics.checkNotNull(tableOfContentEntry);
            m34541m(tableOfContentEntry, createEntry);
        }
    }

    /* renamed from: m0 */
    public final CBoxDataOnScreen.PieceOfText m34542m0(List<CBoxDataOnScreen.PieceOfText> list, int x, int y, float padding) {
        RectF rectF = new RectF();
        for (CBoxDataOnScreen.PieceOfText pieceOfText : list) {
            rectF.set(RectKt.orEmpty(pieceOfText.getCellOfScreen().getRect()));
            RectKt.expand(rectF, padding);
            if (rectF.contains(x, y)) {
                return pieceOfText;
            }
        }
        return null;
    }

    @NotNull
    public final String metadataString(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        com.onyx.engine.sdk.Metadata metadata = this.bookManager.getMetadata();
        if ("Title".compareTo(tag) == 0) {
            String title = metadata.getTitle();
            return title == null ? "" : title;
        }
        if ("Author".compareTo(tag) != 0) {
            return "";
        }
        List<String> authors = metadata.getAuthors();
        if (CollectionKt.isNullOrEmpty(authors)) {
            return "";
        }
        String join = StringUtils.join(authors, ",");
        Intrinsics.checkNotNullExpressionValue(join, "join(...)");
        return join;
    }

    /* renamed from: n */
    public final boolean m34543n(float x, float y) {
        ReaderSelection lastText = lastText();
        if (lastText == null) {
            return false;
        }
        return ReaderSelectionUtils.INSTANCE.canExtendSelectionToLastText(x, y, lastText);
    }

    /* renamed from: n0 */
    public final boolean m34544n0() {
        return this.bookManager.getDirection() == ReaderPageProgressionDirection.RTL;
    }

    public final boolean nextScreen() throws ReaderException {
        m34502E0();
        this.screenPageInfoMap.clear();
        if (!m34558w0()) {
            return false;
        }
        if (m34548p0()) {
            return true;
        }
        this.screenPageInfoMap.clear();
        int i = this.columnCount;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            z |= m34558w0();
            if (!z) {
                break;
            }
        }
        m34504F0();
        return z;
    }

    /* renamed from: o */
    public final ReaderSelectionImpl m34545o(SearchResult searchResult) {
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        PinPosition startPosition = searchResult.getStartPosition();
        Intrinsics.checkNotNullExpressionValue(startPosition, "getStartPosition(...)");
        readerSelectionImpl.setPageIndex(getPageNumberOfPosition(startPosition));
        PinPosition startPosition2 = searchResult.getStartPosition();
        Intrinsics.checkNotNullExpressionValue(startPosition2, "getStartPosition(...)");
        PinPosition endPosition = searchResult.getEndPosition();
        Intrinsics.checkNotNullExpressionValue(endPosition, "getEndPosition(...)");
        readerSelectionImpl.setPageRange(m34557w(startPosition2, endPosition));
        String text = searchResult.getText();
        if (text == null) {
            text = "";
        }
        readerSelectionImpl.setOriginText(text);
        String leftText = searchResult.getLeftText();
        if (leftText == null) {
            leftText = "";
        }
        readerSelectionImpl.setOriginLeftText(leftText);
        String rightText = searchResult.getRightText();
        readerSelectionImpl.setOriginRightText(rightText != null ? rightText : "");
        readerSelectionImpl.setText(m34551r(searchResult.getText()));
        readerSelectionImpl.setLeftText(m34551r(searchResult.getLeftText()));
        readerSelectionImpl.setRightText(m34551r(searchResult.getRightText()));
        PinPosition startPosition3 = searchResult.getStartPosition();
        Intrinsics.checkNotNullExpressionValue(startPosition3, "getStartPosition(...)");
        PinPosition endPosition2 = searchResult.getEndPosition();
        Intrinsics.checkNotNullExpressionValue(endPosition2, "getEndPosition(...)");
        readerSelectionImpl.setSelectionRange(m34557w(startPosition3, endPosition2));
        readerSelectionImpl.setWritingMode(ReaderWritingMode.HORIZONTAL);
        return readerSelectionImpl;
    }

    /* renamed from: o0 */
    public final boolean m34546o0(CBoxDataOnScreen dataOnScreen, int pageNumber) {
        return CollectionKt.getSize(dataOnScreen.getPageImageMap().get(Integer.valueOf(pageNumber))) == 1;
    }

    public final void onPaginationFinally() {
        this.bookManager.onPaginationFinally();
    }

    public final boolean onPaginationStart() {
        return this.bookManager.onPaginationStart();
    }

    @NotNull
    public final BookOpenResult open(@NotNull OpenOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        String path = options.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        this.path = path;
        CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
        if (path == null) {
            Intrinsics.throwUninitializedPropertyAccessException("path");
            path = null;
        }
        String pagePositionCacheDirName = cBoxUtils.getPagePositionCacheDirName(path);
        if (pagePositionCacheDirName == null) {
            pagePositionCacheDirName = "";
        }
        this.bookKeyCode = pagePositionCacheDirName;
        return this.bookManager.open(options, pagePositionCacheDirName);
    }

    /* renamed from: p */
    public final ReaderSelection m34547p(CBoxDataOnScreen.PieceOfText pieceOfText) {
        List<RectF> mutableListOf;
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.setPageIndex(getPageNumberOfPosition(getScreenStartPosition()));
        readerSelectionImpl.setPageRange(m34556v(getScreenStartPosition(), getScreenEndPosition()));
        String word = pieceOfText.getCellOfScreen().getWord();
        Intrinsics.checkNotNullExpressionValue(word, "getWord(...)");
        readerSelectionImpl.setText(word);
        readerSelectionImpl.setSelectionRange(m34555u(pieceOfText.getPosition().copy()));
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(RectKt.orEmpty(pieceOfText.getCellOfScreen().getRect()));
        readerSelectionImpl.setCharRectList(mutableListOf);
        CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
        WritingMode writingMode = pieceOfText.getCellOfScreen().getWritingMode();
        Intrinsics.checkNotNullExpressionValue(writingMode, "getWritingMode(...)");
        readerSelectionImpl.setWritingMode(cBoxUtils.convert(writingMode));
        return readerSelectionImpl;
    }

    /* renamed from: p0 */
    public final boolean m34548p0() {
        return this.columnCount == 1;
    }

    @Nullable
    public final PaginationChapterInfo paginationNext(@NotNull PaginationChapterInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        PaginationInfo paginationNext = this.bookManager.paginationNext(info);
        if (paginationNext == null) {
            return null;
        }
        boolean safelyEquals = StringKt.safelyEquals(this.bookManager.getCurrentChapter().getChapter().getChapterId(), info.getChapterId());
        String chapterID = paginationNext.getChapterID();
        if (chapterID == null) {
            chapterID = "";
        }
        String str = chapterID;
        PageRange pageRange = paginationNext.getPageRange();
        Intrinsics.checkNotNull(pageRange);
        ReaderPosition m34508I0 = m34508I0(pageRange.getStart());
        PageRange pageRange2 = paginationNext.getPageRange();
        Intrinsics.checkNotNull(pageRange2);
        ReaderPosition m34508I02 = m34508I0(pageRange2.getEnd());
        PageRange pageRange3 = paginationNext.getPageRange();
        Intrinsics.checkNotNull(pageRange3);
        return new PaginationChapterInfo(str, m34508I0, m34508I02, pageRange3.getStartChapterLength(), paginationNext.getProgress(), paginationNext.getUpdateReaderPageInfo(), paginationNext.getIsPaginationComplete(), safelyEquals);
    }

    public final boolean preScreen() throws ReaderException {
        m34502E0();
        this.screenPageInfoMap.clear();
        if (m34548p0()) {
            return m34564z0();
        }
        int i = this.columnCount;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            z |= m34564z0();
            if (!z) {
                break;
            }
        }
        m34504F0();
        return z && gotoPosition(getStartPosition());
    }

    /* renamed from: q */
    public final ReaderSelectionImpl m34549q(CBoxDataOnScreen.PieceOfText start, CBoxDataOnScreen.PieceOfText end) {
        CBoxDataOnScreen.PieceOfText pieceOfText;
        CBoxDataOnScreen.PieceOfText pieceOfText2;
        if (!m34538k0() || start == null || end == null) {
            return null;
        }
        if (start.getPosition().getIntPosition() > end.getPosition().getIntPosition()) {
            pieceOfText2 = start;
            pieceOfText = end;
        } else {
            pieceOfText = start;
            pieceOfText2 = end;
        }
        CBoxDataOnScreen m34515O = m34515O();
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O.getTextList();
        int indexOf = textList.indexOf(pieceOfText);
        int indexOf2 = textList.indexOf(pieceOfText2);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        WritingMode writingMode = WritingMode.HORIZONTAL;
        ArrayList arrayList = new ArrayList();
        RectF rectF = new RectF();
        int i = -1;
        while (indexOf <= indexOf2) {
            CBoxDataOnScreen.PieceOfText pieceOfText3 = textList.get(indexOf);
            WritingMode writingMode2 = pieceOfText3.getCellOfScreen().getWritingMode();
            Intrinsics.checkNotNullExpressionValue(writingMode2, "getWritingMode(...)");
            if (i > -1 && i != pieceOfText3.getScreenLineNumber()) {
                arrayList.add(new RectF(rectF));
                rectF.setEmpty();
                if (m34515O.getNewParagraphScreenLineNumberList().contains(Integer.valueOf(pieceOfText3.getScreenParagraphNumber()))) {
                    sb.append("\n");
                    sb2.append("\n");
                }
            }
            m34535j(pieceOfText3, sb, sb2, rectF);
            i = pieceOfText3.getScreenLineNumber();
            indexOf++;
            writingMode = writingMode2;
        }
        while (StringKt.isAlphaSentence(sb.toString()) && !CollectionKt.isOutOfRange(textList, indexOf)) {
            int i2 = indexOf + 1;
            CBoxDataOnScreen.PieceOfText pieceOfText4 = textList.get(indexOf);
            if (!StringKt.isPunctuationString(pieceOfText4.getCellOfScreen().getWord()) || pieceOfText4.getScreenLineNumber() > i) {
                break;
            }
            m34535j(pieceOfText4, sb, sb2, rectF);
            i = pieceOfText4.getScreenLineNumber();
            pieceOfText2 = pieceOfText4;
            indexOf = i2;
        }
        if (!rectF.isEmpty()) {
            arrayList.add(new RectF(rectF));
        }
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.setPageIndex(getPageNumberOfPosition(getScreenStartPosition()));
        readerSelectionImpl.setPageRange(m34556v(getScreenStartPosition(), getScreenEndPosition()));
        readerSelectionImpl.setText(StringKt.removeSoftHyphenSymbol(sb.toString()));
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        readerSelectionImpl.setOriginText(sb3);
        readerSelectionImpl.setSelectionRange(m34556v(pieceOfText.getPosition().copy(), pieceOfText2.getPosition().copy()));
        readerSelectionImpl.setCharRectList(arrayList);
        readerSelectionImpl.setWritingMode(CBoxUtils.INSTANCE.convert(writingMode));
        return readerSelectionImpl;
    }

    /* renamed from: q0 */
    public final boolean m34550q0(CBoxDataOnScreen dataOnScreen, CBoxDataOnScreen.PieceOfText pieceOfText) {
        if (!pieceOfText.getCellOfScreen().isWhiteSpace()) {
            return false;
        }
        List<CBoxDataOnScreen.PieceOfText> list = dataOnScreen.getScreenLineNumberTextMap().get(Integer.valueOf(pieceOfText.getScreenLineNumber()));
        return !CollectionKt.isNullOrEmpty(list) && list.indexOf(pieceOfText) == list.size() - 1;
    }

    /* renamed from: r */
    public final String m34551r(String text) {
        return text == null || text.length() == 0 ? "" : text;
    }

    /* renamed from: r0 */
    public final CBoxDataOnScreen m34552r0() {
        m34504F0();
        this.screenPageInfoMap.clear();
        boolean m34544n0 = m34544n0();
        int width = this.viewSize.getWidth() / this.columnCount;
        CBoxDataOnScreen cBoxDataOnScreen = new CBoxDataOnScreen();
        int i = this.columnCount;
        for (int i2 = 0; i2 < i; i2++) {
            float m34525a0 = m34525a0(width, i2, m34544n0);
            PageInfo m34501E = m34501E();
            Map<Integer, List<CBoxDataOnScreen.PieceOfText>> pageTextMap = cBoxDataOnScreen.getPageTextMap();
            Integer valueOf = Integer.valueOf(m34501E.getPageNumber());
            final CBoxDocument$loadDataOnScreen$1 cBoxDocument$loadDataOnScreen$1 = new Function1<Integer, List<CBoxDataOnScreen.PieceOfText>>() { // from class: com.onyx.android.sdk.reader.cbox.CBoxDocument$loadDataOnScreen$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<CBoxDataOnScreen.PieceOfText> invoke(@NotNull Integer it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            pageTextMap.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.t00
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m34489s0;
                    m34489s0 = CBoxDocument.m34489s0(Function1.this, obj);
                    return m34489s0;
                }
            }).addAll(m34526b0(m34525a0, m34501E.getPageNumber()));
            List<CBoxDataOnScreen.PieceOfImage> m34522V = m34522V(m34525a0, m34501E.getPageNumber());
            Map<Integer, List<CBoxDataOnScreen.PieceOfImage>> pageImageMap = cBoxDataOnScreen.getPageImageMap();
            Integer valueOf2 = Integer.valueOf(m34501E.getPageNumber());
            final CBoxDocument$loadDataOnScreen$2 cBoxDocument$loadDataOnScreen$2 = new Function1<Integer, List<CBoxDataOnScreen.PieceOfImage>>() { // from class: com.onyx.android.sdk.reader.cbox.CBoxDocument$loadDataOnScreen$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<CBoxDataOnScreen.PieceOfImage> invoke(@NotNull Integer it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            pageImageMap.computeIfAbsent(valueOf2, new Function() { // from class: com.sunia.HTREnginev2.u00
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m34490t0;
                    m34490t0 = CBoxDocument.m34490t0(Function1.this, obj);
                    return m34490t0;
                }
            }).addAll(m34522V);
            Map<Integer, List<CBoxDataOnScreen.PieceOfLink>> pageLinkMap = cBoxDataOnScreen.getPageLinkMap();
            Integer valueOf3 = Integer.valueOf(m34501E.getPageNumber());
            final CBoxDocument$loadDataOnScreen$3 cBoxDocument$loadDataOnScreen$3 = new Function1<Integer, List<CBoxDataOnScreen.PieceOfLink>>() { // from class: com.onyx.android.sdk.reader.cbox.CBoxDocument$loadDataOnScreen$3
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<CBoxDataOnScreen.PieceOfLink> invoke(@NotNull Integer it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            pageLinkMap.computeIfAbsent(valueOf3, new Function() { // from class: com.sunia.HTREnginev2.v00
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m34491u0;
                    m34491u0 = CBoxDocument.m34491u0(Function1.this, obj);
                    return m34491u0;
                }
            }).addAll(m34523W(m34525a0));
            Map<Integer, List<CBoxDataOnScreen.PieceOfLink>> pageLinkMap2 = cBoxDataOnScreen.getPageLinkMap();
            Integer valueOf4 = Integer.valueOf(m34501E.getPageNumber());
            final CBoxDocument$loadDataOnScreen$4 cBoxDocument$loadDataOnScreen$4 = new Function1<Integer, List<CBoxDataOnScreen.PieceOfLink>>() { // from class: com.onyx.android.sdk.reader.cbox.CBoxDocument$loadDataOnScreen$4
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<CBoxDataOnScreen.PieceOfLink> invoke(@NotNull Integer it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new ArrayList();
                }
            };
            pageLinkMap2.computeIfAbsent(valueOf4, new Function() { // from class: com.sunia.HTREnginev2.w00
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List m34492v0;
                    m34492v0 = CBoxDocument.m34492v0(Function1.this, obj);
                    return m34492v0;
                }
            }).addAll(m34518R(m34522V));
            if (i2 >= this.columnCount - 1 || !m34558w0()) {
                break;
            }
        }
        cBoxDataOnScreen.flatMapToList();
        m34504F0();
        return cBoxDataOnScreen;
    }

    @Nullable
    public final Bitmap readCover() {
        return this.neoNative.readCover();
    }

    @Nullable
    public final String readLanguage() {
        String language = this.bookManager.getMetadata().getLanguage();
        if (language == null) {
            language = "";
        }
        return language.length() == 0 ? m34562y0() : language;
    }

    public final boolean readTableOfContent(@NotNull ReaderDocumentTableOfContent toc) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        TableOfContent tableOfContent = this.neoNative.getTableOfContent(true);
        if (tableOfContent.getRoot().isEmpty()) {
            return false;
        }
        TableOfContentEntry root = tableOfContent.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        m34541m(root, toc.getRootEntry());
        return true;
    }

    /* renamed from: s */
    public final List<CBoxDataOnScreen.PieceOfLink> m34553s(List<? extends LinkInfo> resultList, float dx, LinkType linkType) {
        ArrayList arrayList = new ArrayList();
        for (LinkInfo linkInfo : resultList) {
            CBoxDataOnScreen.PieceOfLink pieceOfLink = new CBoxDataOnScreen.PieceOfLink(linkInfo, null, 2, null);
            linkInfo.getRect().offset(dx, 0.0f);
            pieceOfLink.m72334setLinkType(linkType);
            arrayList.add(pieceOfLink);
        }
        return arrayList;
    }

    @NotNull
    public final List<String> saveLogFiles(@NotNull String dirPath) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        ArrayList arrayList = new ArrayList();
        String m34516P = m34516P();
        File file = new File(dirPath, CBoxDocument.class + ".simpleName _" + DateTimeUtil.INSTANCE.getCurrentTime24Format() + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION);
        FileUtils.INSTANCE.saveContentToFile(m34516P, file);
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        arrayList.add(absolutePath);
        return arrayList;
    }

    public final boolean search(@NotNull ReaderSearchOptions options, @NotNull List<ReaderSelection> list) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(list, "list");
        ReaderPosition f52445b = options.getF52445b();
        if (f52445b == null) {
            return false;
        }
        int positionInt = toEnginePosition(f52445b).getPositionInt();
        if (options.isExcludeStartPosition()) {
            positionInt++;
        }
        int limit = options.limit();
        int totalPage = getTotalPage();
        SearchOptions searchOptions = new SearchOptions();
        searchOptions.setCaseSensitive(options.isCaseSensitive());
        String f52444a = options.getF52444a();
        if (f52444a == null || f52444a.length() == 0) {
            return false;
        }
        String removeNewlineSymbol = StringKt.removeNewlineSymbol(new Regex(f44625B).replace(f52444a, f44626C));
        searchOptions.setStartPosition(positionInt);
        searchOptions.setSearchText(removeNewlineSymbol);
        searchOptions.setContextLength(options.contextLength());
        searchOptions.setLimit(limit);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        options.setCurrentChapterAbortCall(new Closeable() { // from class: com.sunia.HTREnginev2.s00
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                CBoxDocument.m34477G0(CBoxDocument.this, atomicBoolean);
            }
        });
        for (LayoutChapter layoutChapter : this.bookManager.getChapterList()) {
            if (this.abort.get() || atomicBoolean.get()) {
                return false;
            }
            if (layoutChapter.getChapter().getEndPos() > positionInt) {
                searchOptions.setChapterIndex(layoutChapter.getChapter().getPlayOrder());
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(positionInt - layoutChapter.getChapter().getStartPos(), 0);
                searchOptions.setStartPosition(coerceAtLeast);
                ReaderSearchProgressCallback progressCallback = options.progressCallback();
                if (progressCallback != null) {
                    progressCallback.onProgress(getPageNumberOfPosition(new PinPosition(layoutChapter.getChapter())), totalPage);
                }
                List<SearchResult> search = this.neoNative.search(searchOptions);
                Intrinsics.checkNotNull(search);
                for (SearchResult searchResult : search) {
                    Intrinsics.checkNotNull(searchResult);
                    list.add(m34545o(searchResult));
                }
                if (list.size() >= limit) {
                    return true;
                }
                searchOptions.setLimit(limit - list.size());
            }
        }
        return true;
    }

    @Nullable
    public final ReaderSelection selectOnScreen(@NotNull ReaderHitTestArgs start, @NotNull ReaderHitTestArgs end, @NotNull ReaderHitTestOptions hitTestOptions) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(hitTestOptions, "hitTestOptions");
        return hitTestOptions.getIsSelectingWord() ? selectWordOnScreen(start, ReaderTextSplitterImpl.INSTANCE.sharedInstance()) : selectTextOnScreen(start, end);
    }

    @Nullable
    public final ReaderSelection selectSelection(@NotNull ReaderPosition startPos, int textNum) {
        Intrinsics.checkNotNullParameter(startPos, "startPos");
        CBoxDataOnScreen.PieceOfText pieceOfText = null;
        if (!m34538k0()) {
            return null;
        }
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O().getTextList();
        int m34512L = m34512L(startPos);
        int size = textList.size();
        int i = 0;
        int i2 = m34512L;
        while (true) {
            if (i2 >= size) {
                break;
            }
            CBoxDataOnScreen.PieceOfText pieceOfText2 = textList.get(i2);
            String word = pieceOfText2.getCellOfScreen().getWord();
            Intrinsics.checkNotNull(word);
            i += word.length();
            if (i >= textNum) {
                pieceOfText = pieceOfText2;
                break;
            }
            i2++;
        }
        return m34549q(textList.get(m34512L), pieceOfText);
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@NotNull ReaderHitTestArgs startArgs, @NotNull ReaderHitTestArgs endArgs) {
        Intrinsics.checkNotNullParameter(startArgs, "startArgs");
        Intrinsics.checkNotNullParameter(endArgs, "endArgs");
        return selectTextOnScreen(startArgs, endArgs, false);
    }

    @Nullable
    public final ReaderSelection selectWordOnScreen(@NotNull ReaderHitTestArgs start, @NotNull ReaderTextSplitter splitter) {
        CBoxDataOnScreen.PieceOfText m34540l0;
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(splitter, "splitter");
        PointF pointInDocument = start.getPointInDocument();
        if (!m34538k0() || (m34540l0 = m34540l0((int) pointInDocument.x, (int) pointInDocument.y)) == null) {
            return null;
        }
        if (!CBoxUtils.INSTANCE.isChinese(m34540l0.getCellOfScreen().getWord().charAt(0))) {
            ReaderSelection selectTextOnScreen = selectTextOnScreen(start, start, true);
            Intrinsics.checkNotNull(selectTextOnScreen);
            return selectTextOnScreen;
        }
        String m34521U = m34521U(m34540l0, 50);
        String m34530f0 = m34530f0(m34540l0, 50);
        ReaderSelectionImpl m34549q = m34549q(m34520T(m34540l0, splitter.getTextLeftBoundary(m34540l0.getCellOfScreen().getWord(), m34521U, m34530f0)), m34529e0(m34540l0, splitter.getTextRightBoundary(m34540l0.getCellOfScreen().getWord(), m34521U, m34530f0)));
        Intrinsics.checkNotNull(m34549q);
        return m34549q;
    }

    public final void setAbortPagination(boolean abort) {
        this.bookManager.setAbortPagination(abort);
    }

    public final void setAborted(boolean abort) {
        this.abort.set(abort);
        if (abort) {
            this.neoNative.abortSearch();
        }
    }

    public final void setChineseConvertType(@NotNull ReaderChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        m34507H0(this.bookManager.setChineseConvertType(CBoxUtils.INSTANCE.convert(convertType)));
    }

    public final void setFontEnhancement(int threshold, @Nullable int[] colorTable) {
        m34507H0(this.bookManager.setFontEnhancement(threshold, colorTable));
    }

    public final void setStyle(@NotNull ReaderTextStyle style) {
        Intrinsics.checkNotNullParameter(style, "style");
        boolean style2 = this.bookManager.setStyle(style);
        m34510J0(style.getPagingMode());
        m34507H0(style2);
    }

    public final void setTextGamma(float gamma) {
        m34507H0(this.bookManager.setTextGamma(gamma));
    }

    public final void setViewSize(int width, int height) {
        this.viewSize.m72172setWidth(width);
        this.viewSize.m72171setHeight(height);
        m34507H0(this.bookManager.setViewSize(this.viewSize.getWidth() / this.columnCount, height));
    }

    public final void setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        this.viewSize.m72172setWidth(displayMetrics.getWidth() * this.columnCount);
        this.viewSize.m72171setHeight(displayMetrics.getHeight());
        m34507H0(this.bookManager.setupDisplayMetrics(displayMetrics));
    }

    public final boolean supportCssOriginStyle() {
        return true;
    }

    /* renamed from: t */
    public final ReaderTextStyle.PageMargin m34554t(PageInfo pageInfo) {
        int width = this.viewSize.getWidth() / this.columnCount;
        int height = this.viewSize.getHeight();
        MathUtils mathUtils = MathUtils.INSTANCE;
        CBoxUtils cBoxUtils = CBoxUtils.INSTANCE;
        Integer valueOf = Integer.valueOf(cBoxUtils.convertToMarginPercent(height, pageInfo.getMarginTop()));
        ReaderTextStyle.Companion companion = ReaderTextStyle.INSTANCE;
        ReaderTextStyle.Percentage topMargin = companion.getSMALL_PAGE_MARGIN().getTopMargin();
        Intrinsics.checkNotNull(topMargin);
        Integer valueOf2 = Integer.valueOf(topMargin.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String());
        ReaderTextStyle.Percentage topMargin2 = companion.getLARGE_PAGE_MARGIN().getTopMargin();
        Intrinsics.checkNotNull(topMargin2);
        int intValue = ((Number) mathUtils.clamp(valueOf, valueOf2, Integer.valueOf(topMargin2.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String()))).intValue();
        Integer valueOf3 = Integer.valueOf(cBoxUtils.convertToMarginPercent(width, pageInfo.getMarginLeft()));
        ReaderTextStyle.Percentage leftMargin = companion.getSMALL_PAGE_MARGIN().getLeftMargin();
        Intrinsics.checkNotNull(leftMargin);
        Integer valueOf4 = Integer.valueOf(leftMargin.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String());
        ReaderTextStyle.Percentage leftMargin2 = companion.getLARGE_PAGE_MARGIN().getLeftMargin();
        Intrinsics.checkNotNull(leftMargin2);
        int intValue2 = ((Number) mathUtils.clamp(valueOf3, valueOf4, Integer.valueOf(leftMargin2.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String()))).intValue();
        Integer valueOf5 = Integer.valueOf(cBoxUtils.convertToMarginPercent(width, pageInfo.getMarginRight()));
        ReaderTextStyle.Percentage rightMargin = companion.getSMALL_PAGE_MARGIN().getRightMargin();
        Intrinsics.checkNotNull(rightMargin);
        Integer valueOf6 = Integer.valueOf(rightMargin.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String());
        ReaderTextStyle.Percentage rightMargin2 = companion.getLARGE_PAGE_MARGIN().getRightMargin();
        Intrinsics.checkNotNull(rightMargin2);
        int intValue3 = ((Number) mathUtils.clamp(valueOf5, valueOf6, Integer.valueOf(rightMargin2.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String()))).intValue();
        Integer valueOf7 = Integer.valueOf(cBoxUtils.convertToMarginPercent(height, pageInfo.getMarginBottom()));
        ReaderTextStyle.Percentage bottomMargin = companion.getSMALL_PAGE_MARGIN().getBottomMargin();
        Intrinsics.checkNotNull(bottomMargin);
        Integer valueOf8 = Integer.valueOf(bottomMargin.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String());
        ReaderTextStyle.Percentage bottomMargin2 = companion.getLARGE_PAGE_MARGIN().getBottomMargin();
        Intrinsics.checkNotNull(bottomMargin2);
        int intValue4 = ((Number) mathUtils.clamp(valueOf7, valueOf8, Integer.valueOf(bottomMargin2.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT java.lang.String()))).intValue();
        Debug.INSTANCE.m32035d(CBoxDocument.class, "margin left = " + intValue2 + ", top = " + intValue + ", right = " + intValue3 + ", bottom = " + intValue4, new Object[0]);
        ReaderTextStyle.PageMargin pageMargin = new ReaderTextStyle.PageMargin();
        ReaderTextStyle.Percentage.Companion companion2 = ReaderTextStyle.Percentage.INSTANCE;
        pageMargin.setTopMargin(companion2.create(intValue));
        pageMargin.setLeftMargin(companion2.create(intValue2));
        pageMargin.setRightMargin(companion2.create(intValue3));
        pageMargin.setBottomMargin(companion2.create(intValue4));
        return pageMargin;
    }

    @NotNull
    public final PinPosition toEnginePosition(@Nullable ReaderPosition position) {
        return CBoxUtils.INSTANCE.convert(position);
    }

    /* renamed from: u */
    public final com.onyx.android.sdk.reader.api.PageRange m34555u(ReaderPosition startPosition) {
        return m34556v(startPosition, startPosition);
    }

    public final void updateDocumentOptions() {
        this.bookManager.updateDisplayMetrics();
        this.bookManager.updateReadTextStyle();
        m34507H0(true);
    }

    public final void updateImgStyle(@NotNull ReaderTextStyle style) {
        Intrinsics.checkNotNullParameter(style, "style");
        CBoxUtils.INSTANCE.updateImgStyle(style, this.bookManager.getEngineTextStyle());
    }

    public final void updateReaderPageInfo(@NotNull String chapterId) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        this.bookManager.updateReaderPageInfo(chapterId);
    }

    public final void updateTocPageNumber(@NotNull ReaderDocumentTableOfContent toc) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        this.bookManager.updateTocPageNumber(toc);
    }

    /* renamed from: v */
    public final com.onyx.android.sdk.reader.api.PageRange m34556v(ReaderPosition startPosition, ReaderPosition endPosition) {
        return new com.onyx.android.sdk.reader.api.PageRange(startPosition, endPosition);
    }

    /* renamed from: w */
    public final com.onyx.android.sdk.reader.api.PageRange m34557w(PinPosition startPosition, PinPosition endPosition) {
        return m34556v(m34508I0(startPosition), m34508I0(endPosition));
    }

    /* renamed from: w0 */
    public final boolean m34558w0() {
        PageInfo nextPage;
        if (isLastPage() || (nextPage = this.bookManager.nextPage()) == null) {
            return false;
        }
        m34498C0(nextPage);
        return true;
    }

    /* renamed from: x */
    public final void m34559x(Bitmap bitmap) {
        if (this.debugImageRegion) {
            List<CBoxDataOnScreen.PieceOfImage> imageList = m34515O().getImageList();
            if (CollectionKt.isNullOrEmpty(imageList)) {
                return;
            }
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            paint.setColor(-65536);
            paint.setStyle(Paint.Style.STROKE);
            Iterator<CBoxDataOnScreen.PieceOfImage> it2 = imageList.iterator();
            while (it2.hasNext()) {
                canvas.drawRect(RectKt.orEmpty(it2.next().getImageInfo().getRect()), paint);
            }
        }
    }

    /* renamed from: x0 */
    public final ReaderPosition m34560x0(ReaderPosition position) {
        if (!m34538k0()) {
            return PluginPositionUtils.INSTANCE.getINVALID_POSITION();
        }
        CBoxDataOnScreen m34515O = m34515O();
        int m34506H = m34506H(position);
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O.getTextList();
        int i = m34506H + 1;
        return i > textList.size() + (-1) ? PluginPositionUtils.INSTANCE.getINVALID_POSITION() : textList.get(i).getPosition();
    }

    /* renamed from: y */
    public final void m34561y(Bitmap bitmap) {
        if (this.debugLinkRegion) {
            List<CBoxDataOnScreen.PieceOfLink> linkList = m34515O().getLinkList();
            if (CollectionKt.isNullOrEmpty(linkList)) {
                return;
            }
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            paint.setColor(-65536);
            paint.setStyle(Paint.Style.STROKE);
            Iterator<CBoxDataOnScreen.PieceOfLink> it2 = linkList.iterator();
            while (it2.hasNext()) {
                canvas.drawRect(RectKt.orEmpty(it2.next().getLinkInfo().getRect()), paint);
            }
        }
    }

    /* renamed from: y0 */
    public final String m34562y0() {
        String str = "";
        try {
            List<String> chapterIdList = this.bookManager.getChapterIdList();
            if (CollectionKt.isNullOrEmpty(chapterIdList)) {
                return "";
            }
            if (chapterIdList.size() > 2) {
                CollectionsKt__MutableCollectionsKt.removeLast(chapterIdList);
                CollectionsKt__MutableCollectionsKt.removeFirst(chapterIdList);
            }
            Chapter chapter = this.bookManager.getChapter(chapterIdList.get(RandomUtils.nextInt(0, chapterIdList.size())));
            str = StringKt.parseTextLanguage(this.neoNative.getText(chapter.getStartPos(), chapter.getEndPos()), 1000);
            this.bookManager.getMetadata().setLanguage(str);
            Debug.INSTANCE.m32035d(CBoxDocument.class, "getLanguage : " + str, new Object[0]);
            return str;
        } catch (Exception e) {
            Debug.INSTANCE.m32063w(e);
            return str;
        }
    }

    /* renamed from: z */
    public final void m34563z(Bitmap bitmap) {
        if (this.debugTextRegion) {
            List<CBoxDataOnScreen.PieceOfText> textList = m34515O().getTextList();
            Debug.INSTANCE.m32052i(CBoxDocument.class, "Text size: " + textList.size(), new Object[0]);
            if (CollectionKt.isNullOrEmpty(textList)) {
                return;
            }
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            paint.setColor(-65536);
            paint.setStyle(Paint.Style.STROKE);
            Iterator<CBoxDataOnScreen.PieceOfText> it2 = textList.iterator();
            while (it2.hasNext()) {
                canvas.drawRect(it2.next().getCellOfScreen().getRect(), paint);
            }
        }
    }

    /* renamed from: z0 */
    public final boolean m34564z0() {
        PageInfo prevPage;
        if (isFirstPage() || (prevPage = this.bookManager.prevPage()) == null) {
            return false;
        }
        m34498C0(prevPage);
        return true;
    }

    public final int getPageNumberOfPosition(@NotNull PinPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.bookManager.getPageNumberOfPosition(position);
    }

    public final boolean gotoPosition(@NotNull PinPosition pos) {
        Intrinsics.checkNotNullParameter(pos, "pos");
        m34502E0();
        this.screenPageInfoMap.clear();
        if (!m34534i0(pos)) {
            return false;
        }
        if (m34548p0()) {
            return true;
        }
        int i = this.columnCount - 1;
        for (int i2 = 0; i2 < i && m34558w0(); i2++) {
        }
        m34504F0();
        return true;
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@NotNull ReaderHitTestArgs startArgs, @NotNull ReaderHitTestArgs endArgs, boolean findWord) {
        CBoxDataOnScreen.PieceOfText m34540l0;
        CBoxDataOnScreen.PieceOfText m34540l02;
        Intrinsics.checkNotNullParameter(startArgs, "startArgs");
        Intrinsics.checkNotNullParameter(endArgs, "endArgs");
        if (!m34538k0()) {
            return null;
        }
        PointF pointInDocument = startArgs.getPointInDocument();
        PointF pointInDocument2 = endArgs.getPointInDocument();
        ReaderPosition position = startArgs.getPosition();
        ReaderPosition position2 = endArgs.getPosition();
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O().getTextList();
        if (ReaderPositionImplKt.isValid(position)) {
            m34540l0 = textList.get(m34512L(position));
        } else {
            m34540l0 = m34540l0((int) pointInDocument.x, (int) pointInDocument.y);
        }
        if (m34540l0 == null) {
            if (!m34543n(pointInDocument.x, pointInDocument.y)) {
                return null;
            }
            m34540l0 = lastPieceOfText();
        }
        if (ReaderPositionImplKt.isValid(position2)) {
            m34540l02 = textList.get(m34505G(position2));
        } else {
            m34540l02 = m34540l0((int) pointInDocument2.x, (int) pointInDocument2.y);
        }
        if (m34540l02 == null) {
            if (!m34543n(pointInDocument2.x, pointInDocument2.y)) {
                return null;
            }
            m34540l02 = lastPieceOfText();
        }
        if (!findWord) {
            Intrinsics.checkNotNull(m34540l0);
            Intrinsics.checkNotNull(m34540l02);
            return m34549q(m34540l0, m34540l02);
        }
        Intrinsics.checkNotNull(m34540l0);
        CBoxDataOnScreen.PieceOfText m34513M = m34513M(m34540l0.getPosition(), false);
        Intrinsics.checkNotNull(m34540l02);
        return m34549q(m34513M, m34513M(m34540l02.getPosition(), true));
    }

    @NotNull
    public final BookOpenResult open(@NotNull OpenOptions options, @NotNull String bookKeyCode) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(bookKeyCode, "bookKeyCode");
        String path = options.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        this.path = path;
        this.bookKeyCode = bookKeyCode;
        return this.bookManager.open(options, bookKeyCode);
    }

    public CBoxDocument(@NotNull NeoBaseNative neoNative, @NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        this.screenPageInfoMap = new TreeMap<>();
        this.screenDataLruCache = new ScreenDataLruCache(3);
        this.abort = new AtomicBoolean(false);
        this.viewSize = new Size(0, 0, 3, null);
        this.columnCount = 1;
        this.lazyLoadLink = true;
        this.neoNative = neoNative;
        this.displayMetrics = displayMetrics;
        this.bookManager = new BookManager(neoNative, displayMetrics);
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@NotNull ReaderPosition startPos, @NotNull ReaderPosition endPos) {
        Intrinsics.checkNotNullParameter(startPos, "startPos");
        Intrinsics.checkNotNullParameter(endPos, "endPos");
        if (!m34538k0()) {
            return null;
        }
        List<CBoxDataOnScreen.PieceOfText> textList = m34515O().getTextList();
        return m34549q(textList.get(m34512L(startPos)), textList.get(m34505G(endPos)));
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@NotNull ReaderSelectTextArgs args) {
        List<RectF> mutableList;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!m34538k0()) {
            return null;
        }
        List<RectF> m34514N = m34514N();
        args.setScreenPage(true);
        args.setAllCharRectList(m34514N);
        List<RectF> selectCharRectList = ReaderSelectionUtils.INSTANCE.selectCharRectList(args);
        if (CollectionKt.isNullOrEmpty(selectCharRectList)) {
            return null;
        }
        com.onyx.android.sdk.reader.api.PageRange m34556v = m34556v(getScreenStartPosition(), getScreenEndPosition());
        com.onyx.android.sdk.reader.api.PageRange copy = m34556v.copy();
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) selectCharRectList);
        readerSelectionImpl.setCharRectList(mutableList);
        readerSelectionImpl.setPageRange(m34556v);
        readerSelectionImpl.setSelectionRange(copy);
        readerSelectionImpl.setPageIndex(getPageNumberOfPosition(getScreenStartPosition()));
        return readerSelectionImpl;
    }
}

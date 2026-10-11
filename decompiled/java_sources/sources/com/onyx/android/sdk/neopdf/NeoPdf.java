package com.onyx.android.sdk.neopdf;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ArraysKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.lib.JSONUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b!\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b\u0087\u0002\u0010\u0088\u0002J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fJ \u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000eJ \u0010\n\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004J\u0014\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0013H\u0007J\u001c\u0010\u0014\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0013H\u0007J*\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0016H\u0007J(\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0016J*\u0010\u001f\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0016H\u0007J2\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00162\b\b\u0002\u0010\u000b\u001a\u00020\u0004J0\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\fJ\u0010\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020\u0016J(\u0010(\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00162\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$2\b\u0010'\u001a\u0004\u0018\u00010\"J\"\u0010*\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00182\b\b\u0002\u0010\r\u001a\u00020\u0013H\u0007J\u0006\u0010+\u001a\u00020\u0002J\u0014\u0010/\u001a\u00020\u00022\f\u0010.\u001a\b\u0012\u0004\u0012\u00020-0,J\u000e\u00101\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0004J\u0018\u00103\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u0004H\u0007J\u000e\u00104\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0004J\u0016\u00105\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u0004J\u0006\u00106\u001a\u00020\u0016J\u0013\u00108\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0004\b8\u00109J\u0006\u0010:\u001a\u00020\u0006J\u0006\u0010;\u001a\u00020\u0006J\u000e\u0010>\u001a\u00020\u00062\u0006\u0010=\u001a\u00020<J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016J\u0014\u0010B\u001a\b\u0012\u0004\u0012\u00020A0,2\u0006\u0010?\u001a\u00020\u0016J\u0016\u0010E\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0006\u0010D\u001a\u00020CJ\u000e\u0010F\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016J\u000e\u0010G\u001a\u00020\u00042\u0006\u0010?\u001a\u00020\u0016J\u0016\u0010G\u001a\u00020\u00042\u0006\u0010?\u001a\u00020\u00162\u0006\u0010H\u001a\u00020\u0002J\u000e\u0010I\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016J\u000e\u0010J\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0016J\u000e\u0010L\u001a\u00020\u00062\u0006\u0010K\u001a\u00020\u0002J\u000e\u0010M\u001a\u00020\u00062\u0006\u0010K\u001a\u00020\u0002J?\u0010Q\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u00162\f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u0004072\f\u0010O\u001a\b\u0012\u0004\u0012\u00020\u0004072\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0004\bQ\u0010RJ\u000e\u0010T\u001a\u00020\u00062\u0006\u0010S\u001a\u00020$J\u000e\u0010V\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0018J\u000e\u0010X\u001a\u00020\u00062\u0006\u0010W\u001a\u00020\u0016J\u000e\u0010Y\u001a\u00020\u00022\u0006\u0010K\u001a\u00020\u0002J>\u0010_\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0006\u0010Z\u001a\u00020\u00162\u0006\u0010[\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\u00162\u0006\u0010^\u001a\u00020]JF\u0010_\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0006\u0010Z\u001a\u00020\u00162\u0006\u0010[\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\u00162\u0006\u0010`\u001a\u00020\u00162\u0006\u0010^\u001a\u00020]J\u000e\u0010c\u001a\u00020\u00022\u0006\u0010b\u001a\u00020aJ\u000e\u0010d\u001a\u00020\u00022\u0006\u0010b\u001a\u00020aJ\u001e\u0010g\u001a\u00020\u00022\u0006\u0010e\u001a\u00020a2\u0006\u0010f\u001a\u00020\u00162\u0006\u0010D\u001a\u00020\u0016J\u000e\u0010i\u001a\u00020\u00162\u0006\u0010h\u001a\u00020aJ\u001b\u0010k\u001a\u00020\u00022\f\u0010j\u001a\b\u0012\u0004\u0012\u00020a07¢\u0006\u0004\bk\u0010lJ&\u0010p\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\f\u0010n\u001a\b\u0012\u0004\u0012\u00020m0,2\b\b\u0002\u0010o\u001a\u00020\u0002J\u0010\u0010r\u001a\u0004\u0018\u00010\u00042\u0006\u0010q\u001a\u00020mJ\u001e\u0010u\u001a\u00020\u00022\u0006\u0010q\u001a\u00020m2\u0006\u0010s\u001a\u00020\u00162\u0006\u0010t\u001a\u00020\u0004J \u0010x\u001a\u00020\u00042\u0006\u0010?\u001a\u00020\u00162\u0006\u0010w\u001a\u00020v2\b\b\u0002\u0010o\u001a\u00020\u0002J \u0010y\u001a\u00020\u00162\u0006\u0010?\u001a\u00020\u00162\u0006\u0010w\u001a\u00020v2\b\b\u0002\u0010o\u001a\u00020\u0002J\u001c\u0010{\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\f\u0010n\u001a\b\u0012\u0004\u0012\u00020z0,J1\u0010{\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\f\u0010n\u001a\b\u0012\u0004\u0012\u00020z0,2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0004\b{\u0010}J\u001c\u0010\u007f\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\f\u0010~\u001a\b\u0012\u0004\u0012\u00020\u00010,J\u001f\u0010\u0082\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u000e\u0010n\u001a\n\u0012\u0005\u0012\u00030\u0081\u00010\u0080\u0001J\u001d\u0010\u0083\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\f\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00010,Jw\u0010\u008c\u0001\u001a\u00020\u00162\u0006\u0010?\u001a\u00020\u00162\u0006\u0010Z\u001a\u00020\u00162\u0006\u0010[\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\u00162\u0007\u0010\u0084\u0001\u001a\u00020\u00162\u0007\u0010\u0085\u0001\u001a\u00020\u00162\u0007\u0010\u0086\u0001\u001a\u00020\u00162\u0007\u0010\u0087\u0001\u001a\u00020\u00162\u0007\u0010\u0088\u0001\u001a\u00020\u00012\u0007\u0010\u0089\u0001\u001a\u00020\u00022\b\u0010\u008b\u0001\u001a\u00030\u008a\u0001JS\u0010\u008b\u0001\u001a\u00020\u00162\u0006\u0010?\u001a\u00020\u00162\u0006\u0010Z\u001a\u00020\u00162\u0006\u0010[\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\u00162\u0007\u0010\u008d\u0001\u001a\u00020\u00162\u0007\u0010\u008e\u0001\u001a\u00020\u00162\b\u0010\u008b\u0001\u001a\u00030\u008a\u0001Jj\u0010\u0093\u0001\u001a\u00020\u00162\u0006\u0010?\u001a\u00020\u00162\u0006\u0010Z\u001a\u00020\u00162\u0006\u0010[\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\u00162\u0007\u0010\u008f\u0001\u001a\u00020\u00042\u0007\u0010\u0090\u0001\u001a\u00020\u00022\u0007\u0010\u0091\u0001\u001a\u00020\u00022\u0007\u0010\u0092\u0001\u001a\u00020\u00162\r\u0010n\u001a\t\u0012\u0005\u0012\u00030\u008a\u00010,J\"\u0010\u0096\u0001\u001a\u00030\u0095\u00012\u0006\u0010?\u001a\u00020\u00162\u0007\u0010\u0094\u0001\u001a\u00020\u00162\u0007\u0010\u0088\u0001\u001a\u00020\u0001J \u0010\u0097\u0001\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001072\u0006\u0010)\u001a\u00020\u0018¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u001f\u0010\u009a\u0001\u001a\u00020\u00182\r\u0010\u0099\u0001\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J \u0010\u009c\u0001\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001072\u0006\u0010)\u001a\u00020\u0018¢\u0006\u0006\b\u009c\u0001\u0010\u0098\u0001J\u001f\u0010\u009e\u0001\u001a\u00020\u00182\r\u0010\u009d\u0001\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0006\b\u009e\u0001\u0010\u009b\u0001J\u000f\u0010\u009c\u0001\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0016J\u0018\u0010 \u0001\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00162\u0007\u0010\u009f\u0001\u001a\u00020\u0004J\u000f\u0010\u0097\u0001\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0016J\u0012\u0010¢\u0001\u001a\u00020\u00022\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u0004J\u0010\u0010£\u0001\u001a\u00020\u00162\u0007\u0010¡\u0001\u001a\u00020\u0004J\u0017\u0010¤\u0001\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J \u0010¤\u0001\u001a\u00020\u00022\u0007\u0010\u009f\u0001\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J(\u0010¥\u0001\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00162\u0007\u0010\u009f\u0001\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J\u000f\u0010¦\u0001\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0016J\u0018\u0010¨\u0001\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00162\u0007\u0010§\u0001\u001a\u00020\u0016J\u0018\u0010©\u0001\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00162\u0007\u0010§\u0001\u001a\u00020\u0016J\u000f\u0010ª\u0001\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0016J\u000f\u0010«\u0001\u001a\u00020\u00042\u0006\u0010?\u001a\u00020\u0016J\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010¬\u00012\u0006\u0010?\u001a\u00020\u00162\b\u0010E\u001a\u0004\u0018\u00010\u0018J\u000f\u0010®\u0001\u001a\u00020\u00042\u0006\u0010?\u001a\u00020\u0016J)\u0010±\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0007\u0010¯\u0001\u001a\u00020\u00042\u0007\u0010°\u0001\u001a\u00020\u00042\u0006\u0010^\u001a\u00020]J2\u0010±\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0007\u0010¯\u0001\u001a\u00020\u00042\u0007\u0010°\u0001\u001a\u00020\u00042\u0006\u0010^\u001a\u00020]2\u0007\u0010²\u0001\u001a\u00020\u0004J\u000f\u0010³\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016J\u000f\u0010´\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016J\u0011\u0010·\u0001\u001a\u00020\u00022\b\u0010¶\u0001\u001a\u00030µ\u0001J\u0007\u0010¸\u0001\u001a\u00020\u0002J\u000f\u0010¹\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016J\u0012\u0010»\u0001\u001a\u0005\u0018\u00010º\u00012\u0006\u0010?\u001a\u00020\u0016J\u0019\u0010½\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\b\u0010¼\u0001\u001a\u00030º\u0001J\u000f\u0010¾\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016J-\u0010Á\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\r\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u00020\u00010,2\r\u0010À\u0001\u001a\b\u0012\u0004\u0012\u00020\u00010,J \u0010Å\u0001\u001a\u00020\u00022\u0007\u0010Â\u0001\u001a\u00020\t2\u000e\u0010Ä\u0001\u001a\t\u0012\u0005\u0012\u00030Ã\u00010,J\u001a\u0010Ç\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010?\u001a\u00020\u00162\u0007\u0010Æ\u0001\u001a\u00020\u0004J,\u0010Ç\u0001\u001a\b\u0012\u0004\u0012\u00020\u0004072\u0006\u0010?\u001a\u00020\u00162\f\u0010O\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0006\bÇ\u0001\u0010È\u0001J\u0019\u0010Ë\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\b\u0010Ê\u0001\u001a\u00030É\u0001J\u0019\u0010Ì\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\b\u0010Ê\u0001\u001a\u00030É\u0001J\u001a\u0010Í\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0007\u0010Æ\u0001\u001a\u00020\u0004H\u0007J\u0018\u0010Î\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0007\u0010¡\u0001\u001a\u00020\u0004J'\u0010Ï\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\r\u0010\u0099\u0001\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0006\bÏ\u0001\u0010Ð\u0001J\u001a\u0010Ò\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010?\u001a\u00020\u00162\u0007\u0010Ñ\u0001\u001a\u00020\u0004J,\u0010Ò\u0001\u001a\b\u0012\u0004\u0012\u00020\u0004072\u0006\u0010?\u001a\u00020\u00162\f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0006\bÒ\u0001\u0010È\u0001J$\u0010Ô\u0001\u001a\u0005\u0018\u00010Ó\u00012\u0006\u0010?\u001a\u00020\u00162\b\u0010¶\u0001\u001a\u00030µ\u00012\u0006\u0010\r\u001a\u00020\u0013J5\u0010Õ\u0001\u001a\u0005\u0018\u00010Ó\u00012\u0006\u0010?\u001a\u00020\u00162\u0010\u0010À\u0001\u001a\u000b\u0012\u0005\u0012\u00030µ\u0001\u0018\u0001072\u0006\u0010\r\u001a\u00020\u0013¢\u0006\u0006\bÕ\u0001\u0010Ö\u0001J\u0019\u0010×\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\b\u0010¶\u0001\u001a\u00030µ\u0001J(\u0010Ø\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u000e\u0010À\u0001\u001a\t\u0012\u0005\u0012\u00030µ\u000107¢\u0006\u0006\bØ\u0001\u0010Ù\u0001J'\u0010Ü\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\b\u0010¶\u0001\u001a\u00030µ\u00012\n\b\u0002\u0010Û\u0001\u001a\u00030Ú\u0001H\u0007J(\u0010Ý\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u000e\u0010À\u0001\u001a\t\u0012\u0005\u0012\u00030µ\u000107¢\u0006\u0006\bÝ\u0001\u0010Ù\u0001J\u0019\u0010×\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\b\u0010Þ\u0001\u001a\u00030Ó\u0001J\u001a\u0010ß\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0007\u0010Ñ\u0001\u001a\u00020\u0004H\u0007J\u0018\u0010à\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\u0007\u0010¡\u0001\u001a\u00020\u0004J'\u0010á\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\r\u0010\u0099\u0001\u001a\b\u0012\u0004\u0012\u00020\u000407¢\u0006\u0006\bá\u0001\u0010Ð\u0001J\u001b\u0010ä\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\n\u0010ã\u0001\u001a\u0005\u0018\u00010â\u0001J\u0012\u0010å\u0001\u001a\u0005\u0018\u00010â\u00012\u0006\u0010?\u001a\u00020\u0016J#\u0010ê\u0001\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u00162\b\u0010ç\u0001\u001a\u00030æ\u00012\b\u0010é\u0001\u001a\u00030è\u0001R\u0018\u0010ì\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0007\u0010ë\u0001R\u0019\u0010ï\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010î\u0001R)\u0010\u0005\u001a\u00020\u00042\u0007\u0010ð\u0001\u001a\u00020\u00048\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\bñ\u0001\u0010ò\u0001\u001a\u0006\bó\u0001\u0010ô\u0001R\u001b\u0010÷\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0001\u0010ö\u0001R.\u0010ü\u0001\u001a\u0004\u0018\u00010\f2\t\u0010ð\u0001\u001a\u0004\u0018\u00010\f8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\bø\u0001\u0010ù\u0001\u001a\u0006\bú\u0001\u0010û\u0001R\u001c\u0010\u0081\u0002\u001a\u00020\u00138\u0006¢\u0006\u0010\n\u0006\bý\u0001\u0010þ\u0001\u001a\u0006\bÿ\u0001\u0010\u0080\u0002R)\u0010\u0083\u0002\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0082\u0002\u0010î\u0001\u001a\u0006\b\u0083\u0002\u0010\u0084\u0002\"\u0006\b\u0085\u0002\u0010\u0086\u0002¨\u0006\u0089\u0002"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/NeoPdf;", "", "", "save", "", "filePath", "", "a", "path", "", "openDocument", "password", "Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;", "options", "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/neopdf/PdfFileStream;", "stream", "createNewDocument", "Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;", "saveAs", "srcPath", "", "srcPageIndex", "", "objNumberMap", "dstPageIndex", "importPage", "Lcom/onyx/android/sdk/neopdf/PdfImportContext;", "context", "srcPages", "importPages", "pdfOpenOptions", "pageIndex", "Landroid/graphics/Matrix;", "getPageContentMatrix", "", "width", "height", "matrix", "resizePageWithContent", NotificationCompat.WearableExtender.f5053s, "exportPages", "closeDocument", "", "Lcom/onyx/android/sdk/neopdf/PdfDocumentVersion;", "versions", "retrieveDocumentVersions", "tag", "metadata", "value", "setMetadata", "getOnyxTagMetadata", "setOnyxTagMetadata", "pageCount", "", "pageLabels", "()[Ljava/lang/String;", "beginLookupPageData", "endLookupPageData", "Lcom/onyx/android/sdk/neopdf/PdfCallback;", "callback", "setCallback", "page", "lookUpPageAnnotData", "Lcom/onyx/android/sdk/neopdf/PdfFontInfo;", "getPageFonts", "", "size", "pageSize", "isTextPage", "getPageText", "includeArtifacts", "isComplexPage", "isOnyxPage", "render", "setRenderAnnotations", "setRenderOnyxAnnotations", "shapeIdArray", "highlightIdArray", "objIdArray", "setAnnotRenderIgnoreList", "(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V", "gamma", "setTextGamma", "table", "setTextGammaTable", "level", "setFontEmboldenLevel", "setRenderFormFields", "x", "y", "rotation", "Landroid/graphics/Bitmap;", "bitmap", "renderPage", "flags", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "root", "getTableOfContent", "getTableOfContentWithoutPageIndex", "parent", gon.f71290o0, "loadTocChildren", "entry", "getTocEntryDestPage", "rootEntries", "setTableOfContent", "([Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z", "Lcom/onyx/android/sdk/neopdf/PdfLink;", "list", "acceptOnyxLink", "getPageLinks", "link", "getLinkDest", "linkType", "dest", "updateLinkDesk", "Landroid/graphics/PointF;", "point", "getLinkDestAtPoint", "getLinkPageAtPoint", "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;", "getPageRichMedias", "ignoreObjIdList", "(ILjava/util/List;[Ljava/lang/String;)Z", "fields", "LoadFormFields", "", "Lcom/onyx/android/sdk/neopdf/PdfCharInfo;", "getPageTextCharBoxes", "getPageImageRegions", "startX", "startY", "endX", "endY", "splitter", "selectingWord", "Lcom/onyx/android/sdk/neopdf/PdfTextSelection;", "selection", "hitTest", "startCharIndex", "endCharIndex", "text", "caseSensitive", "matchWholeWord", "contextLength", "searchInPage", "sentenceStartIndex", "Lcom/onyx/android/sdk/neopdf/PdfSentence;", "getSentence", "getPageObjId", "([I)[Ljava/lang/String;", "objIds", "getPageIndexByObjId", "([Ljava/lang/String;)[I", "getPageId", "ids", "getPageIndexById", CouchFieldKey.KEY_TOC_PAGE_ID, "setPageId", "objId", "isDummyPageObjId", "getPageIndexByDummyPageObjId", "appendPage", "insertPage", "removePage", "dstIndex", "movePage", "copyPage", "flattenPage", "getBackgroundResourceId", "", "getBackgroundBitmap", "getBackgroundExtraAttr", "imageId", CouchFieldKey.KEY_RESOURCE_ID, "setBackground", "extraAttr", "removeBackground", "beginPageBackgroundRender", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "shape", "drawPageBackgroundShape", "endPageBackgroundRender", "hasOnyxBookmark", "Lcom/onyx/android/sdk/neopdf/PdfBookmark;", "getOnyxBookmark", "pdfBookmark", "addOnyxBookmark", "removeOnyxBookmark", "highlights", "shapes", "getPageAnnotations", TypedValues.CycleType.S_WAVE_OFFSET, "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;", "logs", "getPdfAnnotLogs", "highlightId", "getHighlightObjId", "(I[Ljava/lang/String;)[Ljava/lang/String;", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "highlight", "writeHighlight", "updateHighlight", "removeHighlight", "removeHighlightByObjId", "removeHighlights", "(I[Ljava/lang/String;)Z", "shapeId", "getShapeObjId", "Lcom/onyx/android/sdk/neopdf/PdfShapeData;", "serializeShapeData", "serializeInkShapesData", "(I[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Lcom/onyx/android/sdk/neopdf/PdfShapeData;", "writeShape", "writeInkShapes", "(I[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z", "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;", "updateOptions", "updateShape", "updateInkShapes", "shapeData", "removeShape", "removeShapeByObjId", "removeShapes", "Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;", "layerInfo", "updatePageLayer", "getPageLayer", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "run", "Lcom/onyx/android/sdk/neopdf/PdfTextState;", "state", "addPageTextObject", "I", "id", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isNewDocument", "<set-?>", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFilePath", "()Ljava/lang/String;", "d", "Lcom/onyx/android/sdk/neopdf/PdfFileStream;", "fileStream", "e", "Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;", "getOpenOptions", "()Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;", "openOptions", C6997f.f39671c, "Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;", "getSaveOptions", "()Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;", "saveOptions", C6998g.f39679a, "isExported", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setExported", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoPdf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdf.kt\ncom/onyx/android/sdk/neopdf/NeoPdf\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,833:1\n766#2:834\n857#2,2:835\n1855#2,2:840\n37#3,2:837\n26#4:839\n*S KotlinDebug\n*F\n+ 1 NeoPdf.kt\ncom/onyx/android/sdk/neopdf/NeoPdf\n*L\n371#1:834\n371#1:835,2\n481#1:840,2\n372#1:837,2\n462#1:839\n*E\n"})
/* loaded from: classes7.dex */
public final class NeoPdf {

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isNewDocument;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public PdfFileStream fileStream;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public PdfOpenOptions openOptions;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isExported;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String filePath = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final PdfSaveOptions saveOptions = new PdfSaveOptions();

    /* renamed from: a, reason: from kotlin metadata */
    public int id = NeoPdfNative.INSTANCE.nextId();

    public static /* synthetic */ boolean exportPages$default(NeoPdf neoPdf, String str, int[] iArr, PdfSaveOptions pdfSaveOptions, int i, Object obj) {
        if ((i & 4) != 0) {
            pdfSaveOptions = neoPdf.saveOptions;
        }
        return neoPdf.exportPages(str, iArr, pdfSaveOptions);
    }

    public static /* synthetic */ String getLinkDestAtPoint$default(NeoPdf neoPdf, int i, PointF pointF, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return neoPdf.getLinkDestAtPoint(i, pointF, z);
    }

    public static /* synthetic */ int getLinkPageAtPoint$default(NeoPdf neoPdf, int i, PointF pointF, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return neoPdf.getLinkPageAtPoint(i, pointF, z);
    }

    public static /* synthetic */ boolean getPageLinks$default(NeoPdf neoPdf, int i, List list, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return neoPdf.getPageLinks(i, list, z);
    }

    public static /* synthetic */ PdfImportContext importPages$default(NeoPdf neoPdf, PdfImportContext pdfImportContext, String str, int[] iArr, int i, String str2, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            str2 = "";
        }
        return neoPdf.importPages(pdfImportContext, str, iArr, i, str2);
    }

    public static /* synthetic */ long openDocument$default(NeoPdf neoPdf, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return neoPdf.openDocument(str, str2);
    }

    public static /* synthetic */ boolean save$default(NeoPdf neoPdf, PdfSaveOptions pdfSaveOptions, int i, Object obj) {
        if ((i & 1) != 0) {
            pdfSaveOptions = neoPdf.saveOptions;
        }
        return neoPdf.save(pdfSaveOptions);
    }

    public static /* synthetic */ boolean saveAs$default(NeoPdf neoPdf, String str, PdfSaveOptions pdfSaveOptions, int i, Object obj) {
        if ((i & 2) != 0) {
            pdfSaveOptions = neoPdf.saveOptions;
        }
        return neoPdf.saveAs(str, pdfSaveOptions);
    }

    public static /* synthetic */ boolean updateShape$default(NeoPdf neoPdf, int i, PdfShapeInfo pdfShapeInfo, PdfShapeUpdateOptions pdfShapeUpdateOptions, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            pdfShapeUpdateOptions = new PdfShapeUpdateOptions();
        }
        return neoPdf.updateShape(i, pdfShapeInfo, pdfShapeUpdateOptions);
    }

    public final boolean LoadFormFields(int page, @NotNull List<? extends Object> fields) {
        Intrinsics.checkNotNullParameter(fields, "fields");
        return NeoPdfNative.INSTANCE.nativeLoadFormFields(this.id, page, fields);
    }

    /* renamed from: a */
    public final void m33540a(boolean save, String filePath) {
        Debug.INSTANCE.m32059w(NeoPdf.class, "save result = " + save + ", file length = " + FileUtils.INSTANCE.getFileSize(filePath) + ", path = " + filePath, new Object[0]);
    }

    public final boolean addOnyxBookmark(int page, @NotNull PdfBookmark pdfBookmark) {
        Intrinsics.checkNotNullParameter(pdfBookmark, "pdfBookmark");
        return NeoPdfNative.INSTANCE.nativeAddOnyxBookmark(this.id, page, StringKt.safelyGetStr(JSONUtils.INSTANCE.toJson(pdfBookmark)));
    }

    public final boolean addPageTextObject(int page, @NotNull PdfTextRun run, @NotNull PdfTextState state) {
        Intrinsics.checkNotNullParameter(run, "run");
        Intrinsics.checkNotNullParameter(state, "state");
        return NeoPdfNative.INSTANCE.nativeAddPageTextObject(this.id, page, run, state);
    }

    public final boolean appendPage(float width, float height) {
        return appendPage("", width, height);
    }

    public final void beginLookupPageData() {
        NeoPdfNative.INSTANCE.nativeBeginLookUpPageAnnotData(this.id);
    }

    public final boolean beginPageBackgroundRender(int page) {
        return NeoPdfNative.INSTANCE.nativeBeginPageBackgroundRender(this.id, page);
    }

    public final boolean closeDocument() {
        this.isNewDocument = false;
        this.filePath = "";
        this.fileStream = null;
        this.openOptions = null;
        return NeoPdfNative.INSTANCE.nativeCloseDocument(this.id);
    }

    public final boolean copyPage(int pageIndex, int dstIndex) {
        return NeoPdfNative.INSTANCE.nativeCopyPage(this.id, pageIndex, dstIndex);
    }

    public final boolean createNewDocument() {
        if (!NeoPdfNative.INSTANCE.nativeCreateNewDocument(this.id)) {
            return false;
        }
        this.isNewDocument = true;
        return true;
    }

    public final boolean drawPageBackgroundShape(@NotNull PdfShapeInfo shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return NeoPdfNative.INSTANCE.nativeDrawPageBackgroundShape(this.id, shape);
    }

    public final void endLookupPageData() {
        NeoPdfNative.INSTANCE.nativeEndLookUpPageAnnotData(this.id);
    }

    public final boolean endPageBackgroundRender() {
        return NeoPdfNative.INSTANCE.nativeEndPageBackgroundRender(this.id);
    }

    @JvmOverloads
    public final boolean exportPages(@NotNull String path, @NotNull int[] pages) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pages, "pages");
        return exportPages$default(this, path, pages, null, 4, null);
    }

    public final boolean flattenPage(int pageIndex) {
        return NeoPdfNative.INSTANCE.nativeFlattenPage(this.id, pageIndex);
    }

    @Nullable
    public final byte[] getBackgroundBitmap(int page, @Nullable int[] pageSize) {
        boolean z = false;
        if (pageSize != null && pageSize.length == 2) {
            z = true;
        }
        if (z) {
            return NeoPdfNative.INSTANCE.nativeGetBackgroundBitmap(this.id, page, pageSize);
        }
        return null;
    }

    @NotNull
    public final String getBackgroundExtraAttr(int page) {
        return NeoPdfNative.INSTANCE.nativeGetBackgroundExtraAttr(this.id, page);
    }

    @NotNull
    public final String getBackgroundResourceId(int page) {
        return NeoPdfNative.INSTANCE.nativeGetBackgroundResourceId(this.id, page);
    }

    @NotNull
    public final String getFilePath() {
        return this.filePath;
    }

    @Nullable
    public final String getHighlightObjId(int page, @NotNull String highlightId) {
        Intrinsics.checkNotNullParameter(highlightId, "highlightId");
        String[] highlightObjId = getHighlightObjId(page, new String[]{highlightId});
        boolean z = true;
        if (highlightObjId != null) {
            if (!(highlightObjId.length == 0)) {
                z = false;
            }
        }
        if (z) {
            return null;
        }
        return highlightObjId[0];
    }

    @Nullable
    public final String getLinkDest(@NotNull PdfLink link) {
        Intrinsics.checkNotNullParameter(link, "link");
        return NeoPdfNative.INSTANCE.nativeGetLinkDest(this.id, link.linkPtr);
    }

    @NotNull
    public final String getLinkDestAtPoint(int page, @NotNull PointF point, boolean acceptOnyxLink) {
        Intrinsics.checkNotNullParameter(point, "point");
        return StringKt.safelyGetStr(NeoPdfNative.INSTANCE.nativeGetLinkDestAtPoint(this.id, page, acceptOnyxLink, point.x, point.y));
    }

    public final int getLinkPageAtPoint(int page, @NotNull PointF point, boolean acceptOnyxLink) {
        Intrinsics.checkNotNullParameter(point, "point");
        return NeoPdfNative.INSTANCE.nativeGetLinkPageAtPoint(this.id, page, acceptOnyxLink, point.x, point.y);
    }

    @Nullable
    public final PdfBookmark getOnyxBookmark(int page) {
        String nativeGetOnyxBookmark = NeoPdfNative.INSTANCE.nativeGetOnyxBookmark(this.id, page);
        if (nativeGetOnyxBookmark == null) {
            return null;
        }
        return nativeGetOnyxBookmark.length() == 0 ? new PdfBookmark("") : (PdfBookmark) JSONUtils.INSTANCE.parseObject(nativeGetOnyxBookmark, PdfBookmark.class);
    }

    @NotNull
    public final String getOnyxTagMetadata(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return NeoPdfNative.INSTANCE.nativeGetOnyxTagMetadata(this.id, tag);
    }

    @Nullable
    public final PdfOpenOptions getOpenOptions() {
        return this.openOptions;
    }

    public final boolean getPageAnnotations(int page, @NotNull List<? extends Object> highlights, @NotNull List<? extends Object> shapes) {
        Intrinsics.checkNotNullParameter(highlights, "highlights");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        return NeoPdfNative.INSTANCE.nativeGetPageAnnotations(this.id, page, highlights, shapes);
    }

    @Nullable
    public final Matrix getPageContentMatrix(int pageIndex) {
        float[] nativeGetPageContentMatrix = NeoPdfNative.INSTANCE.nativeGetPageContentMatrix(this.id, pageIndex);
        if (nativeGetPageContentMatrix == null) {
            return null;
        }
        return MatrixKt.getMatrixByValues(nativeGetPageContentMatrix);
    }

    @NotNull
    public final List<PdfFontInfo> getPageFonts(int page) {
        List<PdfFontInfo> emptyList;
        ArrayList arrayList = new ArrayList();
        if (NeoPdfNative.INSTANCE.nativeGetPageFonts(this.id, page, arrayList)) {
            return arrayList;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Nullable
    public final String[] getPageId(@NotNull int[] pages) {
        Intrinsics.checkNotNullParameter(pages, "pages");
        return NeoPdfNative.INSTANCE.nativeGetPageIdArray(this.id, pages);
    }

    public final boolean getPageImageRegions(int page, @NotNull List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return NeoPdfNative.INSTANCE.nativeGetPageImageRegions(this.id, page, list, 100);
    }

    public final int getPageIndexByDummyPageObjId(@NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        String subStartString = StringKt.subStartString(objId, 12);
        if (subStartString.length() > 0) {
            return Integer.parseInt(subStartString);
        }
        return -1;
    }

    @NotNull
    public final int[] getPageIndexById(@NotNull String[] ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        return NeoPdfNative.INSTANCE.nativeGetPageIndexById(this.id, ids);
    }

    @NotNull
    public final int[] getPageIndexByObjId(@NotNull String[] objIds) {
        Intrinsics.checkNotNullParameter(objIds, "objIds");
        return NeoPdfNative.INSTANCE.nativeGetPageIndexByObjId(this.id, objIds);
    }

    @Nullable
    public final PdfPageLayerInfo getPageLayer(int page) {
        String nativeGetPageLayer = NeoPdfNative.INSTANCE.nativeGetPageLayer(this.id, page);
        if (StringUtils.isBlank(nativeGetPageLayer)) {
            return null;
        }
        try {
            return (PdfPageLayerInfo) JSONUtils.INSTANCE.parseObject(nativeGetPageLayer, PdfPageLayerInfo.class);
        } catch (Throwable th) {
            Debug.INSTANCE.m32045e(NeoPdf.class, th);
            return null;
        }
    }

    public final boolean getPageLinks(int page, @NotNull List<? extends PdfLink> list, boolean acceptOnyxLink) {
        Intrinsics.checkNotNullParameter(list, "list");
        return NeoPdfNative.INSTANCE.nativeGetPageLinks(this.id, page, acceptOnyxLink, list);
    }

    @Nullable
    public final String[] getPageObjId(@NotNull int[] pages) {
        Intrinsics.checkNotNullParameter(pages, "pages");
        return NeoPdfNative.INSTANCE.nativeGetPageObjId(this.id, pages);
    }

    public final boolean getPageRichMedias(int page, @NotNull List<PdfRichMediaObject> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return getPageRichMedias(page, list, new String[0]);
    }

    @NotNull
    public final String getPageText(int page) {
        return getPageText(page, true);
    }

    public final boolean getPageTextCharBoxes(int page, @NotNull List<PdfCharInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        if (!NeoPdfNative.INSTANCE.nativeGetPageTextCharBoxes(this.id, page, arrayList)) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            PdfCharInfo create = PdfCharInfo.INSTANCE.create((PdfTextSelection) it2.next());
            if (create != null) {
                list.add(create);
            }
        }
        return true;
    }

    public final boolean getPdfAnnotLogs(long offset, @NotNull List<PdfAnnotLog> logs) {
        Intrinsics.checkNotNullParameter(logs, "logs");
        return NeoPdfNative.INSTANCE.nativeGetPdfAnnotLogs(this.id, offset, logs);
    }

    @NotNull
    public final PdfSaveOptions getSaveOptions() {
        return this.saveOptions;
    }

    @NotNull
    public final PdfSentence getSentence(int page, int sentenceStartIndex, @NotNull Object splitter) {
        Intrinsics.checkNotNullParameter(splitter, "splitter");
        Object nativeGetSentence = NeoPdfNative.INSTANCE.nativeGetSentence(this.id, page, sentenceStartIndex, splitter);
        Intrinsics.checkNotNull(nativeGetSentence, "null cannot be cast to non-null type com.onyx.android.sdk.neopdf.PdfSentence");
        return (PdfSentence) nativeGetSentence;
    }

    @Nullable
    public final String getShapeObjId(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        String[] shapeObjId = getShapeObjId(page, new String[]{shapeId});
        boolean z = true;
        if (shapeObjId != null) {
            if (!(shapeObjId.length == 0)) {
                z = false;
            }
        }
        if (z) {
            return null;
        }
        return shapeObjId[0];
    }

    public final boolean getTableOfContent(@NotNull PdfTocEntry root) {
        Intrinsics.checkNotNullParameter(root, "root");
        return getTableOfContentWithoutPageIndex(root);
    }

    public final boolean getTableOfContentWithoutPageIndex(@NotNull PdfTocEntry root) {
        Intrinsics.checkNotNullParameter(root, "root");
        return NeoPdfNative.INSTANCE.nativeGetTableOfContent(this.id, root);
    }

    public final int getTocEntryDestPage(@NotNull PdfTocEntry entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        return NeoPdfNative.INSTANCE.nativeGetTocEntryDestPage(this.id, entry.getEntryPtr());
    }

    public final boolean hasOnyxBookmark(int page) {
        return getOnyxBookmark(page) != null;
    }

    public final int hitTest(int page, int x, int y, int width, int height, int rotation, int startX, int startY, int endX, int endY, @NotNull Object splitter, boolean selectingWord, @NotNull PdfTextSelection selection) {
        Intrinsics.checkNotNullParameter(splitter, "splitter");
        Intrinsics.checkNotNullParameter(selection, "selection");
        return NeoPdfNative.INSTANCE.nativeHitTest(this.id, page, x, y, width, height, rotation, startX, startY, endX, endY, splitter, selectingWord, selection);
    }

    @Deprecated(message = "")
    @Nullable
    public final int[] importPage(@NotNull String srcPath, int srcPageIndex, @NotNull int[] objNumberMap, int dstPageIndex) {
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        Intrinsics.checkNotNullParameter(objNumberMap, "objNumberMap");
        PdfImportContext importPages$default = importPages$default(this, new PdfImportContext(objNumberMap), srcPath, new int[]{srcPageIndex}, dstPageIndex, null, 16, null);
        if (importPages$default == null) {
            return null;
        }
        return importPages$default.getObjNumberMapData();
    }

    @Deprecated(message = "")
    @Nullable
    public final int[] importPages(@NotNull String srcPath, @NotNull int[] srcPages, @NotNull int[] objNumberMap, int dstPageIndex) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        Intrinsics.checkNotNullParameter(srcPages, "srcPages");
        Intrinsics.checkNotNullParameter(objNumberMap, "objNumberMap");
        isBlank = StringsKt__StringsJVMKt.isBlank(srcPath);
        if (!isBlank && !ArraysKt.isNullOrEmpty(srcPages)) {
            return NeoPdfNative.INSTANCE.nativeImportPages(this.id, srcPath, new PdfOpenOptions(), srcPages, objNumberMap, dstPageIndex);
        }
        Debug.INSTANCE.m32044e(NeoPdf.class, "exportPages: Illegal arguments: " + srcPath + ", " + srcPages, new Object[0]);
        return null;
    }

    public final boolean insertPage(int pageIndex, @NotNull String pageId, float width, float height) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return NeoPdfNative.INSTANCE.nativeInsertPage(this.id, pageIndex, pageId, width, height);
    }

    public final boolean isComplexPage(int page) {
        return NeoPdfNative.INSTANCE.nativeIsComplexPage(this.id, page);
    }

    public final boolean isDummyPageObjId(@Nullable String objId) {
        return StringUtils.startsWithIgnoreCase(objId, NeoPdfNative.INVALID_PAGE_OBJ_ID_PREFIX);
    }

    /* renamed from: isExported, reason: from getter */
    public final boolean getIsExported() {
        return this.isExported;
    }

    public final boolean isOnyxPage(int pageIndex) {
        return NeoPdfNative.INSTANCE.nativeIsOnyxPage(this.id, pageIndex);
    }

    public final boolean isTextPage(int page) {
        return NeoPdfNative.INSTANCE.nativeIsTextPage(this.id, page);
    }

    public final boolean loadTocChildren(@NotNull PdfTocEntry parent, int start, int size) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return NeoPdfNative.INSTANCE.nativeLoadTocChildren(this.id, parent, start, size);
    }

    public final boolean lookUpPageAnnotData(int page) {
        return NeoPdfNative.INSTANCE.nativeLookUpPageAnnotData(this.id, page);
    }

    @NotNull
    public final String metadata(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return NeoPdfNative.INSTANCE.nativeMetadata(this.id, tag);
    }

    public final boolean movePage(int pageIndex, int dstIndex) {
        return NeoPdfNative.INSTANCE.nativeMovePage(this.id, pageIndex, dstIndex);
    }

    public final long openDocument(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return openDocument(path, new PdfOpenOptions());
    }

    public final int pageCount() {
        return NeoPdfNative.INSTANCE.nativePageCount(this.id);
    }

    @NotNull
    public final String[] pageLabels() {
        return NeoPdfNative.INSTANCE.nativeGetPageLabels(this.id);
    }

    public final boolean pageSize(int page, @NotNull float[] size) {
        Intrinsics.checkNotNullParameter(size, "size");
        return NeoPdfNative.INSTANCE.nativePageSize(this.id, page, size);
    }

    public final boolean removeBackground(int page) {
        return NeoPdfNative.INSTANCE.nativeRemoveBackground(this.id, page);
    }

    @Deprecated(message = "")
    public final boolean removeHighlight(int page, @NotNull String highlightId) {
        Intrinsics.checkNotNullParameter(highlightId, "highlightId");
        return NeoPdfNative.INSTANCE.nativeRemoveHighlight(this.id, page, highlightId);
    }

    public final boolean removeHighlightByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return NeoPdfNative.INSTANCE.nativeRemoveHighlightByObjId(this.id, page, objId);
    }

    public final boolean removeHighlights(int page, @NotNull String[] objIds) {
        Intrinsics.checkNotNullParameter(objIds, "objIds");
        return NeoPdfNative.INSTANCE.nativeRemoveHighlights(this.id, page, objIds);
    }

    public final boolean removeOnyxBookmark(int page) {
        return NeoPdfNative.INSTANCE.nativeRemoveOnyxBookmark(this.id, page);
    }

    public final boolean removePage(int pageIndex) {
        return NeoPdfNative.INSTANCE.nativeRemovePage(this.id, pageIndex);
    }

    @Deprecated(message = "")
    public final boolean removeShape(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        return NeoPdfNative.INSTANCE.nativeRemoveShape(this.id, page, shapeId);
    }

    public final boolean removeShapeByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return NeoPdfNative.INSTANCE.nativeRemoveShapeByObjId(this.id, page, objId);
    }

    public final boolean removeShapes(int page, @NotNull String[] objIds) {
        Intrinsics.checkNotNullParameter(objIds, "objIds");
        return NeoPdfNative.INSTANCE.nativeRemoveShapes(this.id, page, objIds);
    }

    public final boolean renderPage(int page, int x, int y, int width, int height, int rotation, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return NeoPdfNative.INSTANCE.nativeRenderPage(this.id, page, x, y, width, height, rotation, 0, bitmap);
    }

    public final boolean resizePageWithContent(int pageIndex, float width, float height, @Nullable Matrix matrix) {
        return NeoPdfNative.INSTANCE.nativeResizePageWithContent(this.id, pageIndex, width, height, MatrixKt.getMatrixValue(matrix));
    }

    public final boolean retrieveDocumentVersions(@NotNull List<PdfDocumentVersion> versions) {
        Intrinsics.checkNotNullParameter(versions, "versions");
        return NeoPdfNative.INSTANCE.nativeRetrieveDocumentVersions(this.id, versions);
    }

    @JvmOverloads
    public final boolean save() {
        return save$default(this, null, 1, null);
    }

    @JvmOverloads
    public final boolean saveAs(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return saveAs$default(this, path, null, 2, null);
    }

    public final int searchInPage(int page, int x, int y, int width, int height, int rotation, @NotNull String text, boolean caseSensitive, boolean matchWholeWord, int contextLength, @NotNull List<? extends PdfTextSelection> list) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(list, "list");
        return NeoPdfNative.INSTANCE.nativeSearchInPage(this.id, page, x, y, width, height, rotation, text, caseSensitive, matchWholeWord, contextLength, list);
    }

    public final int selection(int page, int x, int y, int width, int height, int rotation, int startCharIndex, int endCharIndex, @NotNull PdfTextSelection selection) {
        Intrinsics.checkNotNullParameter(selection, "selection");
        return NeoPdfNative.INSTANCE.nativeSelection(this.id, page, x, y, width, height, rotation, startCharIndex, endCharIndex, selection);
    }

    @Nullable
    public final PdfShapeData serializeInkShapesData(int page, @Nullable PdfShapeInfo[] shapes, @NotNull PdfSaveOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        boolean z = true;
        if (shapes != null) {
            if (!(shapes.length == 0)) {
                z = false;
            }
        }
        if (z) {
            Debug.INSTANCE.m32059w(NeoPdf.class, "serializeInkShapesData -> empty shapes", new Object[0]);
            return null;
        }
        if (PdfShapeInfo.INSTANCE.supportSerializeShapeData(shapes[0])) {
            PdfShapeData pdfShapeData = new PdfShapeData();
            if (NeoPdfNative.INSTANCE.nativeSerializeInkShapesData(this.id, page, shapes, options, pdfShapeData)) {
                return pdfShapeData;
            }
            return null;
        }
        Debug.INSTANCE.m32059w(NeoPdf.class, "serializeInkShapesData -> unsupported shape: " + shapes[0].getType(), new Object[0]);
        return null;
    }

    @Nullable
    public final PdfShapeData serializeShapeData(int page, @NotNull PdfShapeInfo shape, @NotNull PdfSaveOptions options) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(options, "options");
        if (PdfShapeInfo.INSTANCE.supportSerializeShapeData(shape)) {
            PdfShapeData pdfShapeData = new PdfShapeData();
            if (NeoPdfNative.INSTANCE.nativeSerializeShapeData(this.id, page, shape, options, pdfShapeData)) {
                return pdfShapeData;
            }
            return null;
        }
        Debug.INSTANCE.m32059w(NeoPdf.class, "serializeShapeData -> unsupported shape: " + shape.getType(), new Object[0]);
        return null;
    }

    public final void setAnnotRenderIgnoreList(int page, @NotNull String[] shapeIdArray, @NotNull String[] highlightIdArray, @NotNull String[] objIdArray) {
        Intrinsics.checkNotNullParameter(shapeIdArray, "shapeIdArray");
        Intrinsics.checkNotNullParameter(highlightIdArray, "highlightIdArray");
        Intrinsics.checkNotNullParameter(objIdArray, "objIdArray");
        ArrayList arrayList = new ArrayList();
        if (ArraysKt.isNotEmpty(objIdArray)) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, objIdArray);
        }
        if (ArraysKt.isNotEmpty(shapeIdArray)) {
            String[] nativeGetShapeObjId = NeoPdfNative.INSTANCE.nativeGetShapeObjId(this.id, page, shapeIdArray);
            if (ArraysKt.isNotEmpty(nativeGetShapeObjId)) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, nativeGetShapeObjId);
            }
        }
        if (ArraysKt.isNotEmpty(highlightIdArray)) {
            String[] nativeGetHighlightObjId = NeoPdfNative.INSTANCE.nativeGetHighlightObjId(this.id, page, highlightIdArray);
            if (ArraysKt.isNotEmpty(nativeGetHighlightObjId)) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, nativeGetHighlightObjId);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        NeoPdfNative.INSTANCE.nativeSetAnnotRenderIgnoreList(this.id, (String[]) arrayList2.toArray(new String[0]));
    }

    public final boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return NeoPdfNative.INSTANCE.nativeSetBackground(this.id, page, imageId, resourceId, bitmap, "");
    }

    public final void setCallback(@NotNull PdfCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        NeoPdfNative.INSTANCE.nativeSetCallback(this.id, callback);
    }

    public final void setExported(boolean z) {
        this.isExported = z;
    }

    public final void setFontEmboldenLevel(int level) {
        NeoPdfNative.INSTANCE.nativeSetFontEmboldenLevel(this.id, level);
    }

    @Deprecated(message = "")
    public final boolean setMetadata(@NotNull String tag, @NotNull String value) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(value, "value");
        return NeoPdfNative.INSTANCE.nativeSetMetadata(this.id, tag, value);
    }

    public final boolean setOnyxTagMetadata(@NotNull String tag, @NotNull String value) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(value, "value");
        return NeoPdfNative.INSTANCE.nativeSetOnyxTagMetadata(this.id, tag, value);
    }

    public final boolean setPageId(int pageIndex, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return NeoPdfNative.INSTANCE.nativeSetPageId(this.id, pageIndex, pageId);
    }

    public final void setRenderAnnotations(boolean render) {
        NeoPdfNative.INSTANCE.nativeSetRenderAnnotations(this.id, render);
    }

    public final boolean setRenderFormFields(boolean render) {
        return NeoPdfNative.INSTANCE.nativeSetRenderFormFields(this.id, render);
    }

    public final void setRenderOnyxAnnotations(boolean render) {
        NeoPdfNative.INSTANCE.nativeSetRenderOnyxAnnotations(this.id, render);
    }

    public final boolean setTableOfContent(@NotNull PdfTocEntry[] rootEntries) {
        Intrinsics.checkNotNullParameter(rootEntries, "rootEntries");
        return NeoPdfNative.INSTANCE.nativeSetTableOfContent(this.id, rootEntries);
    }

    public final void setTextGamma(float gamma) {
        NeoPdfNative.INSTANCE.nativeSetTextGamma(this.id, gamma);
    }

    public final void setTextGammaTable(@NotNull int[] table) {
        Intrinsics.checkNotNullParameter(table, "table");
        NeoPdfNative.INSTANCE.nativeSetTextGammaTable(this.id, table);
    }

    public final boolean updateHighlight(int page, @NotNull PdfHighlightInfo highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return NeoPdfNative.INSTANCE.nativeUpdateHighlight(this.id, page, highlight);
    }

    public final boolean updateInkShapes(int page, @NotNull PdfShapeInfo[] shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        return NeoPdfNative.INSTANCE.nativeUpdateInkShapes(this.id, page, shapes);
    }

    public final boolean updateLinkDesk(@NotNull PdfLink link, int linkType, @NotNull String dest) {
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(dest, "dest");
        return NeoPdfNative.INSTANCE.nativeUpdateLinkDest(this.id, link.linkPtr, linkType, dest);
    }

    public final boolean updatePageLayer(int page, @Nullable PdfPageLayerInfo layerInfo) {
        return NeoPdfNative.INSTANCE.nativeUpdatePageLayer(this.id, page, StringKt.safelyGetStr(JSONUtils.INSTANCE.toJSONString(layerInfo)));
    }

    @JvmOverloads
    public final boolean updateShape(int i, @NotNull PdfShapeInfo shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return updateShape$default(this, i, shape, null, 4, null);
    }

    public final boolean writeHighlight(int page, @NotNull PdfHighlightInfo highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return NeoPdfNative.INSTANCE.nativeWriteHighlight(this.id, page, highlight);
    }

    public final boolean writeInkShapes(int page, @NotNull PdfShapeInfo[] shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        return NeoPdfNative.INSTANCE.nativeWriteInkShapes(this.id, page, shapes);
    }

    public final boolean writeShape(int page, @NotNull PdfShapeInfo shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return NeoPdfNative.INSTANCE.nativeWriteShape(this.id, page, shape);
    }

    public static /* synthetic */ long openDocument$default(NeoPdf neoPdf, String str, PdfOpenOptions pdfOpenOptions, int i, Object obj) {
        if ((i & 2) != 0) {
            pdfOpenOptions = new PdfOpenOptions();
        }
        return neoPdf.openDocument(str, pdfOpenOptions);
    }

    public final boolean appendPage(@NotNull String pageId, float width, float height) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return insertPage(pageCount(), pageId, width, height);
    }

    @JvmOverloads
    public final boolean exportPages(@NotNull String path, @NotNull int[] pages, @NotNull PdfSaveOptions options) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pages, "pages");
        Intrinsics.checkNotNullParameter(options, "options");
        if (this.isNewDocument) {
            Debug.INSTANCE.m32044e(NeoPdf.class, "exportPages: new document can't be exported", new Object[0]);
            return false;
        }
        isBlank = StringsKt__StringsJVMKt.isBlank(path);
        if (!isBlank && !ArraysKt.isNullOrEmpty(pages)) {
            if (!NeoPdfNative.INSTANCE.nativeExportPages(this.id, path, pages, options)) {
                return false;
            }
            this.filePath = path;
            return true;
        }
        Debug.INSTANCE.m32044e(NeoPdf.class, "exportPages: Illegal arguments: " + path + ", " + pages, new Object[0]);
        return false;
    }

    @NotNull
    public final String getPageId(int pageIndex) {
        return StringKt.safelyGetStr(NeoPdfNative.INSTANCE.nativeGetPageId(this.id, pageIndex));
    }

    @NotNull
    public final String getPageObjId(int pageIndex) {
        String[] nativeGetPageObjId = NeoPdfNative.INSTANCE.nativeGetPageObjId(this.id, new int[]{pageIndex});
        String str = ArraysKt.isNotEmpty(nativeGetPageObjId) ? nativeGetPageObjId[0] : null;
        if (!(str == null || str.length() == 0)) {
            return str;
        }
        Debug.INSTANCE.m32059w(NeoPdf.class, "pageObjId is empty, pageIndex = " + pageIndex, new Object[0]);
        return NeoPdfNative.INVALID_PAGE_OBJ_ID_PREFIX + pageIndex;
    }

    public final boolean getPageRichMedias(int page, @NotNull List<PdfRichMediaObject> list, @NotNull String[] ignoreObjIdList) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(ignoreObjIdList, "ignoreObjIdList");
        return NeoPdfNative.INSTANCE.nativeGetPageRichMedias(this.id, page, list, ignoreObjIdList);
    }

    @NotNull
    public final String getPageText(int page, boolean includeArtifacts) {
        return NeoPdfNative.INSTANCE.nativeGetPageText(this.id, page, includeArtifacts);
    }

    public final long openDocument(@NotNull String path, @NotNull String password) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        this.filePath = path;
        PdfOpenOptions pdfOpenOptions = new PdfOpenOptions();
        PdfPasswordBuilder passwordBuilder = PdfDrmOptions.INSTANCE.passwordBuilder();
        passwordBuilder.setPassword(password);
        pdfOpenOptions.setDrmOptions(passwordBuilder.build());
        return openDocument(path, pdfOpenOptions);
    }

    public final boolean renderPage(int page, int x, int y, int width, int height, int rotation, int flags, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return NeoPdfNative.INSTANCE.nativeRenderPage(this.id, page, x, y, width, height, rotation, flags, bitmap);
    }

    @JvmOverloads
    public final boolean save(@Nullable PdfSaveOptions options) {
        if (this.fileStream != null) {
            Debug.INSTANCE.m32044e(NeoPdf.class, "save is not supported by PdfFileStream!", new Object[0]);
            return false;
        }
        if (this.isNewDocument) {
            if (StringUtils.isBlank(this.filePath)) {
                Debug.INSTANCE.m32044e(NeoPdf.class, "new document can't be saved without a path!", new Object[0]);
                return false;
            }
            return saveAs(this.filePath, options);
        }
        boolean nativeSaveDocument = NeoPdfNative.INSTANCE.nativeSaveDocument(this.id, options);
        m33540a(nativeSaveDocument, this.filePath);
        return nativeSaveDocument;
    }

    @JvmOverloads
    public final boolean saveAs(@NotNull String path, @Nullable PdfSaveOptions options) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (pageCount() <= 0) {
            Debug.INSTANCE.m32061w("save doc with empty pages!");
        }
        if (this.fileStream != null) {
            Debug.INSTANCE.m32044e(NeoPdf.class, "saveAs is not supported by PdfFileStream!", new Object[0]);
            return false;
        }
        boolean nativeSaveDocumentAs = NeoPdfNative.INSTANCE.nativeSaveDocumentAs(this.id, path, options);
        m33540a(nativeSaveDocumentAs, path);
        if (!nativeSaveDocumentAs) {
            return false;
        }
        if (this.isNewDocument) {
            this.isNewDocument = false;
        }
        this.filePath = path;
        return true;
    }

    public final boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap, @NotNull String extraAttr) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        return NeoPdfNative.INSTANCE.nativeSetBackground(this.id, page, imageId, resourceId, bitmap, extraAttr);
    }

    @JvmOverloads
    public final boolean updateShape(int page, @NotNull PdfShapeInfo shape, @NotNull PdfShapeUpdateOptions updateOptions) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(updateOptions, "updateOptions");
        return NeoPdfNative.INSTANCE.nativeUpdateShape(this.id, page, shape, updateOptions);
    }

    public final boolean writeShape(int page, @NotNull PdfShapeData shapeData) {
        Intrinsics.checkNotNullParameter(shapeData, "shapeData");
        return NeoPdfNative.INSTANCE.nativeWriteShapeByData(this.id, page, shapeData);
    }

    public final boolean createNewDocument(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (StringUtils.isBlank(path)) {
            Debug.INSTANCE.m32044e(NeoPdf.class, "createNewDocument: empty file path!", new Object[0]);
            return false;
        }
        if (!NeoPdfNative.INSTANCE.nativeCreateNewDocument(this.id)) {
            return false;
        }
        this.isNewDocument = true;
        this.filePath = path;
        return true;
    }

    @Nullable
    public final PdfImportContext importPage(@NotNull PdfImportContext context, @NotNull String srcPath, int srcPageIndex, int dstPageIndex) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        return importPages$default(this, context, srcPath, new int[]{srcPageIndex}, dstPageIndex, null, 16, null);
    }

    @NotNull
    public final String[] getHighlightObjId(int page, @NotNull String[] highlightIdArray) {
        Intrinsics.checkNotNullParameter(highlightIdArray, "highlightIdArray");
        return NeoPdfNative.INSTANCE.nativeGetHighlightObjId(this.id, page, highlightIdArray);
    }

    @NotNull
    public final String[] getShapeObjId(int page, @NotNull String[] shapeIdArray) {
        Intrinsics.checkNotNullParameter(shapeIdArray, "shapeIdArray");
        return NeoPdfNative.INSTANCE.nativeGetShapeObjId(this.id, page, shapeIdArray);
    }

    @Nullable
    public final PdfImportContext importPages(@NotNull PdfImportContext context, @NotNull String srcPath, @NotNull int[] srcPages, int dstPageIndex, @NotNull String password) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        Intrinsics.checkNotNullParameter(srcPages, "srcPages");
        Intrinsics.checkNotNullParameter(password, "password");
        PdfOpenOptions pdfOpenOptions = new PdfOpenOptions();
        PdfPasswordBuilder passwordBuilder = PdfDrmOptions.INSTANCE.passwordBuilder();
        passwordBuilder.setPassword(password);
        pdfOpenOptions.setDrmOptions(passwordBuilder.build());
        return importPages(context, srcPath, srcPages, dstPageIndex, pdfOpenOptions);
    }

    public final long openDocument(@NotNull String path, @Nullable PdfOpenOptions options) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.filePath = path;
        PdfOpenResult pdfOpenResult = new PdfOpenResult(0, false, false, 7, null);
        if (openDocument(path, options, pdfOpenResult)) {
            return 0L;
        }
        int openCode = pdfOpenResult.getOpenCode();
        if (openCode == 0) {
            return -1L;
        }
        return openCode;
    }

    @Nullable
    public final PdfImportContext importPages(@NotNull PdfImportContext context, @NotNull String srcPath, @NotNull int[] srcPages, int dstPageIndex, @NotNull PdfOpenOptions pdfOpenOptions) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        Intrinsics.checkNotNullParameter(srcPages, "srcPages");
        Intrinsics.checkNotNullParameter(pdfOpenOptions, "pdfOpenOptions");
        isBlank = StringsKt__StringsJVMKt.isBlank(srcPath);
        if (!isBlank && !ArraysKt.isNullOrEmpty(srcPages)) {
            int[] nativeImportPages = NeoPdfNative.INSTANCE.nativeImportPages(this.id, srcPath, pdfOpenOptions, srcPages, context.getObjNumberMapData(), dstPageIndex);
            if (nativeImportPages == null) {
                return null;
            }
            return new PdfImportContext(nativeImportPages);
        }
        Debug.INSTANCE.m32044e(NeoPdf.class, "exportPages: Illegal arguments: " + srcPath + ", " + srcPages, new Object[0]);
        return null;
    }

    public final boolean openDocument(@NotNull String path, @Nullable PdfOpenOptions options, @NotNull PdfOpenResult result) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(result, "result");
        this.filePath = path;
        this.openOptions = options;
        return NeoPdfNative.INSTANCE.nativeOpenDocument(this.id, path, options, result) == 0;
    }

    public final boolean openDocument(@NotNull PdfFileStream stream, @Nullable PdfOpenOptions options, @NotNull PdfOpenResult result) {
        Intrinsics.checkNotNullParameter(stream, "stream");
        Intrinsics.checkNotNullParameter(result, "result");
        this.fileStream = stream;
        this.openOptions = options;
        return NeoPdfNative.INSTANCE.nativeOpenDocumentStream(this.id, stream, options, result) == 0;
    }
}

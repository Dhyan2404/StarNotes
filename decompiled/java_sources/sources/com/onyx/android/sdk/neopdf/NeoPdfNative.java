package com.onyx.android.sdk.neopdf;

import android.graphics.Bitmap;
import android.os.Environment;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b/\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b&\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u008d\u0002\u0010\u008e\u0002J1\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0082 J\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0007J.\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012J\u0016\u0010\u0015\u001a\u00020\u000f2\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u000fJ\u001e\u0010\u0019\u001a\u00020\u000b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u0010\u001b\u001a\u00020\u000bH\u0086 J\u0011\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0007H\u0086 J\u0019\u0010 \u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001eH\u0086 J-\u0010&\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020#H\u0086 J-\u0010)\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010(\u001a\u0004\u0018\u00010'2\b\u0010\n\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020#H\u0086 J\u0011\u0010*\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001b\u0010+\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0086 J%\u0010,\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0086 J=\u0010/\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\"2\u0006\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0086 J\u001b\u00102\u001a\u0004\u0018\u0001012\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J1\u00107\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u0002032\u0006\u00106\u001a\u000201H\u0086 J)\u00108\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0086 J\u0011\u00109\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001f\u0010<\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\f\u0010;\u001a\b\u0012\u0004\u0012\u00020:0\u0012H\u0086 J\u0011\u0010=\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001e\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 ¢\u0006\u0004\b>\u0010?J\u0011\u0010@\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u0011\u0010A\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u0019\u0010C\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J'\u0010F\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\f\u0010E\u001a\b\u0012\u0004\u0012\u00020D0\u0012H\u0086 J!\u0010H\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010G\u001a\u000201H\u0086 J\u0019\u0010I\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J!\u0010K\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u000bH\u0086 J\u0019\u0010L\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u0019\u0010M\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u0019\u0010O\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u0002H\u0086 J!\u0010Q\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u00022\u0006\u0010P\u001a\u00020\u0002H\u0086 J\u0019\u0010R\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u0002H\u0086 J!\u0010S\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u00022\u0006\u0010P\u001a\u00020\u0002H\u0086 J\u0019\u0010U\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u000bH\u0086 J\u0019\u0010V\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u000bH\u0086 J&\u0010X\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0004\bX\u0010YJ\u0019\u0010[\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010Z\u001a\u000203H\u0086 J\u0019\u0010]\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u0004H\u0086 J\u0019\u0010^\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0086 J\u0019\u0010_\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u000bH\u0086 JS\u0010f\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0006\u0010c\u001a\u00020\u00072\b\u0010e\u001a\u0004\u0018\u00010dH\u0086 J\u001b\u0010i\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010h\u001a\u0004\u0018\u00010gH\u0086 J)\u0010l\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010j\u001a\u00020g2\u0006\u0010k\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\u0007H\u0086 J\u0019\u0010n\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010m\u001a\u00020%H\u0086 J&\u0010p\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\f\u0010o\u001a\b\u0012\u0004\u0012\u00020g0\u0017H\u0086 ¢\u0006\u0004\bp\u0010qJ/\u0010t\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u000b2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J\u001b\u0010v\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010u\u001a\u00020%H\u0086 J)\u0010y\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010u\u001a\u00020%2\u0006\u0010w\u001a\u00020\u00072\u0006\u0010x\u001a\u00020\u0002H\u0086 J3\u0010z\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u000b2\u0006\u0010`\u001a\u0002032\u0006\u0010a\u001a\u000203H\u0086 J1\u0010{\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u000b2\u0006\u0010`\u001a\u0002032\u0006\u0010a\u001a\u000203H\u0086 JB\u0010~\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0010\u0010s\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010|\u0018\u00010\u00122\u000e\u0010}\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017H\u0086 ¢\u0006\u0004\b~\u0010\u007fJ)\u0010\u0081\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J(\u0010\u0082\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J(\u0010\u0083\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J1\u0010\u0085\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00010\u00122\u0007\u0010\u0084\u0001\u001a\u00020\u0007H\u0086 J\u0081\u0001\u0010\u008d\u0001\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00020\u00072\u0007\u0010\u0087\u0001\u001a\u00020\u00072\u0007\u0010\u0088\u0001\u001a\u00020\u00072\u0007\u0010\u0089\u0001\u001a\u00020\u00072\u0007\u0010\u008a\u0001\u001a\u00020\u00012\u0007\u0010\u008b\u0001\u001a\u00020\u000b2\u0007\u0010\u008c\u0001\u001a\u00020\u0001H\u0086 J]\u0010\u0090\u0001\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0007\u0010\u008e\u0001\u001a\u00020\u00072\u0007\u0010\u008f\u0001\u001a\u00020\u00072\u0007\u0010\u008c\u0001\u001a\u00020\u0001H\u0086 Jt\u0010\u0095\u0001\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0007\u0010\u0091\u0001\u001a\u00020\u00022\u0007\u0010\u0092\u0001\u001a\u00020\u000b2\u0007\u0010\u0093\u0001\u001a\u00020\u000b2\u0007\u0010\u0094\u0001\u001a\u00020\u00072\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J,\u0010\u0097\u0001\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u00072\u0007\u0010\u008a\u0001\u001a\u00020\u0001H\u0086 J+\u0010\u0098\u0001\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0004H\u0086 ¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001J*\u0010\u009b\u0001\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00072\r\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J+\u0010\u009d\u0001\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0086 ¢\u0006\u0006\b\u009d\u0001\u0010\u0099\u0001J*\u0010\u009f\u0001\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00072\r\u0010\u009e\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0006\b\u009f\u0001\u0010\u009c\u0001J\u001c\u0010 \u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J#\u0010¢\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0007\u0010¡\u0001\u001a\u00020\u0002H\u0086 J+\u0010£\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0007\u0010¡\u0001\u001a\u00020\u00022\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u000203H\u0086 J5\u0010¤\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u000203H\u0086 J\u001a\u0010¥\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J#\u0010§\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0007\u0010¦\u0001\u001a\u00020\u0007H\u0086 J#\u0010¨\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0007\u0010¦\u0001\u001a\u00020\u0007H\u0086 J\u001a\u0010©\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J\u001a\u0010ª\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J&\u0010\u00ad\u0001\u001a\u0005\u0018\u00010¬\u00012\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010«\u0001\u001a\u00020\u0004H\u0086 J\u001a\u0010®\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J=\u0010²\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010¯\u0001\u001a\u00020\u00022\u0007\u0010°\u0001\u001a\u00020\u00022\u0006\u0010e\u001a\u00020d2\u0007\u0010±\u0001\u001a\u00020\u0002H\u0086 J\u001a\u0010³\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u001a\u0010´\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u001c\u0010·\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\b\u0010¶\u0001\u001a\u00030µ\u0001H\u0086 J\u0012\u0010¸\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001c\u0010¹\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J#\u0010»\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010º\u0001\u001a\u00020\u0002H\u0086 J\u001a\u0010¼\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J8\u0010¿\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010½\u0001\u001a\b\u0012\u0004\u0012\u00020\u00010\u00122\r\u0010¾\u0001\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J+\u0010Ã\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0007\u0010À\u0001\u001a\u00020%2\u000e\u0010Â\u0001\u001a\t\u0012\u0005\u0012\u00030Á\u00010\u0012H\u0086 J8\u0010Å\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010Ä\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0006\bÅ\u0001\u0010Æ\u0001J$\u0010É\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\b\u0010È\u0001\u001a\u00030Ç\u0001H\u0086 J$\u0010Ê\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\b\u0010È\u0001\u001a\u00030Ç\u0001H\u0086 J#\u0010Ì\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010Ë\u0001\u001a\u00020\u0002H\u0086 J#\u0010Î\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010Í\u0001\u001a\u00020\u0002H\u0086 J2\u0010Ï\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0006\bÏ\u0001\u0010Ð\u0001J8\u0010Ò\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010Ñ\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0006\bÒ\u0001\u0010Æ\u0001J6\u0010Õ\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\b\u0010¶\u0001\u001a\u00030µ\u00012\u0006\u0010\n\u001a\u00020\t2\b\u0010Ô\u0001\u001a\u00030Ó\u0001H\u0086 JE\u0010Ö\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000e\u0010¶\u0001\u001a\t\u0012\u0005\u0012\u00030µ\u00010\u00172\u0006\u0010\n\u001a\u00020\t2\b\u0010Ô\u0001\u001a\u00030Ó\u0001H\u0086 ¢\u0006\u0006\bÖ\u0001\u0010×\u0001J$\u0010Ø\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\b\u0010¶\u0001\u001a\u00030µ\u0001H\u0086 J3\u0010Ù\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000e\u0010¾\u0001\u001a\t\u0012\u0005\u0012\u00030µ\u00010\u0017H\u0086 ¢\u0006\u0006\bÙ\u0001\u0010Ú\u0001J.\u0010Ý\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\b\u0010¶\u0001\u001a\u00030µ\u00012\b\u0010Ü\u0001\u001a\u00030Û\u0001H\u0086 J3\u0010Þ\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000e\u0010¾\u0001\u001a\t\u0012\u0005\u0012\u00030µ\u00010\u0017H\u0086 ¢\u0006\u0006\bÞ\u0001\u0010Ú\u0001J$\u0010à\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\b\u0010ß\u0001\u001a\u00030Ó\u0001H\u0086 J#\u0010á\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010Ñ\u0001\u001a\u00020\u0002H\u0086 J#\u0010â\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010Í\u0001\u001a\u00020\u0002H\u0086 J2\u0010ã\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 ¢\u0006\u0006\bã\u0001\u0010Ð\u0001J#\u0010å\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010ä\u0001\u001a\u00020\u0002H\u0086 J\u001a\u0010æ\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J.\u0010ë\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\b\u0010è\u0001\u001a\u00030ç\u00012\b\u0010ê\u0001\u001a\u00030é\u0001H\u0086 R\u0017\u0010ì\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bì\u0001\u0010í\u0001R\u0017\u0010î\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bî\u0001\u0010í\u0001R\u0017\u0010ï\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bï\u0001\u0010í\u0001R\u0017\u0010ð\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bð\u0001\u0010í\u0001R\u0017\u0010ñ\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bñ\u0001\u0010í\u0001R\u0017\u0010ò\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bò\u0001\u0010í\u0001R\u0017\u0010ó\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bó\u0001\u0010í\u0001R\u0017\u0010ô\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bô\u0001\u0010í\u0001R\u0017\u0010õ\u0001\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\bõ\u0001\u0010í\u0001R\u0017\u0010ö\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\bö\u0001\u0010÷\u0001R\u0017\u0010ø\u0001\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\bø\u0001\u0010ù\u0001R\u0017\u0010ú\u0001\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\bú\u0001\u0010ù\u0001R\u0017\u0010û\u0001\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\bû\u0001\u0010ù\u0001R\u0017\u0010ü\u0001\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\bü\u0001\u0010ù\u0001R\u0017\u0010ý\u0001\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\bý\u0001\u0010ù\u0001R\u0017\u0010þ\u0001\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\bþ\u0001\u0010ù\u0001R\u0017\u0010ÿ\u0001\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\bÿ\u0001\u0010ù\u0001R\u0017\u0010\u0080\u0002\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\b\u0080\u0002\u0010ù\u0001R\u0017\u0010\u0081\u0002\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\b\u0081\u0002\u0010ù\u0001R\u0017\u0010\u0082\u0002\u001a\u00020%8\u0006X\u0086T¢\u0006\b\n\u0006\b\u0082\u0002\u0010ù\u0001R\u0017\u0010\u0083\u0002\u001a\u00020\u00078\u0006X\u0086T¢\u0006\b\n\u0006\b\u0083\u0002\u0010í\u0001R\u0019\u0010\u0085\u0002\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0002\u0010í\u0001R)\u0010\u008c\u0002\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0086\u0002\u0010\u0087\u0002\u001a\u0006\b\u0088\u0002\u0010\u0089\u0002\"\u0006\b\u008a\u0002\u0010\u008b\u0002¨\u0006\u008f\u0002"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/NeoPdfNative;", "", "", "srcPath", "", NotificationCompat.WearableExtender.f5053s, "dstPath", "", "dstPageIndex", "Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;", "options", "", "nativeImportDocumentPages", "nextId", "level", "", "setLogLevel", "importDocumentPages", "", "defaultFontDirs", "fontFolders", "ensureInitialized", "destroyLibrary", "", "fontFolderArray", "nativeInitLibrary", "([Ljava/lang/String;)Z", "nativeDestroyLibrary", "nativeSetLogLevel", "id", "Lcom/onyx/android/sdk/neopdf/PdfCallback;", "callback", "nativeSetCallback", "path", "Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;", "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "nativeOpenDocument", "Lcom/onyx/android/sdk/neopdf/PdfFileStream;", "stream", "nativeOpenDocumentStream", "nativeCreateNewDocument", "nativeSaveDocument", "nativeSaveDocumentAs", "srcPages", "objNumberMap", "nativeImportPages", "pageIndex", "", "nativeGetPageContentMatrix", "", "width", "height", "matrix", "nativeResizePageWithContent", "nativeExportPages", "nativeCloseDocument", "Lcom/onyx/android/sdk/neopdf/PdfDocumentVersion;", "versions", "nativeRetrieveDocumentVersions", "nativePageCount", "nativeGetPageLabels", "(I)[Ljava/lang/String;", "nativeBeginLookUpPageAnnotData", "nativeEndLookUpPageAnnotData", "page", "nativeLookUpPageAnnotData", "Lcom/onyx/android/sdk/neopdf/PdfFontInfo;", FontUtils.FONTS, "nativeGetPageFonts", "size", "nativePageSize", "nativeIsTextPage", "includeArtifacts", "nativeGetPageText", "nativeIsComplexPage", "nativeIsOnyxPage", "tag", "nativeMetadata", "value", "nativeSetMetadata", "nativeGetOnyxTagMetadata", "nativeSetOnyxTagMetadata", "render", "nativeSetRenderAnnotations", "nativeSetRenderOnyxAnnotations", "objIdArray", "nativeSetAnnotRenderIgnoreList", "(I[Ljava/lang/String;)Z", "gamma", "nativeSetTextGamma", "table", "nativeSetTextGammaTable", "nativeSetFontEmboldenLevel", "nativeSetRenderFormFields", "x", "y", "rotation", "flags", "Landroid/graphics/Bitmap;", "bitmap", "nativeRenderPage", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "root", "nativeGetTableOfContent", "parent", gon.f71290o0, "nativeLoadTocChildren", "entryPtr", "nativeGetTocEntryDestPage", "rootEntries", "nativeSetTableOfContent", "(I[Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z", "acceptOnyxLink", "list", "nativeGetPageLinks", "linkPtr", "nativeGetLinkDest", "linkType", "dest", "nativeUpdateLinkDest", "nativeGetLinkDestAtPoint", "nativeGetLinkPageAtPoint", "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;", "ignoreObjIdList", "nativeGetPageRichMedias", "(IILjava/util/List;[Ljava/lang/String;)Z", "fields", "nativeLoadFormFields", "nativeGetPageTextCharBoxes", "nativeGetPageTextRegions", "limitSize", "nativeGetPageImageRegions", "startX", "startY", "endX", "endY", "splitter", "selectingWord", "selection", "nativeHitTest", "startCharIndex", "endCharIndex", "nativeSelection", "text", "caseSensitive", "matchWholeWord", "contextLength", "nativeSearchInPage", "sentenceStartIndex", "nativeGetSentence", "nativeGetPageObjId", "(I[I)[Ljava/lang/String;", "objIds", "nativeGetPageIndexByObjId", "(I[Ljava/lang/String;)[I", "nativeGetPageIdArray", "ids", "nativeGetPageIndexById", "nativeGetPageId", CouchFieldKey.KEY_TOC_PAGE_ID, "nativeSetPageId", "nativeAppendPage", "nativeInsertPage", "nativeRemovePage", "dstIndex", "nativeMovePage", "nativeCopyPage", "nativeFlattenPage", "nativeGetBackgroundResourceId", "pageSize", "", "nativeGetBackgroundBitmap", "nativeGetBackgroundExtraAttr", "imageId", CouchFieldKey.KEY_RESOURCE_ID, "extraAttr", "nativeSetBackground", "nativeRemoveBackground", "nativeBeginPageBackgroundRender", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "shape", "nativeDrawPageBackgroundShape", "nativeEndPageBackgroundRender", "nativeGetOnyxBookmark", SyncConstant.LOCAL_BOOKMARK_DIR_NAME, "nativeAddOnyxBookmark", "nativeRemoveOnyxBookmark", "highlights", "shapes", "nativeGetPageAnnotations", TypedValues.CycleType.S_WAVE_OFFSET, "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;", "logs", "nativeGetPdfAnnotLogs", "highlightIdArray", "nativeGetHighlightObjId", "(II[Ljava/lang/String;)[Ljava/lang/String;", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "highlight", "nativeWriteHighlight", "nativeUpdateHighlight", "highlightId", "nativeRemoveHighlight", "objId", "nativeRemoveHighlightByObjId", "nativeRemoveHighlights", "(II[Ljava/lang/String;)Z", "shapeId", "nativeGetShapeObjId", "Lcom/onyx/android/sdk/neopdf/PdfShapeData;", "data", "nativeSerializeShapeData", "nativeSerializeInkShapesData", "(II[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;Lcom/onyx/android/sdk/neopdf/PdfShapeData;)Z", "nativeWriteShape", "nativeWriteInkShapes", "(II[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z", "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;", "updateOptions", "nativeUpdateShape", "nativeUpdateInkShapes", "annotData", "nativeWriteShapeByData", "nativeRemoveShape", "nativeRemoveShapeByObjId", "nativeRemoveShapes", "layerInfo", "nativeUpdatePageLayer", "nativeGetPageLayer", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "run", "Lcom/onyx/android/sdk/neopdf/PdfTextState;", "state", "nativeAddPageTextObject", "PDF_LOG_LEVEL_NONE", "I", "PDF_LOG_LEVEL_FATAL", "PDF_LOG_LEVEL_ERROR", "PDF_LOG_LEVEL_WARNING", "PDF_LOG_LEVEL_INFO", "PDF_LOG_LEVEL_DEBUG", "PDF_LOG_LEVEL_VERBOSE", "RENDER_FLAG_NORMAL", "RENDER_FLAG_TEXT_NO_ANTIALIAS", "INVALID_PAGE_OBJ_ID_PREFIX", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "NO_ERROR", "J", "ERROR_UNKNOWN", "ERROR_FILE_NOT_FOUND", "ERROR_FILE_INVALID", "ERROR_PASSWORD_INVALID", "ERROR_SECURITY", "ERROR_PAGE_NOT_FOUND", "ERROR_SECURITY_ONYX_DRM", "ERROR_SECURITY_ADOBE_DRM", "ERROR_JD_DRM_INVALID", "IMAGE_REGION_PROCESS_LIMIT", "a", "sPluginId", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getLibraryInitialized", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setLibraryInitialized", "(Z)V", "libraryInitialized", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoPdfNative.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfNative.kt\ncom/onyx/android/sdk/neopdf/NeoPdfNative\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,278:1\n1855#2,2:279\n37#3,2:281\n*S KotlinDebug\n*F\n+ 1 NeoPdfNative.kt\ncom/onyx/android/sdk/neopdf/NeoPdfNative\n*L\n80#1:279,2\n91#1:281,2\n*E\n"})
/* loaded from: classes7.dex */
public final class NeoPdfNative {
    public static final long ERROR_FILE_INVALID = 3;
    public static final long ERROR_FILE_NOT_FOUND = 2;
    public static final long ERROR_JD_DRM_INVALID = 2000;
    public static final long ERROR_PAGE_NOT_FOUND = 6;
    public static final long ERROR_PASSWORD_INVALID = 4;
    public static final long ERROR_SECURITY = 5;
    public static final long ERROR_SECURITY_ADOBE_DRM = 1001;
    public static final long ERROR_SECURITY_ONYX_DRM = 1000;
    public static final long ERROR_UNKNOWN = 1;
    public static final int IMAGE_REGION_PROCESS_LIMIT = 100;

    @NotNull
    public static final NeoPdfNative INSTANCE;

    @NotNull
    public static final String INVALID_PAGE_OBJ_ID_PREFIX = "pdf-invalid-";
    public static final long NO_ERROR = 0;
    public static final int PDF_LOG_LEVEL_DEBUG = 5;
    public static final int PDF_LOG_LEVEL_ERROR = 2;
    public static final int PDF_LOG_LEVEL_FATAL = 1;
    public static final int PDF_LOG_LEVEL_INFO = 4;
    public static final int PDF_LOG_LEVEL_NONE = 0;
    public static final int PDF_LOG_LEVEL_VERBOSE = 6;
    public static final int PDF_LOG_LEVEL_WARNING = 3;
    public static final int RENDER_FLAG_NORMAL = 0;
    public static final int RENDER_FLAG_TEXT_NO_ANTIALIAS = 1;

    /* renamed from: a, reason: from kotlin metadata */
    public static int sPluginId;

    /* renamed from: b, reason: from kotlin metadata */
    public static volatile boolean libraryInitialized;

    static {
        NeoPdfNative neoPdfNative = new NeoPdfNative();
        INSTANCE = neoPdfNative;
        System.loadLibrary("engine_sdk");
        neoPdfNative.ensureInitialized(neoPdfNative.defaultFontDirs());
        sPluginId = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void ensureInitialized$default(NeoPdfNative neoPdfNative, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = neoPdfNative.defaultFontDirs();
        }
        neoPdfNative.ensureInitialized(list);
    }

    private final native boolean nativeImportDocumentPages(String srcPath, int[] pages, String dstPath, int dstPageIndex, PdfSaveOptions options);

    @NotNull
    public final List<String> defaultFontDirs() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        ArrayList arrayList = new ArrayList();
        String absolutePath = new File(externalStorageDirectory, FontUtils.FONTS).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        arrayList.add(absolutePath);
        arrayList.add("/system/fonts");
        return arrayList;
    }

    public final void destroyLibrary() {
        synchronized (NeoPdfNative.class) {
            if (libraryInitialized) {
                INSTANCE.nativeDestroyLibrary();
                libraryInitialized = false;
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final void ensureInitialized(@NotNull List<String> fontFolders) {
        Intrinsics.checkNotNullParameter(fontFolders, "fontFolders");
        ArrayList arrayList = new ArrayList();
        for (String str : fontFolders) {
            if (!Intrinsics.areEqual(str, "/system/fonts")) {
                arrayList.add(str);
            }
        }
        synchronized (NeoPdfNative.class) {
            if (libraryInitialized) {
                return;
            }
            INSTANCE.nativeInitLibrary((String[]) arrayList.toArray(new String[0]));
            libraryInitialized = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean getLibraryInitialized() {
        return libraryInitialized;
    }

    public final boolean importDocumentPages(@NotNull String srcPath, @NotNull int[] pages, @NotNull String dstPath, int dstPageIndex, @NotNull PdfSaveOptions options) {
        Intrinsics.checkNotNullParameter(srcPath, "srcPath");
        Intrinsics.checkNotNullParameter(pages, "pages");
        Intrinsics.checkNotNullParameter(dstPath, "dstPath");
        Intrinsics.checkNotNullParameter(options, "options");
        return nativeImportDocumentPages(srcPath, pages, dstPath, dstPageIndex, options);
    }

    public final native boolean nativeAddOnyxBookmark(int id, int page, @NotNull String bookmark);

    public final native boolean nativeAddPageTextObject(int id, int page, @NotNull PdfTextRun run, @NotNull PdfTextState state);

    public final native boolean nativeAppendPage(int id, @NotNull String pageId, float width, float height);

    public final native void nativeBeginLookUpPageAnnotData(int id);

    public final native boolean nativeBeginPageBackgroundRender(int id, int page);

    public final native boolean nativeCloseDocument(int id);

    public final native boolean nativeCopyPage(int id, int pageIndex, int dstIndex);

    public final native boolean nativeCreateNewDocument(int id);

    public final native boolean nativeDestroyLibrary();

    public final native boolean nativeDrawPageBackgroundShape(int id, @NotNull PdfShapeInfo shape);

    public final native void nativeEndLookUpPageAnnotData(int id);

    public final native boolean nativeEndPageBackgroundRender(int id);

    public final native boolean nativeExportPages(int id, @NotNull String path, @NotNull int[] pages, @NotNull PdfSaveOptions options);

    public final native boolean nativeFlattenPage(int id, int pageIndex);

    @Nullable
    public final native byte[] nativeGetBackgroundBitmap(int id, int page, @NotNull int[] pageSize);

    @NotNull
    public final native String nativeGetBackgroundExtraAttr(int id, int page);

    @NotNull
    public final native String nativeGetBackgroundResourceId(int id, int page);

    @NotNull
    public final native String[] nativeGetHighlightObjId(int id, int page, @NotNull String[] highlightIdArray);

    @Nullable
    public final native String nativeGetLinkDest(int id, long linkPtr);

    @Nullable
    public final native String nativeGetLinkDestAtPoint(int id, int page, boolean acceptOnyxLink, float x, float y);

    public final native int nativeGetLinkPageAtPoint(int id, int page, boolean acceptOnyxLink, float x, float y);

    @Nullable
    public final native String nativeGetOnyxBookmark(int id, int page);

    @NotNull
    public final native String nativeGetOnyxTagMetadata(int id, @NotNull String tag);

    public final native boolean nativeGetPageAnnotations(int id, int page, @NotNull List<? extends Object> highlights, @NotNull List<? extends Object> shapes);

    @Nullable
    public final native float[] nativeGetPageContentMatrix(int id, int pageIndex);

    public final native boolean nativeGetPageFonts(int id, int page, @NotNull List<PdfFontInfo> fonts);

    @Nullable
    public final native String nativeGetPageId(int id, int pageIndex);

    @Nullable
    public final native String[] nativeGetPageIdArray(int id, @NotNull int[] pages);

    public final native boolean nativeGetPageImageRegions(int id, int page, @NotNull List<? extends Object> list, int limitSize);

    @NotNull
    public final native int[] nativeGetPageIndexById(int id, @NotNull String[] ids);

    @NotNull
    public final native int[] nativeGetPageIndexByObjId(int id, @NotNull String[] objIds);

    @NotNull
    public final native String[] nativeGetPageLabels(int id);

    @NotNull
    public final native String nativeGetPageLayer(int id, int page);

    public final native boolean nativeGetPageLinks(int id, int page, boolean acceptOnyxLink, @NotNull List<? extends Object> list);

    @Nullable
    public final native String[] nativeGetPageObjId(int id, @NotNull int[] pageIndex);

    public final native boolean nativeGetPageRichMedias(int id, int page, @Nullable List<PdfRichMediaObject> list, @Nullable String[] ignoreObjIdList);

    @NotNull
    public final native String nativeGetPageText(int id, int page, boolean includeArtifacts);

    public final native boolean nativeGetPageTextCharBoxes(int id, int page, @NotNull List<? extends Object> list);

    public final native boolean nativeGetPageTextRegions(int id, int page, @NotNull List<? extends Object> list);

    public final native boolean nativeGetPdfAnnotLogs(int id, long offset, @NotNull List<PdfAnnotLog> logs);

    @NotNull
    public final native Object nativeGetSentence(int id, int page, int sentenceStartIndex, @NotNull Object splitter);

    @NotNull
    public final native String[] nativeGetShapeObjId(int id, int page, @NotNull String[] shapeId);

    public final native boolean nativeGetTableOfContent(int id, @Nullable PdfTocEntry root);

    public final native int nativeGetTocEntryDestPage(int id, long entryPtr);

    public final native int nativeHitTest(int id, int page, int x, int y, int width, int height, int rotation, int startX, int startY, int endX, int endY, @NotNull Object splitter, boolean selectingWord, @NotNull Object selection);

    @Nullable
    public final native int[] nativeImportPages(int id, @NotNull String srcPath, @Nullable PdfOpenOptions options, @NotNull int[] srcPages, @NotNull int[] objNumberMap, int dstPageIndex);

    public final native boolean nativeInitLibrary(@NotNull String[] fontFolderArray);

    public final native boolean nativeInsertPage(int id, int pageIndex, @Nullable String pageId, float width, float height);

    public final native boolean nativeIsComplexPage(int id, int page);

    public final native boolean nativeIsOnyxPage(int id, int page);

    public final native boolean nativeIsTextPage(int id, int page);

    public final native boolean nativeLoadFormFields(int id, int page, @NotNull List<? extends Object> fields);

    public final native boolean nativeLoadTocChildren(int id, @NotNull PdfTocEntry parent, int start, int size);

    public final native boolean nativeLookUpPageAnnotData(int id, int page);

    @NotNull
    public final native String nativeMetadata(int id, @NotNull String tag);

    public final native boolean nativeMovePage(int id, int pageIndex, int dstIndex);

    public final native long nativeOpenDocument(int id, @Nullable String path, @Nullable PdfOpenOptions options, @NotNull PdfOpenResult result);

    public final native long nativeOpenDocumentStream(int id, @Nullable PdfFileStream stream, @Nullable PdfOpenOptions options, @NotNull PdfOpenResult result);

    public final native int nativePageCount(int id);

    public final native boolean nativePageSize(int id, int page, @NotNull float[] size);

    public final native boolean nativeRemoveBackground(int id, int page);

    public final native boolean nativeRemoveHighlight(int id, int page, @NotNull String highlightId);

    public final native boolean nativeRemoveHighlightByObjId(int id, int page, @NotNull String objId);

    public final native boolean nativeRemoveHighlights(int id, int page, @NotNull String[] objIds);

    public final native boolean nativeRemoveOnyxBookmark(int id, int page);

    public final native boolean nativeRemovePage(int id, int pageIndex);

    public final native boolean nativeRemoveShape(int id, int page, @NotNull String shapeId);

    public final native boolean nativeRemoveShapeByObjId(int id, int page, @NotNull String objId);

    public final native boolean nativeRemoveShapes(int id, int page, @NotNull String[] objIds);

    public final native boolean nativeRenderPage(int id, int page, int x, int y, int width, int height, int rotation, int flags, @Nullable Bitmap bitmap);

    public final native boolean nativeResizePageWithContent(int id, int pageIndex, float width, float height, @NotNull float[] matrix);

    public final native boolean nativeRetrieveDocumentVersions(int id, @NotNull List<PdfDocumentVersion> versions);

    public final native boolean nativeSaveDocument(int id, @Nullable PdfSaveOptions options);

    public final native boolean nativeSaveDocumentAs(int id, @Nullable String path, @Nullable PdfSaveOptions options);

    public final native int nativeSearchInPage(int id, int page, int x, int y, int width, int height, int rotation, @NotNull String text, boolean caseSensitive, boolean matchWholeWord, int contextLength, @NotNull List<? extends Object> list);

    public final native int nativeSelection(int id, int page, int x, int y, int width, int height, int rotation, int startCharIndex, int endCharIndex, @NotNull Object selection);

    public final native boolean nativeSerializeInkShapesData(int id, int page, @NotNull PdfShapeInfo[] shape, @NotNull PdfSaveOptions options, @NotNull PdfShapeData data);

    public final native boolean nativeSerializeShapeData(int id, int page, @NotNull PdfShapeInfo shape, @NotNull PdfSaveOptions options, @NotNull PdfShapeData data);

    public final native boolean nativeSetAnnotRenderIgnoreList(int id, @NotNull String[] objIdArray);

    public final native boolean nativeSetBackground(int id, int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap, @NotNull String extraAttr);

    public final native void nativeSetCallback(int id, @NotNull PdfCallback callback);

    public final native void nativeSetFontEmboldenLevel(int id, int level);

    public final native void nativeSetLogLevel(int level);

    public final native boolean nativeSetMetadata(int id, @NotNull String tag, @NotNull String value);

    public final native boolean nativeSetOnyxTagMetadata(int id, @NotNull String tag, @NotNull String value);

    public final native boolean nativeSetPageId(int id, int pageIndex, @NotNull String pageId);

    public final native void nativeSetRenderAnnotations(int id, boolean render);

    public final native boolean nativeSetRenderFormFields(int id, boolean render);

    public final native void nativeSetRenderOnyxAnnotations(int id, boolean render);

    public final native boolean nativeSetTableOfContent(int id, @NotNull PdfTocEntry[] rootEntries);

    public final native void nativeSetTextGamma(int id, float gamma);

    public final native void nativeSetTextGammaTable(int id, @NotNull int[] table);

    public final native boolean nativeUpdateHighlight(int id, int page, @NotNull PdfHighlightInfo highlight);

    public final native boolean nativeUpdateInkShapes(int id, int page, @NotNull PdfShapeInfo[] shapes);

    public final native boolean nativeUpdateLinkDest(int id, long linkPtr, int linkType, @NotNull String dest);

    public final native boolean nativeUpdatePageLayer(int id, int page, @NotNull String layerInfo);

    public final native boolean nativeUpdateShape(int id, int page, @NotNull PdfShapeInfo shape, @NotNull PdfShapeUpdateOptions updateOptions);

    public final native boolean nativeWriteHighlight(int id, int page, @NotNull PdfHighlightInfo highlight);

    public final native boolean nativeWriteInkShapes(int id, int page, @NotNull PdfShapeInfo[] shapes);

    public final native boolean nativeWriteShape(int id, int page, @NotNull PdfShapeInfo shape);

    public final native boolean nativeWriteShapeByData(int id, int page, @NotNull PdfShapeData annotData);

    public final synchronized int nextId() {
        int i;
        i = sPluginId + 1;
        sPluginId = i;
        return i;
    }

    public final void setLibraryInitialized(boolean z) {
        libraryInitialized = z;
    }

    public final void setLogLevel(int level) {
        nativeSetLogLevel(level);
    }
}

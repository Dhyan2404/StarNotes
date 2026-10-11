package com.canhub.cropper;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Size;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.exifinterface.media.ExifInterface;
import com.canhub.cropper.BitmapCroppingWorkerJob;
import com.canhub.cropper.BitmapLoadingWorkerJob;
import com.canhub.cropper.BitmapUtils;
import com.canhub.cropper.CropOverlayView;
import com.canhub.cropper.utils.GetFilePathFromUriKt;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import java.lang.ref.WeakReference;
import java.util.UUID;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ª\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b*\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 Â\u00022\u00020\u00012\u00020\u0002:\u0018Â\u0002Ã\u0002Ä\u0002Å\u0002Æ\u0002Ç\u0002È\u0002É\u0002Ê\u0002Ë\u0002Ì\u0002Í\u0002B#\b\u0007\u0012\b\u0010½\u0002\u001a\u00030¼\u0002\u0012\f\b\u0002\u0010¿\u0002\u001a\u0005\u0018\u00010¾\u0002¢\u0006\u0006\bÀ\u0002\u0010Á\u0002J4\u0010\f\u001a\u00020\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J(\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\b\u0010\u0018\u001a\u00020\u000bH\u0002J\b\u0010\u0019\u001a\u00020\u000bH\u0002J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000eH\u0002J\u000e\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000eJ\u0016\u0010\"\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005J\u0016\u0010%\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010'\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000eJ\u0016\u0010*\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020+J\u0006\u0010.\u001a\u00020\u000bJ\u000e\u00100\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u0012J\b\u00102\u001a\u0004\u0018\u000101J\u0006\u00103\u001a\u00020\u000bJ(\u00107\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u00104\u001a\u00020\u00052\b\b\u0002\u00105\u001a\u00020\u00052\b\b\u0002\u0010,\u001a\u000206H\u0007JD\u0010<\u001a\u00020\u000b2\b\b\u0002\u00109\u001a\u0002082\b\b\u0002\u0010:\u001a\u00020\u00052\b\b\u0002\u00104\u001a\u00020\u00052\b\b\u0002\u00105\u001a\u00020\u00052\b\b\u0002\u0010,\u001a\u0002062\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0007J\u0010\u0010?\u001a\u00020\u000b2\b\u0010>\u001a\u0004\u0018\u00010=J\u0010\u0010A\u001a\u00020\u000b2\b\u0010>\u001a\u0004\u0018\u00010@J\u0010\u0010C\u001a\u00020\u000b2\b\u0010>\u001a\u0004\u0018\u00010BJ\u0010\u0010E\u001a\u00020\u000b2\b\u0010>\u001a\u0004\u0018\u00010DJ\u0010\u0010G\u001a\u00020\u000b2\b\u0010>\u001a\u0004\u0018\u00010FJ\u0010\u0010H\u001a\u00020\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003J\u001a\u0010H\u001a\u00020\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010J\u001a\u0004\u0018\u00010IJ\u0010\u0010L\u001a\u00020\u000b2\b\u0010K\u001a\u0004\u0018\u00010\u0007J\u0006\u0010M\u001a\u00020\u000bJ\u000e\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020\u0005J\u0006\u0010P\u001a\u00020\u000bJ\u0006\u0010Q\u001a\u00020\u000bJ\u0017\u0010V\u001a\u00020\u000b2\u0006\u0010S\u001a\u00020RH\u0000¢\u0006\u0004\bT\u0010UJ\u0017\u0010Z\u001a\u00020\u000b2\u0006\u0010S\u001a\u00020WH\u0000¢\u0006\u0004\bX\u0010YJ8\u0010[\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00052\u0006\u0010,\u001a\u0002062\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u00052\b\u0010;\u001a\u0004\u0018\u00010\u0007J\n\u0010]\u001a\u0004\u0018\u00010\\H\u0016J\u0010\u0010_\u001a\u00020\u000b2\u0006\u0010^\u001a\u00020\\H\u0016J\u0018\u0010b\u001a\u00020\u000b2\u0006\u0010`\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\u0005H\u0014J0\u0010g\u001a\u00020\u000b2\u0006\u0010c\u001a\u00020\u000e2\u0006\u0010d\u001a\u00020\u00052\u0006\u0010e\u001a\u00020\u00052\u0006\u0010f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0014J(\u0010k\u001a\u00020\u000b2\u0006\u0010h\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u00052\u0006\u0010j\u001a\u00020\u0005H\u0014J\u0010\u0010l\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0014\u0010o\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010nR\u0016\u0010r\u001a\u0004\u0018\u00010p8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010qR\u0014\u0010u\u001a\u00020s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010tR\u0014\u0010v\u001a\u00020s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010tR\u0014\u0010z\u001a\u00020w8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010yR\u0014\u0010~\u001a\u00020{8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b|\u0010}R\u0015\u0010\u0080\u0001\u001a\u00020{8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u007f\u0010}R\u001b\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bd\u0010\u0082\u0001R\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0019\u0010\u0089\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0019\u0010\u008b\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0088\u0001R\u0019\u0010\u008e\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u0090\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u008d\u0001R\u0018\u0010\u0091\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bf\u0010\u0088\u0001R\u0019\u0010\u0093\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0088\u0001R\u0018\u0010\u0094\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\be\u0010\u0088\u0001R\u001a\u0010\u0098\u0001\u001a\u00030\u0095\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R1\u0010\u009a\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006 \n\u0006\b\u0099\u0001\u0010\u008d\u0001\u0012\u0006\b\u009e\u0001\u0010\u009f\u0001\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001\"\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0018\u0010 \u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bh\u0010\u008d\u0001R\u0019\u0010¢\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010\u008d\u0001R\u001a\u0010¦\u0001\u001a\u00030£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u0019\u0010©\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u0019\u0010«\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010\u0088\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u008d\u0001R\u0019\u0010¯\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010\u008d\u0001R\u0019\u0010±\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u0088\u0001R\u001b\u0010´\u0001\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001b\u0010·\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001R\u001b\u0010º\u0001\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u001b\u0010½\u0001\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001R\u001b\u0010À\u0001\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R-\u0010\b\u001a\u0004\u0018\u00010\u00072\t\u0010Á\u0001\u001a\u0004\u0018\u00010\u00078\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001R\u0019\u0010Ç\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010\u0088\u0001R\u0019\u0010É\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010¨\u0001R\u0019\u0010Ë\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010¨\u0001R\u0019\u0010Í\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010¨\u0001R\u001c\u0010Ñ\u0001\u001a\u0005\u0018\u00010Î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010Ð\u0001R\u0019\u0010Ó\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010\u0088\u0001R\u0019\u0010Õ\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010\u008d\u0001R#\u0010Ú\u0001\u001a\f\u0012\u0005\u0012\u00030×\u0001\u0018\u00010Ö\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R#\u0010Ý\u0001\u001a\f\u0012\u0005\u0012\u00030Û\u0001\u0018\u00010Ö\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÜ\u0001\u0010Ù\u0001R*\u0010;\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÞ\u0001\u0010Ã\u0001\u001a\u0006\bß\u0001\u0010Å\u0001\"\u0006\bà\u0001\u0010á\u0001R,\u0010â\u0001\u001a\u00030\u0095\u00012\b\u0010â\u0001\u001a\u00030\u0095\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bã\u0001\u0010ä\u0001\"\u0006\bå\u0001\u0010æ\u0001R0\u0010è\u0001\u001a\u0005\u0018\u00010ç\u00012\n\u0010è\u0001\u001a\u0005\u0018\u00010ç\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bé\u0001\u0010ê\u0001\"\u0006\bë\u0001\u0010ì\u0001R0\u0010î\u0001\u001a\u0005\u0018\u00010í\u00012\n\u0010î\u0001\u001a\u0005\u0018\u00010í\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bï\u0001\u0010ð\u0001\"\u0006\bñ\u0001\u0010ò\u0001R*\u0010ô\u0001\u001a\u00020\u000e2\u0007\u0010ó\u0001\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bô\u0001\u0010\u009b\u0001\"\u0006\bõ\u0001\u0010\u009d\u0001R*\u0010ö\u0001\u001a\u00020\u00052\u0007\u0010ö\u0001\u001a\u00020\u00058F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b÷\u0001\u0010ø\u0001\"\u0006\bù\u0001\u0010ú\u0001R)\u0010ý\u0001\u001a\u00020\u00052\u0006\u0010N\u001a\u00020\u00058F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bû\u0001\u0010ø\u0001\"\u0006\bü\u0001\u0010ú\u0001R\u0014\u0010þ\u0001\u001a\u00020\u000e8F¢\u0006\b\u001a\u0006\bþ\u0001\u0010\u009b\u0001R*\u0010\u0080\u0002\u001a\u00020\u000e2\u0007\u0010ÿ\u0001\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0080\u0002\u0010\u009b\u0001\"\u0006\b\u0081\u0002\u0010\u009d\u0001R*\u0010\u0083\u0002\u001a\u00020\u000e2\u0007\u0010\u0082\u0002\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0083\u0002\u0010\u009b\u0001\"\u0006\b\u0084\u0002\u0010\u009d\u0001R0\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00022\n\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00028F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0087\u0002\u0010\u0088\u0002\"\u0006\b\u0089\u0002\u0010\u008a\u0002R!\u0010\u008e\u0002\u001a\u000f\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u008b\u00028F¢\u0006\b\u001a\u0006\b\u008c\u0002\u0010\u008d\u0002R*\u0010\u0090\u0002\u001a\u00020\u000e2\u0007\u0010\u008f\u0002\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0090\u0002\u0010\u009b\u0001\"\u0006\b\u0091\u0002\u0010\u009d\u0001R*\u0010\u0093\u0002\u001a\u00020\u000e2\u0007\u0010\u0092\u0002\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0093\u0002\u0010\u009b\u0001\"\u0006\b\u0094\u0002\u0010\u009d\u0001R*\u0010\u0096\u0002\u001a\u00020\u000e2\u0007\u0010\u0095\u0002\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0096\u0002\u0010\u009b\u0001\"\u0006\b\u0097\u0002\u0010\u009d\u0001R,\u0010\u0098\u0002\u001a\u00030£\u00012\b\u0010\u0098\u0002\u001a\u00030£\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0099\u0002\u0010\u009a\u0002\"\u0006\b\u009b\u0002\u0010\u009c\u0002R*\u0010¢\u0002\u001a\u00020\u00122\u0007\u0010\u009d\u0002\u001a\u00020\u00128F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u009e\u0002\u0010\u009f\u0002\"\u0006\b \u0002\u0010¡\u0002R*\u0010£\u0002\u001a\u00020\u00052\u0007\u0010£\u0002\u001a\u00020\u00058F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b¤\u0002\u0010ø\u0001\"\u0006\b¥\u0002\u0010ú\u0001R)\u0010\u0006\u001a\u00020\u00052\u0007\u0010¦\u0002\u001a\u00020\u00058F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b§\u0002\u0010ø\u0001\"\u0006\b¨\u0002\u0010ú\u0001R\u0017\u0010¬\u0002\u001a\u0005\u0018\u00010©\u00028F¢\u0006\b\u001a\u0006\bª\u0002\u0010«\u0002R0\u0010±\u0002\u001a\u0005\u0018\u00010©\u00022\n\u0010\u00ad\u0002\u001a\u0005\u0018\u00010©\u00028F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b®\u0002\u0010«\u0002\"\u0006\b¯\u0002\u0010°\u0002R\u0017\u0010´\u0002\u001a\u0005\u0018\u00010Î\u00018F¢\u0006\b\u001a\u0006\b²\u0002\u0010³\u0002R\u0014\u0010·\u0002\u001a\u00020{8F¢\u0006\b\u001a\u0006\bµ\u0002\u0010¶\u0002R!\u0010»\u0002\u001a\u0004\u0018\u00010\u00038GX\u0087\u0004¢\u0006\u0010\u0012\u0006\bº\u0002\u0010\u009f\u0001\u001a\u0006\b¸\u0002\u0010¹\u0002¨\u0006Î\u0002"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView;", "Landroid/widget/FrameLayout;", "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;", "Landroid/graphics/Bitmap;", "bitmap", "", "imageResource", "Landroid/net/Uri;", "imageUri", "loadSampleSize", "degreesRotated", "", "e", "b", "", OneDriverConstants.OPERATION_STATUS_PROGRESS, "animate", "c", "", "width", "height", "center", "a", "d", C6997f.f39671c, C6998g.f39679a, Constants.CLEAR_ATTRIBUTES, C6999h.f39688c, "multiTouchEnabled", "setMultiTouchEnabled", "centerMoveEnabled", "setCenterMoveEnabled", "minCropResultWidth", "minCropResultHeight", "setMinCropResultSize", "maxCropResultWidth", "maxCropResultHeight", "setMaxCropResultSize", "fixAspectRatio", "setFixedAspectRatio", "aspectRatioX", "aspectRatioY", "setAspectRatio", "Lcom/canhub/cropper/CropImageOptions;", "options", "setImageCropOptions", "clearAspectRatio", "snapRadius", "setSnapRadius", "Landroid/util/Size;", "expectedImageSize", "resetCropRect", "reqWidth", "reqHeight", "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "getCroppedImage", "Landroid/graphics/Bitmap$CompressFormat;", "saveCompressFormat", "saveCompressQuality", "customOutputUri", "croppedImageAsync", "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnSetCropOverlayReleasedListener", "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;", "setOnSetCropOverlayMovedListener", "Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;", "setOnCropWindowChangedListener", "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;", "setOnSetImageUriCompleteListener", "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;", "setOnCropImageCompleteListener", "setImageBitmap", "Landroidx/exifinterface/media/ExifInterface;", "exif", "uri", "setImageUriAsync", "clearImage", "degrees", "rotateImage", "flipImageHorizontally", "flipImageVertically", "Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "onSetImageUriAsyncComplete$cropper_release", "(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;)V", "onSetImageUriAsyncComplete", "Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;", "onImageCroppingAsyncComplete$cropper_release", "(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;)V", "onImageCroppingAsyncComplete", "startCropWorkerTask", "Landroid/os/Parcelable;", "onSaveInstanceState", "state", "onRestoreInstanceState", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "changed", "l", "t", "r", "onLayout", "w", "oldw", "oldh", "onSizeChanged", "onCropWindowChanged", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "imageView", "Lcom/canhub/cropper/CropOverlayView;", "Lcom/canhub/cropper/CropOverlayView;", "mCropOverlayView", "Landroid/graphics/Matrix;", "Landroid/graphics/Matrix;", "mImageMatrix", "mImageInverseMatrix", "Landroid/widget/ProgressBar;", "i", "Landroid/widget/ProgressBar;", "mProgressBar", "", "j", "[F", "mImagePoints", C4921e.f26537n, "mScaleImagePoints", "Lcom/canhub/cropper/CropImageAnimation;", "Lcom/canhub/cropper/CropImageAnimation;", "mAnimation", "m", "Landroid/graphics/Bitmap;", "originalBitmap", GoogleApiAvailabilityLight.f29016b, "I", "mInitialDegreesRotated", C4921e.f26528e, "mDegreesRotated", "p", Constants.HASIDCALL_INDEX_SIG, "mFlipHorizontally", "q", "mFlipVertically", "mLayoutWidth", "s", "mLayoutHeight", "mImageResource", "Lcom/canhub/cropper/CropImageView$ScaleType;", "u", "Lcom/canhub/cropper/CropImageView$ScaleType;", "mScaleType", "v", "isSaveBitmapToInstanceState", Constants.BOOLEAN_VALUE_SIG, "setSaveBitmapToInstanceState", "(Z)V", "isSaveBitmapToInstanceState$annotations", "()V", "mShowCropOverlay", "x", "mShowCropLabel", "", "y", Constants.STRING_SIG, "mCropTextLabel", "z", "F", "mCropLabelTextSize", "J", "mCropLabelTextColor", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "mShowProgressBar", "Q", "mAutoZoomEnabled", "k0", "mMaxZoom", "q0", "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;", "mOnCropOverlayReleasedListener", "t0", "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;", "mOnSetCropOverlayMovedListener", "u0", "Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;", "mOnSetCropWindowChangeListener", "v0", "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;", "mOnSetImageUriCompleteListener", "w0", "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;", "mOnCropImageCompleteListener", "<set-?>", "x0", "Landroid/net/Uri;", "getImageUri", "()Landroid/net/Uri;", "y0", "loadedSampleSize", "z0", "mZoom", "A0", "mZoomOffsetX", "B0", "mZoomOffsetY", "Landroid/graphics/RectF;", "C0", "Landroid/graphics/RectF;", "mRestoreCropWindowRect", "D0", "mRestoreDegreesRotated", "E0", "mSizeChanged", "Ljava/lang/ref/WeakReference;", "Lcom/canhub/cropper/BitmapLoadingWorkerJob;", "F0", "Ljava/lang/ref/WeakReference;", "bitmapLoadingWorkerJob", "Lcom/canhub/cropper/BitmapCroppingWorkerJob;", "G0", "bitmapCroppingWorkerJob", "H0", "getCustomOutputUri", "setCustomOutputUri", "(Landroid/net/Uri;)V", "scaleType", "getScaleType", "()Lcom/canhub/cropper/CropImageView$ScaleType;", "setScaleType", "(Lcom/canhub/cropper/CropImageView$ScaleType;)V", "Lcom/canhub/cropper/CropImageView$CropShape;", "cropShape", "getCropShape", "()Lcom/canhub/cropper/CropImageView$CropShape;", "setCropShape", "(Lcom/canhub/cropper/CropImageView$CropShape;)V", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cornerShape", "getCornerShape", "()Lcom/canhub/cropper/CropImageView$CropCornerShape;", "setCornerShape", "(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V", "autoZoomEnabled", "isAutoZoomEnabled", "setAutoZoomEnabled", "maxZoom", "getMaxZoom", "()I", "setMaxZoom", "(I)V", "getRotatedDegrees", "setRotatedDegrees", "rotatedDegrees", "isFixAspectRatio", "flipHorizontally", "isFlippedHorizontally", "setFlippedHorizontally", "flipVertically", "isFlippedVertically", "setFlippedVertically", "Lcom/canhub/cropper/CropImageView$Guidelines;", "guidelines", "getGuidelines", "()Lcom/canhub/cropper/CropImageView$Guidelines;", "setGuidelines", "(Lcom/canhub/cropper/CropImageView$Guidelines;)V", "Landroid/util/Pair;", "getAspectRatio", "()Landroid/util/Pair;", "aspectRatio", "showProgressBar", "isShowProgressBar", "setShowProgressBar", "showCropOverlay", "isShowCropOverlay", "setShowCropOverlay", "showCropLabel", "isShowCropLabel", "setShowCropLabel", "cropLabelText", "getCropLabelText", "()Ljava/lang/String;", "setCropLabelText", "(Ljava/lang/String;)V", "textSize", "getCropLabelTextSize", "()F", "setCropLabelTextSize", "(F)V", "cropLabelTextSize", "cropLabelTextColor", "getCropLabelTextColor", "setCropLabelTextColor", HWREngineConstant.Constant.RES_ID, "getImageResource", "setImageResource", "Landroid/graphics/Rect;", "getWholeImageRect", "()Landroid/graphics/Rect;", "wholeImageRect", "rect", "getCropRect", "setCropRect", "(Landroid/graphics/Rect;)V", "cropRect", "getCropWindowRect", "()Landroid/graphics/RectF;", "cropWindowRect", "getCropPoints", "()[F", "cropPoints", "-croppedImage", "()Landroid/graphics/Bitmap;", "-croppedImage$annotations", "croppedImage", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Companion", "CropCornerShape", "CropResult", "CropShape", "Guidelines", "OnCropImageCompleteListener", "OnSetCropOverlayMovedListener", "OnSetCropOverlayReleasedListener", "OnSetCropWindowChangeListener", "OnSetImageUriCompleteListener", "RequestSizeOptions", "ScaleType", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CropImageView extends FrameLayout implements CropOverlayView.CropWindowChangeListener {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: A0, reason: from kotlin metadata */
    public float mZoomOffsetX;

    /* renamed from: B0, reason: from kotlin metadata */
    public float mZoomOffsetY;

    /* renamed from: C0, reason: from kotlin metadata */
    @Nullable
    public RectF mRestoreCropWindowRect;

    /* renamed from: D0, reason: from kotlin metadata */
    public int mRestoreDegreesRotated;

    /* renamed from: E0, reason: from kotlin metadata */
    public boolean mSizeChanged;

    /* renamed from: F0, reason: from kotlin metadata */
    @Nullable
    public WeakReference<BitmapLoadingWorkerJob> bitmapLoadingWorkerJob;

    /* renamed from: G0, reason: from kotlin metadata */
    @Nullable
    public WeakReference<BitmapCroppingWorkerJob> bitmapCroppingWorkerJob;

    /* renamed from: H0, reason: from kotlin metadata */
    @Nullable
    public Uri customOutputUri;

    /* renamed from: J, reason: from kotlin metadata */
    public int mCropLabelTextColor;

    /* renamed from: O, reason: from kotlin metadata */
    public boolean mShowProgressBar;

    /* renamed from: Q, reason: from kotlin metadata */
    public boolean mAutoZoomEnabled;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ImageView imageView;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final CropOverlayView mCropOverlayView;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Matrix mImageMatrix;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Matrix mImageInverseMatrix;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ProgressBar mProgressBar;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final float[] mImagePoints;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final float[] mScaleImagePoints;

    /* renamed from: k0, reason: from kotlin metadata */
    public int mMaxZoom;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public CropImageAnimation mAnimation;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Bitmap originalBitmap;

    /* renamed from: n, reason: from kotlin metadata */
    public int mInitialDegreesRotated;

    /* renamed from: o, reason: from kotlin metadata */
    public int mDegreesRotated;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean mFlipHorizontally;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean mFlipVertically;

    /* renamed from: q0, reason: from kotlin metadata */
    @Nullable
    public OnSetCropOverlayReleasedListener mOnCropOverlayReleasedListener;

    /* renamed from: r, reason: from kotlin metadata */
    public int mLayoutWidth;

    /* renamed from: s, reason: from kotlin metadata */
    public int mLayoutHeight;

    /* renamed from: t, reason: from kotlin metadata */
    public int mImageResource;

    /* renamed from: t0, reason: from kotlin metadata */
    @Nullable
    public OnSetCropOverlayMovedListener mOnSetCropOverlayMovedListener;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public ScaleType mScaleType;

    /* renamed from: u0, reason: from kotlin metadata */
    @Nullable
    public OnSetCropWindowChangeListener mOnSetCropWindowChangeListener;

    /* renamed from: v, reason: from kotlin metadata */
    public boolean isSaveBitmapToInstanceState;

    /* renamed from: v0, reason: from kotlin metadata */
    @Nullable
    public OnSetImageUriCompleteListener mOnSetImageUriCompleteListener;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean mShowCropOverlay;

    /* renamed from: w0, reason: from kotlin metadata */
    @Nullable
    public OnCropImageCompleteListener mOnCropImageCompleteListener;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean mShowCropLabel;

    /* renamed from: x0, reason: from kotlin metadata */
    @Nullable
    public Uri imageUri;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public String mCropTextLabel;

    /* renamed from: y0, reason: from kotlin metadata */
    public int loadedSampleSize;

    /* renamed from: z, reason: from kotlin metadata */
    public float mCropLabelTextSize;

    /* renamed from: z0, reason: from kotlin metadata */
    public float mZoom;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$Companion;", "", "()V", "getOnMeasureSpec", "", "measureSpecMode", "measureSpecSize", "desiredSize", "getOnMeasureSpec$cropper_release", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getOnMeasureSpec$cropper_release(int measureSpecMode, int measureSpecSize, int desiredSize) {
            return measureSpecMode != Integer.MIN_VALUE ? measureSpecMode != 1073741824 ? desiredSize : measureSpecSize : Math.min(desiredSize, measureSpecSize);
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$CropCornerShape;", "", "(Ljava/lang/String;I)V", HWRValues.DIAGRAM_KIND_RECTANGLE, "OVAL", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public enum CropCornerShape {
        RECTANGLE,
        OVAL
    }

    @Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001Bk\b\u0000\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\b\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00032\u0006\u0010'\u001a\u00020(J\u001a\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010+\u001a\u00020\u001dR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\b\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u001d8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u0012\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010!R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0019¨\u0006,"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$CropResult;", "", "originalBitmap", "Landroid/graphics/Bitmap;", "originalUri", "Landroid/net/Uri;", "bitmap", "uriContent", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;", "cropPoints", "", "cropRect", "Landroid/graphics/Rect;", "wholeImageRect", "rotation", "", "sampleSize", "(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V", "getBitmap", "()Landroid/graphics/Bitmap;", "getCropPoints", "()[F", "getCropRect", "()Landroid/graphics/Rect;", "getError", "()Ljava/lang/Exception;", "isSuccessful", "", Constants.BOOLEAN_VALUE_SIG, "getOriginalBitmap", "getOriginalUri", "()Landroid/net/Uri;", "getRotation", "()I", "getSampleSize", "getUriContent", "getWholeImageRect", "context", "Landroid/content/Context;", "getUriFilePath", "", "uniqueName", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static class CropResult {

        @Nullable
        private final Bitmap bitmap;

        @NotNull
        private final float[] cropPoints;

        @Nullable
        private final Rect cropRect;

        @Nullable
        private final Exception error;

        @Nullable
        private final Bitmap originalBitmap;

        @Nullable
        private final Uri originalUri;
        private final int rotation;
        private final int sampleSize;

        @Nullable
        private final Uri uriContent;

        @Nullable
        private final Rect wholeImageRect;

        public CropResult(@Nullable Bitmap bitmap, @Nullable Uri uri, @Nullable Bitmap bitmap2, @Nullable Uri uri2, @Nullable Exception exc, @NotNull float[] cropPoints, @Nullable Rect rect, @Nullable Rect rect2, int i, int i2) {
            Intrinsics.checkNotNullParameter(cropPoints, "cropPoints");
            this.originalBitmap = bitmap;
            this.originalUri = uri;
            this.bitmap = bitmap2;
            this.uriContent = uri2;
            this.error = exc;
            this.cropPoints = cropPoints;
            this.cropRect = rect;
            this.wholeImageRect = rect2;
            this.rotation = i;
            this.sampleSize = i2;
        }

        public static /* synthetic */ String getUriFilePath$default(CropResult cropResult, Context context, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUriFilePath");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return cropResult.getUriFilePath(context, z);
        }

        @Nullable
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        @NotNull
        public final float[] getCropPoints() {
            return this.cropPoints;
        }

        @Nullable
        public final Rect getCropRect() {
            return this.cropRect;
        }

        @Nullable
        public final Exception getError() {
            return this.error;
        }

        @Nullable
        public final Bitmap getOriginalBitmap() {
            return this.originalBitmap;
        }

        @Nullable
        public final Uri getOriginalUri() {
            return this.originalUri;
        }

        public final int getRotation() {
            return this.rotation;
        }

        public final int getSampleSize() {
            return this.sampleSize;
        }

        @Nullable
        public final Uri getUriContent() {
            return this.uriContent;
        }

        @Nullable
        public final String getUriFilePath(@NotNull Context context, boolean uniqueName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Uri uri = this.uriContent;
            if (uri != null) {
                return GetFilePathFromUriKt.getFilePathFromUri(context, uri, uniqueName);
            }
            return null;
        }

        @Nullable
        public final Rect getWholeImageRect() {
            return this.wholeImageRect;
        }

        public final boolean isSuccessful() {
            return this.error == null;
        }

        @Nullable
        public final Bitmap getBitmap(@NotNull Context context) {
            Bitmap bitmap;
            Intrinsics.checkNotNullParameter(context, "context");
            Bitmap bitmap2 = this.bitmap;
            if (bitmap2 != null) {
                return bitmap2;
            }
            try {
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = this.uriContent;
                Intrinsics.checkNotNull(uri);
                bitmap = ImageDecoder.decodeBitmap(ImageDecoder.createSource(contentResolver, uri));
            } catch (Exception unused) {
                bitmap = null;
            }
            return bitmap;
        }
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$CropShape;", "", "(Ljava/lang/String;I)V", HWRValues.DIAGRAM_KIND_RECTANGLE, "OVAL", "RECTANGLE_VERTICAL_ONLY", "RECTANGLE_HORIZONTAL_ONLY", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public enum CropShape {
        RECTANGLE,
        OVAL,
        RECTANGLE_VERTICAL_ONLY,
        RECTANGLE_HORIZONTAL_ONLY
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$Guidelines;", "", "(Ljava/lang/String;I)V", "OFF", "ON_TOUCH", "ON", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public enum Guidelines {
        OFF,
        ON_TOUCH,
        ON
    }

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;", "", "onCropImageComplete", "", "view", "Lcom/canhub/cropper/CropImageView;", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/canhub/cropper/CropImageView$CropResult;", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface OnCropImageCompleteListener {
        void onCropImageComplete(@NotNull CropImageView view, @NotNull CropResult result);
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;", "", "onCropOverlayMoved", "", "rect", "Landroid/graphics/Rect;", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface OnSetCropOverlayMovedListener {
        void onCropOverlayMoved(@Nullable Rect rect);
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;", "", "onCropOverlayReleased", "", "rect", "Landroid/graphics/Rect;", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface OnSetCropOverlayReleasedListener {
        void onCropOverlayReleased(@Nullable Rect rect);
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;", "", "onCropWindowChanged", "", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface OnSetCropWindowChangeListener {
        void onCropWindowChanged();
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\nH&¨\u0006\u000b"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;", "", "onSetImageUriComplete", "", "view", "Lcom/canhub/cropper/CropImageView;", "uri", "Landroid/net/Uri;", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface OnSetImageUriCompleteListener {
        void onSetImageUriComplete(@NotNull CropImageView view, @NotNull Uri uri, @Nullable Exception error);
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "", "(Ljava/lang/String;I)V", "NONE", "SAMPLING", "RESIZE_INSIDE", "RESIZE_FIT", "RESIZE_EXACT", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public enum RequestSizeOptions {
        NONE,
        SAMPLING,
        RESIZE_INSIDE,
        RESIZE_FIT,
        RESIZE_EXACT
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/canhub/cropper/CropImageView$ScaleType;", "", "(Ljava/lang/String;I)V", "FIT_CENTER", "CENTER", "CENTER_CROP", "CENTER_INSIDE", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public enum ScaleType {
        FIT_CENTER,
        CENTER,
        CENTER_CROP,
        CENTER_INSIDE
    }

    @Deprecated(message = "Please use getCroppedImage", replaceWith = @ReplaceWith(expression = "getCroppedImage()", imports = {}))
    /* renamed from: -croppedImage$annotations, reason: not valid java name */
    public static /* synthetic */ void m72157croppedImage$annotations() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public CropImageView(@NotNull Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void croppedImageAsync$default(CropImageView cropImageView, Bitmap.CompressFormat compressFormat, int i, int i2, int i3, RequestSizeOptions requestSizeOptions, Uri uri, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        if ((i4 & 2) != 0) {
            i = 90;
        }
        int i5 = i;
        int i6 = (i4 & 4) != 0 ? 0 : i2;
        int i7 = (i4 & 8) == 0 ? i3 : 0;
        if ((i4 & 16) != 0) {
            requestSizeOptions = RequestSizeOptions.RESIZE_INSIDE;
        }
        RequestSizeOptions requestSizeOptions2 = requestSizeOptions;
        if ((i4 & 32) != 0) {
            uri = null;
        }
        cropImageView.croppedImageAsync(compressFormat, i5, i6, i7, requestSizeOptions2, uri);
    }

    public static /* synthetic */ Bitmap getCroppedImage$default(CropImageView cropImageView, int i, int i2, RequestSizeOptions requestSizeOptions, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            requestSizeOptions = RequestSizeOptions.RESIZE_INSIDE;
        }
        return cropImageView.getCroppedImage(i, i2, requestSizeOptions);
    }

    @Deprecated(message = "This functionality is deprecated, please remove it altogether or create an issue and explain WHY you need this.")
    public static /* synthetic */ void isSaveBitmapToInstanceState$annotations() {
    }

    @JvmName(name = "-croppedImage")
    @Nullable
    /* renamed from: -croppedImage, reason: not valid java name */
    public final Bitmap m72158croppedImage() {
        return getCroppedImage(0, 0, RequestSizeOptions.NONE);
    }

    /* renamed from: a */
    public final void m9243a(float width, float height, boolean center, boolean animate) {
        if (this.originalBitmap != null) {
            if (width <= 0.0f || height <= 0.0f) {
                return;
            }
            this.mImageMatrix.invert(this.mImageInverseMatrix);
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            RectF cropWindowRect = cropOverlayView.getCropWindowRect();
            this.mImageInverseMatrix.mapRect(cropWindowRect);
            this.mImageMatrix.reset();
            float f = 2;
            this.mImageMatrix.postTranslate((width - r0.getWidth()) / f, (height - r0.getHeight()) / f);
            m9246d();
            int i = this.mDegreesRotated;
            if (i > 0) {
                BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
                this.mImageMatrix.postRotate(i, bitmapUtils.getRectCenterX(this.mImagePoints), bitmapUtils.getRectCenterY(this.mImagePoints));
                m9246d();
            }
            BitmapUtils bitmapUtils2 = BitmapUtils.INSTANCE;
            float min = Math.min(width / bitmapUtils2.getRectWidth(this.mImagePoints), height / bitmapUtils2.getRectHeight(this.mImagePoints));
            ScaleType scaleType = this.mScaleType;
            if (scaleType == ScaleType.FIT_CENTER || ((scaleType == ScaleType.CENTER_INSIDE && min < 1.0f) || (min > 1.0f && this.mAutoZoomEnabled))) {
                this.mImageMatrix.postScale(min, min, bitmapUtils2.getRectCenterX(this.mImagePoints), bitmapUtils2.getRectCenterY(this.mImagePoints));
                m9246d();
            } else if (scaleType == ScaleType.CENTER_CROP) {
                this.mZoom = Math.max(getWidth() / bitmapUtils2.getRectWidth(this.mImagePoints), getHeight() / bitmapUtils2.getRectHeight(this.mImagePoints));
            }
            float f2 = this.mFlipHorizontally ? -this.mZoom : this.mZoom;
            float f3 = this.mFlipVertically ? -this.mZoom : this.mZoom;
            this.mImageMatrix.postScale(f2, f3, bitmapUtils2.getRectCenterX(this.mImagePoints), bitmapUtils2.getRectCenterY(this.mImagePoints));
            m9246d();
            this.mImageMatrix.mapRect(cropWindowRect);
            if (this.mScaleType == ScaleType.CENTER_CROP && center && !animate) {
                this.mZoomOffsetX = 0.0f;
                this.mZoomOffsetY = 0.0f;
            } else if (center) {
                this.mZoomOffsetX = width > bitmapUtils2.getRectWidth(this.mImagePoints) ? 0.0f : Math.max(Math.min((width / f) - cropWindowRect.centerX(), -bitmapUtils2.getRectLeft(this.mImagePoints)), getWidth() - bitmapUtils2.getRectRight(this.mImagePoints)) / f2;
                this.mZoomOffsetY = height <= bitmapUtils2.getRectHeight(this.mImagePoints) ? Math.max(Math.min((height / f) - cropWindowRect.centerY(), -bitmapUtils2.getRectTop(this.mImagePoints)), getHeight() - bitmapUtils2.getRectBottom(this.mImagePoints)) / f3 : 0.0f;
            } else {
                this.mZoomOffsetX = Math.min(Math.max(this.mZoomOffsetX * f2, -cropWindowRect.left), (-cropWindowRect.right) + width) / f2;
                this.mZoomOffsetY = Math.min(Math.max(this.mZoomOffsetY * f3, -cropWindowRect.top), (-cropWindowRect.bottom) + height) / f3;
            }
            this.mImageMatrix.postTranslate(this.mZoomOffsetX * f2, this.mZoomOffsetY * f3);
            cropWindowRect.offset(this.mZoomOffsetX * f2, this.mZoomOffsetY * f3);
            this.mCropOverlayView.setCropWindowRect(cropWindowRect);
            m9246d();
            this.mCropOverlayView.invalidate();
            if (animate) {
                CropImageAnimation cropImageAnimation = this.mAnimation;
                Intrinsics.checkNotNull(cropImageAnimation);
                cropImageAnimation.setEndState(this.mImagePoints, this.mImageMatrix);
                this.imageView.startAnimation(this.mAnimation);
            } else {
                this.imageView.setImageMatrix(this.mImageMatrix);
            }
            m9250h(false);
        }
    }

    /* renamed from: b */
    public final void m9244b() {
        Bitmap bitmap = this.originalBitmap;
        if (bitmap != null && (this.mImageResource > 0 || this.imageUri != null)) {
            Intrinsics.checkNotNull(bitmap);
            bitmap.recycle();
        }
        this.originalBitmap = null;
        this.mImageResource = 0;
        this.imageUri = null;
        this.loadedSampleSize = 1;
        this.mDegreesRotated = 0;
        this.mZoom = 1.0f;
        this.mZoomOffsetX = 0.0f;
        this.mZoomOffsetY = 0.0f;
        this.mImageMatrix.reset();
        this.mRestoreCropWindowRect = null;
        this.mRestoreDegreesRotated = 0;
        this.imageView.setImageBitmap(null);
        m9248f();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d2  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9245c(boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageView.m9245c(boolean, boolean):void");
    }

    public final void clearAspectRatio() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setAspectRatioX(1);
        this.mCropOverlayView.setAspectRatioY(1);
        setFixedAspectRatio(false);
    }

    public final void clearImage() {
        m9244b();
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView == null) {
            return;
        }
        cropOverlayView.setInitialCropWindowRect(null);
    }

    public final void croppedImageAsync(@NotNull Bitmap.CompressFormat saveCompressFormat, int saveCompressQuality, int reqWidth, int reqHeight, @NotNull RequestSizeOptions options, @Nullable Uri customOutputUri) {
        Intrinsics.checkNotNullParameter(saveCompressFormat, "saveCompressFormat");
        Intrinsics.checkNotNullParameter(options, "options");
        if (this.mOnCropImageCompleteListener == null) {
            throw new IllegalArgumentException("mOnCropImageCompleteListener is not set".toString());
        }
        startCropWorkerTask(reqWidth, reqHeight, options, saveCompressFormat, saveCompressQuality, customOutputUri);
    }

    /* renamed from: d */
    public final void m9246d() {
        float[] fArr = this.mImagePoints;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        Intrinsics.checkNotNull(this.originalBitmap);
        fArr[2] = r4.getWidth();
        float[] fArr2 = this.mImagePoints;
        fArr2[3] = 0.0f;
        Intrinsics.checkNotNull(this.originalBitmap);
        fArr2[4] = r6.getWidth();
        float[] fArr3 = this.mImagePoints;
        Intrinsics.checkNotNull(this.originalBitmap);
        fArr3[5] = r6.getHeight();
        float[] fArr4 = this.mImagePoints;
        fArr4[6] = 0.0f;
        Intrinsics.checkNotNull(this.originalBitmap);
        fArr4[7] = r9.getHeight();
        this.mImageMatrix.mapPoints(this.mImagePoints);
        float[] fArr5 = this.mScaleImagePoints;
        fArr5[0] = 0.0f;
        fArr5[1] = 0.0f;
        fArr5[2] = 100.0f;
        fArr5[3] = 0.0f;
        fArr5[4] = 100.0f;
        fArr5[5] = 100.0f;
        fArr5[6] = 0.0f;
        fArr5[7] = 100.0f;
        this.mImageMatrix.mapPoints(fArr5);
    }

    /* renamed from: e */
    public final void m9247e(Bitmap bitmap, int imageResource, Uri imageUri, int loadSampleSize, int degreesRotated) {
        Bitmap bitmap2 = this.originalBitmap;
        if (bitmap2 == null || !Intrinsics.areEqual(bitmap2, bitmap)) {
            m9244b();
            this.originalBitmap = bitmap;
            this.imageView.setImageBitmap(bitmap);
            this.imageUri = imageUri;
            this.mImageResource = imageResource;
            this.loadedSampleSize = loadSampleSize;
            this.mDegreesRotated = degreesRotated;
            m9243a(getWidth(), getHeight(), true, false);
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            if (cropOverlayView != null) {
                cropOverlayView.resetCropOverlayView();
                m9248f();
            }
        }
    }

    @Nullable
    public final Size expectedImageSize() {
        Rect cropRect = getCropRect();
        if (cropRect == null) {
            return null;
        }
        return (getMDegreesRotated() == 0 || getMDegreesRotated() == 180) ? new Size(cropRect.width(), cropRect.height()) : new Size(cropRect.height(), cropRect.width());
    }

    /* renamed from: f */
    public final void m9248f() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView != null) {
            cropOverlayView.setVisibility((!this.mShowCropOverlay || this.originalBitmap == null) ? 4 : 0);
        }
    }

    public final void flipImageHorizontally() {
        this.mFlipHorizontally = !this.mFlipHorizontally;
        m9243a(getWidth(), getHeight(), true, false);
    }

    public final void flipImageVertically() {
        this.mFlipVertically = !this.mFlipVertically;
        m9243a(getWidth(), getHeight(), true, false);
    }

    /* renamed from: g */
    public final void m9249g() {
        this.mProgressBar.setVisibility(this.mShowProgressBar && ((this.originalBitmap == null && this.bitmapLoadingWorkerJob != null) || this.bitmapCroppingWorkerJob != null) ? 0 : 4);
    }

    @NotNull
    public final Pair<Integer, Integer> getAspectRatio() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        return new Pair<>(Integer.valueOf(cropOverlayView.getMAspectRatioX()), Integer.valueOf(this.mCropOverlayView.getMAspectRatioY()));
    }

    @Nullable
    public final CropCornerShape getCornerShape() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        return cropOverlayView.getCornerShape();
    }

    @NotNull
    /* renamed from: getCropLabelText, reason: from getter */
    public final String getMCropTextLabel() {
        return this.mCropTextLabel;
    }

    /* renamed from: getCropLabelTextColor, reason: from getter */
    public final int getMCropLabelTextColor() {
        return this.mCropLabelTextColor;
    }

    /* renamed from: getCropLabelTextSize, reason: from getter */
    public final float getMCropLabelTextSize() {
        return this.mCropLabelTextSize;
    }

    @NotNull
    public final float[] getCropPoints() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        RectF cropWindowRect = cropOverlayView.getCropWindowRect();
        float f = cropWindowRect.left;
        float f2 = cropWindowRect.top;
        float f3 = cropWindowRect.right;
        float f4 = cropWindowRect.bottom;
        float[] fArr = {f, f2, f3, f2, f3, f4, f, f4};
        this.mImageMatrix.invert(this.mImageInverseMatrix);
        this.mImageInverseMatrix.mapPoints(fArr);
        float[] fArr2 = new float[8];
        for (int i = 0; i < 8; i++) {
            fArr2[i] = fArr[i] * this.loadedSampleSize;
        }
        return fArr2;
    }

    @Nullable
    public final Rect getCropRect() {
        int i = this.loadedSampleSize;
        Bitmap bitmap = this.originalBitmap;
        if (bitmap == null) {
            return null;
        }
        float[] cropPoints = getCropPoints();
        int width = bitmap.getWidth() * i;
        int height = bitmap.getHeight() * i;
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        return bitmapUtils.getRectFromPoints(cropPoints, width, height, cropOverlayView.getIsFixAspectRatio(), this.mCropOverlayView.getMAspectRatioX(), this.mCropOverlayView.getMAspectRatioY());
    }

    @Nullable
    public final CropShape getCropShape() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        return cropOverlayView.getCropShape();
    }

    @Nullable
    public final RectF getCropWindowRect() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView != null) {
            return cropOverlayView.getCropWindowRect();
        }
        return null;
    }

    @JvmOverloads
    @Nullable
    public final Bitmap getCroppedImage() {
        return getCroppedImage$default(this, 0, 0, null, 7, null);
    }

    @Nullable
    public final Uri getCustomOutputUri() {
        return this.customOutputUri;
    }

    @Nullable
    public final Guidelines getGuidelines() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        return cropOverlayView.getGuidelines();
    }

    /* renamed from: getImageResource, reason: from getter */
    public final int getMImageResource() {
        return this.mImageResource;
    }

    @Nullable
    public final Uri getImageUri() {
        return this.imageUri;
    }

    /* renamed from: getMaxZoom, reason: from getter */
    public final int getMMaxZoom() {
        return this.mMaxZoom;
    }

    /* renamed from: getRotatedDegrees, reason: from getter */
    public final int getMDegreesRotated() {
        return this.mDegreesRotated;
    }

    @NotNull
    /* renamed from: getScaleType, reason: from getter */
    public final ScaleType getMScaleType() {
        return this.mScaleType;
    }

    @Nullable
    public final Rect getWholeImageRect() {
        int i = this.loadedSampleSize;
        Bitmap bitmap = this.originalBitmap;
        if (bitmap == null) {
            return null;
        }
        return new Rect(0, 0, bitmap.getWidth() * i, bitmap.getHeight() * i);
    }

    /* renamed from: h */
    public final void m9250h(boolean clear) {
        if (this.originalBitmap != null && !clear) {
            BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
            float rectWidth = (this.loadedSampleSize * 100.0f) / bitmapUtils.getRectWidth(this.mScaleImagePoints);
            float rectHeight = (this.loadedSampleSize * 100.0f) / bitmapUtils.getRectHeight(this.mScaleImagePoints);
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            cropOverlayView.setCropWindowLimits(getWidth(), getHeight(), rectWidth, rectHeight);
        }
        CropOverlayView cropOverlayView2 = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView2);
        cropOverlayView2.setBounds(clear ? null : this.mImagePoints, getWidth(), getHeight());
    }

    /* renamed from: isAutoZoomEnabled, reason: from getter */
    public final boolean getMAutoZoomEnabled() {
        return this.mAutoZoomEnabled;
    }

    public final boolean isFixAspectRatio() {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        return cropOverlayView.getIsFixAspectRatio();
    }

    /* renamed from: isFlippedHorizontally, reason: from getter */
    public final boolean getMFlipHorizontally() {
        return this.mFlipHorizontally;
    }

    /* renamed from: isFlippedVertically, reason: from getter */
    public final boolean getMFlipVertically() {
        return this.mFlipVertically;
    }

    /* renamed from: isSaveBitmapToInstanceState, reason: from getter */
    public final boolean getIsSaveBitmapToInstanceState() {
        return this.isSaveBitmapToInstanceState;
    }

    /* renamed from: isShowCropLabel, reason: from getter */
    public final boolean getMShowCropLabel() {
        return this.mShowCropLabel;
    }

    /* renamed from: isShowCropOverlay, reason: from getter */
    public final boolean getMShowCropOverlay() {
        return this.mShowCropOverlay;
    }

    /* renamed from: isShowProgressBar, reason: from getter */
    public final boolean getMShowProgressBar() {
        return this.mShowProgressBar;
    }

    @Override // com.canhub.cropper.CropOverlayView.CropWindowChangeListener
    public void onCropWindowChanged(boolean inProgress) {
        m9245c(inProgress, true);
        if (inProgress) {
            OnSetCropOverlayMovedListener onSetCropOverlayMovedListener = this.mOnSetCropOverlayMovedListener;
            if (onSetCropOverlayMovedListener != null) {
                onSetCropOverlayMovedListener.onCropOverlayMoved(getCropRect());
                return;
            }
            return;
        }
        OnSetCropOverlayReleasedListener onSetCropOverlayReleasedListener = this.mOnCropOverlayReleasedListener;
        if (onSetCropOverlayReleasedListener != null) {
            onSetCropOverlayReleasedListener.onCropOverlayReleased(getCropRect());
        }
    }

    public final void onImageCroppingAsyncComplete$cropper_release(@NotNull BitmapCroppingWorkerJob.Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.bitmapCroppingWorkerJob = null;
        m9249g();
        OnCropImageCompleteListener onCropImageCompleteListener = this.mOnCropImageCompleteListener;
        if (onCropImageCompleteListener != null) {
            onCropImageCompleteListener.onCropImageComplete(this, new CropResult(this.originalBitmap, this.imageUri, result.getBitmap(), result.getUri(), result.getError(), getCropPoints(), getCropRect(), getWholeImageRect(), getMDegreesRotated(), result.getSampleSize()));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (this.mLayoutWidth <= 0 || this.mLayoutHeight <= 0) {
            m9250h(true);
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = this.mLayoutWidth;
        layoutParams.height = this.mLayoutHeight;
        setLayoutParams(layoutParams);
        if (this.originalBitmap == null) {
            m9250h(true);
            return;
        }
        float f = r - l;
        float f2 = b - t;
        m9243a(f, f2, true, false);
        RectF rectF = this.mRestoreCropWindowRect;
        if (rectF == null) {
            if (this.mSizeChanged) {
                this.mSizeChanged = false;
                m9245c(false, false);
                return;
            }
            return;
        }
        int i = this.mRestoreDegreesRotated;
        if (i != this.mInitialDegreesRotated) {
            this.mDegreesRotated = i;
            m9243a(f, f2, true, false);
            this.mRestoreDegreesRotated = 0;
        }
        this.mImageMatrix.mapRect(this.mRestoreCropWindowRect);
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView != null) {
            cropOverlayView.setCropWindowRect(rectF);
        }
        m9245c(false, false);
        CropOverlayView cropOverlayView2 = this.mCropOverlayView;
        if (cropOverlayView2 != null) {
            cropOverlayView2.fixCurrentCropWindowRect();
        }
        this.mRestoreCropWindowRect = null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width;
        int i;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        Bitmap bitmap = this.originalBitmap;
        if (bitmap == null) {
            setMeasuredDimension(size, size2);
            return;
        }
        if (size2 == 0) {
            size2 = bitmap.getHeight();
        }
        double width2 = size < bitmap.getWidth() ? size / bitmap.getWidth() : Double.POSITIVE_INFINITY;
        double height = size2 < bitmap.getHeight() ? size2 / bitmap.getHeight() : Double.POSITIVE_INFINITY;
        if (width2 == Double.POSITIVE_INFINITY) {
            if (height == Double.POSITIVE_INFINITY) {
                width = bitmap.getWidth();
                i = bitmap.getHeight();
                Companion companion = INSTANCE;
                int onMeasureSpec$cropper_release = companion.getOnMeasureSpec$cropper_release(mode, size, width);
                int onMeasureSpec$cropper_release2 = companion.getOnMeasureSpec$cropper_release(mode2, size2, i);
                this.mLayoutWidth = onMeasureSpec$cropper_release;
                this.mLayoutHeight = onMeasureSpec$cropper_release2;
                setMeasuredDimension(onMeasureSpec$cropper_release, onMeasureSpec$cropper_release2);
            }
        }
        if (width2 <= height) {
            i = (int) (bitmap.getHeight() * width2);
            width = size;
        } else {
            width = (int) (bitmap.getWidth() * height);
            i = size2;
        }
        Companion companion2 = INSTANCE;
        int onMeasureSpec$cropper_release3 = companion2.getOnMeasureSpec$cropper_release(mode, size, width);
        int onMeasureSpec$cropper_release22 = companion2.getOnMeasureSpec$cropper_release(mode2, size2, i);
        this.mLayoutWidth = onMeasureSpec$cropper_release3;
        this.mLayoutHeight = onMeasureSpec$cropper_release22;
        setMeasuredDimension(onMeasureSpec$cropper_release3, onMeasureSpec$cropper_release22);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@NotNull Parcelable state) {
        Bitmap bitmap;
        Intrinsics.checkNotNullParameter(state, "state");
        if (!(state instanceof Bundle)) {
            super.onRestoreInstanceState(state);
            return;
        }
        if (this.bitmapLoadingWorkerJob == null && this.imageUri == null && this.originalBitmap == null && this.mImageResource == 0) {
            Bundle bundle = (Bundle) state;
            Parcelable parcelable = bundle.getParcelable("LOADED_IMAGE_URI");
            if (!(parcelable instanceof Uri)) {
                parcelable = null;
            }
            Uri uri = (Uri) parcelable;
            if (uri != null) {
                String string = bundle.getString("LOADED_IMAGE_STATE_BITMAP_KEY");
                if (string != null) {
                    BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
                    Pair<String, WeakReference<Bitmap>> mStateBitmap = bitmapUtils.getMStateBitmap();
                    if (mStateBitmap != null) {
                        bitmap = Intrinsics.areEqual(mStateBitmap.first, string) ? (Bitmap) ((WeakReference) mStateBitmap.second).get() : null;
                    } else {
                        bitmap = null;
                    }
                    bitmapUtils.setMStateBitmap(null);
                    if (bitmap != null && !bitmap.isRecycled()) {
                        m9247e(bitmap, 0, uri, bundle.getInt("LOADED_SAMPLE_SIZE"), 0);
                    }
                }
                if (this.imageUri == null) {
                    setImageUriAsync(uri);
                    Unit unit = Unit.INSTANCE;
                }
            } else {
                int i = bundle.getInt("LOADED_IMAGE_RESOURCE");
                if (i > 0) {
                    setImageResource(i);
                } else {
                    Parcelable parcelable2 = bundle.getParcelable("LOADING_IMAGE_URI");
                    if (!(parcelable2 instanceof Uri)) {
                        parcelable2 = null;
                    }
                    Uri uri2 = (Uri) parcelable2;
                    if (uri2 != null) {
                        setImageUriAsync(uri2);
                    }
                }
            }
            int i2 = bundle.getInt("DEGREES_ROTATED");
            this.mRestoreDegreesRotated = i2;
            this.mDegreesRotated = i2;
            Parcelable parcelable3 = bundle.getParcelable("INITIAL_CROP_RECT");
            if (!(parcelable3 instanceof Rect)) {
                parcelable3 = null;
            }
            Rect rect = (Rect) parcelable3;
            if (rect != null && (rect.width() > 0 || rect.height() > 0)) {
                CropOverlayView cropOverlayView = this.mCropOverlayView;
                Intrinsics.checkNotNull(cropOverlayView);
                cropOverlayView.setInitialCropWindowRect(rect);
            }
            Parcelable parcelable4 = bundle.getParcelable("CROP_WINDOW_RECT");
            if (!(parcelable4 instanceof RectF)) {
                parcelable4 = null;
            }
            RectF rectF = (RectF) parcelable4;
            if (rectF != null && (rectF.width() > 0.0f || rectF.height() > 0.0f)) {
                this.mRestoreCropWindowRect = rectF;
            }
            CropOverlayView cropOverlayView2 = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView2);
            String string2 = bundle.getString("CROP_SHAPE");
            Intrinsics.checkNotNull(string2);
            cropOverlayView2.setCropShape(CropShape.valueOf(string2));
            this.mAutoZoomEnabled = bundle.getBoolean("CROP_AUTO_ZOOM_ENABLED");
            this.mMaxZoom = bundle.getInt("CROP_MAX_ZOOM");
            this.mFlipHorizontally = bundle.getBoolean("CROP_FLIP_HORIZONTALLY");
            this.mFlipVertically = bundle.getBoolean("CROP_FLIP_VERTICALLY");
            boolean z = bundle.getBoolean("SHOW_CROP_LABEL");
            this.mShowCropLabel = z;
            this.mCropOverlayView.setCropperTextLabelVisibility(z);
        }
        Parcelable parcelable5 = ((Bundle) state).getParcelable("instanceState");
        super.onRestoreInstanceState(parcelable5 instanceof Parcelable ? parcelable5 : null);
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        Uri uri;
        if (this.imageUri == null && this.originalBitmap == null && this.mImageResource < 1) {
            return super.onSaveInstanceState();
        }
        Bundle bundle = new Bundle();
        if (this.isSaveBitmapToInstanceState && this.imageUri == null && this.mImageResource < 1) {
            BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            uri = bitmapUtils.writeTempStateStoreBitmap(context, this.originalBitmap, this.customOutputUri);
        } else {
            uri = this.imageUri;
        }
        if (uri != null && this.originalBitmap != null) {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
            BitmapUtils.INSTANCE.setMStateBitmap(new Pair<>(uuid, new WeakReference(this.originalBitmap)));
            bundle.putString("LOADED_IMAGE_STATE_BITMAP_KEY", uuid);
        }
        WeakReference<BitmapLoadingWorkerJob> weakReference = this.bitmapLoadingWorkerJob;
        BitmapLoadingWorkerJob bitmapLoadingWorkerJob = weakReference != null ? weakReference.get() : null;
        if (bitmapLoadingWorkerJob != null) {
            bundle.putParcelable("LOADING_IMAGE_URI", bitmapLoadingWorkerJob.getUri());
        }
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putParcelable("LOADED_IMAGE_URI", uri);
        bundle.putInt("LOADED_IMAGE_RESOURCE", this.mImageResource);
        bundle.putInt("LOADED_SAMPLE_SIZE", this.loadedSampleSize);
        bundle.putInt("DEGREES_ROTATED", this.mDegreesRotated);
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        bundle.putParcelable("INITIAL_CROP_RECT", cropOverlayView.getMInitialCropWindowRect());
        BitmapUtils bitmapUtils2 = BitmapUtils.INSTANCE;
        bitmapUtils2.getRECT().set(this.mCropOverlayView.getCropWindowRect());
        this.mImageMatrix.invert(this.mImageInverseMatrix);
        this.mImageInverseMatrix.mapRect(bitmapUtils2.getRECT());
        bundle.putParcelable("CROP_WINDOW_RECT", bitmapUtils2.getRECT());
        CropShape cropShape = this.mCropOverlayView.getCropShape();
        Intrinsics.checkNotNull(cropShape);
        bundle.putString("CROP_SHAPE", cropShape.name());
        bundle.putBoolean("CROP_AUTO_ZOOM_ENABLED", this.mAutoZoomEnabled);
        bundle.putInt("CROP_MAX_ZOOM", this.mMaxZoom);
        bundle.putBoolean("CROP_FLIP_HORIZONTALLY", this.mFlipHorizontally);
        bundle.putBoolean("CROP_FLIP_VERTICALLY", this.mFlipVertically);
        bundle.putBoolean("SHOW_CROP_LABEL", this.mShowCropLabel);
        return bundle;
    }

    public final void onSetImageUriAsyncComplete$cropper_release(@NotNull BitmapLoadingWorkerJob.Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.bitmapLoadingWorkerJob = null;
        m9249g();
        if (result.getError() == null) {
            this.mInitialDegreesRotated = result.getDegreesRotated();
            this.mFlipHorizontally = result.getFlipHorizontally();
            this.mFlipVertically = result.getFlipVertically();
            m9247e(result.getBitmap(), 0, result.getUri(), result.getLoadSampleSize(), result.getDegreesRotated());
        }
        OnSetImageUriCompleteListener onSetImageUriCompleteListener = this.mOnSetImageUriCompleteListener;
        if (onSetImageUriCompleteListener != null) {
            onSetImageUriCompleteListener.onSetImageUriComplete(this, result.getUri(), result.getError());
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mSizeChanged = oldw > 0 && oldh > 0;
    }

    public final void resetCropRect() {
        this.mZoom = 1.0f;
        this.mZoomOffsetX = 0.0f;
        this.mZoomOffsetY = 0.0f;
        this.mDegreesRotated = this.mInitialDegreesRotated;
        this.mFlipHorizontally = false;
        this.mFlipVertically = false;
        m9243a(getWidth(), getHeight(), false, false);
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.resetCropWindowRect();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        if ((216 <= r1 && r1 < 305) != false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void rotateImage(int r18) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageView.rotateImage(int):void");
    }

    public final void setAspectRatio(int aspectRatioX, int aspectRatioY) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setAspectRatioX(aspectRatioX);
        this.mCropOverlayView.setAspectRatioY(aspectRatioY);
        this.mCropOverlayView.setFixedAspectRatio(true);
    }

    public final void setAutoZoomEnabled(boolean z) {
        if (this.mAutoZoomEnabled != z) {
            this.mAutoZoomEnabled = z;
            m9245c(false, false);
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            cropOverlayView.invalidate();
        }
    }

    public final void setCenterMoveEnabled(boolean centerMoveEnabled) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        if (cropOverlayView.setCenterMoveEnabled(centerMoveEnabled)) {
            m9245c(false, false);
            this.mCropOverlayView.invalidate();
        }
    }

    public final void setCornerShape(@Nullable CropCornerShape cropCornerShape) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        Intrinsics.checkNotNull(cropCornerShape);
        cropOverlayView.setCropCornerShape(cropCornerShape);
    }

    public final void setCropLabelText(@NotNull String cropLabelText) {
        Intrinsics.checkNotNullParameter(cropLabelText, "cropLabelText");
        this.mCropTextLabel = cropLabelText;
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView != null) {
            cropOverlayView.setCropLabelText(cropLabelText);
        }
    }

    public final void setCropLabelTextColor(int i) {
        this.mCropLabelTextColor = i;
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView != null) {
            cropOverlayView.setCropLabelTextColor(i);
        }
    }

    public final void setCropLabelTextSize(float f) {
        this.mCropLabelTextSize = getMCropLabelTextSize();
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView != null) {
            cropOverlayView.setCropLabelTextSize(f);
        }
    }

    public final void setCropRect(@Nullable Rect rect) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setInitialCropWindowRect(rect);
    }

    public final void setCropShape(@Nullable CropShape cropShape) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        Intrinsics.checkNotNull(cropShape);
        cropOverlayView.setCropShape(cropShape);
    }

    public final void setCustomOutputUri(@Nullable Uri uri) {
        this.customOutputUri = uri;
    }

    public final void setFixedAspectRatio(boolean fixAspectRatio) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setFixedAspectRatio(fixAspectRatio);
    }

    public final void setFlippedHorizontally(boolean z) {
        if (this.mFlipHorizontally != z) {
            this.mFlipHorizontally = z;
            m9243a(getWidth(), getHeight(), true, false);
        }
    }

    public final void setFlippedVertically(boolean z) {
        if (this.mFlipVertically != z) {
            this.mFlipVertically = z;
            m9243a(getWidth(), getHeight(), true, false);
        }
    }

    public final void setGuidelines(@Nullable Guidelines guidelines) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        Intrinsics.checkNotNull(guidelines);
        cropOverlayView.setGuidelines(guidelines);
    }

    public final void setImageBitmap(@Nullable Bitmap bitmap) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setInitialCropWindowRect(null);
        m9247e(bitmap, 0, null, 1, 0);
    }

    public final void setImageCropOptions(@NotNull CropImageOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setScaleType(options.scaleType);
        this.customOutputUri = options.customOutputUri;
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        if (cropOverlayView != null) {
            cropOverlayView.setInitialAttributeValues(options);
        }
        setMultiTouchEnabled(options.multiTouchEnabled);
        setCenterMoveEnabled(options.centerMoveEnabled);
        setShowCropOverlay(options.showCropOverlay);
        setShowProgressBar(options.showProgressBar);
        setAutoZoomEnabled(options.autoZoomEnabled);
        setMaxZoom(options.maxZoom);
        setFlippedHorizontally(options.flipHorizontally);
        setFlippedVertically(options.flipVertically);
        this.mAutoZoomEnabled = options.autoZoomEnabled;
        this.mShowCropOverlay = options.showCropOverlay;
        this.mShowProgressBar = options.showProgressBar;
        this.mProgressBar.setIndeterminateTintList(ColorStateList.valueOf(options.progressBarColor));
    }

    public final void setImageResource(int i) {
        if (i != 0) {
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            cropOverlayView.setInitialCropWindowRect(null);
            m9247e(BitmapFactory.decodeResource(getResources(), i), i, null, 1, 0);
        }
    }

    public final void setImageUriAsync(@Nullable Uri uri) {
        BitmapLoadingWorkerJob bitmapLoadingWorkerJob;
        if (uri != null) {
            WeakReference<BitmapLoadingWorkerJob> weakReference = this.bitmapLoadingWorkerJob;
            if (weakReference != null && (bitmapLoadingWorkerJob = weakReference.get()) != null) {
                bitmapLoadingWorkerJob.cancel();
            }
            m9244b();
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            cropOverlayView.setInitialCropWindowRect(null);
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            WeakReference<BitmapLoadingWorkerJob> weakReference2 = new WeakReference<>(new BitmapLoadingWorkerJob(context, this, uri));
            this.bitmapLoadingWorkerJob = weakReference2;
            BitmapLoadingWorkerJob bitmapLoadingWorkerJob2 = weakReference2.get();
            if (bitmapLoadingWorkerJob2 != null) {
                bitmapLoadingWorkerJob2.start();
            }
            m9249g();
        }
    }

    public final void setMaxCropResultSize(int maxCropResultWidth, int maxCropResultHeight) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setMaxCropResultSize(maxCropResultWidth, maxCropResultHeight);
    }

    public final void setMaxZoom(int i) {
        if (this.mMaxZoom == i || i <= 0) {
            return;
        }
        this.mMaxZoom = i;
        m9245c(false, false);
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.invalidate();
    }

    public final void setMinCropResultSize(int minCropResultWidth, int minCropResultHeight) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setMinCropResultSize(minCropResultWidth, minCropResultHeight);
    }

    public final void setMultiTouchEnabled(boolean multiTouchEnabled) {
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        if (cropOverlayView.setMultiTouchEnabled(multiTouchEnabled)) {
            m9245c(false, false);
            this.mCropOverlayView.invalidate();
        }
    }

    public final void setOnCropImageCompleteListener(@Nullable OnCropImageCompleteListener listener) {
        this.mOnCropImageCompleteListener = listener;
    }

    public final void setOnCropWindowChangedListener(@Nullable OnSetCropWindowChangeListener listener) {
        this.mOnSetCropWindowChangeListener = listener;
    }

    public final void setOnSetCropOverlayMovedListener(@Nullable OnSetCropOverlayMovedListener listener) {
        this.mOnSetCropOverlayMovedListener = listener;
    }

    public final void setOnSetCropOverlayReleasedListener(@Nullable OnSetCropOverlayReleasedListener listener) {
        this.mOnCropOverlayReleasedListener = listener;
    }

    public final void setOnSetImageUriCompleteListener(@Nullable OnSetImageUriCompleteListener listener) {
        this.mOnSetImageUriCompleteListener = listener;
    }

    public final void setRotatedDegrees(int i) {
        int i2 = this.mDegreesRotated;
        if (i2 != i) {
            rotateImage(i - i2);
        }
    }

    public final void setSaveBitmapToInstanceState(boolean z) {
        this.isSaveBitmapToInstanceState = z;
    }

    public final void setScaleType(@NotNull ScaleType scaleType) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        if (scaleType != this.mScaleType) {
            this.mScaleType = scaleType;
            this.mZoom = 1.0f;
            this.mZoomOffsetY = 0.0f;
            this.mZoomOffsetX = 0.0f;
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            if (cropOverlayView != null) {
                cropOverlayView.resetCropOverlayView();
            }
            requestLayout();
        }
    }

    public final void setShowCropLabel(boolean z) {
        if (this.mShowCropLabel != z) {
            this.mShowCropLabel = z;
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            if (cropOverlayView != null) {
                cropOverlayView.setCropperTextLabelVisibility(z);
            }
        }
    }

    public final void setShowCropOverlay(boolean z) {
        if (this.mShowCropOverlay != z) {
            this.mShowCropOverlay = z;
            m9248f();
        }
    }

    public final void setShowProgressBar(boolean z) {
        if (this.mShowProgressBar != z) {
            this.mShowProgressBar = z;
            m9249g();
        }
    }

    public final void setSnapRadius(float snapRadius) {
        if (snapRadius >= 0.0f) {
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            cropOverlayView.setSnapRadius(snapRadius);
        }
    }

    public final void startCropWorkerTask(int reqWidth, int reqHeight, @NotNull RequestSizeOptions options, @NotNull Bitmap.CompressFormat saveCompressFormat, int saveCompressQuality, @Nullable Uri customOutputUri) {
        BitmapCroppingWorkerJob bitmapCroppingWorkerJob;
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(saveCompressFormat, "saveCompressFormat");
        Bitmap bitmap = this.originalBitmap;
        if (bitmap != null) {
            WeakReference<BitmapCroppingWorkerJob> weakReference = this.bitmapCroppingWorkerJob;
            if (weakReference != null) {
                Intrinsics.checkNotNull(weakReference);
                bitmapCroppingWorkerJob = weakReference.get();
            } else {
                bitmapCroppingWorkerJob = null;
            }
            if (bitmapCroppingWorkerJob != null) {
                bitmapCroppingWorkerJob.cancel();
            }
            Pair pair = (this.loadedSampleSize > 1 || options == RequestSizeOptions.SAMPLING) ? new Pair(Integer.valueOf(bitmap.getWidth() * this.loadedSampleSize), Integer.valueOf(bitmap.getHeight() * this.loadedSampleSize)) : new Pair(0, 0);
            Integer orgWidth = (Integer) pair.first;
            Integer orgHeight = (Integer) pair.second;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            WeakReference weakReference2 = new WeakReference(this);
            Uri uri = this.imageUri;
            float[] cropPoints = getCropPoints();
            int i = this.mDegreesRotated;
            Intrinsics.checkNotNullExpressionValue(orgWidth, "orgWidth");
            int intValue = orgWidth.intValue();
            Intrinsics.checkNotNullExpressionValue(orgHeight, "orgHeight");
            int intValue2 = orgHeight.intValue();
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            boolean isFixAspectRatio = cropOverlayView.getIsFixAspectRatio();
            int mAspectRatioX = this.mCropOverlayView.getMAspectRatioX();
            int mAspectRatioY = this.mCropOverlayView.getMAspectRatioY();
            RequestSizeOptions requestSizeOptions = RequestSizeOptions.NONE;
            WeakReference<BitmapCroppingWorkerJob> weakReference3 = new WeakReference<>(new BitmapCroppingWorkerJob(context, weakReference2, uri, bitmap, cropPoints, i, intValue, intValue2, isFixAspectRatio, mAspectRatioX, mAspectRatioY, options != requestSizeOptions ? reqWidth : 0, options != requestSizeOptions ? reqHeight : 0, this.mFlipHorizontally, this.mFlipVertically, options, saveCompressFormat, saveCompressQuality, customOutputUri == null ? this.customOutputUri : customOutputUri));
            this.bitmapCroppingWorkerJob = weakReference3;
            Intrinsics.checkNotNull(weakReference3);
            BitmapCroppingWorkerJob bitmapCroppingWorkerJob2 = weakReference3.get();
            Intrinsics.checkNotNull(bitmapCroppingWorkerJob2);
            bitmapCroppingWorkerJob2.start();
            m9249g();
        }
    }

    public /* synthetic */ CropImageView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    @JvmOverloads
    @Nullable
    public final Bitmap getCroppedImage(int i) {
        return getCroppedImage$default(this, i, 0, null, 6, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0066, code lost:
    
        if (r5 == null) goto L17;
     */
    @kotlin.jvm.JvmOverloads
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CropImageView(@org.jetbrains.annotations.NotNull android.content.Context r84, @org.jetbrains.annotations.Nullable android.util.AttributeSet r85) {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @JvmOverloads
    @Nullable
    public final Bitmap getCroppedImage(int i, int i2) {
        return getCroppedImage$default(this, i, i2, null, 4, null);
    }

    public final void setImageBitmap(@Nullable Bitmap bitmap, @Nullable ExifInterface exif) {
        int i;
        Bitmap bitmap2;
        if (bitmap == null || exif == null) {
            i = 0;
            bitmap2 = bitmap;
        } else {
            BitmapUtils.RotateBitmapResult orientateBitmapByExif = BitmapUtils.INSTANCE.orientateBitmapByExif(bitmap, exif);
            Bitmap bitmap3 = orientateBitmapByExif.getBitmap();
            i = orientateBitmapByExif.getDegrees();
            this.mFlipHorizontally = orientateBitmapByExif.getFlipHorizontally();
            this.mFlipVertically = orientateBitmapByExif.getFlipVertically();
            this.mInitialDegreesRotated = orientateBitmapByExif.getDegrees();
            bitmap2 = bitmap3;
        }
        CropOverlayView cropOverlayView = this.mCropOverlayView;
        Intrinsics.checkNotNull(cropOverlayView);
        cropOverlayView.setInitialCropWindowRect(null);
        m9247e(bitmap2, 0, null, 1, i);
    }

    @JvmOverloads
    @Nullable
    public final Bitmap getCroppedImage(int reqWidth, int reqHeight, @NotNull RequestSizeOptions options) {
        int i;
        Bitmap bitmap;
        Intrinsics.checkNotNullParameter(options, "options");
        Bitmap bitmap2 = this.originalBitmap;
        if (bitmap2 == null) {
            return null;
        }
        RequestSizeOptions requestSizeOptions = RequestSizeOptions.NONE;
        int i2 = options != requestSizeOptions ? reqWidth : 0;
        int i3 = options != requestSizeOptions ? reqHeight : 0;
        if (this.imageUri != null && (this.loadedSampleSize > 1 || options == RequestSizeOptions.SAMPLING)) {
            BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            Uri uri = this.imageUri;
            float[] cropPoints = getCropPoints();
            int i4 = this.mDegreesRotated;
            Bitmap bitmap3 = this.originalBitmap;
            Intrinsics.checkNotNull(bitmap3);
            int width = bitmap3.getWidth() * this.loadedSampleSize;
            Bitmap bitmap4 = this.originalBitmap;
            Intrinsics.checkNotNull(bitmap4);
            int height = bitmap4.getHeight() * this.loadedSampleSize;
            CropOverlayView cropOverlayView = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView);
            i = i2;
            bitmap = bitmapUtils.cropBitmap(context, uri, cropPoints, i4, width, height, cropOverlayView.getIsFixAspectRatio(), this.mCropOverlayView.getMAspectRatioX(), this.mCropOverlayView.getMAspectRatioY(), i, i3, this.mFlipHorizontally, this.mFlipVertically).getBitmap();
        } else {
            i = i2;
            BitmapUtils bitmapUtils2 = BitmapUtils.INSTANCE;
            float[] cropPoints2 = getCropPoints();
            int i5 = this.mDegreesRotated;
            CropOverlayView cropOverlayView2 = this.mCropOverlayView;
            Intrinsics.checkNotNull(cropOverlayView2);
            bitmap = bitmapUtils2.cropBitmapObjectHandleOOM(bitmap2, cropPoints2, i5, cropOverlayView2.getIsFixAspectRatio(), this.mCropOverlayView.getMAspectRatioX(), this.mCropOverlayView.getMAspectRatioY(), this.mFlipHorizontally, this.mFlipVertically).getBitmap();
        }
        return BitmapUtils.INSTANCE.resizeBitmap(bitmap, i, i3, options);
    }
}

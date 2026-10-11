package com.canhub.cropper;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Px;
import androidx.work.WorkInfo;
import com.canhub.cropper.CropImageView;
import com.fasterxml.jackson.core.JsonParser;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import javax.imageio.plugins.tiff.TIFFTag;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Parcelize
@Metadata(m61527d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\bU\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BÕ\u0005\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0003\u0010\t\u001a\u00020\n\u0012\b\b\u0003\u0010\u000b\u001a\u00020\n\u0012\b\b\u0003\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0014\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u001a\u001a\u00020\n\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0015\u0012\b\b\u0003\u0010\u001e\u001a\u00020\n\u0012\b\b\u0003\u0010\u001f\u001a\u00020\u0015\u0012\b\b\u0003\u0010 \u001a\u00020\n\u0012\b\b\u0003\u0010!\u001a\u00020\n\u0012\b\b\u0003\u0010\"\u001a\u00020\n\u0012\b\b\u0003\u0010#\u001a\u00020\u0015\u0012\b\b\u0003\u0010$\u001a\u00020\u0015\u0012\b\b\u0003\u0010%\u001a\u00020\n\u0012\b\b\u0003\u0010&\u001a\u00020\u0015\u0012\b\b\u0003\u0010'\u001a\u00020\u0015\u0012\b\b\u0003\u0010(\u001a\u00020\u0015\u0012\b\b\u0003\u0010)\u001a\u00020\u0015\u0012\b\b\u0003\u0010*\u001a\u00020\u0015\u0012\b\b\u0003\u0010+\u001a\u00020\u0015\u0012\b\b\u0003\u0010,\u001a\u00020\u0015\u0012\b\b\u0003\u0010-\u001a\u00020\u0015\u0012\b\b\u0002\u0010.\u001a\u00020/\u0012\b\b\u0003\u00100\u001a\u00020\u0015\u0012\n\b\u0003\u00101\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u000103\u0012\b\b\u0002\u00104\u001a\u000205\u0012\b\b\u0002\u00106\u001a\u00020\u0015\u0012\b\b\u0003\u00107\u001a\u00020\u0015\u0012\b\b\u0003\u00108\u001a\u00020\u0015\u0012\b\b\u0002\u00109\u001a\u00020:\u0012\b\b\u0002\u0010;\u001a\u00020\u0003\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010=\u0012\b\b\u0002\u0010>\u001a\u00020\u0015\u0012\b\b\u0002\u0010?\u001a\u00020\u0003\u0012\b\b\u0002\u0010@\u001a\u00020\u0003\u0012\b\b\u0002\u0010A\u001a\u00020\u0003\u0012\b\b\u0002\u0010B\u001a\u00020\u0015\u0012\b\b\u0002\u0010C\u001a\u00020\u0003\u0012\b\b\u0002\u0010D\u001a\u00020\u0003\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010/\u0012\b\b\u0003\u0010F\u001a\u00020\u0015\u0012\b\b\u0002\u0010G\u001a\u00020\u0003\u0012\b\b\u0002\u0010H\u001a\u00020\u0003\u0012\n\b\u0002\u0010I\u001a\u0004\u0018\u00010J\u0012\u0010\b\u0002\u0010K\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010L\u0012\b\b\u0003\u0010M\u001a\u00020\n\u0012\b\b\u0003\u0010N\u001a\u00020\u0015\u0012\n\b\u0002\u0010O\u001a\u0004\u0018\u00010J\u0012\b\b\u0003\u0010P\u001a\u00020\u0015\u0012\n\b\u0003\u0010Q\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0003\u0010R\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0003\u0010S\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0003\u0010T\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010UJ\t\u0010W\u001a\u00020\u0003HÆ\u0003J\t\u0010X\u001a\u00020\u0003HÆ\u0003J\t\u0010Y\u001a\u00020\u0003HÆ\u0003J\t\u0010Z\u001a\u00020\u0003HÆ\u0003J\t\u0010[\u001a\u00020\u0015HÆ\u0003J\t\u0010\\\u001a\u00020\u0003HÆ\u0003J\t\u0010]\u001a\u00020\u0003HÆ\u0003J\t\u0010^\u001a\u00020\u0003HÆ\u0003J\t\u0010_\u001a\u00020\u0015HÆ\u0003J\t\u0010`\u001a\u00020\nHÆ\u0003J\t\u0010a\u001a\u00020\u0003HÆ\u0003J\t\u0010b\u001a\u00020\u0003HÆ\u0003J\t\u0010c\u001a\u00020\u0015HÆ\u0003J\t\u0010d\u001a\u00020\u0015HÆ\u0003J\t\u0010e\u001a\u00020\nHÆ\u0003J\t\u0010f\u001a\u00020\u0015HÆ\u0003J\t\u0010g\u001a\u00020\nHÆ\u0003J\t\u0010h\u001a\u00020\nHÆ\u0003J\t\u0010i\u001a\u00020\nHÆ\u0003J\t\u0010j\u001a\u00020\u0015HÆ\u0003J\t\u0010k\u001a\u00020\u0015HÆ\u0003J\t\u0010l\u001a\u00020\nHÆ\u0003J\t\u0010m\u001a\u00020\u0006HÆ\u0003J\t\u0010n\u001a\u00020\u0015HÆ\u0003J\t\u0010o\u001a\u00020\u0015HÆ\u0003J\t\u0010p\u001a\u00020\u0015HÆ\u0003J\t\u0010q\u001a\u00020\u0015HÆ\u0003J\t\u0010r\u001a\u00020\u0015HÆ\u0003J\t\u0010s\u001a\u00020\u0015HÆ\u0003J\t\u0010t\u001a\u00020\u0015HÆ\u0003J\t\u0010u\u001a\u00020\u0015HÆ\u0003J\t\u0010v\u001a\u00020/HÆ\u0003J\t\u0010w\u001a\u00020\u0015HÆ\u0003J\t\u0010x\u001a\u00020\bHÆ\u0003J\u0010\u0010y\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010zJ\u000b\u0010{\u001a\u0004\u0018\u000103HÆ\u0003J\t\u0010|\u001a\u000205HÆ\u0003J\t\u0010}\u001a\u00020\u0015HÆ\u0003J\t\u0010~\u001a\u00020\u0015HÆ\u0003J\t\u0010\u007f\u001a\u00020\u0015HÆ\u0003J\n\u0010\u0080\u0001\u001a\u00020:HÆ\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010=HÆ\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0015HÆ\u0003J\n\u0010\u0084\u0001\u001a\u00020\nHÆ\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0015HÆ\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u008b\u0001\u001a\u0004\u0018\u00010/HÆ\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0015HÆ\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008f\u0001\u001a\u00020\nHÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010JHÆ\u0003J\u0012\u0010\u0091\u0001\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010LHÆ\u0003J\n\u0010\u0092\u0001\u001a\u00020\nHÆ\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0015HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010JHÆ\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0015HÆ\u0003J\u0011\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010zJ\u0011\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010zJ\u0011\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010zJ\u0011\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010zJ\n\u0010\u009a\u0001\u001a\u00020\nHÆ\u0003J\n\u0010\u009b\u0001\u001a\u00020\u000eHÆ\u0003J\n\u0010\u009c\u0001\u001a\u00020\u0010HÆ\u0003JÞ\u0005\u0010\u009d\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0003\u0010\t\u001a\u00020\n2\b\b\u0003\u0010\u000b\u001a\u00020\n2\b\b\u0003\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0003\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00152\b\b\u0002\u0010\u001a\u001a\u00020\n2\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010\u001d\u001a\u00020\u00152\b\b\u0003\u0010\u001e\u001a\u00020\n2\b\b\u0003\u0010\u001f\u001a\u00020\u00152\b\b\u0003\u0010 \u001a\u00020\n2\b\b\u0003\u0010!\u001a\u00020\n2\b\b\u0003\u0010\"\u001a\u00020\n2\b\b\u0003\u0010#\u001a\u00020\u00152\b\b\u0003\u0010$\u001a\u00020\u00152\b\b\u0003\u0010%\u001a\u00020\n2\b\b\u0003\u0010&\u001a\u00020\u00152\b\b\u0003\u0010'\u001a\u00020\u00152\b\b\u0003\u0010(\u001a\u00020\u00152\b\b\u0003\u0010)\u001a\u00020\u00152\b\b\u0003\u0010*\u001a\u00020\u00152\b\b\u0003\u0010+\u001a\u00020\u00152\b\b\u0003\u0010,\u001a\u00020\u00152\b\b\u0003\u0010-\u001a\u00020\u00152\b\b\u0002\u0010.\u001a\u00020/2\b\b\u0003\u00100\u001a\u00020\u00152\n\b\u0003\u00101\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u0002052\b\b\u0002\u00106\u001a\u00020\u00152\b\b\u0003\u00107\u001a\u00020\u00152\b\b\u0003\u00108\u001a\u00020\u00152\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010;\u001a\u00020\u00032\n\b\u0002\u0010<\u001a\u0004\u0018\u00010=2\b\b\u0002\u0010>\u001a\u00020\u00152\b\b\u0002\u0010?\u001a\u00020\u00032\b\b\u0002\u0010@\u001a\u00020\u00032\b\b\u0002\u0010A\u001a\u00020\u00032\b\b\u0002\u0010B\u001a\u00020\u00152\b\b\u0002\u0010C\u001a\u00020\u00032\b\b\u0002\u0010D\u001a\u00020\u00032\n\b\u0002\u0010E\u001a\u0004\u0018\u00010/2\b\b\u0003\u0010F\u001a\u00020\u00152\b\b\u0002\u0010G\u001a\u00020\u00032\b\b\u0002\u0010H\u001a\u00020\u00032\n\b\u0002\u0010I\u001a\u0004\u0018\u00010J2\u0010\b\u0002\u0010K\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010L2\b\b\u0003\u0010M\u001a\u00020\n2\b\b\u0003\u0010N\u001a\u00020\u00152\n\b\u0002\u0010O\u001a\u0004\u0018\u00010J2\b\b\u0003\u0010P\u001a\u00020\u00152\n\b\u0003\u0010Q\u001a\u0004\u0018\u00010\u00152\n\b\u0003\u0010R\u001a\u0004\u0018\u00010\u00152\n\b\u0003\u0010S\u001a\u0004\u0018\u00010\u00152\n\b\u0003\u0010T\u001a\u0004\u0018\u00010\u0015HÆ\u0001¢\u0006\u0003\u0010\u009e\u0001J\n\u0010\u009f\u0001\u001a\u00020\u0015HÖ\u0001J\u0016\u0010 \u0001\u001a\u00020\u00032\n\u0010¡\u0001\u001a\u0005\u0018\u00010¢\u0001HÖ\u0003J\n\u0010£\u0001\u001a\u00020\u0015HÖ\u0001J\n\u0010¤\u0001\u001a\u00020JHÖ\u0001J\u001e\u0010¥\u0001\u001a\u00030¦\u00012\b\u0010§\u0001\u001a\u00030¨\u00012\u0007\u0010©\u0001\u001a\u00020\u0015HÖ\u0001R\u0012\u0010P\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00100\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u00101\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010VR\u0012\u0010.\u001a\u00020/8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010A\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010@\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010?\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010'\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010F\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010E\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010O\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010N\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010M\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010C\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010D\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010>\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010K\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010L8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010I\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010;\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00104\u001a\u0002058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00106\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00108\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00109\u001a\u00020:8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u00107\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010B\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010H\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010G\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010S\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010VR\u0016\u0010Q\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010VR\u0016\u0010T\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010VR\u0016\u0010R\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010VR\u0012\u0010\f\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006ª\u0001"}, m61528d2 = {"Lcom/canhub/cropper/CropImageOptions;", "Landroid/os/Parcelable;", "imageSourceIncludeGallery", "", "imageSourceIncludeCamera", "cropShape", "Lcom/canhub/cropper/CropImageView$CropShape;", "cornerShape", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cropCornerRadius", "", "snapRadius", "touchRadius", "guidelines", "Lcom/canhub/cropper/CropImageView$Guidelines;", "scaleType", "Lcom/canhub/cropper/CropImageView$ScaleType;", "showCropOverlay", "showCropLabel", "showProgressBar", "progressBarColor", "", "autoZoomEnabled", "multiTouchEnabled", "centerMoveEnabled", "maxZoom", "initialCropWindowPaddingRatio", "fixAspectRatio", "aspectRatioX", "aspectRatioY", "borderLineThickness", "borderLineColor", "borderCornerThickness", "borderCornerOffset", "borderCornerLength", "borderCornerColor", "circleCornerFillColorHexValue", "guidelinesThickness", "guidelinesColor", gon.f71255H, "minCropWindowWidth", "minCropWindowHeight", "minCropResultWidth", "minCropResultHeight", "maxCropResultWidth", "maxCropResultHeight", "activityTitle", "", "activityMenuIconColor", "activityMenuTextColor", "customOutputUri", "Landroid/net/Uri;", "outputCompressFormat", "Landroid/graphics/Bitmap$CompressFormat;", "outputCompressQuality", "outputRequestWidth", "outputRequestHeight", "outputRequestSizeOptions", "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "noOutputImage", "initialCropWindowRectangle", "Landroid/graphics/Rect;", "initialRotation", "allowRotation", "allowFlipping", "allowCounterRotation", "rotationDegrees", "flipHorizontally", "flipVertically", "cropMenuCropButtonTitle", "cropMenuCropButtonIcon", "skipEditing", "showIntentChooser", "intentChooserTitle", "", "intentChooserPriorityList", "", "cropperLabelTextSize", "cropperLabelTextColor", "cropperLabelText", "activityBackgroundColor", "toolbarColor", "toolbarTitleColor", "toolbarBackButtonColor", "toolbarTintColor", "(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "()Ljava/lang/Integer;", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component5", "component50", "component51", "component52", "component53", "component54", "component55", "component56", "component57", "component58", "component59", "component6", "component60", "component61", "component62", "component63", "component64", "component65", "component66", "component67", "component68", "component69", "component7", "component8", "component9", "copy", "(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/canhub/cropper/CropImageOptions;", "describeContents", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class CropImageOptions implements Parcelable {

    @NotNull
    public static final Parcelable.Creator<CropImageOptions> CREATOR = new Creator();

    @JvmField
    public int activityBackgroundColor;

    @JvmField
    public int activityMenuIconColor;

    @JvmField
    @Nullable
    public Integer activityMenuTextColor;

    @JvmField
    @NotNull
    public CharSequence activityTitle;

    @JvmField
    public boolean allowCounterRotation;

    @JvmField
    public boolean allowFlipping;

    @JvmField
    public boolean allowRotation;

    @JvmField
    public int aspectRatioX;

    @JvmField
    public int aspectRatioY;

    @JvmField
    public boolean autoZoomEnabled;

    @JvmField
    public int backgroundColor;

    @JvmField
    public int borderCornerColor;

    @JvmField
    public float borderCornerLength;

    @JvmField
    public float borderCornerOffset;

    @JvmField
    public float borderCornerThickness;

    @JvmField
    public int borderLineColor;

    @JvmField
    public float borderLineThickness;

    @JvmField
    public boolean centerMoveEnabled;

    @JvmField
    public int circleCornerFillColorHexValue;

    @JvmField
    @NotNull
    public CropImageView.CropCornerShape cornerShape;

    @JvmField
    public float cropCornerRadius;

    @JvmField
    public int cropMenuCropButtonIcon;

    @JvmField
    @Nullable
    public CharSequence cropMenuCropButtonTitle;

    @JvmField
    @NotNull
    public CropImageView.CropShape cropShape;

    @JvmField
    @Nullable
    public String cropperLabelText;

    @JvmField
    public int cropperLabelTextColor;

    @JvmField
    public float cropperLabelTextSize;

    @JvmField
    @Nullable
    public Uri customOutputUri;

    @JvmField
    public boolean fixAspectRatio;

    @JvmField
    public boolean flipHorizontally;

    @JvmField
    public boolean flipVertically;

    @JvmField
    @NotNull
    public CropImageView.Guidelines guidelines;

    @JvmField
    public int guidelinesColor;

    @JvmField
    public float guidelinesThickness;

    @JvmField
    public boolean imageSourceIncludeCamera;

    @JvmField
    public boolean imageSourceIncludeGallery;

    @JvmField
    public float initialCropWindowPaddingRatio;

    @JvmField
    @Nullable
    public Rect initialCropWindowRectangle;

    @JvmField
    public int initialRotation;

    @JvmField
    @Nullable
    public List<String> intentChooserPriorityList;

    @JvmField
    @Nullable
    public String intentChooserTitle;

    @JvmField
    public int maxCropResultHeight;

    @JvmField
    public int maxCropResultWidth;

    @JvmField
    public int maxZoom;

    @JvmField
    public int minCropResultHeight;

    @JvmField
    public int minCropResultWidth;

    @JvmField
    public int minCropWindowHeight;

    @JvmField
    public int minCropWindowWidth;

    @JvmField
    public boolean multiTouchEnabled;

    @JvmField
    public boolean noOutputImage;

    @JvmField
    @NotNull
    public Bitmap.CompressFormat outputCompressFormat;

    @JvmField
    public int outputCompressQuality;

    @JvmField
    public int outputRequestHeight;

    @JvmField
    @NotNull
    public CropImageView.RequestSizeOptions outputRequestSizeOptions;

    @JvmField
    public int outputRequestWidth;

    @JvmField
    public int progressBarColor;

    @JvmField
    public int rotationDegrees;

    @JvmField
    @NotNull
    public CropImageView.ScaleType scaleType;

    @JvmField
    public boolean showCropLabel;

    @JvmField
    public boolean showCropOverlay;

    @JvmField
    public boolean showIntentChooser;

    @JvmField
    public boolean showProgressBar;

    @JvmField
    public boolean skipEditing;

    @JvmField
    public float snapRadius;

    @JvmField
    @Nullable
    public Integer toolbarBackButtonColor;

    @JvmField
    @Nullable
    public Integer toolbarColor;

    @JvmField
    @Nullable
    public Integer toolbarTintColor;

    @JvmField
    @Nullable
    public Integer toolbarTitleColor;

    @JvmField
    public float touchRadius;

    @Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<CropImageOptions> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final CropImageOptions createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new CropImageOptions(parcel.readInt() != 0, parcel.readInt() != 0, CropImageView.CropShape.valueOf(parcel.readString()), CropImageView.CropCornerShape.valueOf(parcel.readString()), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), CropImageView.Guidelines.valueOf(parcel.readString()), CropImageView.ScaleType.valueOf(parcel.readString()), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt(), parcel.readFloat(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readFloat(), parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt(), parcel.readInt(), parcel.readFloat(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), (Uri) parcel.readParcelable(CropImageOptions.class.getClassLoader()), Bitmap.CompressFormat.valueOf(parcel.readString()), parcel.readInt(), parcel.readInt(), parcel.readInt(), CropImageView.RequestSizeOptions.valueOf(parcel.readString()), parcel.readInt() != 0, (Rect) parcel.readParcelable(CropImageOptions.class.getClassLoader()), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.createStringArrayList(), parcel.readFloat(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final CropImageOptions[] newArray(int i) {
            return new CropImageOptions[i];
        }
    }

    @JvmOverloads
    public CropImageOptions() {
        this(false, false, null, null, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -1, -1, 31, null);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getImageSourceIncludeGallery() {
        return this.imageSourceIncludeGallery;
    }

    /* renamed from: component10, reason: from getter */
    public final boolean getShowCropOverlay() {
        return this.showCropOverlay;
    }

    /* renamed from: component11, reason: from getter */
    public final boolean getShowCropLabel() {
        return this.showCropLabel;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getShowProgressBar() {
        return this.showProgressBar;
    }

    /* renamed from: component13, reason: from getter */
    public final int getProgressBarColor() {
        return this.progressBarColor;
    }

    /* renamed from: component14, reason: from getter */
    public final boolean getAutoZoomEnabled() {
        return this.autoZoomEnabled;
    }

    /* renamed from: component15, reason: from getter */
    public final boolean getMultiTouchEnabled() {
        return this.multiTouchEnabled;
    }

    /* renamed from: component16, reason: from getter */
    public final boolean getCenterMoveEnabled() {
        return this.centerMoveEnabled;
    }

    /* renamed from: component17, reason: from getter */
    public final int getMaxZoom() {
        return this.maxZoom;
    }

    /* renamed from: component18, reason: from getter */
    public final float getInitialCropWindowPaddingRatio() {
        return this.initialCropWindowPaddingRatio;
    }

    /* renamed from: component19, reason: from getter */
    public final boolean getFixAspectRatio() {
        return this.fixAspectRatio;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getImageSourceIncludeCamera() {
        return this.imageSourceIncludeCamera;
    }

    /* renamed from: component20, reason: from getter */
    public final int getAspectRatioX() {
        return this.aspectRatioX;
    }

    /* renamed from: component21, reason: from getter */
    public final int getAspectRatioY() {
        return this.aspectRatioY;
    }

    /* renamed from: component22, reason: from getter */
    public final float getBorderLineThickness() {
        return this.borderLineThickness;
    }

    /* renamed from: component23, reason: from getter */
    public final int getBorderLineColor() {
        return this.borderLineColor;
    }

    /* renamed from: component24, reason: from getter */
    public final float getBorderCornerThickness() {
        return this.borderCornerThickness;
    }

    /* renamed from: component25, reason: from getter */
    public final float getBorderCornerOffset() {
        return this.borderCornerOffset;
    }

    /* renamed from: component26, reason: from getter */
    public final float getBorderCornerLength() {
        return this.borderCornerLength;
    }

    /* renamed from: component27, reason: from getter */
    public final int getBorderCornerColor() {
        return this.borderCornerColor;
    }

    /* renamed from: component28, reason: from getter */
    public final int getCircleCornerFillColorHexValue() {
        return this.circleCornerFillColorHexValue;
    }

    /* renamed from: component29, reason: from getter */
    public final float getGuidelinesThickness() {
        return this.guidelinesThickness;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final CropImageView.CropShape getCropShape() {
        return this.cropShape;
    }

    /* renamed from: component30, reason: from getter */
    public final int getGuidelinesColor() {
        return this.guidelinesColor;
    }

    /* renamed from: component31, reason: from getter */
    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    /* renamed from: component32, reason: from getter */
    public final int getMinCropWindowWidth() {
        return this.minCropWindowWidth;
    }

    /* renamed from: component33, reason: from getter */
    public final int getMinCropWindowHeight() {
        return this.minCropWindowHeight;
    }

    /* renamed from: component34, reason: from getter */
    public final int getMinCropResultWidth() {
        return this.minCropResultWidth;
    }

    /* renamed from: component35, reason: from getter */
    public final int getMinCropResultHeight() {
        return this.minCropResultHeight;
    }

    /* renamed from: component36, reason: from getter */
    public final int getMaxCropResultWidth() {
        return this.maxCropResultWidth;
    }

    /* renamed from: component37, reason: from getter */
    public final int getMaxCropResultHeight() {
        return this.maxCropResultHeight;
    }

    @NotNull
    /* renamed from: component38, reason: from getter */
    public final CharSequence getActivityTitle() {
        return this.activityTitle;
    }

    /* renamed from: component39, reason: from getter */
    public final int getActivityMenuIconColor() {
        return this.activityMenuIconColor;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final CropImageView.CropCornerShape getCornerShape() {
        return this.cornerShape;
    }

    @Nullable
    /* renamed from: component40, reason: from getter */
    public final Integer getActivityMenuTextColor() {
        return this.activityMenuTextColor;
    }

    @Nullable
    /* renamed from: component41, reason: from getter */
    public final Uri getCustomOutputUri() {
        return this.customOutputUri;
    }

    @NotNull
    /* renamed from: component42, reason: from getter */
    public final Bitmap.CompressFormat getOutputCompressFormat() {
        return this.outputCompressFormat;
    }

    /* renamed from: component43, reason: from getter */
    public final int getOutputCompressQuality() {
        return this.outputCompressQuality;
    }

    /* renamed from: component44, reason: from getter */
    public final int getOutputRequestWidth() {
        return this.outputRequestWidth;
    }

    /* renamed from: component45, reason: from getter */
    public final int getOutputRequestHeight() {
        return this.outputRequestHeight;
    }

    @NotNull
    /* renamed from: component46, reason: from getter */
    public final CropImageView.RequestSizeOptions getOutputRequestSizeOptions() {
        return this.outputRequestSizeOptions;
    }

    /* renamed from: component47, reason: from getter */
    public final boolean getNoOutputImage() {
        return this.noOutputImage;
    }

    @Nullable
    /* renamed from: component48, reason: from getter */
    public final Rect getInitialCropWindowRectangle() {
        return this.initialCropWindowRectangle;
    }

    /* renamed from: component49, reason: from getter */
    public final int getInitialRotation() {
        return this.initialRotation;
    }

    /* renamed from: component5, reason: from getter */
    public final float getCropCornerRadius() {
        return this.cropCornerRadius;
    }

    /* renamed from: component50, reason: from getter */
    public final boolean getAllowRotation() {
        return this.allowRotation;
    }

    /* renamed from: component51, reason: from getter */
    public final boolean getAllowFlipping() {
        return this.allowFlipping;
    }

    /* renamed from: component52, reason: from getter */
    public final boolean getAllowCounterRotation() {
        return this.allowCounterRotation;
    }

    /* renamed from: component53, reason: from getter */
    public final int getRotationDegrees() {
        return this.rotationDegrees;
    }

    /* renamed from: component54, reason: from getter */
    public final boolean getFlipHorizontally() {
        return this.flipHorizontally;
    }

    /* renamed from: component55, reason: from getter */
    public final boolean getFlipVertically() {
        return this.flipVertically;
    }

    @Nullable
    /* renamed from: component56, reason: from getter */
    public final CharSequence getCropMenuCropButtonTitle() {
        return this.cropMenuCropButtonTitle;
    }

    /* renamed from: component57, reason: from getter */
    public final int getCropMenuCropButtonIcon() {
        return this.cropMenuCropButtonIcon;
    }

    /* renamed from: component58, reason: from getter */
    public final boolean getSkipEditing() {
        return this.skipEditing;
    }

    /* renamed from: component59, reason: from getter */
    public final boolean getShowIntentChooser() {
        return this.showIntentChooser;
    }

    /* renamed from: component6, reason: from getter */
    public final float getSnapRadius() {
        return this.snapRadius;
    }

    @Nullable
    /* renamed from: component60, reason: from getter */
    public final String getIntentChooserTitle() {
        return this.intentChooserTitle;
    }

    @Nullable
    public final List<String> component61() {
        return this.intentChooserPriorityList;
    }

    /* renamed from: component62, reason: from getter */
    public final float getCropperLabelTextSize() {
        return this.cropperLabelTextSize;
    }

    /* renamed from: component63, reason: from getter */
    public final int getCropperLabelTextColor() {
        return this.cropperLabelTextColor;
    }

    @Nullable
    /* renamed from: component64, reason: from getter */
    public final String getCropperLabelText() {
        return this.cropperLabelText;
    }

    /* renamed from: component65, reason: from getter */
    public final int getActivityBackgroundColor() {
        return this.activityBackgroundColor;
    }

    @Nullable
    /* renamed from: component66, reason: from getter */
    public final Integer getToolbarColor() {
        return this.toolbarColor;
    }

    @Nullable
    /* renamed from: component67, reason: from getter */
    public final Integer getToolbarTitleColor() {
        return this.toolbarTitleColor;
    }

    @Nullable
    /* renamed from: component68, reason: from getter */
    public final Integer getToolbarBackButtonColor() {
        return this.toolbarBackButtonColor;
    }

    @Nullable
    /* renamed from: component69, reason: from getter */
    public final Integer getToolbarTintColor() {
        return this.toolbarTintColor;
    }

    /* renamed from: component7, reason: from getter */
    public final float getTouchRadius() {
        return this.touchRadius;
    }

    @NotNull
    /* renamed from: component8, reason: from getter */
    public final CropImageView.Guidelines getGuidelines() {
        return this.guidelines;
    }

    @NotNull
    /* renamed from: component9, reason: from getter */
    public final CropImageView.ScaleType getScaleType() {
        return this.scaleType;
    }

    @NotNull
    public final CropImageOptions copy(boolean imageSourceIncludeGallery, boolean imageSourceIncludeCamera, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float cropCornerRadius, @Px float snapRadius, @Px float touchRadius, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean showCropOverlay, boolean showCropLabel, boolean showProgressBar, @ColorInt int progressBarColor, boolean autoZoomEnabled, boolean multiTouchEnabled, boolean centerMoveEnabled, int maxZoom, float initialCropWindowPaddingRatio, boolean fixAspectRatio, int aspectRatioX, int aspectRatioY, @Px float borderLineThickness, @ColorInt int borderLineColor, @Px float borderCornerThickness, @Px float borderCornerOffset, @Px float borderCornerLength, @ColorInt int borderCornerColor, @ColorInt int circleCornerFillColorHexValue, @Px float guidelinesThickness, @ColorInt int guidelinesColor, @ColorInt int backgroundColor, @Px int minCropWindowWidth, @Px int minCropWindowHeight, @Px int minCropResultWidth, @Px int minCropResultHeight, @Px int maxCropResultWidth, @Px int maxCropResultHeight, @NotNull CharSequence activityTitle, @ColorInt int activityMenuIconColor, @ColorInt @Nullable Integer activityMenuTextColor, @Nullable Uri customOutputUri, @NotNull Bitmap.CompressFormat outputCompressFormat, int outputCompressQuality, @Px int outputRequestWidth, @Px int outputRequestHeight, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean noOutputImage, @Nullable Rect initialCropWindowRectangle, int initialRotation, boolean allowRotation, boolean allowFlipping, boolean allowCounterRotation, int rotationDegrees, boolean flipHorizontally, boolean flipVertically, @Nullable CharSequence cropMenuCropButtonTitle, @DrawableRes int cropMenuCropButtonIcon, boolean skipEditing, boolean showIntentChooser, @Nullable String intentChooserTitle, @Nullable List<String> intentChooserPriorityList, @Px float cropperLabelTextSize, @ColorInt int cropperLabelTextColor, @Nullable String cropperLabelText, @ColorInt int activityBackgroundColor, @ColorInt @Nullable Integer toolbarColor, @ColorInt @Nullable Integer toolbarTitleColor, @ColorInt @Nullable Integer toolbarBackButtonColor, @ColorInt @Nullable Integer toolbarTintColor) {
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
        return new CropImageOptions(imageSourceIncludeGallery, imageSourceIncludeCamera, cropShape, cornerShape, cropCornerRadius, snapRadius, touchRadius, guidelines, scaleType, showCropOverlay, showCropLabel, showProgressBar, progressBarColor, autoZoomEnabled, multiTouchEnabled, centerMoveEnabled, maxZoom, initialCropWindowPaddingRatio, fixAspectRatio, aspectRatioX, aspectRatioY, borderLineThickness, borderLineColor, borderCornerThickness, borderCornerOffset, borderCornerLength, borderCornerColor, circleCornerFillColorHexValue, guidelinesThickness, guidelinesColor, backgroundColor, minCropWindowWidth, minCropWindowHeight, minCropResultWidth, minCropResultHeight, maxCropResultWidth, maxCropResultHeight, activityTitle, activityMenuIconColor, activityMenuTextColor, customOutputUri, outputCompressFormat, outputCompressQuality, outputRequestWidth, outputRequestHeight, outputRequestSizeOptions, noOutputImage, initialCropWindowRectangle, initialRotation, allowRotation, allowFlipping, allowCounterRotation, rotationDegrees, flipHorizontally, flipVertically, cropMenuCropButtonTitle, cropMenuCropButtonIcon, skipEditing, showIntentChooser, intentChooserTitle, intentChooserPriorityList, cropperLabelTextSize, cropperLabelTextColor, cropperLabelText, activityBackgroundColor, toolbarColor, toolbarTitleColor, toolbarBackButtonColor, toolbarTintColor);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CropImageOptions)) {
            return false;
        }
        CropImageOptions cropImageOptions = (CropImageOptions) other;
        return this.imageSourceIncludeGallery == cropImageOptions.imageSourceIncludeGallery && this.imageSourceIncludeCamera == cropImageOptions.imageSourceIncludeCamera && this.cropShape == cropImageOptions.cropShape && this.cornerShape == cropImageOptions.cornerShape && Float.compare(this.cropCornerRadius, cropImageOptions.cropCornerRadius) == 0 && Float.compare(this.snapRadius, cropImageOptions.snapRadius) == 0 && Float.compare(this.touchRadius, cropImageOptions.touchRadius) == 0 && this.guidelines == cropImageOptions.guidelines && this.scaleType == cropImageOptions.scaleType && this.showCropOverlay == cropImageOptions.showCropOverlay && this.showCropLabel == cropImageOptions.showCropLabel && this.showProgressBar == cropImageOptions.showProgressBar && this.progressBarColor == cropImageOptions.progressBarColor && this.autoZoomEnabled == cropImageOptions.autoZoomEnabled && this.multiTouchEnabled == cropImageOptions.multiTouchEnabled && this.centerMoveEnabled == cropImageOptions.centerMoveEnabled && this.maxZoom == cropImageOptions.maxZoom && Float.compare(this.initialCropWindowPaddingRatio, cropImageOptions.initialCropWindowPaddingRatio) == 0 && this.fixAspectRatio == cropImageOptions.fixAspectRatio && this.aspectRatioX == cropImageOptions.aspectRatioX && this.aspectRatioY == cropImageOptions.aspectRatioY && Float.compare(this.borderLineThickness, cropImageOptions.borderLineThickness) == 0 && this.borderLineColor == cropImageOptions.borderLineColor && Float.compare(this.borderCornerThickness, cropImageOptions.borderCornerThickness) == 0 && Float.compare(this.borderCornerOffset, cropImageOptions.borderCornerOffset) == 0 && Float.compare(this.borderCornerLength, cropImageOptions.borderCornerLength) == 0 && this.borderCornerColor == cropImageOptions.borderCornerColor && this.circleCornerFillColorHexValue == cropImageOptions.circleCornerFillColorHexValue && Float.compare(this.guidelinesThickness, cropImageOptions.guidelinesThickness) == 0 && this.guidelinesColor == cropImageOptions.guidelinesColor && this.backgroundColor == cropImageOptions.backgroundColor && this.minCropWindowWidth == cropImageOptions.minCropWindowWidth && this.minCropWindowHeight == cropImageOptions.minCropWindowHeight && this.minCropResultWidth == cropImageOptions.minCropResultWidth && this.minCropResultHeight == cropImageOptions.minCropResultHeight && this.maxCropResultWidth == cropImageOptions.maxCropResultWidth && this.maxCropResultHeight == cropImageOptions.maxCropResultHeight && Intrinsics.areEqual(this.activityTitle, cropImageOptions.activityTitle) && this.activityMenuIconColor == cropImageOptions.activityMenuIconColor && Intrinsics.areEqual(this.activityMenuTextColor, cropImageOptions.activityMenuTextColor) && Intrinsics.areEqual(this.customOutputUri, cropImageOptions.customOutputUri) && this.outputCompressFormat == cropImageOptions.outputCompressFormat && this.outputCompressQuality == cropImageOptions.outputCompressQuality && this.outputRequestWidth == cropImageOptions.outputRequestWidth && this.outputRequestHeight == cropImageOptions.outputRequestHeight && this.outputRequestSizeOptions == cropImageOptions.outputRequestSizeOptions && this.noOutputImage == cropImageOptions.noOutputImage && Intrinsics.areEqual(this.initialCropWindowRectangle, cropImageOptions.initialCropWindowRectangle) && this.initialRotation == cropImageOptions.initialRotation && this.allowRotation == cropImageOptions.allowRotation && this.allowFlipping == cropImageOptions.allowFlipping && this.allowCounterRotation == cropImageOptions.allowCounterRotation && this.rotationDegrees == cropImageOptions.rotationDegrees && this.flipHorizontally == cropImageOptions.flipHorizontally && this.flipVertically == cropImageOptions.flipVertically && Intrinsics.areEqual(this.cropMenuCropButtonTitle, cropImageOptions.cropMenuCropButtonTitle) && this.cropMenuCropButtonIcon == cropImageOptions.cropMenuCropButtonIcon && this.skipEditing == cropImageOptions.skipEditing && this.showIntentChooser == cropImageOptions.showIntentChooser && Intrinsics.areEqual(this.intentChooserTitle, cropImageOptions.intentChooserTitle) && Intrinsics.areEqual(this.intentChooserPriorityList, cropImageOptions.intentChooserPriorityList) && Float.compare(this.cropperLabelTextSize, cropImageOptions.cropperLabelTextSize) == 0 && this.cropperLabelTextColor == cropImageOptions.cropperLabelTextColor && Intrinsics.areEqual(this.cropperLabelText, cropImageOptions.cropperLabelText) && this.activityBackgroundColor == cropImageOptions.activityBackgroundColor && Intrinsics.areEqual(this.toolbarColor, cropImageOptions.toolbarColor) && Intrinsics.areEqual(this.toolbarTitleColor, cropImageOptions.toolbarTitleColor) && Intrinsics.areEqual(this.toolbarBackButtonColor, cropImageOptions.toolbarBackButtonColor) && Intrinsics.areEqual(this.toolbarTintColor, cropImageOptions.toolbarTintColor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v138 */
    /* JADX WARN: Type inference failed for: r0v139 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v101, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v103, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v107, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v109, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v116, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v24, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v26, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v28, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v34, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v92, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v99, types: [boolean] */
    public int hashCode() {
        boolean z = this.imageSourceIncludeGallery;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.imageSourceIncludeCamera;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int hashCode = (((((((((((((((i + i2) * 31) + this.cropShape.hashCode()) * 31) + this.cornerShape.hashCode()) * 31) + Float.hashCode(this.cropCornerRadius)) * 31) + Float.hashCode(this.snapRadius)) * 31) + Float.hashCode(this.touchRadius)) * 31) + this.guidelines.hashCode()) * 31) + this.scaleType.hashCode()) * 31;
        ?? r22 = this.showCropOverlay;
        int i3 = r22;
        if (r22 != 0) {
            i3 = 1;
        }
        int i4 = (hashCode + i3) * 31;
        ?? r23 = this.showCropLabel;
        int i5 = r23;
        if (r23 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        ?? r24 = this.showProgressBar;
        int i7 = r24;
        if (r24 != 0) {
            i7 = 1;
        }
        int hashCode2 = (((i6 + i7) * 31) + Integer.hashCode(this.progressBarColor)) * 31;
        ?? r25 = this.autoZoomEnabled;
        int i8 = r25;
        if (r25 != 0) {
            i8 = 1;
        }
        int i9 = (hashCode2 + i8) * 31;
        ?? r26 = this.multiTouchEnabled;
        int i10 = r26;
        if (r26 != 0) {
            i10 = 1;
        }
        int i11 = (i9 + i10) * 31;
        ?? r27 = this.centerMoveEnabled;
        int i12 = r27;
        if (r27 != 0) {
            i12 = 1;
        }
        int hashCode3 = (((((i11 + i12) * 31) + Integer.hashCode(this.maxZoom)) * 31) + Float.hashCode(this.initialCropWindowPaddingRatio)) * 31;
        ?? r28 = this.fixAspectRatio;
        int i13 = r28;
        if (r28 != 0) {
            i13 = 1;
        }
        int hashCode4 = (((((((((((((((((((((((((((((((((((((((((hashCode3 + i13) * 31) + Integer.hashCode(this.aspectRatioX)) * 31) + Integer.hashCode(this.aspectRatioY)) * 31) + Float.hashCode(this.borderLineThickness)) * 31) + Integer.hashCode(this.borderLineColor)) * 31) + Float.hashCode(this.borderCornerThickness)) * 31) + Float.hashCode(this.borderCornerOffset)) * 31) + Float.hashCode(this.borderCornerLength)) * 31) + Integer.hashCode(this.borderCornerColor)) * 31) + Integer.hashCode(this.circleCornerFillColorHexValue)) * 31) + Float.hashCode(this.guidelinesThickness)) * 31) + Integer.hashCode(this.guidelinesColor)) * 31) + Integer.hashCode(this.backgroundColor)) * 31) + Integer.hashCode(this.minCropWindowWidth)) * 31) + Integer.hashCode(this.minCropWindowHeight)) * 31) + Integer.hashCode(this.minCropResultWidth)) * 31) + Integer.hashCode(this.minCropResultHeight)) * 31) + Integer.hashCode(this.maxCropResultWidth)) * 31) + Integer.hashCode(this.maxCropResultHeight)) * 31) + this.activityTitle.hashCode()) * 31) + Integer.hashCode(this.activityMenuIconColor)) * 31;
        Integer num = this.activityMenuTextColor;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Uri uri = this.customOutputUri;
        int hashCode6 = (((((((((((hashCode5 + (uri == null ? 0 : uri.hashCode())) * 31) + this.outputCompressFormat.hashCode()) * 31) + Integer.hashCode(this.outputCompressQuality)) * 31) + Integer.hashCode(this.outputRequestWidth)) * 31) + Integer.hashCode(this.outputRequestHeight)) * 31) + this.outputRequestSizeOptions.hashCode()) * 31;
        ?? r29 = this.noOutputImage;
        int i14 = r29;
        if (r29 != 0) {
            i14 = 1;
        }
        int i15 = (hashCode6 + i14) * 31;
        Rect rect = this.initialCropWindowRectangle;
        int hashCode7 = (((i15 + (rect == null ? 0 : rect.hashCode())) * 31) + Integer.hashCode(this.initialRotation)) * 31;
        ?? r210 = this.allowRotation;
        int i16 = r210;
        if (r210 != 0) {
            i16 = 1;
        }
        int i17 = (hashCode7 + i16) * 31;
        ?? r211 = this.allowFlipping;
        int i18 = r211;
        if (r211 != 0) {
            i18 = 1;
        }
        int i19 = (i17 + i18) * 31;
        ?? r212 = this.allowCounterRotation;
        int i20 = r212;
        if (r212 != 0) {
            i20 = 1;
        }
        int hashCode8 = (((i19 + i20) * 31) + Integer.hashCode(this.rotationDegrees)) * 31;
        ?? r213 = this.flipHorizontally;
        int i21 = r213;
        if (r213 != 0) {
            i21 = 1;
        }
        int i22 = (hashCode8 + i21) * 31;
        ?? r214 = this.flipVertically;
        int i23 = r214;
        if (r214 != 0) {
            i23 = 1;
        }
        int i24 = (i22 + i23) * 31;
        CharSequence charSequence = this.cropMenuCropButtonTitle;
        int hashCode9 = (((i24 + (charSequence == null ? 0 : charSequence.hashCode())) * 31) + Integer.hashCode(this.cropMenuCropButtonIcon)) * 31;
        ?? r215 = this.skipEditing;
        int i25 = r215;
        if (r215 != 0) {
            i25 = 1;
        }
        int i26 = (hashCode9 + i25) * 31;
        boolean z2 = this.showIntentChooser;
        int i27 = (i26 + (z2 ? 1 : z2 ? 1 : 0)) * 31;
        String str = this.intentChooserTitle;
        int hashCode10 = (i27 + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.intentChooserPriorityList;
        int hashCode11 = (((((hashCode10 + (list == null ? 0 : list.hashCode())) * 31) + Float.hashCode(this.cropperLabelTextSize)) * 31) + Integer.hashCode(this.cropperLabelTextColor)) * 31;
        String str2 = this.cropperLabelText;
        int hashCode12 = (((hashCode11 + (str2 == null ? 0 : str2.hashCode())) * 31) + Integer.hashCode(this.activityBackgroundColor)) * 31;
        Integer num2 = this.toolbarColor;
        int hashCode13 = (hashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.toolbarTitleColor;
        int hashCode14 = (hashCode13 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.toolbarBackButtonColor;
        int hashCode15 = (hashCode14 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.toolbarTintColor;
        return hashCode15 + (num5 != null ? num5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "CropImageOptions(imageSourceIncludeGallery=" + this.imageSourceIncludeGallery + ", imageSourceIncludeCamera=" + this.imageSourceIncludeCamera + ", cropShape=" + this.cropShape + ", cornerShape=" + this.cornerShape + ", cropCornerRadius=" + this.cropCornerRadius + ", snapRadius=" + this.snapRadius + ", touchRadius=" + this.touchRadius + ", guidelines=" + this.guidelines + ", scaleType=" + this.scaleType + ", showCropOverlay=" + this.showCropOverlay + ", showCropLabel=" + this.showCropLabel + ", showProgressBar=" + this.showProgressBar + ", progressBarColor=" + this.progressBarColor + ", autoZoomEnabled=" + this.autoZoomEnabled + ", multiTouchEnabled=" + this.multiTouchEnabled + ", centerMoveEnabled=" + this.centerMoveEnabled + ", maxZoom=" + this.maxZoom + ", initialCropWindowPaddingRatio=" + this.initialCropWindowPaddingRatio + ", fixAspectRatio=" + this.fixAspectRatio + ", aspectRatioX=" + this.aspectRatioX + ", aspectRatioY=" + this.aspectRatioY + ", borderLineThickness=" + this.borderLineThickness + ", borderLineColor=" + this.borderLineColor + ", borderCornerThickness=" + this.borderCornerThickness + ", borderCornerOffset=" + this.borderCornerOffset + ", borderCornerLength=" + this.borderCornerLength + ", borderCornerColor=" + this.borderCornerColor + ", circleCornerFillColorHexValue=" + this.circleCornerFillColorHexValue + ", guidelinesThickness=" + this.guidelinesThickness + ", guidelinesColor=" + this.guidelinesColor + ", backgroundColor=" + this.backgroundColor + ", minCropWindowWidth=" + this.minCropWindowWidth + ", minCropWindowHeight=" + this.minCropWindowHeight + ", minCropResultWidth=" + this.minCropResultWidth + ", minCropResultHeight=" + this.minCropResultHeight + ", maxCropResultWidth=" + this.maxCropResultWidth + ", maxCropResultHeight=" + this.maxCropResultHeight + ", activityTitle=" + ((Object) this.activityTitle) + ", activityMenuIconColor=" + this.activityMenuIconColor + ", activityMenuTextColor=" + this.activityMenuTextColor + ", customOutputUri=" + this.customOutputUri + ", outputCompressFormat=" + this.outputCompressFormat + ", outputCompressQuality=" + this.outputCompressQuality + ", outputRequestWidth=" + this.outputRequestWidth + ", outputRequestHeight=" + this.outputRequestHeight + ", outputRequestSizeOptions=" + this.outputRequestSizeOptions + ", noOutputImage=" + this.noOutputImage + ", initialCropWindowRectangle=" + this.initialCropWindowRectangle + ", initialRotation=" + this.initialRotation + ", allowRotation=" + this.allowRotation + ", allowFlipping=" + this.allowFlipping + ", allowCounterRotation=" + this.allowCounterRotation + ", rotationDegrees=" + this.rotationDegrees + ", flipHorizontally=" + this.flipHorizontally + ", flipVertically=" + this.flipVertically + ", cropMenuCropButtonTitle=" + ((Object) this.cropMenuCropButtonTitle) + ", cropMenuCropButtonIcon=" + this.cropMenuCropButtonIcon + ", skipEditing=" + this.skipEditing + ", showIntentChooser=" + this.showIntentChooser + ", intentChooserTitle=" + this.intentChooserTitle + ", intentChooserPriorityList=" + this.intentChooserPriorityList + ", cropperLabelTextSize=" + this.cropperLabelTextSize + ", cropperLabelTextColor=" + this.cropperLabelTextColor + ", cropperLabelText=" + this.cropperLabelText + ", activityBackgroundColor=" + this.activityBackgroundColor + ", toolbarColor=" + this.toolbarColor + ", toolbarTitleColor=" + this.toolbarTitleColor + ", toolbarBackButtonColor=" + this.toolbarBackButtonColor + ", toolbarTintColor=" + this.toolbarTintColor + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeInt(this.imageSourceIncludeGallery ? 1 : 0);
        parcel.writeInt(this.imageSourceIncludeCamera ? 1 : 0);
        parcel.writeString(this.cropShape.name());
        parcel.writeString(this.cornerShape.name());
        parcel.writeFloat(this.cropCornerRadius);
        parcel.writeFloat(this.snapRadius);
        parcel.writeFloat(this.touchRadius);
        parcel.writeString(this.guidelines.name());
        parcel.writeString(this.scaleType.name());
        parcel.writeInt(this.showCropOverlay ? 1 : 0);
        parcel.writeInt(this.showCropLabel ? 1 : 0);
        parcel.writeInt(this.showProgressBar ? 1 : 0);
        parcel.writeInt(this.progressBarColor);
        parcel.writeInt(this.autoZoomEnabled ? 1 : 0);
        parcel.writeInt(this.multiTouchEnabled ? 1 : 0);
        parcel.writeInt(this.centerMoveEnabled ? 1 : 0);
        parcel.writeInt(this.maxZoom);
        parcel.writeFloat(this.initialCropWindowPaddingRatio);
        parcel.writeInt(this.fixAspectRatio ? 1 : 0);
        parcel.writeInt(this.aspectRatioX);
        parcel.writeInt(this.aspectRatioY);
        parcel.writeFloat(this.borderLineThickness);
        parcel.writeInt(this.borderLineColor);
        parcel.writeFloat(this.borderCornerThickness);
        parcel.writeFloat(this.borderCornerOffset);
        parcel.writeFloat(this.borderCornerLength);
        parcel.writeInt(this.borderCornerColor);
        parcel.writeInt(this.circleCornerFillColorHexValue);
        parcel.writeFloat(this.guidelinesThickness);
        parcel.writeInt(this.guidelinesColor);
        parcel.writeInt(this.backgroundColor);
        parcel.writeInt(this.minCropWindowWidth);
        parcel.writeInt(this.minCropWindowHeight);
        parcel.writeInt(this.minCropResultWidth);
        parcel.writeInt(this.minCropResultHeight);
        parcel.writeInt(this.maxCropResultWidth);
        parcel.writeInt(this.maxCropResultHeight);
        TextUtils.writeToParcel(this.activityTitle, parcel, flags);
        parcel.writeInt(this.activityMenuIconColor);
        Integer num = this.activityMenuTextColor;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        parcel.writeParcelable(this.customOutputUri, flags);
        parcel.writeString(this.outputCompressFormat.name());
        parcel.writeInt(this.outputCompressQuality);
        parcel.writeInt(this.outputRequestWidth);
        parcel.writeInt(this.outputRequestHeight);
        parcel.writeString(this.outputRequestSizeOptions.name());
        parcel.writeInt(this.noOutputImage ? 1 : 0);
        parcel.writeParcelable(this.initialCropWindowRectangle, flags);
        parcel.writeInt(this.initialRotation);
        parcel.writeInt(this.allowRotation ? 1 : 0);
        parcel.writeInt(this.allowFlipping ? 1 : 0);
        parcel.writeInt(this.allowCounterRotation ? 1 : 0);
        parcel.writeInt(this.rotationDegrees);
        parcel.writeInt(this.flipHorizontally ? 1 : 0);
        parcel.writeInt(this.flipVertically ? 1 : 0);
        TextUtils.writeToParcel(this.cropMenuCropButtonTitle, parcel, flags);
        parcel.writeInt(this.cropMenuCropButtonIcon);
        parcel.writeInt(this.skipEditing ? 1 : 0);
        parcel.writeInt(this.showIntentChooser ? 1 : 0);
        parcel.writeString(this.intentChooserTitle);
        parcel.writeStringList(this.intentChooserPriorityList);
        parcel.writeFloat(this.cropperLabelTextSize);
        parcel.writeInt(this.cropperLabelTextColor);
        parcel.writeString(this.cropperLabelText);
        parcel.writeInt(this.activityBackgroundColor);
        Integer num2 = this.toolbarColor;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        Integer num3 = this.toolbarTitleColor;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        }
        Integer num4 = this.toolbarBackButtonColor;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num4.intValue());
        }
        Integer num5 = this.toolbarTintColor;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num5.intValue());
        }
    }

    @JvmOverloads
    public CropImageOptions(boolean z) {
        this(z, false, null, null, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -2, -1, 31, null);
    }

    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2) {
        this(z, z2, null, null, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -4, -1, 31, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape) {
        this(z, z2, cropShape, null, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -8, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape) {
        this(z, z2, cropShape, cornerShape, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -16, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f) {
        this(z, z2, cropShape, cornerShape, f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -32, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2) {
        this(z, z2, cropShape, cornerShape, f, f2, 0.0f, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -64, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, null, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -128, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, null, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -256, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, false, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, WorkInfo.STOP_REASON_UNKNOWN, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, false, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -1024, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, false, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -2048, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, 0, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -4096, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -8192, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, TIFFTag.f97946g, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, JsonParser.f21215g, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -65536, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -131072, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -262144, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -524288, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -1048576, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -2097152, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -4194304, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -8388608, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -16777216, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -33554432, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -67108864, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -134217728, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -268435456, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -536870912, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -1073741824, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, Integer.MIN_VALUE, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -1, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -2, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -4, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -8, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -16, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -32, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -64, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -128, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -256, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, WorkInfo.STOP_REASON_UNKNOWN, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -1024, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -2048, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -4096, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -8192, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, TIFFTag.f97946g, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, JsonParser.f21215g, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -65536, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -131072, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -262144, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -524288, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -1048576, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -2097152, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -4194304, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -8388608, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -16777216, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -33554432, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, false, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -67108864, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, null, null, 0.0f, 0, null, 0, null, null, null, null, 0, -134217728, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, null, 0.0f, 0, null, 0, null, null, null, null, 0, -268435456, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, 0.0f, 0, null, 0, null, null, null, null, 0, -536870912, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, f10, 0, null, 0, null, null, null, null, 0, -1073741824, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10, @ColorInt int i23) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, f10, i23, null, 0, null, null, null, null, 0, Integer.MIN_VALUE, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10, @ColorInt int i23, @Nullable String str2) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, f10, i23, str2, 0, null, null, null, null, 0, 0, 31, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10, @ColorInt int i23, @Nullable String str2, @ColorInt int i24) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, f10, i23, str2, i24, null, null, null, null, 0, 0, 30, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10, @ColorInt int i23, @Nullable String str2, @ColorInt int i24, @ColorInt @Nullable Integer num2) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, f10, i23, str2, i24, num2, null, null, null, 0, 0, 28, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10, @ColorInt int i23, @Nullable String str2, @ColorInt int i24, @ColorInt @Nullable Integer num2, @ColorInt @Nullable Integer num3) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, f10, i23, str2, i24, num2, num3, null, null, 0, 0, 24, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10, @ColorInt int i23, @Nullable String str2, @ColorInt int i24, @ColorInt @Nullable Integer num2, @ColorInt @Nullable Integer num3, @ColorInt @Nullable Integer num4) {
        this(z, z2, cropShape, cornerShape, f, f2, f3, guidelines, scaleType, z3, z4, z5, i, z6, z7, z8, i2, f4, z9, i3, i4, f5, i5, f6, f7, f8, i6, i7, f9, i8, i9, i10, i11, i12, i13, i14, i15, activityTitle, i16, num, uri, outputCompressFormat, i17, i18, i19, outputRequestSizeOptions, z10, rect, i20, z11, z12, z13, i21, z14, z15, charSequence, i22, z16, z17, str, list, f10, i23, str2, i24, num2, num3, num4, null, 0, 0, 16, null);
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
    }

    @JvmOverloads
    public CropImageOptions(boolean z, boolean z2, @NotNull CropImageView.CropShape cropShape, @NotNull CropImageView.CropCornerShape cornerShape, @Px float f, @Px float f2, @Px float f3, @NotNull CropImageView.Guidelines guidelines, @NotNull CropImageView.ScaleType scaleType, boolean z3, boolean z4, boolean z5, @ColorInt int i, boolean z6, boolean z7, boolean z8, int i2, float f4, boolean z9, int i3, int i4, @Px float f5, @ColorInt int i5, @Px float f6, @Px float f7, @Px float f8, @ColorInt int i6, @ColorInt int i7, @Px float f9, @ColorInt int i8, @ColorInt int i9, @Px int i10, @Px int i11, @Px int i12, @Px int i13, @Px int i14, @Px int i15, @NotNull CharSequence activityTitle, @ColorInt int i16, @ColorInt @Nullable Integer num, @Nullable Uri uri, @NotNull Bitmap.CompressFormat outputCompressFormat, int i17, @Px int i18, @Px int i19, @NotNull CropImageView.RequestSizeOptions outputRequestSizeOptions, boolean z10, @Nullable Rect rect, int i20, boolean z11, boolean z12, boolean z13, int i21, boolean z14, boolean z15, @Nullable CharSequence charSequence, @DrawableRes int i22, boolean z16, boolean z17, @Nullable String str, @Nullable List<String> list, @Px float f10, @ColorInt int i23, @Nullable String str2, @ColorInt int i24, @ColorInt @Nullable Integer num2, @ColorInt @Nullable Integer num3, @ColorInt @Nullable Integer num4, @ColorInt @Nullable Integer num5) {
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        Intrinsics.checkNotNullParameter(cornerShape, "cornerShape");
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(activityTitle, "activityTitle");
        Intrinsics.checkNotNullParameter(outputCompressFormat, "outputCompressFormat");
        Intrinsics.checkNotNullParameter(outputRequestSizeOptions, "outputRequestSizeOptions");
        this.imageSourceIncludeGallery = z;
        this.imageSourceIncludeCamera = z2;
        this.cropShape = cropShape;
        this.cornerShape = cornerShape;
        this.cropCornerRadius = f;
        this.snapRadius = f2;
        this.touchRadius = f3;
        this.guidelines = guidelines;
        this.scaleType = scaleType;
        this.showCropOverlay = z3;
        this.showCropLabel = z4;
        this.showProgressBar = z5;
        this.progressBarColor = i;
        this.autoZoomEnabled = z6;
        this.multiTouchEnabled = z7;
        this.centerMoveEnabled = z8;
        this.maxZoom = i2;
        this.initialCropWindowPaddingRatio = f4;
        this.fixAspectRatio = z9;
        this.aspectRatioX = i3;
        this.aspectRatioY = i4;
        this.borderLineThickness = f5;
        this.borderLineColor = i5;
        this.borderCornerThickness = f6;
        this.borderCornerOffset = f7;
        this.borderCornerLength = f8;
        this.borderCornerColor = i6;
        this.circleCornerFillColorHexValue = i7;
        this.guidelinesThickness = f9;
        this.guidelinesColor = i8;
        this.backgroundColor = i9;
        this.minCropWindowWidth = i10;
        this.minCropWindowHeight = i11;
        this.minCropResultWidth = i12;
        this.minCropResultHeight = i13;
        this.maxCropResultWidth = i14;
        this.maxCropResultHeight = i15;
        this.activityTitle = activityTitle;
        this.activityMenuIconColor = i16;
        this.activityMenuTextColor = num;
        this.customOutputUri = uri;
        this.outputCompressFormat = outputCompressFormat;
        this.outputCompressQuality = i17;
        this.outputRequestWidth = i18;
        this.outputRequestHeight = i19;
        this.outputRequestSizeOptions = outputRequestSizeOptions;
        this.noOutputImage = z10;
        this.initialCropWindowRectangle = rect;
        this.initialRotation = i20;
        this.allowRotation = z11;
        this.allowFlipping = z12;
        this.allowCounterRotation = z13;
        this.rotationDegrees = i21;
        this.flipHorizontally = z14;
        this.flipVertically = z15;
        this.cropMenuCropButtonTitle = charSequence;
        this.cropMenuCropButtonIcon = i22;
        this.skipEditing = z16;
        this.showIntentChooser = z17;
        this.intentChooserTitle = str;
        this.intentChooserPriorityList = list;
        this.cropperLabelTextSize = f10;
        this.cropperLabelTextColor = i23;
        this.cropperLabelText = str2;
        this.activityBackgroundColor = i24;
        this.toolbarColor = num2;
        this.toolbarTitleColor = num3;
        this.toolbarBackButtonColor = num4;
        this.toolbarTintColor = num5;
        if (!(this.maxZoom >= 0)) {
            throw new IllegalArgumentException("Cannot set max zoom to a number < 1".toString());
        }
        if (this.touchRadius >= 0.0f) {
            float f11 = this.initialCropWindowPaddingRatio;
            if (f11 >= 0.0f && ((double) f11) < 0.5d) {
                if (this.aspectRatioX > 0) {
                    if (!(this.aspectRatioY > 0)) {
                        throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.".toString());
                    }
                    if (!(this.borderLineThickness >= 0.0f)) {
                        throw new IllegalArgumentException("Cannot set line thickness value to a number less than 0.".toString());
                    }
                    if (!(this.borderCornerThickness >= 0.0f)) {
                        throw new IllegalArgumentException("Cannot set corner thickness value to a number less than 0.".toString());
                    }
                    if (!(f9 >= 0.0f)) {
                        throw new IllegalArgumentException("Cannot set guidelines thickness value to a number less than 0.".toString());
                    }
                    if (!(i11 >= 0)) {
                        throw new IllegalArgumentException("Cannot set min crop window height value to a number < 0 ".toString());
                    }
                    if (!(i12 >= 0)) {
                        throw new IllegalArgumentException("Cannot set min crop result width value to a number < 0 ".toString());
                    }
                    if (!(i13 >= 0)) {
                        throw new IllegalArgumentException("Cannot set min crop result height value to a number < 0 ".toString());
                    }
                    if (!(i14 >= i12)) {
                        throw new IllegalArgumentException("Cannot set max crop result width to smaller value than min crop result width".toString());
                    }
                    if (!(i15 >= i13)) {
                        throw new IllegalArgumentException("Cannot set max crop result height to smaller value than min crop result height".toString());
                    }
                    if (!(i18 >= 0)) {
                        throw new IllegalArgumentException("Cannot set request width value to a number < 0 ".toString());
                    }
                    if (!(i19 >= 0)) {
                        throw new IllegalArgumentException("Cannot set request height value to a number < 0 ".toString());
                    }
                    if (!(i21 >= 0 && i21 <= 360)) {
                        throw new IllegalArgumentException("Cannot set rotation degrees value to a number < 0 or > 360".toString());
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.".toString());
            }
            throw new IllegalArgumentException("Cannot set initial crop window padding value to a number < 0 or >= 0.5".toString());
        }
        throw new IllegalArgumentException("Cannot set touch radius value to a number <= 0 ".toString());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CropImageOptions(boolean r48, boolean r49, com.canhub.cropper.CropImageView.CropShape r50, com.canhub.cropper.CropImageView.CropCornerShape r51, float r52, float r53, float r54, com.canhub.cropper.CropImageView.Guidelines r55, com.canhub.cropper.CropImageView.ScaleType r56, boolean r57, boolean r58, boolean r59, int r60, boolean r61, boolean r62, boolean r63, int r64, float r65, boolean r66, int r67, int r68, float r69, int r70, float r71, float r72, float r73, int r74, int r75, float r76, int r77, int r78, int r79, int r80, int r81, int r82, int r83, int r84, java.lang.CharSequence r85, int r86, java.lang.Integer r87, android.net.Uri r88, android.graphics.Bitmap.CompressFormat r89, int r90, int r91, int r92, com.canhub.cropper.CropImageView.RequestSizeOptions r93, boolean r94, android.graphics.Rect r95, int r96, boolean r97, boolean r98, boolean r99, int r100, boolean r101, boolean r102, java.lang.CharSequence r103, int r104, boolean r105, boolean r106, java.lang.String r107, java.util.List r108, float r109, int r110, java.lang.String r111, int r112, java.lang.Integer r113, java.lang.Integer r114, java.lang.Integer r115, java.lang.Integer r116, int r117, int r118, int r119, kotlin.jvm.internal.DefaultConstructorMarker r120) {
        /*
            Method dump skipped, instructions count: 1013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropImageOptions.<init>(boolean, boolean, com.canhub.cropper.CropImageView$CropShape, com.canhub.cropper.CropImageView$CropCornerShape, float, float, float, com.canhub.cropper.CropImageView$Guidelines, com.canhub.cropper.CropImageView$ScaleType, boolean, boolean, boolean, int, boolean, boolean, boolean, int, float, boolean, int, int, float, int, float, float, float, int, int, float, int, int, int, int, int, int, int, int, java.lang.CharSequence, int, java.lang.Integer, android.net.Uri, android.graphics.Bitmap$CompressFormat, int, int, int, com.canhub.cropper.CropImageView$RequestSizeOptions, boolean, android.graphics.Rect, int, boolean, boolean, boolean, int, boolean, boolean, java.lang.CharSequence, int, boolean, boolean, java.lang.String, java.util.List, float, int, java.lang.String, int, java.lang.Integer, java.lang.Integer, java.lang.Integer, java.lang.Integer, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}

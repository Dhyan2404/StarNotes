package com.canhub.cropper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.canhub.cropper.CropImageView;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 Ï\u00012\u00020\u0001:\u0005Ï\u0001Ð\u0001\u001dB#\b\u0007\u0012\b\u0010Ê\u0001\u001a\u00030É\u0001\u0012\f\b\u0002\u0010Ì\u0001\u001a\u0005\u0018\u00010Ë\u0001¢\u0006\u0006\bÍ\u0001\u0010Î\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0003J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J(\u0010\u0012\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J(\u0010\u0013\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J0\u0010\u0015\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J(\u0010\u0016\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u0018\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010!\u001a\u00020\u0002J \u0010'\u001a\u00020\u00022\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J\u0006\u0010(\u001a\u00020\u0002J\u000e\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)J\u000e\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,J\u000e\u00100\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u001cJ\u0010\u00103\u001a\u00020\u00022\b\u00102\u001a\u0004\u0018\u000101J\u000e\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u000fJ\u000e\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020$J\u000e\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u000208J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u001cJ\u000e\u0010>\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u000fJ\u000e\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u000fJ\u000e\u0010B\u001a\u00020\u001c2\u0006\u0010A\u001a\u00020\u001cJ\u000e\u0010D\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020\u001cJ\u0016\u0010G\u001a\u00020\u00022\u0006\u0010E\u001a\u00020$2\u0006\u0010F\u001a\u00020$J\u0016\u0010J\u001a\u00020\u00022\u0006\u0010H\u001a\u00020$2\u0006\u0010I\u001a\u00020$J&\u0010O\u001a\u00020\u00022\u0006\u0010K\u001a\u00020\u000f2\u0006\u0010L\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000fJ\u0006\u0010P\u001a\u00020\u0002J\u000e\u0010S\u001a\u00020\u00022\u0006\u0010R\u001a\u00020QJ\u0010\u0010T\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0014J\u0010\u0010W\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020UH\u0017R\u0016\u0010Y\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010XR\u0018\u0010[\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010ZR\u0018\u0010]\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\\R\u0018\u0010`\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010_R\u0016\u0010b\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010aR\u0016\u0010c\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010aR\u0014\u0010f\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010eR\u0018\u0010h\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010gR\u0014\u0010k\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010n\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010mR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010mR\u0018\u0010p\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010mR\u0018\u0010q\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010mR\u0018\u0010s\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010mR\u0014\u0010w\u001a\u00020t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010vR\u0014\u0010z\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010yR\u0014\u0010|\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010jR\u0016\u0010\u007f\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010~R\u0017\u0010\u0082\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010XR\u0017\u0010\u0083\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010XR\u0018\u0010\u0085\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010XR\u0018\u0010\u0087\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010XR\u0018\u0010\u0089\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010XR\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R)\u0010\u0090\u0001\u001a\u00020\u001c2\u0007\u0010\u008e\u0001\u001a\u00020\u001c8\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\b\u008f\u0001\u0010a\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0018\u0010\u0093\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0092\u0001\u0010~R\u0018\u0010\u0095\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010~R\u0018\u0010\u0097\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0096\u0001\u0010XR-\u00109\u001a\u0004\u0018\u0001082\t\u0010\u008e\u0001\u001a\u0004\u0018\u0001088\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b\u0098\u0001\u0010\u0099\u0001\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001R-\u0010*\u001a\u0004\u0018\u00010)2\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010)8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b\u009c\u0001\u0010\u009d\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001R.\u0010¤\u0001\u001a\u0004\u0018\u00010,2\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010,8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b \u0001\u0010¡\u0001\u001a\u0006\b¢\u0001\u0010£\u0001R\u0018\u0010¦\u0001\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¥\u0001\u0010aR\u0019\u0010©\u0001\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u0018\u0010«\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bª\u0001\u0010XR\u0018\u0010\u00ad\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¬\u0001\u0010~R\u0018\u0010±\u0001\u001a\u00030®\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u0018\u0010³\u0001\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b²\u0001\u0010aR\u0016\u0010µ\u0001\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b´\u0001\u0010XR\u0016\u0010¶\u0001\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bi\u0010\u0091\u0001R)\u0010»\u0001\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b·\u0001\u0010¸\u0001\"\u0006\b¹\u0001\u0010º\u0001R*\u0010¼\u0001\u001a\u00020$2\u0007\u0010¼\u0001\u001a\u00020$8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b½\u0001\u0010¾\u0001\"\u0006\b¿\u0001\u0010À\u0001R*\u0010Á\u0001\u001a\u00020$2\u0007\u0010Á\u0001\u001a\u00020$8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bÂ\u0001\u0010¾\u0001\"\u0006\bÃ\u0001\u0010À\u0001R/\u0010È\u0001\u001a\u0005\u0018\u00010®\u00012\t\u0010\u0005\u001a\u0005\u0018\u00010®\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0006\bÆ\u0001\u0010Ç\u0001¨\u0006Ñ\u0001"}, m61528d2 = {"Lcom/canhub/cropper/CropOverlayView;", "Landroid/view/View;", "", "l", "Landroid/graphics/RectF;", "rect", C4921e.f26537n, "q", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, C6999h.f39688c, "b", "i", "c", C6998g.f39679a, "", "cornerOffset", "cornerExtension", "e", "j", "radius", C6997f.f39671c, "d", "x", "y", GoogleApiAvailabilityLight.f29016b, "p", C4921e.f26528e, "", "a", "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setCropWindowChangeListener", "fixCurrentCropWindowRect", "", "boundsPoints", "", "viewWidth", "viewHeight", "setBounds", "resetCropOverlayView", "Lcom/canhub/cropper/CropImageView$CropShape;", "cropShape", "setCropShape", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cropCornerShape", "setCropCornerShape", "isEnabled", "setCropperTextLabelVisibility", "", "textLabel", "setCropLabelText", "textSize", "setCropLabelTextSize", "textColor", "setCropLabelTextColor", "Lcom/canhub/cropper/CropImageView$Guidelines;", "guidelines", "setGuidelines", "fixAspectRatio", "setFixedAspectRatio", "snapRadius", "setSnapRadius", "cornerRadius", "setCropCornerRadius", "multiTouchEnabled", "setMultiTouchEnabled", "centerMoveEnabled", "setCenterMoveEnabled", "minCropResultWidth", "minCropResultHeight", "setMinCropResultSize", "maxCropResultWidth", "maxCropResultHeight", "setMaxCropResultSize", "maxWidth", "maxHeight", "scaleFactorWidth", "scaleFactorHeight", "setCropWindowLimits", "resetCropWindowRect", "Lcom/canhub/cropper/CropImageOptions;", "options", "setInitialAttributeValues", "onDraw", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "F", "mCropCornerRadius", Constants.INTEGER_SIG, "mCircleCornerFillColor", "Lcom/canhub/cropper/CropImageOptions;", "mOptions", "Landroid/view/ScaleGestureDetector;", "Landroid/view/ScaleGestureDetector;", "mScaleDetector", Constants.HASIDCALL_INDEX_SIG, "mMultiTouchEnabled", "mCenterMoveEnabled", "Lcom/canhub/cropper/CropWindowHandler;", "Lcom/canhub/cropper/CropWindowHandler;", "mCropWindowHandler", "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;", "mCropWindowChangeListener", "m", "Landroid/graphics/RectF;", "mDrawRect", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "mBorderPaint", "mBorderCornerPaint", "mGuidelinePaint", "mBackgroundPaint", "r", "textLabelPaint", "Landroid/graphics/Path;", "s", "Landroid/graphics/Path;", "mPath", "t", "[F", "mBoundsPoints", "u", "mCalcBounds", "v", "I", "mViewWidth", "w", "mViewHeight", "mBorderCornerOffset", "mBorderCornerLength", "z", "mInitialCropWindowPaddingRatio", "J", "mTouchRadius", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "mSnapRadius", "Lcom/canhub/cropper/CropWindowMoveHandler;", "Q", "Lcom/canhub/cropper/CropWindowMoveHandler;", "mMoveHandler", "<set-?>", "k0", "isFixAspectRatio", Constants.BOOLEAN_VALUE_SIG, "q0", "mAspectRatioX", "t0", "mAspectRatioY", "u0", "mTargetAspectRatio", "v0", "Lcom/canhub/cropper/CropImageView$Guidelines;", "getGuidelines", "()Lcom/canhub/cropper/CropImageView$Guidelines;", "w0", "Lcom/canhub/cropper/CropImageView$CropShape;", "getCropShape", "()Lcom/canhub/cropper/CropImageView$CropShape;", "x0", "Lcom/canhub/cropper/CropImageView$CropCornerShape;", "getCornerShape", "()Lcom/canhub/cropper/CropImageView$CropCornerShape;", "cornerShape", "y0", "isCropLabelEnabled", "z0", Constants.STRING_SIG, "cropLabelText", "A0", "cropLabelTextSize", "B0", "cropLabelTextColor", "Landroid/graphics/Rect;", "C0", "Landroid/graphics/Rect;", "mInitialCropWindowRect", "D0", "initializedCropWindow", "E0", "maxVerticalGestureExclusion", "isNonStraightAngleRotated", "getCropWindowRect", "()Landroid/graphics/RectF;", "setCropWindowRect", "(Landroid/graphics/RectF;)V", "cropWindowRect", "aspectRatioX", "getAspectRatioX", "()I", "setAspectRatioX", "(I)V", "aspectRatioY", "getAspectRatioY", "setAspectRatioY", "getInitialCropWindowRect", "()Landroid/graphics/Rect;", "setInitialCropWindowRect", "(Landroid/graphics/Rect;)V", "initialCropWindowRect", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Companion", "CropWindowChangeListener", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CropOverlayView extends View {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: A0, reason: from kotlin metadata */
    public float cropLabelTextSize;

    /* renamed from: B0, reason: from kotlin metadata */
    public int cropLabelTextColor;

    /* renamed from: C0, reason: from kotlin metadata */
    @NotNull
    public final Rect mInitialCropWindowRect;

    /* renamed from: D0, reason: from kotlin metadata */
    public boolean initializedCropWindow;

    /* renamed from: E0, reason: from kotlin metadata */
    public final float maxVerticalGestureExclusion;

    /* renamed from: J, reason: from kotlin metadata */
    public float mTouchRadius;

    /* renamed from: O, reason: from kotlin metadata */
    public float mSnapRadius;

    /* renamed from: Q, reason: from kotlin metadata */
    @Nullable
    public CropWindowMoveHandler mMoveHandler;

    /* renamed from: e, reason: from kotlin metadata */
    public float mCropCornerRadius;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Integer mCircleCornerFillColor;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public CropImageOptions mOptions;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ScaleGestureDetector mScaleDetector;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean mMultiTouchEnabled;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean mCenterMoveEnabled;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final CropWindowHandler mCropWindowHandler;

    /* renamed from: k0, reason: from kotlin metadata */
    public boolean isFixAspectRatio;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public CropWindowChangeListener mCropWindowChangeListener;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final RectF mDrawRect;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Paint mBorderPaint;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public Paint mBorderCornerPaint;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public Paint mGuidelinePaint;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public Paint mBackgroundPaint;

    /* renamed from: q0, reason: from kotlin metadata */
    public int mAspectRatioX;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public Paint textLabelPaint;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Path mPath;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final float[] mBoundsPoints;

    /* renamed from: t0, reason: from kotlin metadata */
    public int mAspectRatioY;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final RectF mCalcBounds;

    /* renamed from: u0, reason: from kotlin metadata */
    public float mTargetAspectRatio;

    /* renamed from: v, reason: from kotlin metadata */
    public int mViewWidth;

    /* renamed from: v0, reason: from kotlin metadata */
    @Nullable
    public CropImageView.Guidelines guidelines;

    /* renamed from: w, reason: from kotlin metadata */
    public int mViewHeight;

    /* renamed from: w0, reason: from kotlin metadata */
    @Nullable
    public CropImageView.CropShape cropShape;

    /* renamed from: x, reason: from kotlin metadata */
    public float mBorderCornerOffset;

    /* renamed from: x0, reason: from kotlin metadata */
    @Nullable
    public CropImageView.CropCornerShape cornerShape;

    /* renamed from: y, reason: from kotlin metadata */
    public float mBorderCornerLength;

    /* renamed from: y0, reason: from kotlin metadata */
    public boolean isCropLabelEnabled;

    /* renamed from: z, reason: from kotlin metadata */
    public float mInitialCropWindowPaddingRatio;

    /* renamed from: z0, reason: from kotlin metadata */
    @NotNull
    public String cropLabelText;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007J\u001f\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u000bJ\u0015\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\rJ\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0000¢\u0006\u0002\b\u0011¨\u0006\u0012"}, m61528d2 = {"Lcom/canhub/cropper/CropOverlayView$Companion;", "", "()V", "getNewPaint", "Landroid/graphics/Paint;", "color", "", "getNewPaint$cropper_release", "getNewPaintOrNull", "thickness", "", "getNewPaintOrNull$cropper_release", "getNewPaintWithFill", "getNewPaintWithFill$cropper_release", "getTextPaint", "options", "Lcom/canhub/cropper/CropImageOptions;", "getTextPaint$cropper_release", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Paint getNewPaint$cropper_release(int color) {
            Paint paint = new Paint();
            paint.setColor(color);
            return paint;
        }

        @Nullable
        public final Paint getNewPaintOrNull$cropper_release(float thickness, int color) {
            if (thickness <= 0.0f) {
                return null;
            }
            Paint paint = new Paint();
            paint.setColor(color);
            paint.setStrokeWidth(thickness);
            paint.setStyle(Paint.Style.STROKE);
            paint.setAntiAlias(true);
            return paint;
        }

        @NotNull
        public final Paint getNewPaintWithFill$cropper_release(int color) {
            Paint paint = new Paint();
            paint.setColor(color);
            paint.setStyle(Paint.Style.FILL);
            paint.setAntiAlias(true);
            return paint;
        }

        @NotNull
        public final Paint getTextPaint$cropper_release(@NotNull CropImageOptions options) {
            Intrinsics.checkNotNullParameter(options, "options");
            Paint paint = new Paint();
            paint.setStrokeWidth(1.0f);
            paint.setTextSize(options.cropperLabelTextSize);
            paint.setStyle(Paint.Style.FILL);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setColor(options.cropperLabelTextColor);
            return paint;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;", "", "onCropWindowChanged", "", OneDriverConstants.OPERATION_STATUS_PROGRESS, "", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface CropWindowChangeListener {
        void onCropWindowChanged(boolean inProgress);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CropImageView.CropShape.values().length];
            try {
                iArr[CropImageView.CropShape.RECTANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_VERTICAL_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_HORIZONTAL_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CropImageView.CropShape.OVAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CropImageView.CropCornerShape.values().length];
            try {
                iArr2[CropImageView.CropCornerShape.OVAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[CropImageView.CropCornerShape.RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: com.canhub.cropper.CropOverlayView$a */
    /* loaded from: classes3.dex */
    public final class C2054a extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public C2054a() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(@NotNull ScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            RectF rect = CropOverlayView.this.mCropWindowHandler.getRect();
            float focusX = detector.getFocusX();
            float focusY = detector.getFocusY();
            float f = 2;
            float currentSpanY = detector.getCurrentSpanY() / f;
            float currentSpanX = detector.getCurrentSpanX() / f;
            float f2 = focusY - currentSpanY;
            float f3 = focusX - currentSpanX;
            float f4 = focusX + currentSpanX;
            float f5 = focusY + currentSpanY;
            if (f3 >= f4 || f2 > f5 || f3 < 0.0f || f4 > CropOverlayView.this.mCropWindowHandler.getMaxCropWidth() || f2 < 0.0f || f5 > CropOverlayView.this.mCropWindowHandler.getMaxCropHeight()) {
                return true;
            }
            rect.set(f3, f2, f4, f5);
            CropOverlayView.this.mCropWindowHandler.setRect(rect);
            CropOverlayView.this.invalidate();
            return true;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public CropOverlayView(@NotNull Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final boolean m9251a(RectF rect) {
        float f;
        float f2;
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        float rectLeft = bitmapUtils.getRectLeft(this.mBoundsPoints);
        float rectTop = bitmapUtils.getRectTop(this.mBoundsPoints);
        float rectRight = bitmapUtils.getRectRight(this.mBoundsPoints);
        float rectBottom = bitmapUtils.getRectBottom(this.mBoundsPoints);
        if (!m9263m()) {
            this.mCalcBounds.set(rectLeft, rectTop, rectRight, rectBottom);
            return false;
        }
        float[] fArr = this.mBoundsPoints;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        if (f8 < f4) {
            float f9 = fArr[3];
            if (f4 < f9) {
                float f10 = fArr[2];
                f4 = f6;
                f2 = f7;
                f6 = f9;
                f = f8;
                f5 = f10;
                f3 = f5;
            } else {
                f3 = fArr[2];
                f2 = f5;
                f5 = f3;
                f6 = f4;
                f4 = f9;
                f = f6;
            }
        } else {
            f = fArr[3];
            if (f4 > f) {
                f2 = fArr[2];
                f5 = f7;
                f6 = f8;
            } else {
                f2 = f3;
                f = f4;
                f3 = f7;
                f4 = f8;
            }
        }
        float f11 = (f4 - f) / (f3 - f2);
        float f12 = (-1.0f) / f11;
        float f13 = f - (f11 * f2);
        float f14 = f - (f2 * f12);
        float f15 = f6 - (f11 * f5);
        float f16 = f6 - (f5 * f12);
        float centerY = rect.centerY() - rect.top;
        float centerX = rect.centerX();
        float f17 = rect.left;
        float f18 = centerY / (centerX - f17);
        float f19 = -f18;
        float f20 = rect.top;
        float f21 = f20 - (f17 * f18);
        float f22 = rect.right;
        float f23 = f20 - (f19 * f22);
        float f24 = f11 - f18;
        float f25 = (f21 - f13) / f24;
        float max = Math.max(rectLeft, f25 < f22 ? f25 : rectLeft);
        float f26 = (f21 - f14) / (f12 - f18);
        if (f26 >= rect.right) {
            f26 = max;
        }
        float max2 = Math.max(max, f26);
        float f27 = f12 - f19;
        float f28 = (f23 - f16) / f27;
        if (f28 >= rect.right) {
            f28 = max2;
        }
        float max3 = Math.max(max2, f28);
        float f29 = (f23 - f14) / f27;
        if (f29 <= rect.left) {
            f29 = rectRight;
        }
        float min = Math.min(rectRight, f29);
        float f30 = (f23 - f15) / (f11 - f19);
        if (f30 <= rect.left) {
            f30 = min;
        }
        float min2 = Math.min(min, f30);
        float f31 = (f21 - f15) / f24;
        if (f31 <= rect.left) {
            f31 = min2;
        }
        float min3 = Math.min(min2, f31);
        float max4 = Math.max(rectTop, Math.max((f11 * max3) + f13, (f12 * min3) + f14));
        float min4 = Math.min(rectBottom, Math.min((f12 * max3) + f16, (f11 * min3) + f15));
        RectF rectF = this.mCalcBounds;
        rectF.left = max3;
        rectF.top = max4;
        rectF.right = min3;
        rectF.bottom = min4;
        return true;
    }

    /* renamed from: b */
    public final void m9252b(Canvas canvas) {
        RectF rect = this.mCropWindowHandler.getRect();
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        float max = Math.max(bitmapUtils.getRectLeft(this.mBoundsPoints), 0.0f);
        float max2 = Math.max(bitmapUtils.getRectTop(this.mBoundsPoints), 0.0f);
        float min = Math.min(bitmapUtils.getRectRight(this.mBoundsPoints), getWidth());
        float min2 = Math.min(bitmapUtils.getRectBottom(this.mBoundsPoints), getHeight());
        CropImageView.CropShape cropShape = this.cropShape;
        int i = cropShape == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cropShape.ordinal()];
        if (i != 1 && i != 2 && i != 3) {
            if (i != 4) {
                throw new IllegalStateException("Unrecognized crop shape");
            }
            this.mPath.reset();
            this.mDrawRect.set(rect.left, rect.top, rect.right, rect.bottom);
            this.mPath.addOval(this.mDrawRect, Path.Direction.CW);
            canvas.save();
            canvas.clipOutPath(this.mPath);
            Paint paint = this.mBackgroundPaint;
            Intrinsics.checkNotNull(paint);
            canvas.drawRect(max, max2, min, min2, paint);
            canvas.restore();
            return;
        }
        if (m9263m()) {
            this.mPath.reset();
            Path path = this.mPath;
            float[] fArr = this.mBoundsPoints;
            path.moveTo(fArr[0], fArr[1]);
            Path path2 = this.mPath;
            float[] fArr2 = this.mBoundsPoints;
            path2.lineTo(fArr2[2], fArr2[3]);
            Path path3 = this.mPath;
            float[] fArr3 = this.mBoundsPoints;
            path3.lineTo(fArr3[4], fArr3[5]);
            Path path4 = this.mPath;
            float[] fArr4 = this.mBoundsPoints;
            path4.lineTo(fArr4[6], fArr4[7]);
            this.mPath.close();
            canvas.save();
            canvas.clipOutPath(this.mPath);
            Paint paint2 = this.mBackgroundPaint;
            Intrinsics.checkNotNull(paint2);
            canvas.drawRect(max, max2, min, min2, paint2);
            canvas.restore();
            return;
        }
        float f = rect.top;
        Paint paint3 = this.mBackgroundPaint;
        Intrinsics.checkNotNull(paint3);
        canvas.drawRect(max, max2, min, f, paint3);
        float f2 = rect.bottom;
        Paint paint4 = this.mBackgroundPaint;
        Intrinsics.checkNotNull(paint4);
        canvas.drawRect(max, f2, min, min2, paint4);
        float f3 = rect.top;
        float f4 = rect.left;
        float f5 = rect.bottom;
        Paint paint5 = this.mBackgroundPaint;
        Intrinsics.checkNotNull(paint5);
        canvas.drawRect(max, f3, f4, f5, paint5);
        float f6 = rect.right;
        float f7 = rect.top;
        float f8 = rect.bottom;
        Paint paint6 = this.mBackgroundPaint;
        Intrinsics.checkNotNull(paint6);
        canvas.drawRect(f6, f7, min, f8, paint6);
    }

    /* renamed from: c */
    public final void m9253c(Canvas canvas) {
        Paint paint = this.mBorderPaint;
        if (paint != null) {
            Intrinsics.checkNotNull(paint);
            float strokeWidth = paint.getStrokeWidth();
            RectF rect = this.mCropWindowHandler.getRect();
            float f = strokeWidth / 2;
            rect.inset(f, f);
            CropImageView.CropShape cropShape = this.cropShape;
            int i = cropShape == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cropShape.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                Paint paint2 = this.mBorderPaint;
                Intrinsics.checkNotNull(paint2);
                canvas.drawRect(rect, paint2);
            } else {
                if (i != 4) {
                    throw new IllegalStateException("Unrecognized crop shape");
                }
                Paint paint3 = this.mBorderPaint;
                Intrinsics.checkNotNull(paint3);
                canvas.drawOval(rect, paint3);
            }
        }
    }

    /* renamed from: d */
    public final void m9254d(Canvas canvas, RectF rect, float cornerExtension, float radius) {
        float f = rect.left - cornerExtension;
        float f2 = rect.top - cornerExtension;
        Paint paint = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint);
        canvas.drawCircle(f, f2, radius, paint);
        float f3 = rect.right + cornerExtension;
        float f4 = rect.top - cornerExtension;
        Paint paint2 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint2);
        canvas.drawCircle(f3, f4, radius, paint2);
        float f5 = rect.left - cornerExtension;
        float f6 = rect.bottom + cornerExtension;
        Paint paint3 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint3);
        canvas.drawCircle(f5, f6, radius, paint3);
        float f7 = rect.right + cornerExtension;
        float f8 = rect.bottom + cornerExtension;
        Paint paint4 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint4);
        canvas.drawCircle(f7, f8, radius, paint4);
    }

    /* renamed from: e */
    public final void m9255e(Canvas canvas, RectF rect, float cornerOffset, float cornerExtension) {
        CropImageView.CropShape cropShape = this.cropShape;
        int i = cropShape == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cropShape.ordinal()];
        if (i == 1) {
            m9256f(canvas, rect, cornerOffset, cornerExtension, this.mCropCornerRadius);
            return;
        }
        if (i == 2) {
            float centerX = rect.centerX() - this.mBorderCornerLength;
            float f = rect.top - cornerOffset;
            float centerX2 = rect.centerX() + this.mBorderCornerLength;
            float f2 = rect.top - cornerOffset;
            Paint paint = this.mBorderCornerPaint;
            Intrinsics.checkNotNull(paint);
            canvas.drawLine(centerX, f, centerX2, f2, paint);
            float centerX3 = rect.centerX() - this.mBorderCornerLength;
            float f3 = rect.bottom + cornerOffset;
            float centerX4 = rect.centerX() + this.mBorderCornerLength;
            float f4 = rect.bottom + cornerOffset;
            Paint paint2 = this.mBorderCornerPaint;
            Intrinsics.checkNotNull(paint2);
            canvas.drawLine(centerX3, f3, centerX4, f4, paint2);
            return;
        }
        if (i != 3) {
            if (i != 4) {
                throw new IllegalStateException("Unrecognized crop shape");
            }
            m9260j(canvas, rect, cornerOffset, cornerExtension);
            return;
        }
        float f5 = rect.left - cornerOffset;
        float centerY = rect.centerY() - this.mBorderCornerLength;
        float f6 = rect.left - cornerOffset;
        float centerY2 = rect.centerY() + this.mBorderCornerLength;
        Paint paint3 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint3);
        canvas.drawLine(f5, centerY, f6, centerY2, paint3);
        float f7 = rect.right + cornerOffset;
        float centerY3 = rect.centerY() - this.mBorderCornerLength;
        float f8 = rect.right + cornerOffset;
        float centerY4 = rect.centerY() + this.mBorderCornerLength;
        Paint paint4 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint4);
        canvas.drawLine(f7, centerY3, f8, centerY4, paint4);
    }

    /* renamed from: f */
    public final void m9256f(Canvas canvas, RectF rect, float cornerOffset, float cornerExtension, float radius) {
        CropImageView.CropCornerShape cropCornerShape = this.cornerShape;
        int i = cropCornerShape == null ? -1 : WhenMappings.$EnumSwitchMapping$1[cropCornerShape.ordinal()];
        if (i == 1) {
            m9254d(canvas, rect, cornerOffset, radius);
        } else {
            if (i != 2) {
                return;
            }
            m9260j(canvas, rect, cornerOffset, cornerExtension);
        }
    }

    public final void fixCurrentCropWindowRect() {
        RectF cropWindowRect = getCropWindowRect();
        m9261k(cropWindowRect);
        this.mCropWindowHandler.setRect(cropWindowRect);
    }

    /* renamed from: g */
    public final void m9257g(Canvas canvas) {
        float f;
        if (this.mBorderCornerPaint != null) {
            Paint paint = this.mBorderPaint;
            if (paint != null) {
                Intrinsics.checkNotNull(paint);
                f = paint.getStrokeWidth();
            } else {
                f = 0.0f;
            }
            Paint paint2 = this.mBorderCornerPaint;
            Intrinsics.checkNotNull(paint2);
            float strokeWidth = paint2.getStrokeWidth();
            float f2 = 2;
            float f3 = (strokeWidth - f) / f2;
            float f4 = strokeWidth / f2;
            float f5 = f4 + f3;
            CropImageView.CropShape cropShape = this.cropShape;
            int i = cropShape == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cropShape.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                f4 += this.mBorderCornerOffset;
            } else if (i != 4) {
                throw new IllegalStateException("Unrecognized crop shape");
            }
            RectF rect = this.mCropWindowHandler.getRect();
            rect.inset(f4, f4);
            m9255e(canvas, rect, f3, f5);
            if (this.cornerShape == CropImageView.CropCornerShape.OVAL) {
                Integer num = this.mCircleCornerFillColor;
                this.mBorderCornerPaint = num != null ? INSTANCE.getNewPaintWithFill$cropper_release(num.intValue()) : null;
                m9255e(canvas, rect, f3, f5);
            }
        }
    }

    /* renamed from: getAspectRatioX, reason: from getter */
    public final int getMAspectRatioX() {
        return this.mAspectRatioX;
    }

    /* renamed from: getAspectRatioY, reason: from getter */
    public final int getMAspectRatioY() {
        return this.mAspectRatioY;
    }

    @Nullable
    public final CropImageView.CropCornerShape getCornerShape() {
        return this.cornerShape;
    }

    @Nullable
    public final CropImageView.CropShape getCropShape() {
        return this.cropShape;
    }

    @NotNull
    public final RectF getCropWindowRect() {
        return this.mCropWindowHandler.getRect();
    }

    @Nullable
    public final CropImageView.Guidelines getGuidelines() {
        return this.guidelines;
    }

    @Nullable
    /* renamed from: getInitialCropWindowRect, reason: from getter */
    public final Rect getMInitialCropWindowRect() {
        return this.mInitialCropWindowRect;
    }

    /* renamed from: h */
    public final void m9258h(Canvas canvas) {
        if (this.isCropLabelEnabled) {
            RectF rect = this.mCropWindowHandler.getRect();
            float f = (rect.left + rect.right) / 2;
            float f2 = rect.top - 50;
            Paint paint = this.textLabelPaint;
            if (paint != null) {
                paint.setTextSize(this.cropLabelTextSize);
                paint.setColor(this.cropLabelTextColor);
            }
            String str = this.cropLabelText;
            Paint paint2 = this.textLabelPaint;
            Intrinsics.checkNotNull(paint2);
            canvas.drawText(str, f, f2, paint2);
            canvas.save();
        }
    }

    /* renamed from: i */
    public final void m9259i(Canvas canvas) {
        float f;
        if (this.mGuidelinePaint != null) {
            Paint paint = this.mBorderPaint;
            if (paint != null) {
                Intrinsics.checkNotNull(paint);
                f = paint.getStrokeWidth();
            } else {
                f = 0.0f;
            }
            RectF rect = this.mCropWindowHandler.getRect();
            rect.inset(f, f);
            float f2 = 3;
            float width = rect.width() / f2;
            float height = rect.height() / f2;
            CropImageView.CropShape cropShape = this.cropShape;
            int i = cropShape == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cropShape.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                float f3 = rect.left + width;
                float f4 = rect.right - width;
                float f5 = rect.top;
                float f6 = rect.bottom;
                Paint paint2 = this.mGuidelinePaint;
                Intrinsics.checkNotNull(paint2);
                canvas.drawLine(f3, f5, f3, f6, paint2);
                float f7 = rect.top;
                float f8 = rect.bottom;
                Paint paint3 = this.mGuidelinePaint;
                Intrinsics.checkNotNull(paint3);
                canvas.drawLine(f4, f7, f4, f8, paint3);
                float f9 = rect.top + height;
                float f10 = rect.bottom - height;
                float f11 = rect.left;
                float f12 = rect.right;
                Paint paint4 = this.mGuidelinePaint;
                Intrinsics.checkNotNull(paint4);
                canvas.drawLine(f11, f9, f12, f9, paint4);
                float f13 = rect.left;
                float f14 = rect.right;
                Paint paint5 = this.mGuidelinePaint;
                Intrinsics.checkNotNull(paint5);
                canvas.drawLine(f13, f10, f14, f10, paint5);
                return;
            }
            if (i != 4) {
                throw new IllegalStateException("Unrecognized crop shape");
            }
            float f15 = 2;
            float width2 = (rect.width() / f15) - f;
            float height2 = (rect.height() / f15) - f;
            float f16 = rect.left + width;
            float f17 = rect.right - width;
            float sin = (float) (height2 * Math.sin(Math.acos((width2 - width) / width2)));
            float f18 = (rect.top + height2) - sin;
            float f19 = (rect.bottom - height2) + sin;
            Paint paint6 = this.mGuidelinePaint;
            Intrinsics.checkNotNull(paint6);
            canvas.drawLine(f16, f18, f16, f19, paint6);
            float f20 = (rect.top + height2) - sin;
            float f21 = (rect.bottom - height2) + sin;
            Paint paint7 = this.mGuidelinePaint;
            Intrinsics.checkNotNull(paint7);
            canvas.drawLine(f17, f20, f17, f21, paint7);
            float f22 = rect.top + height;
            float f23 = rect.bottom - height;
            float cos = (float) (width2 * Math.cos(Math.asin((height2 - height) / height2)));
            float f24 = (rect.left + width2) - cos;
            float f25 = (rect.right - width2) + cos;
            Paint paint8 = this.mGuidelinePaint;
            Intrinsics.checkNotNull(paint8);
            canvas.drawLine(f24, f22, f25, f22, paint8);
            float f26 = (rect.left + width2) - cos;
            float f27 = (rect.right - width2) + cos;
            Paint paint9 = this.mGuidelinePaint;
            Intrinsics.checkNotNull(paint9);
            canvas.drawLine(f26, f23, f27, f23, paint9);
        }
    }

    /* renamed from: isFixAspectRatio, reason: from getter */
    public final boolean getIsFixAspectRatio() {
        return this.isFixAspectRatio;
    }

    /* renamed from: j */
    public final void m9260j(Canvas canvas, RectF rect, float cornerOffset, float cornerExtension) {
        float f = rect.left;
        float f2 = rect.top;
        float f3 = f2 + this.mBorderCornerLength;
        Paint paint = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint);
        canvas.drawLine(f - cornerOffset, f2 - cornerExtension, f - cornerOffset, f3, paint);
        float f4 = rect.left;
        float f5 = rect.top;
        Paint paint2 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint2);
        canvas.drawLine(f4 - cornerExtension, f5 - cornerOffset, this.mBorderCornerLength + f4, f5 - cornerOffset, paint2);
        float f6 = rect.right;
        float f7 = rect.top;
        float f8 = f7 + this.mBorderCornerLength;
        Paint paint3 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint3);
        canvas.drawLine(f6 + cornerOffset, f7 - cornerExtension, f6 + cornerOffset, f8, paint3);
        float f9 = rect.right;
        float f10 = rect.top;
        Paint paint4 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint4);
        canvas.drawLine(f9 + cornerExtension, f10 - cornerOffset, f9 - this.mBorderCornerLength, f10 - cornerOffset, paint4);
        float f11 = rect.left;
        float f12 = rect.bottom;
        float f13 = f12 - this.mBorderCornerLength;
        Paint paint5 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint5);
        canvas.drawLine(f11 - cornerOffset, f12 + cornerExtension, f11 - cornerOffset, f13, paint5);
        float f14 = rect.left;
        float f15 = rect.bottom;
        Paint paint6 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint6);
        canvas.drawLine(f14 - cornerExtension, f15 + cornerOffset, this.mBorderCornerLength + f14, f15 + cornerOffset, paint6);
        float f16 = rect.right;
        float f17 = rect.bottom;
        float f18 = f17 - this.mBorderCornerLength;
        Paint paint7 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint7);
        canvas.drawLine(f16 + cornerOffset, f17 + cornerExtension, f16 + cornerOffset, f18, paint7);
        float f19 = rect.right;
        float f20 = rect.bottom;
        Paint paint8 = this.mBorderCornerPaint;
        Intrinsics.checkNotNull(paint8);
        canvas.drawLine(f19 + cornerExtension, f20 + cornerOffset, f19 - this.mBorderCornerLength, f20 + cornerOffset, paint8);
    }

    /* renamed from: k */
    public final void m9261k(RectF rect) {
        if (rect.width() < this.mCropWindowHandler.getMinCropWidth()) {
            float minCropWidth = (this.mCropWindowHandler.getMinCropWidth() - rect.width()) / 2;
            rect.left -= minCropWidth;
            rect.right += minCropWidth;
        }
        if (rect.height() < this.mCropWindowHandler.getMinCropHeight()) {
            float minCropHeight = (this.mCropWindowHandler.getMinCropHeight() - rect.height()) / 2;
            rect.top -= minCropHeight;
            rect.bottom += minCropHeight;
        }
        if (rect.width() > this.mCropWindowHandler.getMaxCropWidth()) {
            float width = (rect.width() - this.mCropWindowHandler.getMaxCropWidth()) / 2;
            rect.left += width;
            rect.right -= width;
        }
        if (rect.height() > this.mCropWindowHandler.getMaxCropHeight()) {
            float height = (rect.height() - this.mCropWindowHandler.getMaxCropHeight()) / 2;
            rect.top += height;
            rect.bottom -= height;
        }
        m9251a(rect);
        if (this.mCalcBounds.width() > 0.0f && this.mCalcBounds.height() > 0.0f) {
            float max = Math.max(this.mCalcBounds.left, 0.0f);
            float max2 = Math.max(this.mCalcBounds.top, 0.0f);
            float min = Math.min(this.mCalcBounds.right, getWidth());
            float min2 = Math.min(this.mCalcBounds.bottom, getHeight());
            if (rect.left < max) {
                rect.left = max;
            }
            if (rect.top < max2) {
                rect.top = max2;
            }
            if (rect.right > min) {
                rect.right = min;
            }
            if (rect.bottom > min2) {
                rect.bottom = min2;
            }
        }
        if (!this.isFixAspectRatio || Math.abs(rect.width() - (rect.height() * this.mTargetAspectRatio)) <= 0.1d) {
            return;
        }
        if (rect.width() > rect.height() * this.mTargetAspectRatio) {
            float abs = Math.abs((rect.height() * this.mTargetAspectRatio) - rect.width()) / 2;
            rect.left += abs;
            rect.right -= abs;
        } else {
            float abs2 = Math.abs((rect.width() / this.mTargetAspectRatio) - rect.height()) / 2;
            rect.top += abs2;
            rect.bottom -= abs2;
        }
    }

    /* renamed from: l */
    public final void m9262l() {
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        float max = Math.max(bitmapUtils.getRectLeft(this.mBoundsPoints), 0.0f);
        float max2 = Math.max(bitmapUtils.getRectTop(this.mBoundsPoints), 0.0f);
        float min = Math.min(bitmapUtils.getRectRight(this.mBoundsPoints), getWidth());
        float min2 = Math.min(bitmapUtils.getRectBottom(this.mBoundsPoints), getHeight());
        if (min <= max || min2 <= max2) {
            return;
        }
        RectF rectF = new RectF();
        this.initializedCropWindow = true;
        float f = this.mInitialCropWindowPaddingRatio;
        float f2 = min - max;
        float f3 = f * f2;
        float f4 = min2 - max2;
        float f5 = f * f4;
        if (this.mInitialCropWindowRect.width() > 0 && this.mInitialCropWindowRect.height() > 0) {
            rectF.left = (this.mInitialCropWindowRect.left / this.mCropWindowHandler.getMScaleFactorWidth()) + max;
            rectF.top = (this.mInitialCropWindowRect.top / this.mCropWindowHandler.getMScaleFactorHeight()) + max2;
            rectF.right = rectF.left + (this.mInitialCropWindowRect.width() / this.mCropWindowHandler.getMScaleFactorWidth());
            rectF.bottom = rectF.top + (this.mInitialCropWindowRect.height() / this.mCropWindowHandler.getMScaleFactorHeight());
            rectF.left = Math.max(max, rectF.left);
            rectF.top = Math.max(max2, rectF.top);
            rectF.right = Math.min(min, rectF.right);
            rectF.bottom = Math.min(min2, rectF.bottom);
        } else if (!this.isFixAspectRatio || min <= max || min2 <= max2) {
            rectF.left = max + f3;
            rectF.top = max2 + f5;
            rectF.right = min - f3;
            rectF.bottom = min2 - f5;
        } else if (f2 / f4 > this.mTargetAspectRatio) {
            rectF.top = max2 + f5;
            rectF.bottom = min2 - f5;
            float width = getWidth() / 2.0f;
            this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
            float max3 = Math.max(this.mCropWindowHandler.getMinCropWidth(), rectF.height() * this.mTargetAspectRatio) / 2.0f;
            rectF.left = width - max3;
            rectF.right = width + max3;
        } else {
            rectF.left = max + f3;
            rectF.right = min - f3;
            float height = getHeight() / 2.0f;
            float max4 = Math.max(this.mCropWindowHandler.getMinCropHeight(), rectF.width() / this.mTargetAspectRatio) / 2.0f;
            rectF.top = height - max4;
            rectF.bottom = height + max4;
        }
        m9261k(rectF);
        this.mCropWindowHandler.setRect(rectF);
    }

    /* renamed from: m */
    public final boolean m9263m() {
        float[] fArr = this.mBoundsPoints;
        if (fArr[0] == fArr[6]) {
            return false;
        }
        return !((fArr[1] > fArr[7] ? 1 : (fArr[1] == fArr[7] ? 0 : -1)) == 0);
    }

    /* renamed from: n */
    public final void m9264n(float x, float y) {
        CropWindowHandler cropWindowHandler = this.mCropWindowHandler;
        float f = this.mTouchRadius;
        CropImageView.CropShape cropShape = this.cropShape;
        Intrinsics.checkNotNull(cropShape);
        CropWindowMoveHandler moveHandler = cropWindowHandler.getMoveHandler(x, y, f, cropShape, this.mCenterMoveEnabled);
        this.mMoveHandler = moveHandler;
        if (moveHandler != null) {
            invalidate();
        }
    }

    /* renamed from: o */
    public final void m9265o(float x, float y) {
        if (this.mMoveHandler != null) {
            float f = this.mSnapRadius;
            RectF rect = this.mCropWindowHandler.getRect();
            if (m9251a(rect)) {
                f = 0.0f;
            }
            CropWindowMoveHandler cropWindowMoveHandler = this.mMoveHandler;
            Intrinsics.checkNotNull(cropWindowMoveHandler);
            cropWindowMoveHandler.move(rect, x, y, this.mCalcBounds, this.mViewWidth, this.mViewHeight, f, this.isFixAspectRatio, this.mTargetAspectRatio);
            this.mCropWindowHandler.setRect(rect);
            CropWindowChangeListener cropWindowChangeListener = this.mCropWindowChangeListener;
            if (cropWindowChangeListener != null) {
                cropWindowChangeListener.onCropWindowChanged(true);
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        m9252b(canvas);
        if (this.mCropWindowHandler.showGuidelines()) {
            CropImageView.Guidelines guidelines = this.guidelines;
            if (guidelines == CropImageView.Guidelines.ON) {
                m9259i(canvas);
            } else if (guidelines == CropImageView.Guidelines.ON_TOUCH && this.mMoveHandler != null) {
                m9259i(canvas);
            }
        }
        Companion companion = INSTANCE;
        CropImageOptions cropImageOptions = this.mOptions;
        this.mBorderCornerPaint = companion.getNewPaintOrNull$cropper_release(cropImageOptions != null ? cropImageOptions.borderCornerThickness : 0.0f, cropImageOptions != null ? cropImageOptions.borderCornerColor : -1);
        m9258h(canvas);
        m9253c(canvas);
        m9257g(canvas);
        m9267q();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        ScaleGestureDetector scaleGestureDetector;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!isEnabled()) {
            return false;
        }
        if (this.mMultiTouchEnabled && (scaleGestureDetector = this.mScaleDetector) != null) {
            scaleGestureDetector.onTouchEvent(event);
        }
        int action = event.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    m9265o(event.getX(), event.getY());
                    getParent().requestDisallowInterceptTouchEvent(true);
                } else if (action != 3) {
                    return false;
                }
            }
            getParent().requestDisallowInterceptTouchEvent(false);
            m9266p();
        } else {
            m9264n(event.getX(), event.getY());
        }
        return true;
    }

    /* renamed from: p */
    public final void m9266p() {
        if (this.mMoveHandler != null) {
            this.mMoveHandler = null;
            CropWindowChangeListener cropWindowChangeListener = this.mCropWindowChangeListener;
            if (cropWindowChangeListener != null) {
                cropWindowChangeListener.onCropWindowChanged(false);
            }
            invalidate();
        }
    }

    @RequiresApi(29)
    /* renamed from: q */
    public final void m9267q() {
        int lastIndex;
        int lastIndex2;
        int lastIndex3;
        List<Rect> listOf;
        RectF rect = this.mCropWindowHandler.getRect();
        List<Rect> systemGestureExclusionRects = getSystemGestureExclusionRects();
        Intrinsics.checkNotNullExpressionValue(systemGestureExclusionRects, "systemGestureExclusionRects");
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(systemGestureExclusionRects);
        Rect rect2 = lastIndex >= 0 ? systemGestureExclusionRects.get(0) : new Rect();
        List<Rect> systemGestureExclusionRects2 = getSystemGestureExclusionRects();
        Intrinsics.checkNotNullExpressionValue(systemGestureExclusionRects2, "systemGestureExclusionRects");
        lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(systemGestureExclusionRects2);
        Rect rect3 = 1 <= lastIndex2 ? systemGestureExclusionRects2.get(1) : new Rect();
        List<Rect> systemGestureExclusionRects3 = getSystemGestureExclusionRects();
        Intrinsics.checkNotNullExpressionValue(systemGestureExclusionRects3, "systemGestureExclusionRects");
        lastIndex3 = CollectionsKt__CollectionsKt.getLastIndex(systemGestureExclusionRects3);
        Rect rect4 = 2 <= lastIndex3 ? systemGestureExclusionRects3.get(2) : new Rect();
        float f = rect.left;
        float f2 = this.mTouchRadius;
        int i = (int) (f - f2);
        rect2.left = i;
        int i2 = (int) (rect.right + f2);
        rect2.right = i2;
        float f3 = rect.top;
        int i3 = (int) (f3 - f2);
        rect2.top = i3;
        float f4 = this.maxVerticalGestureExclusion;
        rect2.bottom = (int) (i3 + (f4 * 0.3f));
        rect3.left = i;
        rect3.right = i2;
        float f5 = rect.bottom;
        int i4 = (int) (((f3 + f5) / 2.0f) - (0.2f * f4));
        rect3.top = i4;
        rect3.bottom = (int) (i4 + (0.4f * f4));
        rect4.left = rect2.left;
        rect4.right = rect2.right;
        int i5 = (int) (f5 + f2);
        rect4.bottom = i5;
        rect4.top = (int) (i5 - (f4 * 0.3f));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Rect[]{rect2, rect3, rect4});
        setSystemGestureExclusionRects(listOf);
    }

    public final void resetCropOverlayView() {
        if (this.initializedCropWindow) {
            setCropWindowRect(BitmapUtils.INSTANCE.getEMPTY_RECT_F());
            m9262l();
            invalidate();
        }
    }

    public final void resetCropWindowRect() {
        if (this.initializedCropWindow) {
            m9262l();
            invalidate();
            CropWindowChangeListener cropWindowChangeListener = this.mCropWindowChangeListener;
            if (cropWindowChangeListener != null) {
                cropWindowChangeListener.onCropWindowChanged(false);
            }
        }
    }

    public final void setAspectRatioX(int i) {
        if (!(i > 0)) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.".toString());
        }
        if (this.mAspectRatioX != i) {
            this.mAspectRatioX = i;
            this.mTargetAspectRatio = i / this.mAspectRatioY;
            if (this.initializedCropWindow) {
                m9262l();
                invalidate();
            }
        }
    }

    public final void setAspectRatioY(int i) {
        if (!(i > 0)) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.".toString());
        }
        if (this.mAspectRatioY != i) {
            this.mAspectRatioY = i;
            this.mTargetAspectRatio = this.mAspectRatioX / i;
            if (this.initializedCropWindow) {
                m9262l();
                invalidate();
            }
        }
    }

    public final void setBounds(@Nullable float[] boundsPoints, int viewWidth, int viewHeight) {
        if (boundsPoints == null || !Arrays.equals(this.mBoundsPoints, boundsPoints)) {
            if (boundsPoints == null) {
                Arrays.fill(this.mBoundsPoints, 0.0f);
            } else {
                System.arraycopy(boundsPoints, 0, this.mBoundsPoints, 0, boundsPoints.length);
            }
            this.mViewWidth = viewWidth;
            this.mViewHeight = viewHeight;
            RectF rect = this.mCropWindowHandler.getRect();
            if (!(rect.width() == 0.0f)) {
                if (!(rect.height() == 0.0f)) {
                    return;
                }
            }
            m9262l();
        }
    }

    public final boolean setCenterMoveEnabled(boolean centerMoveEnabled) {
        if (this.mCenterMoveEnabled == centerMoveEnabled) {
            return false;
        }
        this.mCenterMoveEnabled = centerMoveEnabled;
        return true;
    }

    public final void setCropCornerRadius(float cornerRadius) {
        this.mCropCornerRadius = cornerRadius;
    }

    public final void setCropCornerShape(@NotNull CropImageView.CropCornerShape cropCornerShape) {
        Intrinsics.checkNotNullParameter(cropCornerShape, "cropCornerShape");
        if (this.cornerShape != cropCornerShape) {
            this.cornerShape = cropCornerShape;
            invalidate();
        }
    }

    public final void setCropLabelText(@Nullable String textLabel) {
        if (textLabel != null) {
            this.cropLabelText = textLabel;
        }
    }

    public final void setCropLabelTextColor(int textColor) {
        this.cropLabelTextColor = textColor;
        invalidate();
    }

    public final void setCropLabelTextSize(float textSize) {
        this.cropLabelTextSize = textSize;
        invalidate();
    }

    public final void setCropShape(@NotNull CropImageView.CropShape cropShape) {
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        if (this.cropShape != cropShape) {
            this.cropShape = cropShape;
            invalidate();
        }
    }

    public final void setCropWindowChangeListener(@Nullable CropWindowChangeListener listener) {
        this.mCropWindowChangeListener = listener;
    }

    public final void setCropWindowLimits(float maxWidth, float maxHeight, float scaleFactorWidth, float scaleFactorHeight) {
        this.mCropWindowHandler.setCropWindowLimits(maxWidth, maxHeight, scaleFactorWidth, scaleFactorHeight);
    }

    public final void setCropWindowRect(@NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.mCropWindowHandler.setRect(rect);
    }

    public final void setCropperTextLabelVisibility(boolean isEnabled) {
        this.isCropLabelEnabled = isEnabled;
        invalidate();
    }

    public final void setFixedAspectRatio(boolean fixAspectRatio) {
        if (this.isFixAspectRatio != fixAspectRatio) {
            this.isFixAspectRatio = fixAspectRatio;
            if (this.initializedCropWindow) {
                m9262l();
                invalidate();
            }
        }
    }

    public final void setGuidelines(@NotNull CropImageView.Guidelines guidelines) {
        Intrinsics.checkNotNullParameter(guidelines, "guidelines");
        if (this.guidelines != guidelines) {
            this.guidelines = guidelines;
            if (this.initializedCropWindow) {
                invalidate();
            }
        }
    }

    public final void setInitialAttributeValues(@NotNull CropImageOptions options) {
        CropWindowChangeListener cropWindowChangeListener;
        Intrinsics.checkNotNullParameter(options, "options");
        boolean z = true;
        boolean z2 = !Intrinsics.areEqual(this.mOptions, options);
        CropImageOptions cropImageOptions = this.mOptions;
        if (cropImageOptions != null && options.fixAspectRatio == cropImageOptions.fixAspectRatio) {
            if (cropImageOptions != null && options.aspectRatioX == cropImageOptions.aspectRatioX) {
                if (cropImageOptions != null && options.aspectRatioY == cropImageOptions.aspectRatioY) {
                    z = false;
                }
            }
        }
        this.mOptions = options;
        this.mCropWindowHandler.setMinCropResultSize(options.minCropResultWidth, options.minCropResultHeight);
        this.mCropWindowHandler.setMaxCropResultSize(options.maxCropResultWidth, options.maxCropResultHeight);
        if (z2) {
            this.mCropWindowHandler.setInitialAttributeValues(options);
            this.cropLabelTextColor = options.cropperLabelTextColor;
            this.cropLabelTextSize = options.cropperLabelTextSize;
            String str = options.cropperLabelText;
            if (str == null) {
                str = "";
            }
            this.cropLabelText = str;
            this.isCropLabelEnabled = options.showCropLabel;
            this.mCropCornerRadius = options.cropCornerRadius;
            this.cornerShape = options.cornerShape;
            this.cropShape = options.cropShape;
            this.mSnapRadius = options.snapRadius;
            this.guidelines = options.guidelines;
            this.isFixAspectRatio = options.fixAspectRatio;
            setAspectRatioX(options.aspectRatioX);
            setAspectRatioY(options.aspectRatioY);
            boolean z3 = options.multiTouchEnabled;
            this.mMultiTouchEnabled = z3;
            if (z3 && this.mScaleDetector == null) {
                this.mScaleDetector = new ScaleGestureDetector(getContext(), new C2054a());
            }
            this.mCenterMoveEnabled = options.centerMoveEnabled;
            this.mTouchRadius = options.touchRadius;
            this.mInitialCropWindowPaddingRatio = options.initialCropWindowPaddingRatio;
            Companion companion = INSTANCE;
            this.mBorderPaint = companion.getNewPaintOrNull$cropper_release(options.borderLineThickness, options.borderLineColor);
            this.mBorderCornerOffset = options.borderCornerOffset;
            this.mBorderCornerLength = options.borderCornerLength;
            this.mCircleCornerFillColor = Integer.valueOf(options.circleCornerFillColorHexValue);
            this.mBorderCornerPaint = companion.getNewPaintOrNull$cropper_release(options.borderCornerThickness, options.borderCornerColor);
            this.mGuidelinePaint = companion.getNewPaintOrNull$cropper_release(options.guidelinesThickness, options.guidelinesColor);
            this.mBackgroundPaint = companion.getNewPaint$cropper_release(options.backgroundColor);
            this.textLabelPaint = companion.getTextPaint$cropper_release(options);
            if (z) {
                m9262l();
            }
            invalidate();
            if (!z || (cropWindowChangeListener = this.mCropWindowChangeListener) == null) {
                return;
            }
            cropWindowChangeListener.onCropWindowChanged(false);
        }
    }

    public final void setInitialCropWindowRect(@Nullable Rect rect) {
        Rect rect2 = this.mInitialCropWindowRect;
        if (rect == null) {
            rect = BitmapUtils.INSTANCE.getEMPTY_RECT();
        }
        rect2.set(rect);
        if (this.initializedCropWindow) {
            m9262l();
            invalidate();
            CropWindowChangeListener cropWindowChangeListener = this.mCropWindowChangeListener;
            if (cropWindowChangeListener != null) {
                cropWindowChangeListener.onCropWindowChanged(false);
            }
        }
    }

    public final void setMaxCropResultSize(int maxCropResultWidth, int maxCropResultHeight) {
        this.mCropWindowHandler.setMaxCropResultSize(maxCropResultWidth, maxCropResultHeight);
    }

    public final void setMinCropResultSize(int minCropResultWidth, int minCropResultHeight) {
        this.mCropWindowHandler.setMinCropResultSize(minCropResultWidth, minCropResultHeight);
    }

    public final boolean setMultiTouchEnabled(boolean multiTouchEnabled) {
        if (this.mMultiTouchEnabled == multiTouchEnabled) {
            return false;
        }
        this.mMultiTouchEnabled = multiTouchEnabled;
        if (!multiTouchEnabled || this.mScaleDetector != null) {
            return true;
        }
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new C2054a());
        return true;
    }

    public final void setSnapRadius(float snapRadius) {
        this.mSnapRadius = snapRadius;
    }

    public /* synthetic */ CropOverlayView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CropOverlayView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mCenterMoveEnabled = true;
        this.mCropWindowHandler = new CropWindowHandler();
        this.mDrawRect = new RectF();
        this.mPath = new Path();
        this.mBoundsPoints = new float[8];
        this.mCalcBounds = new RectF();
        this.mTargetAspectRatio = this.mAspectRatioX / this.mAspectRatioY;
        this.cropLabelText = "";
        this.cropLabelTextSize = 20.0f;
        this.cropLabelTextColor = -1;
        this.mInitialCropWindowRect = new Rect();
        this.maxVerticalGestureExclusion = TypedValue.applyDimension(1, 200.0f, Resources.getSystem().getDisplayMetrics());
    }
}

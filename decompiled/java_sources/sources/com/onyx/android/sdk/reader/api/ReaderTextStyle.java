package com.onyx.android.sdk.reader.api;

import androidx.annotation.IntRange;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.ss.util.CellUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\bE\n\u0002\u0010!\n\u0002\b1\u0018\u0000 ¶\u00012\u00020\u0001:\u0018·\u0001¸\u0001¶\u0001¹\u0001º\u0001»\u0001¼\u0001½\u0001¾\u0001¿\u0001À\u0001Á\u0001B\u000b\b\u0016¢\u0006\u0006\b´\u0001\u0010µ\u0001J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u001d\u0010\b\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\nJz\u0010 \u001a\u0004\u0018\u00010\u00002\u0018\u0010\u0015\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001f\u001a\u00020\nJ\u0012\u0010\"\u001a\u0004\u0018\u00010\u00002\b\u0010!\u001a\u0004\u0018\u00010\u0000J\u0013\u0010%\u001a\u00020$2\b\u0010#\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010&\u001a\u00020\nH\u0016J\n\u0010'\u001a\u0004\u0018\u00010\u0014H\u0007J\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013J\u001c\u0010)\u001a\u0004\u0018\u00010\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u0013J\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+\u0018\u00010\u0013J\u001c\u0010-\u001a\u0004\u0018\u00010\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0\u0013J\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020+\u0018\u00010\u0013J\u001c\u0010/\u001a\u0004\u0018\u00010\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020+0\u0013J\u0010\u00101\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u000100J\u0018\u00103\u001a\u0004\u0018\u00010\u00002\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u000100J\b\u00104\u001a\u0004\u0018\u00010\fJ\u0010\u00105\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\fJ\u0006\u00106\u001a\u00020\u0007J\u0006\u00107\u001a\u00020\u0007J\u0006\u00108\u001a\u00020\u0007J\u0006\u00109\u001a\u00020\u0007J\b\u0010;\u001a\u0004\u0018\u00010:J\u0010\u0010=\u001a\u00020\u00072\b\u0010<\u001a\u0004\u0018\u00010:J\b\u0010?\u001a\u0004\u0018\u00010>J\u0010\u0010A\u001a\u00020\u00072\b\u0010@\u001a\u0004\u0018\u00010>J\b\u0010B\u001a\u0004\u0018\u00010\u0019J\u0010\u0010C\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\b\u0010D\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010E\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u000eJ\b\u0010F\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010G\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u000eJ\b\u0010H\u001a\u0004\u0018\u00010\u0011J\u0010\u0010J\u001a\u00020\u00072\b\u0010I\u001a\u0004\u0018\u00010\u0011J\u000e\u0010M\u001a\u00020\u00072\u0006\u0010L\u001a\u00020KJ\u0006\u0010N\u001a\u00020KJ\u0006\u0010O\u001a\u00020\nJ\u000e\u0010P\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010Q\u001a\u00020$J\u0010\u0010S\u001a\u0004\u0018\u00010\u00002\u0006\u0010R\u001a\u00020$J\u0006\u0010T\u001a\u00020$J\u0010\u0010V\u001a\u0004\u0018\u00010\u00002\u0006\u0010U\u001a\u00020$J\u0006\u0010W\u001a\u00020$J\u0010\u0010Y\u001a\u0004\u0018\u00010\u00002\u0006\u0010X\u001a\u00020$J\u0006\u0010Z\u001a\u00020$J\u000e\u0010\\\u001a\u00020\u00072\u0006\u0010[\u001a\u00020$J\u0006\u0010]\u001a\u00020\u0002J\u000e\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020\u0002J\u0006\u0010`\u001a\u00020\u0002J\u000e\u0010b\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u0002J\u0018\u0010%\u001a\u00020$2\b\u0010c\u001a\u0004\u0018\u00010\u00002\u0006\u0010d\u001a\u00020\u0000J\u0006\u0010e\u001a\u00020\nJ\u0010\u0010g\u001a\u0004\u0018\u00010\u00002\u0006\u0010f\u001a\u00020\nJ\u0006\u0010h\u001a\u00020\nJ\u0010\u0010j\u001a\u0004\u0018\u00010\u00002\u0006\u0010i\u001a\u00020\nJ\u0006\u0010k\u001a\u00020\nJ\u0010\u0010m\u001a\u0004\u0018\u00010\u00002\u0006\u0010l\u001a\u00020\nJ\u0006\u0010n\u001a\u00020\nJ\u0010\u0010p\u001a\u0004\u0018\u00010\u00002\u0006\u0010o\u001a\u00020\nJ\u0006\u0010q\u001a\u00020\nJ\u0010\u0010s\u001a\u0004\u0018\u00010\u00002\u0006\u0010r\u001a\u00020\nJ\u0006\u0010t\u001a\u00020\nJ\u0010\u0010v\u001a\u0004\u0018\u00010\u00002\u0006\u0010u\u001a\u00020\nJ\u0006\u0010w\u001a\u00020\nJ\u0010\u0010y\u001a\u0004\u0018\u00010\u00002\u0006\u0010x\u001a\u00020\nJ\u0006\u0010z\u001a\u00020$J\u0010\u0010|\u001a\u0004\u0018\u00010\u00002\u0006\u0010{\u001a\u00020$J\u0006\u0010}\u001a\u00020$J\u0006\u0010~\u001a\u00020$J\u0006\u0010\u007f\u001a\u00020$J\u000e\u0010\u007f\u001a\u00020$2\u0006\u0010\u001a\u001a\u00020\nJ\u0007\u0010\u0080\u0001\u001a\u00020$J\u0007\u0010\u0081\u0001\u001a\u00020$J\u0007\u0010\u0082\u0001\u001a\u00020$J\u0007\u0010\u0083\u0001\u001a\u00020$J\u0007\u0010\u0084\u0001\u001a\u00020$J\u0007\u0010\u0085\u0001\u001a\u00020$J\u0010\u0010\u0084\u0001\u001a\u00020$2\u0007\u0010\u0086\u0001\u001a\u00020\u0002J\u0010\u0010\u0085\u0001\u001a\u00020$2\u0007\u0010\u0087\u0001\u001a\u00020\u0002J\u0007\u0010\u0088\u0001\u001a\u00020\u0002J\u0010\u0010\u0081\u0001\u001a\u00020$2\u0007\u0010\u0089\u0001\u001a\u00020\nJ\u0010\u0010\u0080\u0001\u001a\u00020$2\u0007\u0010\u0089\u0001\u001a\u00020\nJ\u0011\u0010\u0088\u0001\u001a\u00020\u00022\b\b\u0001\u0010f\u001a\u00020\nJ\u0007\u0010\u008a\u0001\u001a\u00020\u0007R$\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R%\u0010\u008e\u0001\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008c\u0001R%\u0010\u0090\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020+0\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u008c\u0001R\u001f\u00102\u001a\t\u0012\u0004\u0012\u00020\u00140\u0091\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001a\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001a\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009d\u0001R\u001a\u0010I\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0018\u0010L\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u0018\u0010\u001f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u0018\u0010R\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u0017\u0010U\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b#\u0010¦\u0001R\u0018\u0010X\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¦\u0001R\u0018\u0010[\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010¦\u0001R\u0018\u0010^\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u0018\u0010a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010ª\u0001R\u0018\u0010f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010¤\u0001R\u0018\u0010l\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010¤\u0001R\u0018\u0010i\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010¤\u0001R\u0018\u0010o\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010¤\u0001R\u0018\u0010r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010¤\u0001R\u0018\u0010u\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010¤\u0001R\u0018\u0010x\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010¤\u0001R\u0018\u0010{\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010¦\u0001¨\u0006Â\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "", "", "newSize", "limitFontSize", "", "fontSizes", "", "setDefaultFontSizes", "([Ljava/lang/Float;)V", "", FirebaseAnalytics.Param.INDEX, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", "getFontSizeByIndex", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "getLineSpacingByIndex", "getParagraphSpacingByIndex", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;", "getPageMarginByIndex", "", "", "fontMapping", gon.f71257J, "lineSpacing", "paragraphSpacing", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;", "indent", "leftMargin", "topMargin", "rightMargin", "bottomMargin", "pagingMode", BaiduYunConstant.CREATE, "style", "copy", C4921e.f26528e, "", "equals", "hashCode", "getFontFace", "getFontMapping", "setFontMapping", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;", "getStyleFontMapping", "setStyleFontMapping", "getTagFontMapping", "setTagFontMapping", "", "getExternalFonts", "externalFonts", "setExternalFonts", "getFontSize", "setFontSize", "increaseFontSize", "decreaseFontSize", "increaseFontSizeByStep", "decreaseFontSizeByStep", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;", "getAlignment", CellUtil.ALIGNMENT, "setAlignment", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;", "getTextSpacingTrim", "textSpacingTrim", "setTextSpacingTrim", "getIndent", "setIndent", "getLineSpacing", "setLineSpacing", "getParagraphSpacing", "setParagraphSpacing", "getPageMargin", "pageMargin", "setPageMargin", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;", "fontVariantLigaturesState", "setFontVariantLigaturesState", "getFontVariantLigaturesState", "getPagingMode", "setPagingMode", "isIncludeFontPadding", "includeFontPadding", "setIncludeFontPadding", "isEnableHyphen", "enableHyphen", "setEnableHyphen", "isChangeWritingMode", "changeWritingMode", "setChangeWritingMode", "isEnableFontReplaceAll", "enableFontReplaceAll", "setEnableFontReplaceAll", "getLetterSpacing", "letterSpacing", "setLetterSpacing", "getWordSpacing", "wordSpacing", "setWordSpacing", "style1", "style2", "getFontEmboldenLevel", "fontEmboldenLevel", "setFontEmboldenLevel", "getTextColorType", "textColorType", "setTextColorType", "getTextColor", "textColor", "setTextColor", "getBackgroundColor", gon.f71255H, "setBackgroundColor", "getBackgroundColorType", "backgroundColorType", "setBackgroundColorType", "getForegroundColor", "foregroundColor", "setForegroundColor", "getForegroundColorType", "foregroundColorType", "setForegroundColorType", "isAntiAlias", "antiAlias", "setAntiAlias", "isOriginCssLetterSpacing", "isOriginCssWordSpacing", "isOriginCssIndent", "isOriginCssParagraphSpacing", "isOriginCssLineSpacing", "isOriginCssLeftMargin", "isOriginCssRightMargin", "isOriginCssTopMargin", "isOriginCssBottomMargin", OneDriverConstants.TOP, "bottom", "getFontEmbolden", Constants.ATTRNAME_PERCENT, "resetOriginCssStyle", "a", "Ljava/util/Map;", "b", "styleFontMapping", "c", "tagFontMapping", "", "d", "Ljava/util/List;", "e", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", C6997f.f39671c, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;", "i", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "j", C4921e.f26537n, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;", "l", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;", "m", "I", GoogleApiAvailabilityLight.f29016b, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "p", "q", "r", "F", "s", "t", "u", "v", "w", "x", "y", "z", "A", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "Alignment", "CharacterIndent", "DPUnit", "FontEntry", "FontSpec", "FontVariantLigaturesState", "Origin", "PageMargin", "Percentage", "SPUnit", "TextSpacingTrim", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderTextStyle {

    /* renamed from: A0 */
    @NotNull
    public static Percentage f44509A0 = null;

    /* renamed from: B0 */
    @NotNull
    public static Percentage f44511B0 = null;
    public static final int BACKGROUND_COLOR_TYPE_CUSTOM_DARK = 99;
    public static final int BACKGROUND_COLOR_TYPE_CUSTOM_LIGHT = 98;

    /* renamed from: C0 */
    @NotNull
    public static Percentage f44513C0 = null;

    /* renamed from: D */
    public static float f44514D = 0.0f;

    /* renamed from: D0 */
    public static final int f44515D0;
    public static final int DEFAULT_FONT_EMBOLDEN_LEVEL = 0;

    /* renamed from: E0 */
    public static final int f44517E0;

    /* renamed from: F0 */
    public static final int f44519F0 = 0;
    public static final int FOREGROUND_COLOR_TYPE_CUSTOM_DARK = 99;
    public static final int FOREGROUND_COLOR_TYPE_CUSTOM_LIGHT = 98;
    public static final int FOREGROUND_COLOR_TYPE_ORIGIN = 0;

    /* renamed from: G0 */
    public static final int f44521G0;

    /* renamed from: H0 */
    public static final int f44523H0;

    /* renamed from: I */
    public static float f44524I = 0.0f;

    /* renamed from: I0 */
    public static final int f44525I0;

    /* renamed from: J0 */
    public static final float f44527J0 = 0.0f;

    /* renamed from: K0 */
    public static final float f44529K0 = 0.0f;

    /* renamed from: L0 */
    @NotNull
    public static PageMargin f44531L0 = null;

    /* renamed from: M */
    public static final float f44532M = 0.0f;

    /* renamed from: M0 */
    @NotNull
    public static PageMargin f44533M0 = null;
    public static final int MAX_FONT_EMBOLDEN_LEVEL = 30;
    public static final int MIN_FONT_EMBOLDEN_LEVEL = 0;

    /* renamed from: N0 */
    @NotNull
    public static PageMargin f44535N0 = null;

    /* renamed from: O0 */
    @NotNull
    public static PageMargin f44537O0 = null;

    /* renamed from: P */
    @NotNull
    public static SPUnit f44538P = null;

    /* renamed from: P0 */
    @NotNull
    public static PageMargin f44539P0 = null;

    /* renamed from: Q */
    @NotNull
    public static SPUnit f44540Q = null;

    /* renamed from: Q0 */
    @NotNull
    public static PageMargin f44541Q0 = null;

    /* renamed from: R */
    @NotNull
    public static SPUnit f44542R = null;

    /* renamed from: S */
    @NotNull
    public static SPUnit f44543S = null;

    /* renamed from: T */
    public static final int f44544T = 0;
    public static final int TEXT_COLOR_TYPE_CUSTOM_DARK = 99;
    public static final int TEXT_COLOR_TYPE_CUSTOM_LIGHT = 98;

    /* renamed from: U */
    public static final int f44545U;

    /* renamed from: V */
    public static final int f44546V;

    /* renamed from: W */
    @NotNull
    public static final String f44547W;

    /* renamed from: X */
    @NotNull
    public static final String f44548X;

    /* renamed from: Y */
    @NotNull
    public static final String f44549Y;

    /* renamed from: Z */
    public static final boolean f44550Z;

    /* renamed from: a0 */
    public static final boolean f44551a0 = false;

    /* renamed from: b0 */
    public static final boolean f44552b0 = false;

    /* renamed from: c0 */
    public static final boolean f44553c0 = false;

    /* renamed from: d0 */
    public static final boolean f44554d0;

    /* renamed from: e0 */
    public static final int f44555e0 = 0;

    /* renamed from: f0 */
    public static final int f44556f0;

    /* renamed from: g0 */
    public static final int f44557g0;

    /* renamed from: h0 */
    public static final int f44558h0;

    /* renamed from: i0 */
    public static final int f44559i0;

    /* renamed from: j0 */
    public static final int f44560j0 = 0;

    /* renamed from: k0 */
    public static final int f44561k0;

    /* renamed from: l0 */
    @NotNull
    public static Alignment f44562l0;

    /* renamed from: m0 */
    @NotNull
    public static TextSpacingTrim f44563m0;

    /* renamed from: n0 */
    @NotNull
    public static CharacterIndent f44564n0;

    /* renamed from: o0 */
    @NotNull
    public static CharacterIndent f44565o0;

    /* renamed from: p0 */
    @NotNull
    public static CharacterIndent f44566p0;

    /* renamed from: q0 */
    @NotNull
    public static CharacterIndent f44567q0;

    /* renamed from: r0 */
    @NotNull
    public static Percentage f44568r0;

    /* renamed from: s0 */
    @NotNull
    public static Percentage f44569s0;

    /* renamed from: t0 */
    @NotNull
    public static Percentage f44570t0;

    /* renamed from: u0 */
    @NotNull
    public static Percentage f44571u0;

    /* renamed from: v0 */
    @NotNull
    public static Percentage f44572v0;

    /* renamed from: w0 */
    @NotNull
    public static Percentage f44573w0;

    /* renamed from: x0 */
    @NotNull
    public static Percentage f44574x0;

    /* renamed from: y0 */
    @NotNull
    public static Percentage f44575y0;

    /* renamed from: z0 */
    @NotNull
    public static Percentage f44576z0;

    /* renamed from: t, reason: from kotlin metadata */
    public int fontEmboldenLevel;

    /* renamed from: z, reason: from kotlin metadata */
    public int foregroundColorType;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: B */
    public static float f44510B = -0.1f;

    /* renamed from: C */
    public static float f44512C = 0.1f;

    /* renamed from: E */
    public static float f44516E = Float.MAX_VALUE;

    /* renamed from: F */
    public static int f44518F = 1;

    /* renamed from: G */
    public static float f44520G = -0.1f;

    /* renamed from: H */
    public static float f44522H = 0.1f;

    /* renamed from: J */
    public static float f44526J = Float.MAX_VALUE;

    /* renamed from: K */
    public static float f44528K = Float.MAX_VALUE;

    /* renamed from: L */
    public static float f44530L = 1.0f;

    /* renamed from: N */
    public static final float f44534N = 0.1f;

    /* renamed from: O */
    @NotNull
    public static SPUnit[] f44536O = new SPUnit[0];

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<String, String> fontMapping = new HashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Map<FontSpec, FontEntry> styleFontMapping = new HashMap();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Map<String, FontEntry> tagFontMapping = new HashMap();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<String> externalFonts = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public SPUnit fontSize = f44538P;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Alignment alignment = f44562l0;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TextSpacingTrim textSpacingTrim = f44563m0;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public CharacterIndent indent = f44565o0;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Percentage lineSpacing = f44573w0;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Percentage paragraphSpacing = f44513C0;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public PageMargin pageMargin = f44541Q0;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public FontVariantLigaturesState fontVariantLigaturesState = FontVariantLigaturesState.NORMAL;

    /* renamed from: m, reason: from kotlin metadata */
    public int pagingMode = f44546V;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean includeFontPadding = f44551a0;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean enableHyphen = f44550Z;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean changeWritingMode = f44552b0;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean enableFontReplaceAll = f44553c0;

    /* renamed from: r, reason: from kotlin metadata */
    public float letterSpacing = f44527J0;

    /* renamed from: s, reason: from kotlin metadata */
    public float wordSpacing = f44529K0;

    /* renamed from: u, reason: from kotlin metadata */
    public int textColor = -16777216;

    /* renamed from: v, reason: from kotlin metadata */
    public int textColorType = f44555e0;

    /* renamed from: w, reason: from kotlin metadata */
    public int backgroundColor = -1;

    /* renamed from: x, reason: from kotlin metadata */
    public int backgroundColorType = f44560j0;

    /* renamed from: y, reason: from kotlin metadata */
    public int foregroundColor = -16777216;

    /* renamed from: A, reason: from kotlin metadata */
    public boolean antiAlias = f44554d0;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;", "", "(Ljava/lang/String;I)V", "ALIGNMENT_NONE", "ALIGNMENT_LEFT", "ALIGNMENT_RIGHT", "ALIGNMENT_JUSTIFY", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Alignment {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Alignment[] $VALUES;
        public static final Alignment ALIGNMENT_NONE = new Alignment("ALIGNMENT_NONE", 0);
        public static final Alignment ALIGNMENT_LEFT = new Alignment("ALIGNMENT_LEFT", 1);
        public static final Alignment ALIGNMENT_RIGHT = new Alignment("ALIGNMENT_RIGHT", 2);
        public static final Alignment ALIGNMENT_JUSTIFY = new Alignment("ALIGNMENT_JUSTIFY", 3);

        private static final /* synthetic */ Alignment[] $values() {
            return new Alignment[]{ALIGNMENT_NONE, ALIGNMENT_LEFT, ALIGNMENT_RIGHT, ALIGNMENT_JUSTIFY};
        }

        static {
            Alignment[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Alignment(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Alignment> getEntries() {
            return $ENTRIES;
        }

        public static Alignment valueOf(String str) {
            return (Alignment) Enum.valueOf(Alignment.class, str);
        }

        public static Alignment[] values() {
            return (Alignment[]) $VALUES.clone();
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\t\b\u0016¢\u0006\u0004\b\u000e\u0010\u000fB\u0011\b\u0016\u0012\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u000e\u0010\fJ\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\"\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;", "", C4921e.f26528e, "", "equals", "", "hashCode", "a", "I", "getIndent", "()I", "setIndent", "(I)V", "indent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class CharacterIndent {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata */
        public int indent;

        @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;", "indent", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final CharacterIndent create(int indent) {
                return new CharacterIndent(indent);
            }

            public Companion() {
            }
        }

        public CharacterIndent() {
        }

        public boolean equals(@Nullable Object o) {
            if (this == o) {
                return true;
            }
            return o != null && Intrinsics.areEqual(CharacterIndent.class, o.getClass()) && this.indent == ((CharacterIndent) o).indent;
        }

        public final int getIndent() {
            return this.indent;
        }

        public int hashCode() {
            return this.indent;
        }

        public final void setIndent(int i) {
            this.indent = i;
        }

        public CharacterIndent(int i) {
            this.indent = i;
        }
    }

    @Metadata(m61527d1 = {"\u0000k\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0003\b\u0089\u0001\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010Ý\u0001\u001a\u00030Þ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0012X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u0012X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014R\u0014\u0010\u001f\u001a\u00020\u0012X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0014R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#0)X\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0014\u0010/\u001a\u00020\u0012X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u0014R\u001a\u00101\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001a\u00107\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010=\u001a\u00020>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001a\u0010C\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010:\"\u0004\bE\u0010<R\u001a\u0010F\u001a\u00020GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010L\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u00104\"\u0004\bN\u00106R\u0014\u0010O\u001a\u000202X\u0086D¢\u0006\b\n\u0000\u001a\u0004\bP\u00104R\u0014\u0010Q\u001a\u000202X\u0086D¢\u0006\b\n\u0000\u001a\u0004\bR\u00104R\u0014\u0010S\u001a\u00020TX\u0086D¢\u0006\b\n\u0000\u001a\u0004\bU\u0010VR\u0014\u0010W\u001a\u00020TX\u0086D¢\u0006\b\n\u0000\u001a\u0004\bX\u0010VR\u001a\u0010Y\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010%\"\u0004\b[\u0010'R\u000e\u0010\\\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010_\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010:\"\u0004\ba\u0010<R\u0014\u0010b\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\bc\u0010\bR\u0014\u0010d\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\be\u0010\bR\u001a\u0010f\u001a\u00020>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u0010@\"\u0004\bh\u0010BR\u001a\u0010i\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010:\"\u0004\bk\u0010<R\u0014\u0010l\u001a\u00020TX\u0086D¢\u0006\b\n\u0000\u001a\u0004\bm\u0010VR\u0014\u0010n\u001a\u000202X\u0086D¢\u0006\b\n\u0000\u001a\u0004\bo\u00104R\u001a\u0010p\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bq\u0010:\"\u0004\br\u0010<R\u0014\u0010s\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\bt\u0010\bR\u000e\u0010u\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010v\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010%\"\u0004\bx\u0010'R\u001a\u0010y\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bz\u00104\"\u0004\b{\u00106R\u001a\u0010|\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b}\u00104\"\u0004\b~\u00106R\u000e\u0010\u007f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010\u0080\u0001\u001a\u00020#X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0081\u0001\u0010%\"\u0005\b\u0082\u0001\u0010'R\u001d\u0010\u0083\u0001\u001a\u000202X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0084\u0001\u00104\"\u0005\b\u0085\u0001\u00106R\u001d\u0010\u0086\u0001\u001a\u000202X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0087\u0001\u00104\"\u0005\b\u0088\u0001\u00106R\u001d\u0010\u0089\u0001\u001a\u00020\u0018X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008a\u0001\u0010\u001a\"\u0005\b\u008b\u0001\u0010\u001cR\u001d\u0010\u008c\u0001\u001a\u000208X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008d\u0001\u0010:\"\u0005\b\u008e\u0001\u0010<R\u0016\u0010\u008f\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\b\u0090\u0001\u0010\bR\u001d\u0010\u0091\u0001\u001a\u00020>X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0092\u0001\u0010@\"\u0005\b\u0093\u0001\u0010BR\u001d\u0010\u0094\u0001\u001a\u000208X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0095\u0001\u0010:\"\u0005\b\u0096\u0001\u0010<R\u001d\u0010\u0097\u0001\u001a\u00020\u0018X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0098\u0001\u0010\u001a\"\u0005\b\u0099\u0001\u0010\u001cR\u001d\u0010\u009a\u0001\u001a\u000208X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009b\u0001\u0010:\"\u0005\b\u009c\u0001\u0010<R\u0016\u0010\u009d\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\b\u009e\u0001\u0010\bR\u001d\u0010\u009f\u0001\u001a\u00020>X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b \u0001\u0010@\"\u0005\b¡\u0001\u0010BR\u001d\u0010¢\u0001\u001a\u000208X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b£\u0001\u0010:\"\u0005\b¤\u0001\u0010<R\u001d\u0010¥\u0001\u001a\u000202X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b¦\u0001\u00104\"\u0005\b§\u0001\u00106R\u001d\u0010¨\u0001\u001a\u000202X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b©\u0001\u00104\"\u0005\bª\u0001\u00106R\u001d\u0010«\u0001\u001a\u00020\u0018X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b¬\u0001\u0010\u001a\"\u0005\b\u00ad\u0001\u0010\u001cR\u001d\u0010®\u0001\u001a\u000202X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b¯\u0001\u00104\"\u0005\b°\u0001\u00106R\u001d\u0010±\u0001\u001a\u00020>X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b²\u0001\u0010@\"\u0005\b³\u0001\u0010BR\u0016\u0010´\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bµ\u0001\u0010\bR\u0016\u0010¶\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\b·\u0001\u0010\bR\u0016\u0010¸\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\b¹\u0001\u0010\bR\u001d\u0010º\u0001\u001a\u000208X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b»\u0001\u0010:\"\u0005\b¼\u0001\u0010<R\u001d\u0010½\u0001\u001a\u000208X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b¾\u0001\u0010:\"\u0005\b¿\u0001\u0010<R\u0016\u0010À\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bÁ\u0001\u0010\bR\u001d\u0010Â\u0001\u001a\u00020>X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\bÃ\u0001\u0010@\"\u0005\bÄ\u0001\u0010BR\u001d\u0010Å\u0001\u001a\u000208X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\bÆ\u0001\u0010:\"\u0005\bÇ\u0001\u0010<R\u001e\u0010È\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0011\n\u0000\u001a\u0005\bÉ\u0001\u0010\b\"\u0006\bÊ\u0001\u0010Ë\u0001R\u001d\u0010Ì\u0001\u001a\u000202X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\bÍ\u0001\u00104\"\u0005\bÎ\u0001\u00106R\u0016\u0010Ï\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bÐ\u0001\u0010\bR\u000f\u0010Ñ\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000f\u0010Ò\u0001\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010Ó\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bÔ\u0001\u0010\bR\u0016\u0010Õ\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bÖ\u0001\u0010\bR\u0016\u0010×\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bØ\u0001\u0010\bR\u0016\u0010Ù\u0001\u001a\u00020\u0004X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bÚ\u0001\u0010\bR\u0016\u0010Û\u0001\u001a\u000202X\u0086D¢\u0006\t\n\u0000\u001a\u0005\bÜ\u0001\u00104¨\u0006ß\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Companion;", "", "()V", "BACKGROUND_COLOR_TYPE_CUSTOM_DARK", "", "BACKGROUND_COLOR_TYPE_CUSTOM_LIGHT", "BACKGROUND_COLOR_TYPE_ORIGIN", "getBACKGROUND_COLOR_TYPE_ORIGIN", "()I", "BACKGROUND_COLOR_TYPE_WHITE", "getBACKGROUND_COLOR_TYPE_WHITE", "DEFAULT_ALIGNMENT", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;", "getDEFAULT_ALIGNMENT", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;", "setDEFAULT_ALIGNMENT", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;)V", "DEFAULT_ANTI_ALIAS", "", "getDEFAULT_ANTI_ALIAS", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "DEFAULT_CHANGE_WRITING_MODE", "getDEFAULT_CHANGE_WRITING_MODE", "DEFAULT_CHARACTER_INDENT", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;", "getDEFAULT_CHARACTER_INDENT", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;", "setDEFAULT_CHARACTER_INDENT", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$CharacterIndent;)V", "DEFAULT_ENABLE_FONT_REPLACE_ALL", "getDEFAULT_ENABLE_FONT_REPLACE_ALL", "DEFAULT_ENABLE_HYPHEN", "getDEFAULT_ENABLE_HYPHEN", "DEFAULT_FONT_EMBOLDEN_LEVEL", "DEFAULT_FONT_SIZE", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", "getDEFAULT_FONT_SIZE", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", "setDEFAULT_FONT_SIZE", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V", "DEFAULT_FONT_SIZE_LIST", "", "getDEFAULT_FONT_SIZE_LIST", "()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", "setDEFAULT_FONT_SIZE_LIST", "([Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V", "[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", "DEFAULT_INCLUDE_FONT_PADDING", "getDEFAULT_INCLUDE_FONT_PADDING", "DEFAULT_LETTER_SPACING", "", "getDEFAULT_LETTER_SPACING", "()F", "setDEFAULT_LETTER_SPACING", "(F)V", "DEFAULT_LINE_SPACING", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "getDEFAULT_LINE_SPACING", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "setDEFAULT_LINE_SPACING", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V", "DEFAULT_PAGE_MARGIN", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;", "getDEFAULT_PAGE_MARGIN", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;", "setDEFAULT_PAGE_MARGIN", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V", "DEFAULT_PARAGRAPH_SPACING", "getDEFAULT_PARAGRAPH_SPACING", "setDEFAULT_PARAGRAPH_SPACING", "DEFAULT_TEXT_SPACING_TRIM", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;", "getDEFAULT_TEXT_SPACING_TRIM", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;", "setDEFAULT_TEXT_SPACING_TRIM", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;)V", "DEFAULT_WORD_SPACING", "getDEFAULT_WORD_SPACING", "setDEFAULT_WORD_SPACING", "FONT_EMBOLDEN_NORMAL", "getFONT_EMBOLDEN_NORMAL", "FONT_EMBOLDEN_STEP", "getFONT_EMBOLDEN_STEP", "FONT_FACE_LANG_CN", "", "getFONT_FACE_LANG_CN", "()Ljava/lang/String;", "FONT_FACE_LANG_EN", "getFONT_FACE_LANG_EN", "FONT_SIZE_STEP", "getFONT_SIZE_STEP", "setFONT_SIZE_STEP", "FOREGROUND_COLOR_TYPE_CUSTOM_DARK", "FOREGROUND_COLOR_TYPE_CUSTOM_LIGHT", "FOREGROUND_COLOR_TYPE_ORIGIN", "LARGE_LINE_SPACING", "getLARGE_LINE_SPACING", "setLARGE_LINE_SPACING", "LARGE_MARGIN_LEFT_RIGHT", "getLARGE_MARGIN_LEFT_RIGHT", "LARGE_MARGIN_TOP_BOTTOM", "getLARGE_MARGIN_TOP_BOTTOM", "LARGE_PAGE_MARGIN", "getLARGE_PAGE_MARGIN", "setLARGE_PAGE_MARGIN", "LARGE_PARAGRAPH_SPACING", "getLARGE_PARAGRAPH_SPACING", "setLARGE_PARAGRAPH_SPACING", "LAST_FONT_FACE", "getLAST_FONT_FACE", "LETTER_SPACING", "getLETTER_SPACING", "LINE_SPACING_STEP", "getLINE_SPACING_STEP", "setLINE_SPACING_STEP", "MARGIN_STEP", "getMARGIN_STEP", "MAX_FONT_EMBOLDEN_LEVEL", "MAX_FONT_SIZE", "getMAX_FONT_SIZE", "setMAX_FONT_SIZE", "MAX_LETTER_SPACING", "getMAX_LETTER_SPACING", "setMAX_LETTER_SPACING", "MAX_WORD_SPACING", "getMAX_WORD_SPACING", "setMAX_WORD_SPACING", "MIN_FONT_EMBOLDEN_LEVEL", "MIN_FONT_SIZE", "getMIN_FONT_SIZE", "setMIN_FONT_SIZE", "MIN_LETTER_SPACING", "getMIN_LETTER_SPACING", "setMIN_LETTER_SPACING", "MIN_WORD_SPACING", "getMIN_WORD_SPACING", "setMIN_WORD_SPACING", "NONE_CHARACTER_INDENT", "getNONE_CHARACTER_INDENT", "setNONE_CHARACTER_INDENT", "NORMAL_LINE_SPACING", "getNORMAL_LINE_SPACING", "setNORMAL_LINE_SPACING", "NORMAL_MARGIN", "getNORMAL_MARGIN", "NORMAL_PAGE_MARGIN", "getNORMAL_PAGE_MARGIN", "setNORMAL_PAGE_MARGIN", "NORMAL_PARAGRAPH_SPACING", "getNORMAL_PARAGRAPH_SPACING", "setNORMAL_PARAGRAPH_SPACING", "ORIGIN_CSS_CHARACTER_INDENT", "getORIGIN_CSS_CHARACTER_INDENT", "setORIGIN_CSS_CHARACTER_INDENT", "ORIGIN_CSS_LINE_SPACING", "getORIGIN_CSS_LINE_SPACING", "setORIGIN_CSS_LINE_SPACING", "ORIGIN_CSS_MARGIN", "getORIGIN_CSS_MARGIN", "ORIGIN_CSS_PAGE_MARGIN", "getORIGIN_CSS_PAGE_MARGIN", "setORIGIN_CSS_PAGE_MARGIN", "ORIGIN_CSS_PARAGRAPH_SPACING", "getORIGIN_CSS_PARAGRAPH_SPACING", "setORIGIN_CSS_PARAGRAPH_SPACING", "ORIGIN_CSS_WORD_SPACING", "getORIGIN_CSS_WORD_SPACING", "setORIGIN_CSS_WORD_SPACING", "ORIGIN_LETTER_SPACING", "getORIGIN_LETTER_SPACING", "setORIGIN_LETTER_SPACING", "ORIGIN_STYLE_CHARACTER_INDENT", "getORIGIN_STYLE_CHARACTER_INDENT", "setORIGIN_STYLE_CHARACTER_INDENT", "ORIGIN_WORD_SPACING", "getORIGIN_WORD_SPACING", "setORIGIN_WORD_SPACING", "PAGE_MARGIN_STEP", "getPAGE_MARGIN_STEP", "setPAGE_MARGIN_STEP", "PAGING_MODE_DEFAULT", "getPAGING_MODE_DEFAULT", "PAGING_MODE_SINGLE_COLUMN", "getPAGING_MODE_SINGLE_COLUMN", "PAGING_MODE_TWO_COLUMN", "getPAGING_MODE_TWO_COLUMN", "PARAGRAPH_SPACING_STEP", "getPARAGRAPH_SPACING_STEP", "setPARAGRAPH_SPACING_STEP", "SMALL_LINE_SPACING", "getSMALL_LINE_SPACING", "setSMALL_LINE_SPACING", "SMALL_MARGIN", "getSMALL_MARGIN", "SMALL_PAGE_MARGIN", "getSMALL_PAGE_MARGIN", "setSMALL_PAGE_MARGIN", "SMALL_PARAGRAPH_SPACING", "getSMALL_PARAGRAPH_SPACING", "setSMALL_PARAGRAPH_SPACING", "STEP_LETTER_SPACING", "getSTEP_LETTER_SPACING", "setSTEP_LETTER_SPACING", "(I)V", "STEP_WORD_SPACING", "getSTEP_WORD_SPACING", "setSTEP_WORD_SPACING", "TEXT_COLOR_TYPE_CUSTOM", "getTEXT_COLOR_TYPE_CUSTOM", "TEXT_COLOR_TYPE_CUSTOM_DARK", "TEXT_COLOR_TYPE_CUSTOM_LIGHT", "TEXT_COLOR_TYPE_RAW", "getTEXT_COLOR_TYPE_RAW", "TEXT_COLOR_TYPE_THRESH_BINARY", "getTEXT_COLOR_TYPE_THRESH_BINARY", "TEXT_COLOR_TYPE_THRESH_OCTAL", "getTEXT_COLOR_TYPE_THRESH_OCTAL", "TEXT_COLOR_TYPE_THRESH_QUATERNARY", "getTEXT_COLOR_TYPE_THRESH_QUATERNARY", "WORD_SPACING", "getWORD_SPACING", "defaultStyle", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ReaderTextStyle defaultStyle() {
            return new ReaderTextStyle();
        }

        public final int getBACKGROUND_COLOR_TYPE_ORIGIN() {
            return ReaderTextStyle.f44560j0;
        }

        public final int getBACKGROUND_COLOR_TYPE_WHITE() {
            return ReaderTextStyle.f44561k0;
        }

        @NotNull
        public final Alignment getDEFAULT_ALIGNMENT() {
            return ReaderTextStyle.f44562l0;
        }

        public final boolean getDEFAULT_ANTI_ALIAS() {
            return ReaderTextStyle.f44554d0;
        }

        public final boolean getDEFAULT_CHANGE_WRITING_MODE() {
            return ReaderTextStyle.f44552b0;
        }

        @NotNull
        public final CharacterIndent getDEFAULT_CHARACTER_INDENT() {
            return ReaderTextStyle.f44565o0;
        }

        public final boolean getDEFAULT_ENABLE_FONT_REPLACE_ALL() {
            return ReaderTextStyle.f44553c0;
        }

        public final boolean getDEFAULT_ENABLE_HYPHEN() {
            return ReaderTextStyle.f44550Z;
        }

        @NotNull
        public final SPUnit getDEFAULT_FONT_SIZE() {
            return ReaderTextStyle.f44538P;
        }

        @NotNull
        public final SPUnit[] getDEFAULT_FONT_SIZE_LIST() {
            return ReaderTextStyle.f44536O;
        }

        public final boolean getDEFAULT_INCLUDE_FONT_PADDING() {
            return ReaderTextStyle.f44551a0;
        }

        public final float getDEFAULT_LETTER_SPACING() {
            return ReaderTextStyle.f44514D;
        }

        @NotNull
        public final Percentage getDEFAULT_LINE_SPACING() {
            return ReaderTextStyle.f44573w0;
        }

        @NotNull
        public final PageMargin getDEFAULT_PAGE_MARGIN() {
            return ReaderTextStyle.f44541Q0;
        }

        @NotNull
        public final Percentage getDEFAULT_PARAGRAPH_SPACING() {
            return ReaderTextStyle.f44513C0;
        }

        @NotNull
        public final TextSpacingTrim getDEFAULT_TEXT_SPACING_TRIM() {
            return ReaderTextStyle.f44563m0;
        }

        public final float getDEFAULT_WORD_SPACING() {
            return ReaderTextStyle.f44524I;
        }

        public final float getFONT_EMBOLDEN_NORMAL() {
            return ReaderTextStyle.f44532M;
        }

        public final float getFONT_EMBOLDEN_STEP() {
            return ReaderTextStyle.f44534N;
        }

        @NotNull
        public final String getFONT_FACE_LANG_CN() {
            return ReaderTextStyle.f44548X;
        }

        @NotNull
        public final String getFONT_FACE_LANG_EN() {
            return ReaderTextStyle.f44549Y;
        }

        @NotNull
        public final SPUnit getFONT_SIZE_STEP() {
            return ReaderTextStyle.f44543S;
        }

        @NotNull
        public final Percentage getLARGE_LINE_SPACING() {
            return ReaderTextStyle.f44572v0;
        }

        public final int getLARGE_MARGIN_LEFT_RIGHT() {
            return ReaderTextStyle.f44525I0;
        }

        public final int getLARGE_MARGIN_TOP_BOTTOM() {
            return ReaderTextStyle.f44523H0;
        }

        @NotNull
        public final PageMargin getLARGE_PAGE_MARGIN() {
            return ReaderTextStyle.f44539P0;
        }

        @NotNull
        public final Percentage getLARGE_PARAGRAPH_SPACING() {
            return ReaderTextStyle.f44511B0;
        }

        @NotNull
        public final String getLAST_FONT_FACE() {
            return ReaderTextStyle.f44547W;
        }

        public final float getLETTER_SPACING() {
            return ReaderTextStyle.f44527J0;
        }

        @NotNull
        public final Percentage getLINE_SPACING_STEP() {
            return ReaderTextStyle.f44568r0;
        }

        public final int getMARGIN_STEP() {
            return ReaderTextStyle.f44515D0;
        }

        @NotNull
        public final SPUnit getMAX_FONT_SIZE() {
            return ReaderTextStyle.f44540Q;
        }

        public final float getMAX_LETTER_SPACING() {
            return ReaderTextStyle.f44512C;
        }

        public final float getMAX_WORD_SPACING() {
            return ReaderTextStyle.f44522H;
        }

        @NotNull
        public final SPUnit getMIN_FONT_SIZE() {
            return ReaderTextStyle.f44542R;
        }

        public final float getMIN_LETTER_SPACING() {
            return ReaderTextStyle.f44510B;
        }

        public final float getMIN_WORD_SPACING() {
            return ReaderTextStyle.f44520G;
        }

        @NotNull
        public final CharacterIndent getNONE_CHARACTER_INDENT() {
            return ReaderTextStyle.f44566p0;
        }

        @NotNull
        public final Percentage getNORMAL_LINE_SPACING() {
            return ReaderTextStyle.f44571u0;
        }

        public final int getNORMAL_MARGIN() {
            return ReaderTextStyle.f44521G0;
        }

        @NotNull
        public final PageMargin getNORMAL_PAGE_MARGIN() {
            return ReaderTextStyle.f44537O0;
        }

        @NotNull
        public final Percentage getNORMAL_PARAGRAPH_SPACING() {
            return ReaderTextStyle.f44509A0;
        }

        @NotNull
        public final CharacterIndent getORIGIN_CSS_CHARACTER_INDENT() {
            return ReaderTextStyle.f44564n0;
        }

        @NotNull
        public final Percentage getORIGIN_CSS_LINE_SPACING() {
            return ReaderTextStyle.f44569s0;
        }

        public final int getORIGIN_CSS_MARGIN() {
            return ReaderTextStyle.f44517E0;
        }

        @NotNull
        public final PageMargin getORIGIN_CSS_PAGE_MARGIN() {
            return ReaderTextStyle.f44533M0;
        }

        @NotNull
        public final Percentage getORIGIN_CSS_PARAGRAPH_SPACING() {
            return ReaderTextStyle.f44575y0;
        }

        public final float getORIGIN_CSS_WORD_SPACING() {
            return ReaderTextStyle.f44526J;
        }

        public final float getORIGIN_LETTER_SPACING() {
            return ReaderTextStyle.f44516E;
        }

        @NotNull
        public final CharacterIndent getORIGIN_STYLE_CHARACTER_INDENT() {
            return ReaderTextStyle.f44567q0;
        }

        public final float getORIGIN_WORD_SPACING() {
            return ReaderTextStyle.f44528K;
        }

        @NotNull
        public final PageMargin getPAGE_MARGIN_STEP() {
            return ReaderTextStyle.f44531L0;
        }

        public final int getPAGING_MODE_DEFAULT() {
            return ReaderTextStyle.f44546V;
        }

        public final int getPAGING_MODE_SINGLE_COLUMN() {
            return ReaderTextStyle.f44544T;
        }

        public final int getPAGING_MODE_TWO_COLUMN() {
            return ReaderTextStyle.f44545U;
        }

        @NotNull
        public final Percentage getPARAGRAPH_SPACING_STEP() {
            return ReaderTextStyle.f44574x0;
        }

        @NotNull
        public final Percentage getSMALL_LINE_SPACING() {
            return ReaderTextStyle.f44570t0;
        }

        public final int getSMALL_MARGIN() {
            return ReaderTextStyle.f44519F0;
        }

        @NotNull
        public final PageMargin getSMALL_PAGE_MARGIN() {
            return ReaderTextStyle.f44535N0;
        }

        @NotNull
        public final Percentage getSMALL_PARAGRAPH_SPACING() {
            return ReaderTextStyle.f44576z0;
        }

        public final int getSTEP_LETTER_SPACING() {
            return ReaderTextStyle.f44518F;
        }

        public final float getSTEP_WORD_SPACING() {
            return ReaderTextStyle.f44530L;
        }

        public final int getTEXT_COLOR_TYPE_CUSTOM() {
            return ReaderTextStyle.f44559i0;
        }

        public final int getTEXT_COLOR_TYPE_RAW() {
            return ReaderTextStyle.f44555e0;
        }

        public final int getTEXT_COLOR_TYPE_THRESH_BINARY() {
            return ReaderTextStyle.f44556f0;
        }

        public final int getTEXT_COLOR_TYPE_THRESH_OCTAL() {
            return ReaderTextStyle.f44558h0;
        }

        public final int getTEXT_COLOR_TYPE_THRESH_QUATERNARY() {
            return ReaderTextStyle.f44557g0;
        }

        public final float getWORD_SPACING() {
            return ReaderTextStyle.f44529K0;
        }

        public final void setDEFAULT_ALIGNMENT(@NotNull Alignment alignment) {
            Intrinsics.checkNotNullParameter(alignment, "<set-?>");
            ReaderTextStyle.f44562l0 = alignment;
        }

        public final void setDEFAULT_CHARACTER_INDENT(@NotNull CharacterIndent characterIndent) {
            Intrinsics.checkNotNullParameter(characterIndent, "<set-?>");
            ReaderTextStyle.f44565o0 = characterIndent;
        }

        public final void setDEFAULT_FONT_SIZE(@NotNull SPUnit sPUnit) {
            Intrinsics.checkNotNullParameter(sPUnit, "<set-?>");
            ReaderTextStyle.f44538P = sPUnit;
        }

        public final void setDEFAULT_FONT_SIZE_LIST(@NotNull SPUnit[] sPUnitArr) {
            Intrinsics.checkNotNullParameter(sPUnitArr, "<set-?>");
            ReaderTextStyle.f44536O = sPUnitArr;
        }

        public final void setDEFAULT_LETTER_SPACING(float f) {
            ReaderTextStyle.f44514D = f;
        }

        public final void setDEFAULT_LINE_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44573w0 = percentage;
        }

        public final void setDEFAULT_PAGE_MARGIN(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "<set-?>");
            ReaderTextStyle.f44541Q0 = pageMargin;
        }

        public final void setDEFAULT_PARAGRAPH_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44513C0 = percentage;
        }

        public final void setDEFAULT_TEXT_SPACING_TRIM(@NotNull TextSpacingTrim textSpacingTrim) {
            Intrinsics.checkNotNullParameter(textSpacingTrim, "<set-?>");
            ReaderTextStyle.f44563m0 = textSpacingTrim;
        }

        public final void setDEFAULT_WORD_SPACING(float f) {
            ReaderTextStyle.f44524I = f;
        }

        public final void setFONT_SIZE_STEP(@NotNull SPUnit sPUnit) {
            Intrinsics.checkNotNullParameter(sPUnit, "<set-?>");
            ReaderTextStyle.f44543S = sPUnit;
        }

        public final void setLARGE_LINE_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44572v0 = percentage;
        }

        public final void setLARGE_PAGE_MARGIN(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "<set-?>");
            ReaderTextStyle.f44539P0 = pageMargin;
        }

        public final void setLARGE_PARAGRAPH_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44511B0 = percentage;
        }

        public final void setLINE_SPACING_STEP(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44568r0 = percentage;
        }

        public final void setMAX_FONT_SIZE(@NotNull SPUnit sPUnit) {
            Intrinsics.checkNotNullParameter(sPUnit, "<set-?>");
            ReaderTextStyle.f44540Q = sPUnit;
        }

        public final void setMAX_LETTER_SPACING(float f) {
            ReaderTextStyle.f44512C = f;
        }

        public final void setMAX_WORD_SPACING(float f) {
            ReaderTextStyle.f44522H = f;
        }

        public final void setMIN_FONT_SIZE(@NotNull SPUnit sPUnit) {
            Intrinsics.checkNotNullParameter(sPUnit, "<set-?>");
            ReaderTextStyle.f44542R = sPUnit;
        }

        public final void setMIN_LETTER_SPACING(float f) {
            ReaderTextStyle.f44510B = f;
        }

        public final void setMIN_WORD_SPACING(float f) {
            ReaderTextStyle.f44520G = f;
        }

        public final void setNONE_CHARACTER_INDENT(@NotNull CharacterIndent characterIndent) {
            Intrinsics.checkNotNullParameter(characterIndent, "<set-?>");
            ReaderTextStyle.f44566p0 = characterIndent;
        }

        public final void setNORMAL_LINE_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44571u0 = percentage;
        }

        public final void setNORMAL_PAGE_MARGIN(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "<set-?>");
            ReaderTextStyle.f44537O0 = pageMargin;
        }

        public final void setNORMAL_PARAGRAPH_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44509A0 = percentage;
        }

        public final void setORIGIN_CSS_CHARACTER_INDENT(@NotNull CharacterIndent characterIndent) {
            Intrinsics.checkNotNullParameter(characterIndent, "<set-?>");
            ReaderTextStyle.f44564n0 = characterIndent;
        }

        public final void setORIGIN_CSS_LINE_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44569s0 = percentage;
        }

        public final void setORIGIN_CSS_PAGE_MARGIN(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "<set-?>");
            ReaderTextStyle.f44533M0 = pageMargin;
        }

        public final void setORIGIN_CSS_PARAGRAPH_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44575y0 = percentage;
        }

        public final void setORIGIN_CSS_WORD_SPACING(float f) {
            ReaderTextStyle.f44526J = f;
        }

        public final void setORIGIN_LETTER_SPACING(float f) {
            ReaderTextStyle.f44516E = f;
        }

        public final void setORIGIN_STYLE_CHARACTER_INDENT(@NotNull CharacterIndent characterIndent) {
            Intrinsics.checkNotNullParameter(characterIndent, "<set-?>");
            ReaderTextStyle.f44567q0 = characterIndent;
        }

        public final void setORIGIN_WORD_SPACING(float f) {
            ReaderTextStyle.f44528K = f;
        }

        public final void setPAGE_MARGIN_STEP(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "<set-?>");
            ReaderTextStyle.f44531L0 = pageMargin;
        }

        public final void setPARAGRAPH_SPACING_STEP(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44574x0 = percentage;
        }

        public final void setSMALL_LINE_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44570t0 = percentage;
        }

        public final void setSMALL_PAGE_MARGIN(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "<set-?>");
            ReaderTextStyle.f44535N0 = pageMargin;
        }

        public final void setSMALL_PARAGRAPH_SPACING(@NotNull Percentage percentage) {
            Intrinsics.checkNotNullParameter(percentage, "<set-?>");
            ReaderTextStyle.f44576z0 = percentage;
        }

        public final void setSTEP_LETTER_SPACING(int i) {
            ReaderTextStyle.f44518F = i;
        }

        public final void setSTEP_WORD_SPACING(float f) {
            ReaderTextStyle.f44530L = f;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\t\b\u0016¢\u0006\u0004\b\r\u0010\u000eB\u0011\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000bJ\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$DPUnit;", "", C4921e.f26528e, "", "equals", "", "a", "I", "getValue", "()I", "setValue", "(I)V", "value", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class DPUnit {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata */
        public int value;

        @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$DPUnit$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$DPUnit;", "value", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final DPUnit create(int value) {
                return new DPUnit(value);
            }

            public Companion() {
            }
        }

        public DPUnit() {
        }

        public boolean equals(@Nullable Object o) {
            return o != null && (o instanceof DPUnit) && this.value == ((DPUnit) o).value;
        }

        public final int getValue() {
            return this.value;
        }

        public final void setValue(int i) {
            this.value = i;
        }

        public DPUnit(int i) {
            this.value = i;
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b#\u0010$BA\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b#\u0010%J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0016R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0004\u0010\u0017R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u0006\u0010\u0017R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\b\u0010\u0017R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\n\u0010\u0017R\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\r\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;", "", "", "fontPath", "setFontPath", gon.f71258K, "setFontFamily", gon.f71256I, "setFontStyle", gon.f71259L, "setFontWeight", "", "fontIndex", "setFontIndex", "toString", C4921e.f26528e, "", "equals", "hashCode", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFontPath", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "b", "getFontFamily", "c", "getFontStyle", "d", "getFontWeight", "e", "I", "getFontIndex", "()I", "(I)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class FontEntry {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public String fontPath;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @Nullable
        public String fontFamily;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @Nullable
        public String fontStyle;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        @Nullable
        public String fontWeight;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        public int fontIndex;

        public FontEntry() {
        }

        public boolean equals(@Nullable Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || !Intrinsics.areEqual(FontEntry.class, o.getClass())) {
                return false;
            }
            FontEntry fontEntry = (FontEntry) o;
            return this.fontIndex == fontEntry.fontIndex && Intrinsics.areEqual(this.fontPath, fontEntry.fontPath) && Intrinsics.areEqual(this.fontFamily, fontEntry.fontFamily) && Intrinsics.areEqual(this.fontStyle, fontEntry.fontStyle) && Intrinsics.areEqual(this.fontWeight, fontEntry.fontWeight);
        }

        @Nullable
        public final String getFontFamily() {
            return this.fontFamily;
        }

        public final int getFontIndex() {
            return this.fontIndex;
        }

        @Nullable
        public final String getFontPath() {
            return this.fontPath;
        }

        @Nullable
        public final String getFontStyle() {
            return this.fontStyle;
        }

        @Nullable
        public final String getFontWeight() {
            return this.fontWeight;
        }

        public int hashCode() {
            return Objects.hash(this.fontPath, this.fontFamily, this.fontStyle, this.fontWeight, Integer.valueOf(this.fontIndex));
        }

        /* renamed from: setFontFamily, reason: collision with other method in class */
        public final void m72328setFontFamily(@Nullable String str) {
            this.fontFamily = str;
        }

        /* renamed from: setFontIndex, reason: collision with other method in class */
        public final void m72329setFontIndex(int i) {
            this.fontIndex = i;
        }

        /* renamed from: setFontPath, reason: collision with other method in class */
        public final void m72330setFontPath(@Nullable String str) {
            this.fontPath = str;
        }

        /* renamed from: setFontStyle, reason: collision with other method in class */
        public final void m72331setFontStyle(@Nullable String str) {
            this.fontStyle = str;
        }

        /* renamed from: setFontWeight, reason: collision with other method in class */
        public final void m72332setFontWeight(@Nullable String str) {
            this.fontWeight = str;
        }

        @NotNull
        public String toString() {
            return "FontEntry{fontPath='" + this.fontPath + "', fontFamily='" + this.fontFamily + "', fontStyle='" + this.fontStyle + "', fontWeight='" + this.fontWeight + "', fontIndex=" + this.fontIndex + '}';
        }

        public /* synthetic */ FontEntry(String str, String str2, String str3, String str4, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? 0 : i);
        }

        @NotNull
        public final FontEntry setFontFamily(@Nullable String fontFamily) {
            this.fontFamily = fontFamily;
            return this;
        }

        @NotNull
        public final FontEntry setFontIndex(int fontIndex) {
            this.fontIndex = fontIndex;
            return this;
        }

        @NotNull
        public final FontEntry setFontPath(@Nullable String fontPath) {
            this.fontPath = fontPath;
            return this;
        }

        @NotNull
        public final FontEntry setFontStyle(@Nullable String fontStyle) {
            this.fontStyle = fontStyle;
            return this;
        }

        @NotNull
        public final FontEntry setFontWeight(@Nullable String fontWeight) {
            this.fontWeight = fontWeight;
            return this;
        }

        public FontEntry(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i) {
            this.fontPath = str;
            this.fontFamily = str2;
            this.fontWeight = str3;
            this.fontStyle = str4;
            this.fontIndex = i;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;", "", "(Ljava/lang/String;I)V", "NORMAL", "NONE", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class FontVariantLigaturesState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FontVariantLigaturesState[] $VALUES;
        public static final FontVariantLigaturesState NORMAL = new FontVariantLigaturesState("NORMAL", 0);
        public static final FontVariantLigaturesState NONE = new FontVariantLigaturesState("NONE", 1);

        private static final /* synthetic */ FontVariantLigaturesState[] $values() {
            return new FontVariantLigaturesState[]{NORMAL, NONE};
        }

        static {
            FontVariantLigaturesState[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private FontVariantLigaturesState(String str, int i) {
        }

        @NotNull
        public static EnumEntries<FontVariantLigaturesState> getEntries() {
            return $ENTRIES;
        }

        public static FontVariantLigaturesState valueOf(String str) {
            return (FontVariantLigaturesState) Enum.valueOf(FontVariantLigaturesState.class, str);
        }

        public static FontVariantLigaturesState[] values() {
            return (FontVariantLigaturesState[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;", "", "(Ljava/lang/String;I)V", "AUTHOR", "AGENT", "USER", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Origin {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Origin[] $VALUES;
        public static final Origin AUTHOR = new Origin("AUTHOR", 0);
        public static final Origin AGENT = new Origin("AGENT", 1);
        public static final Origin USER = new Origin("USER", 2);

        private static final /* synthetic */ Origin[] $values() {
            return new Origin[]{AUTHOR, AGENT, USER};
        }

        static {
            Origin[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Origin(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Origin> getEntries() {
            return $ENTRIES;
        }

        public static Origin valueOf(String str) {
            return (Origin) Enum.valueOf(Origin.class, str);
        }

        public static Origin[] values() {
            return (Origin[]) $VALUES.clone();
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u0000 !2\u00020\u0001:\u0001!B\t\b\u0016¢\u0006\u0004\b\u001d\u0010\u001eB\u0013\b\u0016\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u001d\u0010\u000fB1\b\u0016\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u001d\u0010 J\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\u000e\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R$\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u000b\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR$\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000b\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR$\u0010\u001c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000b\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000f¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;", "", "pageMargin", "", "increasePageMargin", "decreasePageMargin", C4921e.f26528e, "", "equals", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "a", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "getTopMargin", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "setTopMargin", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V", "topMargin", "b", "getLeftMargin", "setLeftMargin", "leftMargin", "c", "getRightMargin", "setRightMargin", "rightMargin", "d", "getBottomMargin", "setBottomMargin", "bottomMargin", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "margin", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class PageMargin {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public Percentage topMargin;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Percentage leftMargin;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public Percentage rightMargin;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public Percentage bottomMargin;

        @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin$Companion;", "", "()V", "copy", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;", "pageMargin", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final PageMargin copy(@Nullable PageMargin pageMargin) {
                Percentage.Companion companion = Percentage.INSTANCE;
                Intrinsics.checkNotNull(pageMargin);
                Percentage leftMargin = pageMargin.getLeftMargin();
                Intrinsics.checkNotNull(leftMargin);
                Percentage create = companion.create(leftMargin.getPercent());
                Percentage bottomMargin = pageMargin.getBottomMargin();
                Intrinsics.checkNotNull(bottomMargin);
                Percentage create2 = companion.create(bottomMargin.getPercent());
                Percentage rightMargin = pageMargin.getRightMargin();
                Intrinsics.checkNotNull(rightMargin);
                Percentage create3 = companion.create(rightMargin.getPercent());
                Percentage topMargin = pageMargin.getTopMargin();
                Intrinsics.checkNotNull(topMargin);
                return new PageMargin(create, create2, create3, companion.create(topMargin.getPercent()));
            }

            public Companion() {
            }
        }

        public PageMargin() {
        }

        public final void decreasePageMargin(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "pageMargin");
            Percentage percentage = this.topMargin;
            Intrinsics.checkNotNull(percentage);
            Percentage percentage2 = this.topMargin;
            Intrinsics.checkNotNull(percentage2);
            int percent = percentage2.getPercent();
            Percentage percentage3 = pageMargin.topMargin;
            Intrinsics.checkNotNull(percentage3);
            percentage.setPercent(percent - percentage3.getPercent());
            Percentage percentage4 = this.leftMargin;
            Intrinsics.checkNotNull(percentage4);
            Percentage percentage5 = this.leftMargin;
            Intrinsics.checkNotNull(percentage5);
            int percent2 = percentage5.getPercent();
            Percentage percentage6 = pageMargin.leftMargin;
            Intrinsics.checkNotNull(percentage6);
            percentage4.setPercent(percent2 - percentage6.getPercent());
            Percentage percentage7 = this.rightMargin;
            Intrinsics.checkNotNull(percentage7);
            Percentage percentage8 = this.rightMargin;
            Intrinsics.checkNotNull(percentage8);
            int percent3 = percentage8.getPercent();
            Percentage percentage9 = pageMargin.rightMargin;
            Intrinsics.checkNotNull(percentage9);
            percentage7.setPercent(percent3 - percentage9.getPercent());
            Percentage percentage10 = this.bottomMargin;
            Intrinsics.checkNotNull(percentage10);
            Percentage percentage11 = this.bottomMargin;
            Intrinsics.checkNotNull(percentage11);
            int percent4 = percentage11.getPercent();
            Percentage percentage12 = pageMargin.bottomMargin;
            Intrinsics.checkNotNull(percentage12);
            percentage10.setPercent(percent4 - percentage12.getPercent());
        }

        public boolean equals(@Nullable Object o) {
            if (o == null || !(o instanceof PageMargin)) {
                return false;
            }
            PageMargin pageMargin = (PageMargin) o;
            return Intrinsics.areEqual(this.bottomMargin, pageMargin.bottomMargin) && Intrinsics.areEqual(this.leftMargin, pageMargin.leftMargin) && Intrinsics.areEqual(this.topMargin, pageMargin.topMargin) && Intrinsics.areEqual(this.rightMargin, pageMargin.rightMargin);
        }

        @Nullable
        public final Percentage getBottomMargin() {
            return this.bottomMargin;
        }

        @Nullable
        public final Percentage getLeftMargin() {
            return this.leftMargin;
        }

        @Nullable
        public final Percentage getRightMargin() {
            return this.rightMargin;
        }

        @Nullable
        public final Percentage getTopMargin() {
            return this.topMargin;
        }

        public final void increasePageMargin(@NotNull PageMargin pageMargin) {
            Intrinsics.checkNotNullParameter(pageMargin, "pageMargin");
            Percentage percentage = this.topMargin;
            Intrinsics.checkNotNull(percentage);
            Percentage percentage2 = this.topMargin;
            Intrinsics.checkNotNull(percentage2);
            int percent = percentage2.getPercent();
            Percentage percentage3 = pageMargin.topMargin;
            Intrinsics.checkNotNull(percentage3);
            percentage.setPercent(percent + percentage3.getPercent());
            Percentage percentage4 = this.leftMargin;
            Intrinsics.checkNotNull(percentage4);
            Percentage percentage5 = this.leftMargin;
            Intrinsics.checkNotNull(percentage5);
            int percent2 = percentage5.getPercent();
            Percentage percentage6 = pageMargin.leftMargin;
            Intrinsics.checkNotNull(percentage6);
            percentage4.setPercent(percent2 + percentage6.getPercent());
            Percentage percentage7 = this.rightMargin;
            Intrinsics.checkNotNull(percentage7);
            Percentage percentage8 = this.rightMargin;
            Intrinsics.checkNotNull(percentage8);
            int percent3 = percentage8.getPercent();
            Percentage percentage9 = pageMargin.rightMargin;
            Intrinsics.checkNotNull(percentage9);
            percentage7.setPercent(percent3 + percentage9.getPercent());
            Percentage percentage10 = this.bottomMargin;
            Intrinsics.checkNotNull(percentage10);
            Percentage percentage11 = this.bottomMargin;
            Intrinsics.checkNotNull(percentage11);
            int percent4 = percentage11.getPercent();
            Percentage percentage12 = pageMargin.bottomMargin;
            Intrinsics.checkNotNull(percentage12);
            percentage10.setPercent(percent4 + percentage12.getPercent());
        }

        public final void setBottomMargin(@Nullable Percentage percentage) {
            this.bottomMargin = percentage;
        }

        public final void setLeftMargin(@Nullable Percentage percentage) {
            this.leftMargin = percentage;
        }

        public final void setRightMargin(@Nullable Percentage percentage) {
            this.rightMargin = percentage;
        }

        public final void setTopMargin(@Nullable Percentage percentage) {
            this.topMargin = percentage;
        }

        public PageMargin(@Nullable Percentage percentage) {
            this(percentage == null ? null : Percentage.INSTANCE.create(percentage.getPercent()), percentage == null ? null : Percentage.INSTANCE.create(percentage.getPercent()), percentage == null ? null : Percentage.INSTANCE.create(percentage.getPercent()), percentage != null ? Percentage.INSTANCE.create(percentage.getPercent()) : null);
        }

        public PageMargin(@Nullable Percentage percentage, @Nullable Percentage percentage2, @Nullable Percentage percentage3, @Nullable Percentage percentage4) {
            this.bottomMargin = percentage2;
            this.leftMargin = percentage;
            this.rightMargin = percentage3;
            this.topMargin = percentage4;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\t\b\u0016¢\u0006\u0004\b\r\u0010\u000eB\u0011\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000bJ\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", "", C4921e.f26528e, "", "equals", "", "a", "I", "getPercent", "()I", "setPercent", "(I)V", Constants.ATTRNAME_PERCENT, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Percentage {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata */
        public int percent;

        @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;", Constants.ATTRNAME_PERCENT, "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Percentage create(int percent) {
                return new Percentage(percent);
            }

            public Companion() {
            }
        }

        public Percentage() {
        }

        public boolean equals(@Nullable Object o) {
            return o != null && (o instanceof Percentage) && this.percent == ((Percentage) o).percent;
        }

        public final int getPercent() {
            return this.percent;
        }

        public final void setPercent(int i) {
            this.percent = i;
        }

        public Percentage(int i) {
            this.percent = i;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\t\b\u0016¢\u0006\u0004\b\u0010\u0010\u0011B\u0011\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u000eJ\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", "", C4921e.f26528e, "", "equals", "step", "increaseSPUnit", "decreaseSPUnit", "", "a", "F", "getValue", "()F", "setValue", "(F)V", "value", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class SPUnit {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata */
        public float value;

        @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;", "value", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final SPUnit create(float value) {
                return new SPUnit(value);
            }

            public Companion() {
            }
        }

        public SPUnit() {
        }

        @NotNull
        public final SPUnit decreaseSPUnit(@NotNull SPUnit step) {
            Intrinsics.checkNotNullParameter(step, "step");
            this.value = Math.max(this.value - step.value, ReaderTextStyle.INSTANCE.getMIN_FONT_SIZE().value);
            return this;
        }

        public boolean equals(@Nullable Object o) {
            return o != null && (o instanceof SPUnit) && this.value == ((SPUnit) o).value;
        }

        public final float getValue() {
            return this.value;
        }

        @NotNull
        public final SPUnit increaseSPUnit(@NotNull SPUnit step) {
            Intrinsics.checkNotNullParameter(step, "step");
            this.value = Math.min(this.value + step.value, ReaderTextStyle.INSTANCE.getMAX_FONT_SIZE().value);
            return this;
        }

        public final void setValue(float f) {
            this.value = f;
        }

        public SPUnit(float f) {
            this.value = f;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;", "", "(Ljava/lang/String;I)V", "NORMAL", "SPACE_ALL", "SPACE_FIRST", "TRIM_START", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class TextSpacingTrim {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TextSpacingTrim[] $VALUES;

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE;
        public static final TextSpacingTrim NORMAL = new TextSpacingTrim("NORMAL", 0);
        public static final TextSpacingTrim SPACE_ALL = new TextSpacingTrim("SPACE_ALL", 1);
        public static final TextSpacingTrim SPACE_FIRST = new TextSpacingTrim("SPACE_FIRST", 2);
        public static final TextSpacingTrim TRIM_START = new TextSpacingTrim("TRIM_START", 3);

        @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;", "", "()V", "valueOf", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;", "value", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final TextSpacingTrim valueOf(int value) {
                for (TextSpacingTrim textSpacingTrim : TextSpacingTrim.values()) {
                    if (textSpacingTrim.ordinal() == value) {
                        return textSpacingTrim;
                    }
                }
                return TextSpacingTrim.NORMAL;
            }

            public Companion() {
            }
        }

        private static final /* synthetic */ TextSpacingTrim[] $values() {
            return new TextSpacingTrim[]{NORMAL, SPACE_ALL, SPACE_FIRST, TRIM_START};
        }

        static {
            TextSpacingTrim[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
            INSTANCE = new Companion(null);
        }

        private TextSpacingTrim(String str, int i) {
        }

        @NotNull
        public static EnumEntries<TextSpacingTrim> getEntries() {
            return $ENTRIES;
        }

        public static TextSpacingTrim valueOf(String str) {
            return (TextSpacingTrim) Enum.valueOf(TextSpacingTrim.class, str);
        }

        public static TextSpacingTrim[] values() {
            return (TextSpacingTrim[]) $VALUES.clone();
        }
    }

    static {
        SPUnit.Companion companion = SPUnit.INSTANCE;
        f44538P = companion.create(40.0f);
        f44540Q = companion.create(96.0f);
        f44542R = companion.create(10.0f);
        f44543S = companion.create(4.0f);
        f44545U = 1;
        f44546V = f44544T;
        f44547W = "last_font_face";
        f44548X = "font_face_lang_cn";
        f44549Y = "font_face_lang_en";
        f44550Z = true;
        f44554d0 = true;
        f44556f0 = 1;
        f44557g0 = 2;
        f44558h0 = 3;
        f44559i0 = 4;
        f44561k0 = 1;
        f44562l0 = Alignment.ALIGNMENT_JUSTIFY;
        f44563m0 = TextSpacingTrim.SPACE_ALL;
        CharacterIndent characterIndent = new CharacterIndent(-1);
        f44564n0 = characterIndent;
        f44565o0 = characterIndent;
        f44566p0 = new CharacterIndent(0);
        f44567q0 = new CharacterIndent(-1);
        f44568r0 = new Percentage(10);
        f44569s0 = new Percentage(90);
        f44570t0 = new Percentage(100);
        f44571u0 = new Percentage(150);
        f44572v0 = new Percentage(270);
        f44573w0 = f44569s0;
        f44574x0 = new Percentage(10);
        f44575y0 = new Percentage(-10);
        f44576z0 = new Percentage(0);
        f44509A0 = new Percentage(100);
        f44511B0 = new Percentage(200);
        f44513C0 = f44575y0;
        f44515D0 = 1;
        f44517E0 = -1;
        f44521G0 = 10;
        f44523H0 = 20;
        f44525I0 = 70;
        Percentage.Companion companion2 = Percentage.INSTANCE;
        f44531L0 = new PageMargin(companion2.create(1), companion2.create(1), companion2.create(1), companion2.create(1));
        f44533M0 = new PageMargin(companion2.create(-1), companion2.create(-1), companion2.create(-1), companion2.create(-1));
        int i = f44519F0;
        f44535N0 = new PageMargin(companion2.create(i), companion2.create(i), companion2.create(i), companion2.create(i));
        f44537O0 = new PageMargin(companion2.create(10), companion2.create(10), companion2.create(10), companion2.create(10));
        f44539P0 = new PageMargin(companion2.create(70), companion2.create(20), companion2.create(70), companion2.create(20));
        f44541Q0 = new PageMargin(companion2.create(10), companion2.create(10), companion2.create(10), companion2.create(10));
    }

    @Nullable
    public final ReaderTextStyle copy(@Nullable ReaderTextStyle style) {
        if (style == null) {
            return null;
        }
        ReaderTextStyle readerTextStyle = new ReaderTextStyle();
        readerTextStyle.fontMapping = new HashMap(style.fontMapping);
        readerTextStyle.styleFontMapping = new HashMap(style.styleFontMapping);
        readerTextStyle.tagFontMapping = new HashMap(style.tagFontMapping);
        readerTextStyle.externalFonts = new ArrayList(style.externalFonts);
        SPUnit.Companion companion = SPUnit.INSTANCE;
        SPUnit sPUnit = style.fontSize;
        Intrinsics.checkNotNull(sPUnit);
        readerTextStyle.fontSize = companion.create(sPUnit.getValue());
        readerTextStyle.alignment = style.alignment;
        readerTextStyle.textSpacingTrim = style.textSpacingTrim;
        CharacterIndent.Companion companion2 = CharacterIndent.INSTANCE;
        CharacterIndent characterIndent = style.indent;
        Intrinsics.checkNotNull(characterIndent);
        readerTextStyle.indent = companion2.create(characterIndent.getIndent());
        Percentage.Companion companion3 = Percentage.INSTANCE;
        Percentage percentage = style.lineSpacing;
        Intrinsics.checkNotNull(percentage);
        readerTextStyle.lineSpacing = companion3.create(percentage.getPercent());
        Percentage percentage2 = style.paragraphSpacing;
        Intrinsics.checkNotNull(percentage2);
        readerTextStyle.paragraphSpacing = companion3.create(percentage2.getPercent());
        readerTextStyle.pageMargin = PageMargin.INSTANCE.copy(style.pageMargin);
        readerTextStyle.fontVariantLigaturesState = this.fontVariantLigaturesState;
        readerTextStyle.pagingMode = style.pagingMode;
        readerTextStyle.setIncludeFontPadding(style.getIncludeFontPadding());
        readerTextStyle.setEnableHyphen(style.getEnableHyphen());
        readerTextStyle.setChangeWritingMode(style.getChangeWritingMode());
        readerTextStyle.setEnableFontReplaceAll(style.getEnableFontReplaceAll());
        readerTextStyle.letterSpacing = style.letterSpacing;
        readerTextStyle.wordSpacing = style.wordSpacing;
        readerTextStyle.textColor = style.textColor;
        readerTextStyle.textColorType = style.textColorType;
        readerTextStyle.backgroundColor = style.backgroundColor;
        readerTextStyle.backgroundColorType = style.backgroundColorType;
        readerTextStyle.foregroundColor = style.foregroundColor;
        readerTextStyle.foregroundColorType = style.foregroundColorType;
        readerTextStyle.antiAlias = style.antiAlias;
        readerTextStyle.setFontEmboldenLevel(style.getFontEmboldenLevel());
        return readerTextStyle;
    }

    @Nullable
    public final ReaderTextStyle create(@Nullable Map<String, String> fontMapping, @Nullable SPUnit fontSize, @Nullable Percentage lineSpacing, @Nullable Percentage paragraphSpacing, @Nullable CharacterIndent indent, @Nullable Percentage leftMargin, @Nullable Percentage topMargin, @Nullable Percentage rightMargin, @Nullable Percentage bottomMargin, int pagingMode) {
        ReaderTextStyle readerTextStyle = new ReaderTextStyle();
        readerTextStyle.fontSize = fontSize;
        readerTextStyle.lineSpacing = lineSpacing;
        readerTextStyle.paragraphSpacing = paragraphSpacing;
        readerTextStyle.indent = indent;
        PageMargin pageMargin = readerTextStyle.pageMargin;
        Intrinsics.checkNotNull(pageMargin);
        pageMargin.setLeftMargin(leftMargin);
        PageMargin pageMargin2 = readerTextStyle.pageMargin;
        Intrinsics.checkNotNull(pageMargin2);
        pageMargin2.setTopMargin(topMargin);
        PageMargin pageMargin3 = readerTextStyle.pageMargin;
        Intrinsics.checkNotNull(pageMargin3);
        pageMargin3.setRightMargin(rightMargin);
        PageMargin pageMargin4 = readerTextStyle.pageMargin;
        Intrinsics.checkNotNull(pageMargin4);
        pageMargin4.setBottomMargin(bottomMargin);
        readerTextStyle.pagingMode = pagingMode;
        return readerTextStyle;
    }

    public final void decreaseFontSize() {
        int length = f44536O.length - 1;
        while (length > 0) {
            SPUnit sPUnit = f44536O[length];
            Intrinsics.checkNotNull(sPUnit);
            float value = sPUnit.getValue();
            SPUnit sPUnit2 = this.fontSize;
            Intrinsics.checkNotNull(sPUnit2);
            if (value < sPUnit2.getValue()) {
                break;
            } else {
                length--;
            }
        }
        this.fontSize = f44536O[length];
    }

    public final void decreaseFontSizeByStep() {
        SPUnit sPUnit = this.fontSize;
        Intrinsics.checkNotNull(sPUnit);
        this.fontSize = new SPUnit(MathUtils.INSTANCE.clampFloat(sPUnit.getValue() - f44543S.getValue(), f44542R.getValue(), f44540Q.getValue()));
    }

    public boolean equals(@Nullable Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !Intrinsics.areEqual(ReaderTextStyle.class, o.getClass())) {
            return false;
        }
        ReaderTextStyle readerTextStyle = (ReaderTextStyle) o;
        if (this.includeFontPadding != readerTextStyle.includeFontPadding || this.pagingMode != readerTextStyle.pagingMode || this.enableHyphen != readerTextStyle.enableHyphen || this.changeWritingMode != readerTextStyle.changeWritingMode || this.enableFontReplaceAll != readerTextStyle.getEnableFontReplaceAll()) {
            return false;
        }
        if (!(this.letterSpacing == readerTextStyle.letterSpacing)) {
            return false;
        }
        if (!(this.wordSpacing == readerTextStyle.wordSpacing) || !Intrinsics.areEqual(this.fontMapping, readerTextStyle.fontMapping) || !Intrinsics.areEqual(this.styleFontMapping, readerTextStyle.styleFontMapping) || !Intrinsics.areEqual(this.tagFontMapping, readerTextStyle.tagFontMapping) || !Intrinsics.areEqual(this.externalFonts, readerTextStyle.externalFonts)) {
            return false;
        }
        SPUnit sPUnit = this.fontSize;
        if ((sPUnit == null ? readerTextStyle.fontSize != null : !Intrinsics.areEqual(sPUnit, readerTextStyle.fontSize)) || this.alignment != readerTextStyle.alignment || this.textSpacingTrim != readerTextStyle.textSpacingTrim) {
            return false;
        }
        CharacterIndent characterIndent = this.indent;
        if (characterIndent == null ? readerTextStyle.indent != null : !Intrinsics.areEqual(characterIndent, readerTextStyle.indent)) {
            return false;
        }
        Percentage percentage = this.lineSpacing;
        if (percentage == null ? readerTextStyle.lineSpacing != null : !Intrinsics.areEqual(percentage, readerTextStyle.lineSpacing)) {
            return false;
        }
        Percentage percentage2 = this.paragraphSpacing;
        if ((percentage2 == null ? readerTextStyle.paragraphSpacing != null : !Intrinsics.areEqual(percentage2, readerTextStyle.paragraphSpacing)) || this.fontVariantLigaturesState != readerTextStyle.fontVariantLigaturesState || this.textColor != readerTextStyle.textColor || this.textColorType != readerTextStyle.textColorType || this.backgroundColor != readerTextStyle.backgroundColor || this.backgroundColorType != readerTextStyle.backgroundColorType || this.foregroundColor != readerTextStyle.foregroundColor || this.foregroundColorType != readerTextStyle.foregroundColorType) {
            return false;
        }
        PageMargin pageMargin = this.pageMargin;
        return pageMargin != null ? Intrinsics.areEqual(pageMargin, readerTextStyle.pageMargin) : readerTextStyle.pageMargin == null;
    }

    @Nullable
    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    public final int getBackgroundColorType() {
        return this.backgroundColorType;
    }

    @Nullable
    public final List<String> getExternalFonts() {
        return this.externalFonts;
    }

    public final float getFontEmbolden() {
        return getFontEmbolden(getFontEmboldenLevel());
    }

    public final int getFontEmboldenLevel() {
        return this.fontEmboldenLevel;
    }

    @Deprecated(message = "")
    @Nullable
    public final String getFontFace() {
        return this.fontMapping.get(f44547W);
    }

    @Nullable
    public final Map<String, String> getFontMapping() {
        return this.fontMapping;
    }

    @Nullable
    public final SPUnit getFontSize() {
        return this.fontSize;
    }

    @Nullable
    public final SPUnit getFontSizeByIndex(int index) {
        SPUnit[] sPUnitArr = f44536O;
        return sPUnitArr.length > index ? sPUnitArr[index] : f44538P;
    }

    @NotNull
    public final FontVariantLigaturesState getFontVariantLigaturesState() {
        return this.fontVariantLigaturesState;
    }

    public final int getForegroundColor() {
        return this.foregroundColor;
    }

    public final int getForegroundColorType() {
        return this.foregroundColorType;
    }

    @Nullable
    public final CharacterIndent getIndent() {
        return this.indent;
    }

    public final float getLetterSpacing() {
        return this.letterSpacing;
    }

    @Nullable
    public final Percentage getLineSpacing() {
        return this.lineSpacing;
    }

    @Nullable
    public final Percentage getLineSpacingByIndex(int index) {
        int percent = (index * f44568r0.getPercent()) + f44570t0.getPercent();
        return percent < f44570t0.getPercent() ? f44570t0 : percent > f44572v0.getPercent() ? f44572v0 : new Percentage(percent);
    }

    @Nullable
    public final PageMargin getPageMargin() {
        return this.pageMargin;
    }

    @Nullable
    public final PageMargin getPageMarginByIndex(int index) {
        if (index < f44519F0) {
            return f44535N0;
        }
        if (index > f44523H0) {
            return f44539P0;
        }
        Percentage.Companion companion = Percentage.INSTANCE;
        return new PageMargin(companion.create(index), companion.create(index), companion.create(index), companion.create(index));
    }

    public final int getPagingMode() {
        return this.pagingMode;
    }

    @Nullable
    public final Percentage getParagraphSpacing() {
        return this.paragraphSpacing;
    }

    @Nullable
    public final Percentage getParagraphSpacingByIndex(int index) {
        int percent = index * f44574x0.getPercent();
        return percent < f44576z0.getPercent() ? f44576z0 : percent > f44511B0.getPercent() ? f44511B0 : new Percentage(percent);
    }

    @Nullable
    public final Map<FontSpec, FontEntry> getStyleFontMapping() {
        return this.styleFontMapping;
    }

    @Nullable
    public final Map<String, FontEntry> getTagFontMapping() {
        return this.tagFontMapping;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final int getTextColorType() {
        return this.textColorType;
    }

    @Nullable
    public final TextSpacingTrim getTextSpacingTrim() {
        return this.textSpacingTrim;
    }

    public final float getWordSpacing() {
        return this.wordSpacing;
    }

    public int hashCode() {
        int hashCode = (this.fontMapping.hashCode() + (this.styleFontMapping.hashCode() * 31) + (this.tagFontMapping.hashCode() * 31) + (this.externalFonts.hashCode() * 31)) * 31;
        SPUnit sPUnit = this.fontSize;
        int i = 0;
        int hashCode2 = (hashCode + ((sPUnit == null || sPUnit == null) ? 0 : sPUnit.hashCode())) * 31;
        Alignment alignment = this.alignment;
        int hashCode3 = (hashCode2 + ((alignment == null || alignment == null) ? 0 : alignment.hashCode())) * 31;
        TextSpacingTrim textSpacingTrim = this.textSpacingTrim;
        int hashCode4 = (hashCode3 + ((textSpacingTrim == null || textSpacingTrim == null) ? 0 : textSpacingTrim.hashCode())) * 31;
        CharacterIndent characterIndent = this.indent;
        int hashCode5 = (hashCode4 + ((characterIndent == null || characterIndent == null) ? 0 : characterIndent.hashCode())) * 31;
        Percentage percentage = this.lineSpacing;
        int hashCode6 = (hashCode5 + ((percentage == null || percentage == null) ? 0 : percentage.hashCode())) * 31;
        Percentage percentage2 = this.paragraphSpacing;
        int hashCode7 = (hashCode6 + ((percentage2 == null || percentage2 == null) ? 0 : percentage2.hashCode())) * 31;
        PageMargin pageMargin = this.pageMargin;
        if (pageMargin != null && pageMargin != null) {
            i = pageMargin.hashCode();
        }
        int hashCode8 = (((((((((((((((((((((((((hashCode7 + i) * 31) + this.fontVariantLigaturesState.hashCode()) * 31) + this.textColor) * 31) + this.textColorType) * 31) + this.backgroundColor) * 31) + this.backgroundColorType) * 31) + this.foregroundColor) * 31) + this.foregroundColorType) * 31) + this.pagingMode) * 31) + (this.includeFontPadding ? 1 : 0)) * 31) + (this.enableHyphen ? 1 : 0)) * 31) + (this.changeWritingMode ? 1 : 0)) * 31) + (this.enableFontReplaceAll ? 1 : 0)) * 31;
        float f = 100;
        return ((hashCode8 + ((int) (this.letterSpacing * f))) * 31) + ((int) (this.wordSpacing * f));
    }

    public final void increaseFontSize() {
        int i = 0;
        while (true) {
            SPUnit[] sPUnitArr = f44536O;
            if (i >= sPUnitArr.length - 1) {
                break;
            }
            SPUnit sPUnit = sPUnitArr[i];
            Intrinsics.checkNotNull(sPUnit);
            float value = sPUnit.getValue();
            SPUnit sPUnit2 = this.fontSize;
            Intrinsics.checkNotNull(sPUnit2);
            if (value > sPUnit2.getValue()) {
                break;
            } else {
                i++;
            }
        }
        this.fontSize = f44536O[i];
    }

    public final void increaseFontSizeByStep() {
        SPUnit sPUnit = this.fontSize;
        Intrinsics.checkNotNull(sPUnit);
        this.fontSize = new SPUnit(MathUtils.INSTANCE.clampFloat(sPUnit.getValue() + f44543S.getValue(), f44542R.getValue(), f44540Q.getValue()));
    }

    /* renamed from: isAntiAlias, reason: from getter */
    public final boolean getAntiAlias() {
        return this.antiAlias;
    }

    /* renamed from: isChangeWritingMode, reason: from getter */
    public final boolean getChangeWritingMode() {
        return this.changeWritingMode;
    }

    /* renamed from: isEnableFontReplaceAll, reason: from getter */
    public final boolean getEnableFontReplaceAll() {
        return this.enableFontReplaceAll;
    }

    /* renamed from: isEnableHyphen, reason: from getter */
    public final boolean getEnableHyphen() {
        return this.enableHyphen;
    }

    /* renamed from: isIncludeFontPadding, reason: from getter */
    public final boolean getIncludeFontPadding() {
        return this.includeFontPadding;
    }

    public final boolean isOriginCssBottomMargin() {
        PageMargin pageMargin = getPageMargin();
        Intrinsics.checkNotNull(pageMargin);
        Intrinsics.checkNotNull(pageMargin.getBottomMargin());
        return isOriginCssBottomMargin(r0.getPercent());
    }

    public final boolean isOriginCssIndent() {
        CharacterIndent indent = getIndent();
        Intrinsics.checkNotNull(indent);
        return isOriginCssIndent(indent.getIndent());
    }

    public final boolean isOriginCssLeftMargin() {
        PageMargin pageMargin = getPageMargin();
        Intrinsics.checkNotNull(pageMargin);
        Percentage leftMargin = pageMargin.getLeftMargin();
        Intrinsics.checkNotNull(leftMargin);
        int percent = leftMargin.getPercent();
        Percentage leftMargin2 = f44533M0.getLeftMargin();
        Intrinsics.checkNotNull(leftMargin2);
        return percent <= leftMargin2.getPercent();
    }

    public final boolean isOriginCssLetterSpacing() {
        return getLetterSpacing() == f44516E;
    }

    public final boolean isOriginCssLineSpacing() {
        Percentage lineSpacing = getLineSpacing();
        Intrinsics.checkNotNull(lineSpacing);
        return isOriginCssLineSpacing(lineSpacing.getPercent());
    }

    public final boolean isOriginCssParagraphSpacing() {
        Percentage paragraphSpacing = getParagraphSpacing();
        Intrinsics.checkNotNull(paragraphSpacing);
        return isOriginCssParagraphSpacing(paragraphSpacing.getPercent());
    }

    public final boolean isOriginCssRightMargin() {
        PageMargin pageMargin = getPageMargin();
        Intrinsics.checkNotNull(pageMargin);
        Percentage rightMargin = pageMargin.getRightMargin();
        Intrinsics.checkNotNull(rightMargin);
        int percent = rightMargin.getPercent();
        Percentage rightMargin2 = f44533M0.getRightMargin();
        Intrinsics.checkNotNull(rightMargin2);
        return percent <= rightMargin2.getPercent();
    }

    public final boolean isOriginCssTopMargin() {
        PageMargin pageMargin = getPageMargin();
        Intrinsics.checkNotNull(pageMargin);
        Intrinsics.checkNotNull(pageMargin.getTopMargin());
        return isOriginCssTopMargin(r0.getPercent());
    }

    public final boolean isOriginCssWordSpacing() {
        return getWordSpacing() == f44516E;
    }

    public final float limitFontSize(float newSize) {
        float value = f44542R.getValue();
        float value2 = f44540Q.getValue();
        return newSize < value ? value : newSize > value2 ? value2 : newSize;
    }

    public final void resetOriginCssStyle() {
        setFontSize(f44538P);
        setAlignment(f44562l0);
        setWordSpacing(f44528K);
        setLetterSpacing(f44516E);
        setLineSpacing(f44569s0);
        setParagraphSpacing(f44575y0);
        setTextSpacingTrim(TextSpacingTrim.SPACE_ALL);
        setPageMargin(f44533M0);
        setIndent(f44567q0);
        setFontEmboldenLevel(0);
        setIncludeFontPadding(f44551a0);
        setChangeWritingMode(f44552b0);
        setEnableFontReplaceAll(f44553c0);
    }

    public final void setAlignment(@Nullable Alignment alignment) {
        this.alignment = alignment;
    }

    @Nullable
    public final ReaderTextStyle setAntiAlias(boolean antiAlias) {
        this.antiAlias = antiAlias;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setBackgroundColor(int backgroundColor) {
        this.backgroundColor = backgroundColor;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setBackgroundColorType(int backgroundColorType) {
        this.backgroundColorType = backgroundColorType;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setChangeWritingMode(boolean changeWritingMode) {
        this.changeWritingMode = changeWritingMode;
        return this;
    }

    public final void setDefaultFontSizes(@Nullable Float[] fontSizes) {
        if (fontSizes == null || fontSizes.length <= 0) {
            return;
        }
        f44536O = new SPUnit[fontSizes.length];
        int length = fontSizes.length;
        for (int i = 0; i < length; i++) {
            f44536O[i] = SPUnit.INSTANCE.create(fontSizes[i].floatValue());
        }
    }

    public final void setEnableFontReplaceAll(boolean enableFontReplaceAll) {
        this.enableFontReplaceAll = enableFontReplaceAll;
    }

    @Nullable
    public final ReaderTextStyle setEnableHyphen(boolean enableHyphen) {
        this.enableHyphen = enableHyphen;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setExternalFonts(@Nullable List<String> externalFonts) {
        this.externalFonts.clear();
        CollectionKt.safeAddAll(this.externalFonts, externalFonts);
        return this;
    }

    @Nullable
    public final ReaderTextStyle setFontEmboldenLevel(int fontEmboldenLevel) {
        this.fontEmboldenLevel = fontEmboldenLevel;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setFontMapping(@NotNull Map<String, String> fontMapping) {
        Intrinsics.checkNotNullParameter(fontMapping, "fontMapping");
        this.fontMapping = fontMapping;
        return this;
    }

    public final void setFontSize(@Nullable SPUnit fontSize) {
        this.fontSize = fontSize;
    }

    public final void setFontVariantLigaturesState(@NotNull FontVariantLigaturesState fontVariantLigaturesState) {
        Intrinsics.checkNotNullParameter(fontVariantLigaturesState, "fontVariantLigaturesState");
        this.fontVariantLigaturesState = fontVariantLigaturesState;
    }

    @Nullable
    public final ReaderTextStyle setForegroundColor(int foregroundColor) {
        this.foregroundColor = foregroundColor;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setForegroundColorType(int foregroundColorType) {
        this.foregroundColorType = foregroundColorType;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setIncludeFontPadding(boolean includeFontPadding) {
        this.includeFontPadding = includeFontPadding;
        return this;
    }

    public final void setIndent(@Nullable CharacterIndent indent) {
        this.indent = indent;
    }

    public final void setLetterSpacing(float letterSpacing) {
        this.letterSpacing = letterSpacing;
    }

    public final void setLineSpacing(@Nullable Percentage lineSpacing) {
        this.lineSpacing = lineSpacing;
    }

    public final void setPageMargin(@Nullable PageMargin pageMargin) {
        this.pageMargin = pageMargin;
    }

    public final void setPagingMode(int pagingMode) {
        this.pagingMode = pagingMode;
    }

    public final void setParagraphSpacing(@Nullable Percentage paragraphSpacing) {
        this.paragraphSpacing = paragraphSpacing;
    }

    @Nullable
    public final ReaderTextStyle setStyleFontMapping(@NotNull Map<FontSpec, FontEntry> fontMapping) {
        Intrinsics.checkNotNullParameter(fontMapping, "fontMapping");
        this.styleFontMapping = fontMapping;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setTagFontMapping(@NotNull Map<String, FontEntry> fontMapping) {
        Intrinsics.checkNotNullParameter(fontMapping, "fontMapping");
        this.tagFontMapping = fontMapping;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setTextColor(int textColor) {
        this.textColor = textColor;
        return this;
    }

    @Nullable
    public final ReaderTextStyle setTextColorType(int textColorType) {
        this.textColorType = textColorType;
        return this;
    }

    public final void setTextSpacingTrim(@Nullable TextSpacingTrim textSpacingTrim) {
        this.textSpacingTrim = textSpacingTrim;
    }

    public final void setWordSpacing(float wordSpacing) {
        this.wordSpacing = wordSpacing;
    }

    public final float getFontEmbolden(@IntRange(from = 0, m281to = 30) int fontEmboldenLevel) {
        return Math.max(0.0f, (fontEmboldenLevel * f44534N) + f44532M);
    }

    public final boolean isOriginCssBottomMargin(float bottom) {
        Percentage bottomMargin = f44533M0.getBottomMargin();
        Intrinsics.checkNotNull(bottomMargin);
        return bottom <= ((float) bottomMargin.getPercent());
    }

    public final boolean isOriginCssIndent(int indent) {
        return indent <= f44567q0.getIndent();
    }

    public final boolean isOriginCssLineSpacing(int percent) {
        return percent <= f44569s0.getPercent();
    }

    public final boolean isOriginCssParagraphSpacing(int percent) {
        return percent <= f44575y0.getPercent();
    }

    public final boolean isOriginCssTopMargin(float top) {
        Percentage topMargin = f44533M0.getTopMargin();
        Intrinsics.checkNotNull(topMargin);
        return top <= ((float) topMargin.getPercent());
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B-\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u0017¢\u0006\u0004\b\u001f\u0010 B%\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001f\u0010!B\u0011\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\u001f\u0010\rJ\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFamily", "()Ljava/lang/String;", "setFamily", "(Ljava/lang/String;)V", "family", "b", "getFontWeight", "setFontWeight", gon.f71259L, "c", "getFontStyle", "setFontStyle", gon.f71256I, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;", "d", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;", "getOrigin", "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;", "setOrigin", "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V", "origin", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class FontSpec {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public String family;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public String fontWeight;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public String fontStyle;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public Origin origin;

        public FontSpec(@NotNull String family, @Nullable String str, @Nullable String str2, @NotNull Origin origin) {
            Intrinsics.checkNotNullParameter(family, "family");
            Intrinsics.checkNotNullParameter(origin, "origin");
            this.family = "";
            this.fontWeight = "";
            this.fontStyle = "";
            this.origin = Origin.USER;
            this.family = family;
            this.fontWeight = str == null || str.length() == 0 ? "" : str;
            this.fontStyle = str2 == null || str2.length() == 0 ? "" : str2;
            this.origin = origin;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(FontSpec.class, other != null ? other.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.onyx.android.sdk.reader.api.ReaderTextStyle.FontSpec");
            FontSpec fontSpec = (FontSpec) other;
            return Intrinsics.areEqual(this.family, fontSpec.family) && Intrinsics.areEqual(this.fontWeight, fontSpec.fontWeight) && Intrinsics.areEqual(this.fontStyle, fontSpec.fontStyle) && this.origin == fontSpec.origin;
        }

        @NotNull
        public final String getFamily() {
            return this.family;
        }

        @NotNull
        public final String getFontStyle() {
            return this.fontStyle;
        }

        @NotNull
        public final String getFontWeight() {
            return this.fontWeight;
        }

        @NotNull
        public final Origin getOrigin() {
            return this.origin;
        }

        public int hashCode() {
            return (((((this.family.hashCode() * 31) + this.fontWeight.hashCode()) * 31) + this.fontStyle.hashCode()) * 31) + this.origin.hashCode();
        }

        public final void setFamily(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.family = str;
        }

        public final void setFontStyle(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.fontStyle = str;
        }

        public final void setFontWeight(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.fontWeight = str;
        }

        public final void setOrigin(@NotNull Origin origin) {
            Intrinsics.checkNotNullParameter(origin, "<set-?>");
            this.origin = origin;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public FontSpec(@NotNull String family, @Nullable String str, @Nullable String str2) {
            this(family, str, str2, Origin.USER);
            Intrinsics.checkNotNullParameter(family, "family");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public FontSpec(@NotNull String family) {
            this(family, "", "", Origin.USER);
            Intrinsics.checkNotNullParameter(family, "family");
        }
    }

    public final boolean equals(@Nullable ReaderTextStyle style1, @NotNull ReaderTextStyle style2) {
        Intrinsics.checkNotNullParameter(style2, "style2");
        return style1 != null && Intrinsics.areEqual(style1, style2);
    }
}

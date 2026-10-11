package com.onyx.android.sdk.reader.plugins.chm;

import android.graphics.Bitmap;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.api.ConvertArgs;
import com.onyx.android.sdk.reader.api.PaginationChapterInfo;
import com.onyx.android.sdk.reader.api.ReaderChineseConvertType;
import com.onyx.android.sdk.reader.api.ReaderDocumentConverter;
import com.onyx.android.sdk.reader.api.ReaderDocumentOptions;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDrmCertificateFactory;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderHitTestArgs;
import com.onyx.android.sdk.reader.api.ReaderImage;
import com.onyx.android.sdk.reader.api.ReaderPageProgressionDirection;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSearchOptions;
import com.onyx.android.sdk.reader.api.ReaderSelectTextArgs;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderSentence;
import com.onyx.android.sdk.reader.api.ReaderTextSplitter;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.android.sdk.reader.cbox.CBoxDocument;
import com.onyx.android.sdk.reader.cbox.page.CBoxDataOnScreen;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.engine.sdk.DisplayMetrics;
import com.onyx.engine.sdk.FontSpec;
import com.onyx.engine.sdk.HandleErrorCode;
import com.onyx.engine.sdk.NeoChmNative;
import com.onyx.engine.sdk.OpenOptions;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import org.apache.commons.math3.linear.SymmLQ;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ú\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\n\b\u0002\u0010 \u0001\u001a\u00030\u009e\u0001¢\u0006\u0006\b¡\u0001\u0010¢\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014J\u0016\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00182\u0006\u0010\u0017\u001a\u00020\u0004J\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0016\u0010\u001e\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cJ\u0010\u0010 \u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020\u0004J\b\u0010!\u001a\u0004\u0018\u00010\u0004J\u0006\u0010#\u001a\u00020\"J\u0006\u0010$\u001a\u00020\"J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\"J\u000e\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020'J\u000e\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*J\u0018\u00101\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-2\b\u00100\u001a\u0004\u0018\u00010/J\u000e\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u001aJ\f\u00106\u001a\b\u0012\u0004\u0012\u00020504J\b\u00107\u001a\u0004\u0018\u00010\u0004J\u0018\u0010;\u001a\u0004\u0018\u00010\u00042\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u000208J\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00040\u0018J\u0010\u0010>\u001a\u0004\u0018\u00010=2\u0006\u00109\u001a\u000208J\b\u0010?\u001a\u0004\u0018\u00010=J\f\u0010A\u001a\b\u0012\u0004\u0012\u00020@0\u0018J\u0010\u0010C\u001a\u0004\u0018\u00010@2\u0006\u0010B\u001a\u00020@J\f\u0010E\u001a\b\u0012\u0004\u0012\u00020D0\u0018J\u0016\u0010H\u001a\u00020\u00142\u0006\u0010F\u001a\u0002082\u0006\u0010G\u001a\u00020-J\u0018\u0010I\u001a\u0004\u0018\u00010D2\u0006\u0010F\u001a\u0002082\u0006\u0010G\u001a\u00020-J\u0010\u0010K\u001a\u0004\u0018\u00010\u001a2\u0006\u0010J\u001a\u00020DJ\u0006\u0010L\u001a\u00020-J\u0006\u0010M\u001a\u00020-J\u0006\u0010N\u001a\u00020-J\u0006\u0010O\u001a\u000208J\u0006\u0010P\u001a\u000208J\u0006\u0010Q\u001a\u00020-J\u0006\u0010R\u001a\u00020\u0014J\u0006\u0010S\u001a\u00020\u0014J\u0006\u0010T\u001a\u00020\u0014J\u0006\u0010U\u001a\u00020\u0014J\u000e\u0010V\u001a\u00020\u00142\u0006\u0010F\u001a\u000208J\u000e\u0010W\u001a\u00020\u00142\u0006\u0010F\u001a\u000208J\u000e\u0010Y\u001a\u00020\u00142\u0006\u0010X\u001a\u00020-J\u000e\u0010Z\u001a\u0002082\u0006\u0010X\u001a\u00020-J\u000e\u0010[\u001a\u00020-2\u0006\u0010F\u001a\u000208J\u000e\u0010\\\u001a\u0002082\u0006\u0010F\u001a\u00020\u0004J\u0010\u0010_\u001a\u00020\u00022\b\u0010^\u001a\u0004\u0018\u00010]J\u0010\u0010`\u001a\u00020\u00142\b\u0010^\u001a\u0004\u0018\u00010]J\u001c\u0010d\u001a\u00020\u00142\u0006\u0010b\u001a\u00020a2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020@04J\u001c\u0010h\u001a\u0004\u0018\u00010@2\b\u0010f\u001a\u0004\u0018\u00010e2\b\u0010g\u001a\u0004\u0018\u00010eJ\u001c\u0010l\u001a\u0004\u0018\u00010@2\b\u0010i\u001a\u0004\u0018\u00010e2\b\u0010k\u001a\u0004\u0018\u00010jJ\u0018\u0010h\u001a\u0004\u0018\u00010@2\u0006\u0010m\u001a\u0002082\u0006\u0010n\u001a\u000208J\u0012\u0010h\u001a\u0004\u0018\u00010@2\b\u0010p\u001a\u0004\u0018\u00010oJ\u0018\u0010r\u001a\u0004\u0018\u00010@2\u0006\u0010m\u001a\u0002082\u0006\u0010q\u001a\u00020-J\b\u0010s\u001a\u0004\u0018\u00010@J\b\u0010t\u001a\u0004\u0018\u00010@J\u0010\u0010u\u001a\u0004\u0018\u00010@2\u0006\u00109\u001a\u000208J\u0010\u0010v\u001a\u0004\u0018\u00010@2\u0006\u00109\u001a\u000208J\u0006\u0010w\u001a\u00020\u0014J\u0010\u0010x\u001a\u0004\u0018\u00010\u00042\u0006\u0010F\u001a\u000208J\f\u0010y\u001a\b\u0012\u0004\u0012\u00020\u00040\u0018J\u0010\u0010z\u001a\u0004\u0018\u00010\u00042\u0006\u0010F\u001a\u000208J\u0010\u0010{\u001a\u0004\u0018\u00010\u00042\u0006\u0010F\u001a\u000208J\u000e\u0010|\u001a\u0002082\u0006\u0010F\u001a\u000208J\u000e\u0010~\u001a\u0002082\u0006\u0010}\u001a\u00020\u0004J\u0012\u0010\u0081\u0001\u001a\u00020\u00142\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007fJ\u0012\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f2\u0007\u0010\u0080\u0001\u001a\u00020\u007fJ\u0007\u0010\u0083\u0001\u001a\u00020\u0014J\u0007\u0010\u0084\u0001\u001a\u00020\u0014J\u0007\u0010\u0085\u0001\u001a\u00020*J\u0007\u0010\u0086\u0001\u001a\u00020\u0014J\u0007\u0010\u0087\u0001\u001a\u00020\u0002J\u000f\u0010\u0088\u0001\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014J\u0007\u0010\u0089\u0001\u001a\u00020\u0014J\u0007\u0010\u008a\u0001\u001a\u00020\u0014J\u0007\u0010\u008b\u0001\u001a\u00020\u0002J\u0010\u0010\u008d\u0001\u001a\u00020\u00022\u0007\u0010\u008c\u0001\u001a\u00020\u0004J\b\u0010\u008f\u0001\u001a\u00030\u008e\u0001J\u0007\u0010\u0090\u0001\u001a\u00020\u0014J\u0007\u0010\u0091\u0001\u001a\u00020*J\u0007\u0010\u0092\u0001\u001a\u00020-J\u0007\u0010\u0093\u0001\u001a\u00020-J\u0011\u0010\u0094\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010@\u0018\u00010\u0018J\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0095\u00010\u00180\u0018J\u001c\u0010\u009a\u0001\u001a\u00020-2\u0007\u0010p\u001a\u00030\u0097\u00012\n\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u0001J\u0007\u0010\u009b\u0001\u001a\u00020\u0002J\u0007\u0010\u009c\u0001\u001a\u00020\u0002J\u0007\u0010\u009d\u0001\u001a\u00020\u0002R\u0017\u0010 \u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0005\u0010\u009f\u0001¨\u0006£\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderWrapper;", "", "", "b", "", "a", "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "", "openDocument", "Lcom/onyx/android/sdk/base/data/Size;", "size", "setViewSize", "Lcom/onyx/engine/sdk/DisplayMetrics;", "displayMetrics", "setupDisplayMetrics", "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;", "factory", "activateDeviceDRM", "", "abort", "setAborted", "dirPath", "", "saveLogFiles", "Landroid/graphics/Bitmap;", "readCover", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "updateDocumentOptions", "tag", "metadataString", "readDocumentLanguage", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "getStyle", "getOriginCssStyle", "style", "setStyle", "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "convertType", "setChineseConvertType", "", "gamma", "setTextGamma", "", SymmLQ.f108603e, "", "colorTable", "setFontEnhancement", "bitmap", "draw", "", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;", "getFontFamilyList", "getScreenText", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "startPosition", "endPosition", "getText", "getPageParagraphList", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "getSentence", "getLastSentence", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getPageLinks", "link", "getLinkTargetSelection", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "getPageImages", "position", "column", "isImagePage", "getImagePage", "readerImage", "getBitmap", "getTotalPage", "getScreenStartPage", "getScreenEndPage", "getScreenStartPosition", "getScreenEndPosition", "getSize", "isFirstPage", "isLastPage", "nextScreen", "preScreen", "gotoPosition", "hitPageCache", "page", "gotoPage", "getPositionOfPageNumber", "getPageNumberOfPosition", "positionByPositionString", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "updateTocPageNumber", "readTableOfContent", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "options", "list", "search", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", "startArgs", "endArgs", "selectTextOnScreen", gon.f71290o0, "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;", "splitter", "selectWordOnScreen", "startPos", "endPos", "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "args", "textNum", "selectSelection", "firstText", "lastText", "lastSelectionEndOfLine", "lastTextEndOfLine", "hasText", "getXPathByPosition", "chapterList", "getChapterId", "getChapterName", "getChapterStartPosition", "chapterID", "getInitPaginationPosition", "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", PrivilegedApp.f6532i, "hasPaginationNext", "paginationNext", "isAllPaginationComplete", "isCurrentChapterPaginationComplete", "getPaginationProgress", "onPaginationStart", "onPaginationFinally", "setAbortPagination", "isAbortPagination", "isNeedClearPaginationCache", "clearPaginationCache", "chapterId", "updateReaderPageInfo", "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;", "getReaderPageProgressDirection", "supportCssOriginStyle", "getTotalReadingProgress", "getPageNumberInCurrentChapter", "getTotalPageCountInCurrentChapter", "allText", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;", "getAllPieceOfText", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;", "callback", "convertToPDF", "closeDocument", "closePagination", "destroy", "Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;", "Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;", "cboxDocument", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoChmReaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoChmReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,435:1\n731#2,9:436\n1549#2:447\n1620#2,3:448\n37#3,2:445\n*S KotlinDebug\n*F\n+ 1 NeoChmReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderWrapper\n*L\n87#1:436,9\n148#1:447\n148#1:448,3\n87#1:445,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NeoChmReaderWrapper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CBoxDocument cboxDocument;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HandleErrorCode.values().length];
            try {
                iArr[HandleErrorCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NeoChmReaderWrapper() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: a */
    public final String m34720a() {
        String str = "path = " + this.cboxDocument.getBookPath() + "\n";
        Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
        return str;
    }

    public final void activateDeviceDRM(@NotNull ReaderDrmCertificateFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
    }

    @Nullable
    public final List<ReaderSelection> allText() {
        return this.cboxDocument.allText();
    }

    /* renamed from: b */
    public final void m34721b() {
        List emptyList;
        List listOf;
        if (Debug.INSTANCE.getDebug()) {
            List<String> split = new Regex("\n").split(m34720a(), 0);
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
                Debug.INSTANCE.m32035d(NeoChmReaderWrapper.class, (String) it2.next(), new Object[0]);
            }
        }
    }

    @NotNull
    public final List<String> chapterList() {
        return this.cboxDocument.chapterList();
    }

    public final void clearPaginationCache() {
        this.cboxDocument.clearPaginationCache();
    }

    public final void closeDocument() {
        this.cboxDocument.close();
    }

    public final void closePagination() {
        this.cboxDocument.setAbortPagination(true);
    }

    public final int convertToPDF(@NotNull ConvertArgs args, @Nullable ReaderDocumentConverter.Callback callback) {
        Intrinsics.checkNotNullParameter(args, "args");
        return ReaderDocumentConverter.INSTANCE.convertToPDF(this.cboxDocument.getNeoNative(), args, callback);
    }

    public final void destroy() {
        this.cboxDocument.destroy();
    }

    public final void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.cboxDocument.draw(bitmap);
        m34721b();
    }

    @Nullable
    public final ReaderSelection firstText() {
        return this.cboxDocument.firstText();
    }

    @NotNull
    public final List<List<CBoxDataOnScreen.PieceOfText>> getAllPieceOfText() {
        return this.cboxDocument.getAllPieceOfText();
    }

    @Nullable
    public final Bitmap getBitmap(@NotNull ReaderImage readerImage) {
        Intrinsics.checkNotNullParameter(readerImage, "readerImage");
        return this.cboxDocument.getBitmap(readerImage);
    }

    @Nullable
    public final String getChapterId(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getChapterId(position);
    }

    @Nullable
    public final String getChapterName(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getChapterName(position);
    }

    @NotNull
    public final ReaderPosition getChapterStartPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getChapterStartPosition(position);
    }

    @NotNull
    public final List<ReaderTextStyle.FontSpec> getFontFamilyList() {
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        List<FontSpec> fontFamilyList = this.cboxDocument.getFontFamilyList();
        if (fontFamilyList != null) {
            List<FontSpec> list = fontFamilyList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Boolean.valueOf(arrayList.add(CBoxUtils.INSTANCE.convert((FontSpec) it2.next()))));
            }
        }
        return arrayList;
    }

    @Nullable
    public final ReaderImage getImagePage(@NotNull ReaderPosition position, int column) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getImagePage(position, column);
    }

    @NotNull
    public final ReaderPosition getInitPaginationPosition(@NotNull String chapterID) {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        return this.cboxDocument.getInitPaginationPosition(chapterID);
    }

    @Nullable
    public final ReaderSentence getLastSentence() {
        return this.cboxDocument.getLastSentence();
    }

    @Nullable
    public final ReaderSelection getLinkTargetSelection(@NotNull ReaderSelection link) {
        Intrinsics.checkNotNullParameter(link, "link");
        return this.cboxDocument.getLinkTargetSelection(link);
    }

    @NotNull
    public final ReaderTextStyle getOriginCssStyle() {
        return this.cboxDocument.getOriginCssStyle();
    }

    @NotNull
    public final List<ReaderImage> getPageImages() {
        return this.cboxDocument.getPageImages();
    }

    @NotNull
    public final List<ReaderSelection> getPageLinks() {
        return this.cboxDocument.getPageLinks();
    }

    public final int getPageNumberInCurrentChapter() {
        return this.cboxDocument.getPageNumberInCurrentChapter();
    }

    public final int getPageNumberOfPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getPageNumberOfPosition(position);
    }

    @NotNull
    public final List<String> getPageParagraphList() {
        return this.cboxDocument.getPageParagraphList();
    }

    public final float getPaginationProgress() {
        return this.cboxDocument.getPaginationProgress();
    }

    @NotNull
    public final ReaderPosition getPositionOfPageNumber(int page) {
        return this.cboxDocument.getPositionByPageNumber(page);
    }

    @NotNull
    public final ReaderPageProgressionDirection getReaderPageProgressDirection() {
        return this.cboxDocument.getReaderPageProgressDirection();
    }

    public final int getScreenEndPage() {
        return this.cboxDocument.getScreenEndPage();
    }

    @NotNull
    public final ReaderPosition getScreenEndPosition() {
        return this.cboxDocument.getScreenEndPosition();
    }

    public final int getScreenStartPage() {
        return this.cboxDocument.getScreenStartPage();
    }

    @NotNull
    public final ReaderPosition getScreenStartPosition() {
        return this.cboxDocument.getScreenStartPosition();
    }

    @Nullable
    public final String getScreenText() {
        return this.cboxDocument.getScreenText();
    }

    @Nullable
    public final ReaderSentence getSentence(@NotNull ReaderPosition startPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        return this.cboxDocument.getSentence(startPosition);
    }

    public final int getSize() {
        return this.cboxDocument.getBookSize();
    }

    @NotNull
    public final ReaderTextStyle getStyle() {
        return this.cboxDocument.getReaderTextStyle();
    }

    @Nullable
    public final String getText(@NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        return this.cboxDocument.getText(startPosition, endPosition);
    }

    public final int getTotalPage() {
        return this.cboxDocument.getTotalPage();
    }

    public final int getTotalPageCountInCurrentChapter() {
        return this.cboxDocument.getTotalPageCountInCurrentChapter();
    }

    public final float getTotalReadingProgress() {
        return this.cboxDocument.getTotalReadingProgress();
    }

    @Nullable
    public final String getXPathByPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getXPathByPosition(position);
    }

    public final boolean gotoPage(int page) throws ReaderException {
        return this.cboxDocument.gotoPage(page);
    }

    public final boolean gotoPosition(@NotNull ReaderPosition position) throws ReaderException {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.gotoPosition(position);
    }

    public final boolean hasPaginationNext(@Nullable PaginationChapterInfo info) {
        return this.cboxDocument.hasPaginationNext(info);
    }

    public final boolean hasText() {
        return this.cboxDocument.hasText();
    }

    public final boolean hitPageCache(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.hitPageCache(position);
    }

    public final boolean isAbortPagination() {
        return this.cboxDocument.isAbortPagination();
    }

    public final boolean isAllPaginationComplete() {
        return this.cboxDocument.isAllPaginationComplete();
    }

    public final boolean isCurrentChapterPaginationComplete() {
        return this.cboxDocument.isCurrentChapterPaginationComplete();
    }

    public final boolean isFirstPage() {
        return this.cboxDocument.isFirstPage();
    }

    public final boolean isImagePage(@NotNull ReaderPosition position, int column) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.isImagePage(position, column);
    }

    public final boolean isLastPage() {
        return this.cboxDocument.isLastPage();
    }

    public final boolean isNeedClearPaginationCache() {
        return this.cboxDocument.isNeedClearPaginationCache();
    }

    @Nullable
    public final ReaderSelection lastSelectionEndOfLine(@NotNull ReaderPosition startPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        return this.cboxDocument.lastSelectionEndOfLine(startPosition);
    }

    @Nullable
    public final ReaderSelection lastText() {
        return this.cboxDocument.lastText();
    }

    @Nullable
    public final ReaderSelection lastTextEndOfLine(@NotNull ReaderPosition startPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        return this.cboxDocument.lastTextEndOfLine(startPosition);
    }

    @Nullable
    public final String metadataString(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return this.cboxDocument.metadataString(tag);
    }

    public final boolean nextScreen() throws ReaderException {
        return this.cboxDocument.nextScreen();
    }

    public final void onPaginationFinally() {
        this.cboxDocument.onPaginationFinally();
    }

    public final boolean onPaginationStart() {
        return this.cboxDocument.onPaginationStart();
    }

    public final long openDocument(@NotNull String path, @NotNull ReaderDocumentOptions documentOptions) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        OpenOptions openOptions = new OpenOptions(path);
        openOptions.setPassword(documentOptions.getDocumentPassword());
        HandleErrorCode err = this.cboxDocument.open(openOptions).getErr();
        return (err == null ? -1 : WhenMappings.$EnumSwitchMapping$0[err.ordinal()]) == 1 ? CBoxDocument.INSTANCE.getNO_ERROR() : CBoxDocument.INSTANCE.getERROR_UNKNOWN();
    }

    @Nullable
    public final PaginationChapterInfo paginationNext(@NotNull PaginationChapterInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return this.cboxDocument.paginationNext(info);
    }

    @NotNull
    public final ReaderPosition positionByPositionString(@NotNull String position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getPositionFromString(position);
    }

    public final boolean preScreen() throws ReaderException {
        return this.cboxDocument.preScreen();
    }

    @Nullable
    public final Bitmap readCover() {
        return this.cboxDocument.readCover();
    }

    @Nullable
    public final String readDocumentLanguage() {
        return this.cboxDocument.readLanguage();
    }

    public final boolean readTableOfContent(@Nullable ReaderDocumentTableOfContent toc) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(toc);
        return cBoxDocument.readTableOfContent(toc);
    }

    @Nullable
    public final List<String> saveLogFiles(@NotNull String dirPath) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        List<String> saveLogFiles = this.cboxDocument.saveLogFiles(dirPath);
        String m34720a = m34720a();
        File file = new File(dirPath, NeoChmReaderWrapper.class.getName() + NameUtil.USCORE + DateTimeUtil.INSTANCE.getCurrentTime24Format() + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION);
        FileUtils.INSTANCE.saveContentToFile(m34720a, file);
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        saveLogFiles.add(absolutePath);
        return saveLogFiles;
    }

    public final boolean search(@NotNull ReaderSearchOptions options, @NotNull List<ReaderSelection> list) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(list, "list");
        return this.cboxDocument.search(options, list);
    }

    @Nullable
    public final ReaderSelection selectSelection(@NotNull ReaderPosition startPos, int textNum) {
        Intrinsics.checkNotNullParameter(startPos, "startPos");
        return this.cboxDocument.selectSelection(startPos, textNum);
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@Nullable ReaderHitTestArgs startArgs, @Nullable ReaderHitTestArgs endArgs) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(startArgs);
        Intrinsics.checkNotNull(endArgs);
        return cBoxDocument.selectTextOnScreen(startArgs, endArgs);
    }

    @Nullable
    public final ReaderSelection selectWordOnScreen(@Nullable ReaderHitTestArgs start, @Nullable ReaderTextSplitter splitter) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(start);
        Intrinsics.checkNotNull(splitter);
        return cBoxDocument.selectWordOnScreen(start, splitter);
    }

    public final void setAbortPagination(boolean abort) {
        this.cboxDocument.setAbortPagination(abort);
    }

    public final void setAborted(boolean abort) {
        this.cboxDocument.setAborted(abort);
    }

    public final void setChineseConvertType(@NotNull ReaderChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        this.cboxDocument.setChineseConvertType(convertType);
    }

    public final void setFontEnhancement(int threshold, @Nullable int[] colorTable) {
        this.cboxDocument.setFontEnhancement(threshold, colorTable);
    }

    public final void setStyle(@NotNull ReaderTextStyle style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.cboxDocument.setStyle(style);
    }

    public final void setTextGamma(float gamma) {
        this.cboxDocument.setTextGamma(gamma);
    }

    public final void setViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.cboxDocument.setViewSize(size.getWidth(), size.getHeight());
    }

    public final void setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        this.cboxDocument.setupDisplayMetrics(displayMetrics);
    }

    public final boolean supportCssOriginStyle() {
        return this.cboxDocument.supportCssOriginStyle();
    }

    public final void updateDocumentOptions(@NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) {
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
    }

    public final void updateReaderPageInfo(@NotNull String chapterId) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        this.cboxDocument.updateReaderPageInfo(chapterId);
    }

    public final void updateTocPageNumber(@Nullable ReaderDocumentTableOfContent toc) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(toc);
        cBoxDocument.updateTocPageNumber(toc);
    }

    public NeoChmReaderWrapper(@NotNull CBoxDocument cboxDocument) {
        Intrinsics.checkNotNullParameter(cboxDocument, "cboxDocument");
        this.cboxDocument = cboxDocument;
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@NotNull ReaderPosition startPos, @NotNull ReaderPosition endPos) {
        Intrinsics.checkNotNullParameter(startPos, "startPos");
        Intrinsics.checkNotNullParameter(endPos, "endPos");
        return this.cboxDocument.selectTextOnScreen(startPos, endPos);
    }

    public /* synthetic */ NeoChmReaderWrapper(CBoxDocument cBoxDocument, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new CBoxDocument(new NeoChmNative()) : cBoxDocument);
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@Nullable ReaderSelectTextArgs args) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(args);
        return cBoxDocument.selectTextOnScreen(args);
    }
}

package com.onyx.android.sdk.filepicker;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.IdRes;
import com.blankj.utilcode.util.ToastUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.filepicker.PickerManager;
import com.onyx.android.sdk.filepicker.sort.SortType;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010%\n\u0002\b%\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fJ\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000fj\b\u0012\u0004\u0012\u00020\f`\u0010J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u000fj\b\u0012\u0004\u0012\u00020\u0014`\u0010J\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u000fj\b\u0012\u0004\u0012\u00020\u001c`\u0010J\u0013\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\"\u001a\u00020\u00042\b\b\u0001\u0010!\u001a\u00020\u0002J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\u0004J\u000e\u0010'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0006\u0010)\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0002J\u0006\u0010,\u001a\u00020\u0002J6\u00101\u001a\u00020\u00042.\u00100\u001a*\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f0\u000fj\b\u0012\u0004\u0012\u00020\f`\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0.\u0012\u0004\u0012\u00020\u00040-J0\u00102\u001a,\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f0\u000fj\b\u0012\u0004\u0012\u00020\f`\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0.\u0012\u0004\u0012\u00020\u0004\u0018\u00010-J\u000e\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u000203J\b\u00106\u001a\u0004\u0018\u000103J\u0016\u0010:\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u001c2\u0006\u00109\u001a\u000208J\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u0002080;J\u000e\u0010=\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010?\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u0007J\u000e\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020@J\b\u0010C\u001a\u0004\u0018\u00010@J\u0016\u0010G\u001a\b\u0012\u0004\u0012\u00020\f0F2\b\u0010E\u001a\u0004\u0018\u00010DR\u0016\u0010J\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR$\u0010O\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000fj\b\u0012\u0004\u0012\u00020\f`\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\"\u0010U\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010I\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR$\u0010Z\u001a\u0012\u0012\u0004\u0012\u00020\u00140Vj\b\u0012\u0004\u0012\u00020\u0014`W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010IR\u0016\u0010^\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010*\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010IR@\u00100\u001a,\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f0\u000fj\b\u0012\u0004\u0012\u00020\f`\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0.\u0012\u0004\u0012\u00020\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010d\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR \u0010h\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u0002080e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010gR\"\u0010n\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010]\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\"\u0010r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010I\u001a\u0004\bp\u0010R\"\u0004\bq\u0010TR\"\u0010v\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bs\u0010]\u001a\u0004\bt\u0010k\"\u0004\bu\u0010mR\"\u0010?\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bw\u0010]\u001a\u0004\bx\u0010k\"\u0004\by\u0010mR\"\u0010{\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010]\u001a\u0004\b{\u0010k\"\u0004\b|\u0010mR\"\u0010~\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b}\u0010]\u001a\u0004\b~\u0010k\"\u0004\b\u007f\u0010mR&\u0010\u0083\u0001\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0080\u0001\u0010]\u001a\u0005\b\u0081\u0001\u0010k\"\u0005\b\u0082\u0001\u0010mR\u001a\u0010A\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0013\u0010\u0087\u0001\u001a\u00020\u00028F¢\u0006\u0007\u001a\u0005\b\u0086\u0001\u0010R¨\u0006\u008a\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/PickerManager;", "", "", "count", "", "setMaxCount", "getMaxCount", "", "isMultipleTypeSelect", "selectCount", "isSelectedValid", "getMultiEnable", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "documentBean", "selectChange", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getSelectFile", "enable", "setMultiEnable", "Lcom/onyx/android/sdk/filepicker/DocumentType;", "documentType", "addFileTypes", "ofDoc", "onlyPdf", "onlyNote", "ofFont", "getDocTypes", "", "getSupportExtensions", "", "getDocumentSupportList", "()[Ljava/lang/String;", "theme", "setActivityTheme", Constants.RESET, "clearSelect", "Lcom/onyx/android/sdk/filepicker/sort/SortType;", "sortType", "setSortType", "getSortType", "release", "requestCode", "setRequestCode", "getRequestCode", "Lkotlin/Function2;", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "callback", "setResultCallback", "getResultCallback", "Ljava/io/File;", "file", "setPickerFilesDir", "getPickerFile", "documentTypeTitle", "", "filterSize", "filterDocBySize", "", "getDocFilterSizeMap", "setKeepSeenOnEnable", "hide", "hideStatusBar", "Lcom/onyx/android/sdk/filepicker/FilePickerArgs;", "filePickerArgs", "addFilePickerArgs", "getFilePickerArgs", "Landroid/content/Intent;", "data", "", "obtainResult", "a", "I", "maxCount", "b", "Lcom/onyx/android/sdk/filepicker/sort/SortType;", "c", "Ljava/util/ArrayList;", "selectedFiles", "d", "getOrientation", "()I", "setOrientation", "(I)V", "orientation", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "e", "Ljava/util/LinkedHashSet;", "docTypes", C6997f.f39671c, C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "multiEnable", C6999h.f39688c, "i", "Lkotlin/jvm/functions/Function2;", "j", "Ljava/io/File;", "pickerFile", "", C4921e.f26537n, "Ljava/util/Map;", "docFilterSizeMap", "l", "getResultWithFinish", Constants.BOOLEAN_VALUE_SIG, "setResultWithFinish", "(Z)V", "resultWithFinish", "m", "getTitle", "setTitle", "title", GoogleApiAvailabilityLight.f29016b, "getScreenOnEnable", "setScreenOnEnable", "screenOnEnable", C4921e.f26528e, "getHideStatusBar", "setHideStatusBar", "p", "isTabLayoutHidden", "setTabLayoutHidden", "q", "isFileSystemHidden", "setFileSystemHidden", "r", "getEnableFilterDocType", "setEnableFilterDocType", "enableFilterDocType", "s", "Lcom/onyx/android/sdk/filepicker/FilePickerArgs;", "getCurrentCount", "currentCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPickerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PickerManager.kt\ncom/onyx/android/sdk/filepicker/PickerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,275:1\n1855#2,2:276\n37#3,2:278\n*S KotlinDebug\n*F\n+ 1 PickerManager.kt\ncom/onyx/android/sdk/filepicker/PickerManager\n*L\n160#1:276,2\n176#1:278,2\n*E\n"})
/* loaded from: classes7.dex */
public final class PickerManager {

    /* renamed from: g, reason: from kotlin metadata */
    public static boolean multiEnable;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public static Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit> callback;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public static File pickerFile;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, Long> docFilterSizeMap;

    /* renamed from: l, reason: from kotlin metadata */
    public static boolean resultWithFinish;

    /* renamed from: m, reason: from kotlin metadata */
    public static int title;

    /* renamed from: n, reason: from kotlin metadata */
    public static boolean screenOnEnable;

    /* renamed from: o, reason: from kotlin metadata */
    public static boolean hideStatusBar;

    /* renamed from: p, reason: from kotlin metadata */
    public static boolean isTabLayoutHidden;

    /* renamed from: q, reason: from kotlin metadata */
    public static boolean isFileSystemHidden;

    /* renamed from: r, reason: from kotlin metadata */
    public static boolean enableFilterDocType;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public static FilePickerArgs filePickerArgs;

    @NotNull
    public static final PickerManager INSTANCE = new PickerManager();

    /* renamed from: a, reason: from kotlin metadata */
    public static int maxCount = 9;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static SortType sortType = SortType.NONE;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final ArrayList<DocumentBean> selectedFiles = new ArrayList<>();

    /* renamed from: d, reason: from kotlin metadata */
    public static int orientation = -1;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final LinkedHashSet<DocumentType> docTypes = new LinkedHashSet<>();

    /* renamed from: f, reason: from kotlin metadata */
    public static int theme = C7453R.style.Theme_MatisseDemo;

    /* renamed from: h, reason: from kotlin metadata */
    public static int requestCode = 2001;

    static {
        Map<String, Long> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("note", 1024L));
        docFilterSizeMap = mutableMapOf;
        resultWithFinish = true;
        title = -1;
        enableFilterDocType = GlobalConfig.INSTANCE.isDefaultFilterByDocTypes();
    }

    /* renamed from: b */
    public static final boolean m33081b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    public final void addFilePickerArgs(@NotNull FilePickerArgs filePickerArgs2) {
        Intrinsics.checkNotNullParameter(filePickerArgs2, "filePickerArgs");
        filePickerArgs = filePickerArgs2;
    }

    public final void addFileTypes(@NotNull DocumentType documentType) {
        Intrinsics.checkNotNullParameter(documentType, "documentType");
        docTypes.add(documentType);
    }

    public final void clearSelect() {
        selectedFiles.clear();
    }

    public final void filterDocBySize(@NotNull String documentTypeTitle, long filterSize) {
        Intrinsics.checkNotNullParameter(documentTypeTitle, "documentTypeTitle");
        docFilterSizeMap.put(documentTypeTitle, Long.valueOf(filterSize));
    }

    public final int getCurrentCount() {
        return selectedFiles.size();
    }

    @NotNull
    public final Map<String, Long> getDocFilterSizeMap() {
        return docFilterSizeMap;
    }

    @NotNull
    public final ArrayList<DocumentType> getDocTypes() {
        ArrayList<DocumentType> arrayList = new ArrayList<>();
        arrayList.addAll(docTypes);
        return arrayList;
    }

    @NotNull
    public final String[] getDocumentSupportList() {
        Sequence asSequence;
        Sequence map;
        Sequence filter;
        Set set;
        if (!enableFilterDocType) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        Iterator<DocumentType> it2 = getDocTypes().iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, it2.next().getExtensions());
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(arrayList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<String, String>() { // from class: com.onyx.android.sdk.filepicker.PickerManager$getDocumentSupportList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return StringKt.safelyGetStr(FileExtensionUtils.INSTANCE.mimeType(it3));
            }
        });
        filter = SequencesKt___SequencesKt.filter(map, new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.filepicker.PickerManager$getDocumentSupportList$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(StringKt.isNotBlank(it3));
            }
        });
        set = SequencesKt___SequencesKt.toSet(filter);
        return (String[]) set.toArray(new String[0]);
    }

    public final boolean getEnableFilterDocType() {
        return enableFilterDocType;
    }

    @Nullable
    public final FilePickerArgs getFilePickerArgs() {
        return filePickerArgs;
    }

    public final boolean getHideStatusBar() {
        return hideStatusBar;
    }

    public final int getMaxCount() {
        return maxCount;
    }

    public final boolean getMultiEnable() {
        return multiEnable && maxCount > 1;
    }

    public final int getOrientation() {
        return orientation;
    }

    @Nullable
    public final File getPickerFile() {
        return pickerFile;
    }

    public final int getRequestCode() {
        return requestCode;
    }

    @Nullable
    public final Function2<ArrayList<DocumentBean>, WeakReference<Activity>, Unit> getResultCallback() {
        return callback;
    }

    public final boolean getResultWithFinish() {
        return resultWithFinish;
    }

    public final boolean getScreenOnEnable() {
        return screenOnEnable;
    }

    @NotNull
    public final ArrayList<DocumentBean> getSelectFile() {
        return selectedFiles;
    }

    @NotNull
    public final SortType getSortType() {
        return sortType;
    }

    @NotNull
    public final ArrayList<String> getSupportExtensions() {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<T> it2 = docTypes.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((DocumentType) it2.next()).getExtensions());
        }
        return arrayList;
    }

    public final int getTitle() {
        return title;
    }

    public final void hideStatusBar(boolean hide) {
        hideStatusBar = hide;
    }

    public final boolean isFileSystemHidden() {
        return isFileSystemHidden;
    }

    public final boolean isMultipleTypeSelect() {
        return maxCount > 1;
    }

    public final boolean isSelectedValid(int selectCount) {
        if (selectCount <= getMaxCount()) {
            return true;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C7453R.string.error_over_count, Integer.valueOf(INSTANCE.getMaxCount())), Arrays.copyOf(new Object[0], 0));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        ToastUtils.showLong(format, new Object[0]);
        return false;
    }

    public final boolean isTabLayoutHidden() {
        return isTabLayoutHidden;
    }

    @NotNull
    public final List<DocumentBean> obtainResult(@Nullable Intent data) {
        List<Uri> clipDataUris$sdk_imagepicker_overseasRelease;
        ArrayList arrayList = new ArrayList();
        if (data != null && (clipDataUris$sdk_imagepicker_overseasRelease = GetMultipleDocuments.INSTANCE.getClipDataUris$sdk_imagepicker_overseasRelease(data)) != null) {
            arrayList.addAll(clipDataUris$sdk_imagepicker_overseasRelease);
        }
        if (isSelectedValid(arrayList.size()) && !arrayList.isEmpty()) {
            if (!UrisExtKt.toDocumentBeanList(arrayList).isEmpty()) {
                return UrisExtKt.toDocumentBeanList(arrayList);
            }
            com.onyx.android.sdk.base.utils.ToastUtils.show$default(com.onyx.android.sdk.base.utils.ToastUtils.INSTANCE, C7453R.string.un_support_file_type, false, 2, (Object) null);
            return new ArrayList();
        }
        return new ArrayList();
    }

    public final void ofDoc() {
        LinkedHashSet<DocumentType> linkedHashSet = docTypes;
        linkedHashSet.clear();
        linkedHashSet.addAll(DocumentType.INSTANCE.ofDoc());
    }

    public final void ofFont() {
        LinkedHashSet<DocumentType> linkedHashSet = docTypes;
        linkedHashSet.clear();
        linkedHashSet.addAll(DocumentType.INSTANCE.ofFont());
    }

    public final void onlyNote() {
        LinkedHashSet<DocumentType> linkedHashSet = docTypes;
        linkedHashSet.clear();
        linkedHashSet.addAll(DocumentType.INSTANCE.onlyNote());
    }

    public final void onlyPdf() {
        LinkedHashSet<DocumentType> linkedHashSet = docTypes;
        linkedHashSet.clear();
        linkedHashSet.addAll(DocumentType.INSTANCE.onlyPdf());
    }

    public final void release() {
        reset();
        docTypes.clear();
        callback = null;
        pickerFile = null;
        title = -1;
        filePickerArgs = null;
    }

    public final void reset() {
        selectedFiles.clear();
        maxCount = -1;
    }

    public final void selectChange(@NotNull final DocumentBean documentBean) {
        Intrinsics.checkNotNullParameter(documentBean, "documentBean");
        if (!multiEnable) {
            ArrayList<DocumentBean> arrayList = selectedFiles;
            arrayList.clear();
            arrayList.add(documentBean);
            return;
        }
        ArrayList<DocumentBean> arrayList2 = selectedFiles;
        if (CollectionKt.contains(arrayList2, new Function1<DocumentBean, Boolean>() { // from class: com.onyx.android.sdk.filepicker.PickerManager$selectChange$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DocumentBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getPath(), DocumentBean.this.getPath()));
            }
        })) {
            final Function1<DocumentBean, Boolean> function1 = new Function1<DocumentBean, Boolean>() { // from class: com.onyx.android.sdk.filepicker.PickerManager$selectChange$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull DocumentBean it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it2.getPath(), DocumentBean.this.getPath()));
                }
            };
            arrayList2.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.a4l
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m33081b;
                    m33081b = PickerManager.m33081b(Function1.this, obj);
                    return m33081b;
                }
            });
        } else {
            if (arrayList2.size() < maxCount) {
                arrayList2.add(documentBean);
                return;
            }
            String stringSafely = ResManager.INSTANCE.getStringSafely(C7453R.string.error_over_count);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(stringSafely, Arrays.copyOf(new Object[]{Integer.valueOf(maxCount)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            com.onyx.android.sdk.base.utils.ToastUtils.show$default(com.onyx.android.sdk.base.utils.ToastUtils.INSTANCE, (CharSequence) format, false, 2, (Object) null);
        }
    }

    public final void setActivityTheme(@IdRes int theme2) {
        theme = theme2;
    }

    public final void setEnableFilterDocType(boolean z) {
        enableFilterDocType = z;
    }

    public final void setFileSystemHidden(boolean z) {
        isFileSystemHidden = z;
    }

    public final void setHideStatusBar(boolean z) {
        hideStatusBar = z;
    }

    public final void setKeepSeenOnEnable(boolean enable) {
        screenOnEnable = enable;
    }

    public final void setMaxCount(int count) {
        if (count < 1) {
            throw new IllegalArgumentException("maxSelectable must be greater than or equal to one");
        }
        reset();
        maxCount = count;
    }

    public final void setMultiEnable(boolean enable) {
        multiEnable = enable;
    }

    public final void setOrientation(int i) {
        orientation = i;
    }

    public final void setPickerFilesDir(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        pickerFile = file;
    }

    public final void setRequestCode(int requestCode2) {
        requestCode = requestCode2;
    }

    public final void setResultCallback(@NotNull Function2<? super ArrayList<DocumentBean>, ? super WeakReference<Activity>, Unit> callback2) {
        Intrinsics.checkNotNullParameter(callback2, "callback");
        callback = callback2;
    }

    public final void setResultWithFinish(boolean z) {
        resultWithFinish = z;
    }

    public final void setScreenOnEnable(boolean z) {
        screenOnEnable = z;
    }

    public final void setSortType(@NotNull SortType sortType2) {
        Intrinsics.checkNotNullParameter(sortType2, "sortType");
        sortType = sortType2;
    }

    public final void setTabLayoutHidden(boolean z) {
        isTabLayoutHidden = z;
    }

    public final void setTitle(int i) {
        title = i;
    }
}

package com.onyx.android.sdk.filepicker;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.filepicker.QueryDocAction;
import com.onyx.android.sdk.filepicker.sort.SortType;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u000020\u0012,\u0012*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004`\u00060\u0001BC\u0012\u0006\u0010&\u001a\u00020!\u0012\b\u0010,\u001a\u0004\u0018\u00010'\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004\u0012\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020100\u0012\u0006\u00108\u001a\u000205¢\u0006\u0004\b9\u0010:J6\u0010\b\u001a0\u0012,\u0012*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004`\u00060\u0007H\u0014J\b\u0010\n\u001a\u00020\tH\u0002J0\u0010\u000b\u001a*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004`\u0006H\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002J\\\u0010\u0014\u001a*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004`\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u000eH\u0002J*\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0015j\b\u0012\u0004\u0012\u00020\u0003`\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u0018H\u0002J\u001a\u0010 \u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0018H\u0002R\u0017\u0010&\u001a\u00020!8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0019\u0010,\u001a\u0004\u0018\u00010'8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R \u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u000201008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/QueryDocAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Ljava/util/HashMap;", "Lcom/onyx/android/sdk/filepicker/DocumentType;", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "Lkotlin/collections/HashMap;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "t", "s", "Landroid/database/Cursor;", "data", "", C4921e.f26528e, "documentTypes", "Ljava/util/Comparator;", "comparator", "documents", GoogleApiAvailabilityLight.f29016b, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "types", "", "path", "p", "string", "", "r", "cursor", "columnName", "q", "Landroid/content/Context;", "e", "Landroid/content/Context;", "getActivityContext", "()Landroid/content/Context;", "activityContext", "Ljava/io/File;", C6997f.f39671c, "Ljava/io/File;", "getPickerFile", "()Ljava/io/File;", "pickerFile", C6998g.f39679a, "Ljava/util/List;", "selectDocumentTypes", "", "", C6999h.f39688c, "Ljava/util/Map;", "docFilterSizeMap", "Lcom/onyx/android/sdk/filepicker/sort/SortType;", "i", "Lcom/onyx/android/sdk/filepicker/sort/SortType;", "sortType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Lcom/onyx/android/sdk/filepicker/sort/SortType;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQueryDocAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryDocAction.kt\ncom/onyx/android/sdk/filepicker/QueryDocAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Cursor.kt\nandroidx/core/database/CursorKt\n*L\n1#1,170:1\n1855#2,2:171\n766#2:173\n857#2,2:174\n766#2:176\n857#2,2:177\n112#3:179\n*S KotlinDebug\n*F\n+ 1 QueryDocAction.kt\ncom/onyx/android/sdk/filepicker/QueryDocAction\n*L\n54#1:171,2\n133#1:173\n133#1:174,2\n137#1:176\n137#1:177,2\n168#1:179\n*E\n"})
/* loaded from: classes7.dex */
public final class QueryDocAction extends RxBaseAction<HashMap<DocumentType, List<? extends DocumentBean>>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final File pickerFile;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentType> selectDocumentTypes;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Long> docFilterSizeMap;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final SortType sortType;

    /* renamed from: com.onyx.android.sdk.filepicker.QueryDocAction$a */
    /* loaded from: classes7.dex */
    public static final class C7395a<T, R> implements Function {
        public C7395a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HashMap<DocumentType, List<DocumentBean>> apply(@NotNull QueryDocAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QueryDocAction.this.m33092s();
        }
    }

    public QueryDocAction(@NotNull Context activityContext, @Nullable File file, @NotNull List<DocumentType> selectDocumentTypes, @NotNull Map<String, Long> docFilterSizeMap, @NotNull SortType sortType) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(selectDocumentTypes, "selectDocumentTypes");
        Intrinsics.checkNotNullParameter(docFilterSizeMap, "docFilterSizeMap");
        Intrinsics.checkNotNullParameter(sortType, "sortType");
        this.activityContext = activityContext;
        this.pickerFile = file;
        this.selectDocumentTypes = selectDocumentTypes;
        this.docFilterSizeMap = docFilterSizeMap;
        this.sortType = sortType;
    }

    /* renamed from: m */
    public static final void m33086m(CommonDialog loadingDialog) {
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        loadingDialog.dismiss();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HashMap<DocumentType, List<? extends DocumentBean>>> create() {
        final CommonDialog create = new CommonDialog.Builder(this.activityContext).setDialogType(1).create();
        create.show();
        Observable<HashMap<DocumentType, List<? extends DocumentBean>>> doFinally = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C7395a()).observeOn(AndroidSchedulers.mainThread()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.lal
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                QueryDocAction.m33086m(CommonDialog.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Context getActivityContext() {
        return this.activityContext;
    }

    @Nullable
    public final File getPickerFile() {
        return this.pickerFile;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x006b, code lost:
    
        if (r10 != false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007d A[SYNTHETIC] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap<com.onyx.android.sdk.filepicker.DocumentType, java.util.List<com.onyx.android.sdk.filepicker.DocumentBean>> m33087n(java.util.List<com.onyx.android.sdk.filepicker.DocumentType> r19, java.util.Comparator<com.onyx.android.sdk.filepicker.DocumentBean> r20, java.util.List<com.onyx.android.sdk.filepicker.DocumentBean> r21) {
        /*
            r18 = this;
            r0 = r18
            r1 = r20
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            java.util.Iterator r3 = r19.iterator()
        Ld:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto Ld4
            java.lang.Object r4 = r3.next()
            com.onyx.android.sdk.filepicker.DocumentType r4 = (com.onyx.android.sdk.filepicker.DocumentType) r4
            r5 = r21
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.Iterator r5 = r5.iterator()
        L26:
            boolean r7 = r5.hasNext()
            r8 = 0
            r9 = 1
            if (r7 == 0) goto L74
            java.lang.Object r7 = r5.next()
            r10 = r7
            com.onyx.android.sdk.filepicker.DocumentBean r10 = (com.onyx.android.sdk.filepicker.DocumentBean) r10
            java.lang.String r11 = r10.getName()
            java.lang.String r12 = r10.getName()
            java.lang.String r13 = "."
            r14 = 0
            r15 = 0
            r16 = 6
            r17 = 0
            int r12 = kotlin.text.StringsKt.lastIndexOf$default(r12, r13, r14, r15, r16, r17)
            int r12 = r12 + r9
            java.lang.String r11 = r11.substring(r12)
            java.lang.String r12 = "this as java.lang.String).substring(startIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r12)
            com.onyx.android.sdk.filepicker.FilePickerUtils r12 = com.onyx.android.sdk.filepicker.FilePickerUtils.INSTANCE
            java.lang.String[] r13 = r4.getExtensions()
            java.lang.String r10 = r10.getMimeType()
            boolean r10 = r12.contains(r13, r10)
            if (r10 != 0) goto L6d
            java.lang.String[] r10 = r4.getExtensions()
            boolean r10 = kotlin.collections.ArraysKt.contains(r10, r11)
            if (r10 == 0) goto L6e
        L6d:
            r8 = r9
        L6e:
            if (r8 == 0) goto L26
            r6.add(r7)
            goto L26
        L74:
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Iterator r6 = r6.iterator()
        L7d:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Lca
            java.lang.Object r7 = r6.next()
            r10 = r7
            com.onyx.android.sdk.filepicker.DocumentBean r10 = (com.onyx.android.sdk.filepicker.DocumentBean) r10
            java.util.Map<java.lang.String, java.lang.Long> r11 = r0.docFilterSizeMap
            java.lang.String r12 = r4.getTitle()
            boolean r11 = r11.containsKey(r12)
            if (r11 == 0) goto Lc3
            android.net.Uri r10 = r10.getPath()
            android.content.Context r11 = r0.activityContext
            android.content.Context r11 = r11.getApplicationContext()
            java.lang.String r12 = "getApplicationContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r12)
            long r10 = com.onyx.android.sdk.base.extension.UriKt.getFileSize(r10, r11)
            java.util.Map<java.lang.String, java.lang.Long> r12 = r0.docFilterSizeMap
            java.lang.String r13 = r4.getTitle()
            java.lang.Object r12 = r12.get(r13)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r12)
            java.lang.Number r12 = (java.lang.Number) r12
            long r12 = r12.longValue()
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 <= 0) goto Lc1
            goto Lc3
        Lc1:
            r10 = r8
            goto Lc4
        Lc3:
            r10 = r9
        Lc4:
            if (r10 == 0) goto L7d
            r5.add(r7)
            goto L7d
        Lca:
            if (r1 == 0) goto Lcf
            kotlin.collections.CollectionsKt.sortedWith(r5, r1)
        Lcf:
            r2.put(r4, r5)
            goto Ld
        Ld4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.filepicker.QueryDocAction.m33087n(java.util.List, java.util.Comparator, java.util.List):java.util.HashMap");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* renamed from: o */
    public final List<DocumentBean> m33088o(Cursor data) {
        ?? r4;
        ArrayList arrayList;
        long j;
        String m33090q;
        DocumentBean documentBean;
        ArrayList arrayList2 = new ArrayList();
        LogUtils.file("filter doc data start");
        while (data.moveToNext()) {
            try {
                j = data.getLong(data.getColumnIndexOrThrow("_id"));
                m33090q = m33090q(data, "_data");
            } catch (Exception e) {
                e = e;
                r4 = arrayList2;
            }
            if (m33090q != null) {
                DocumentType m33089p = m33089p(PickerManager.INSTANCE.getDocTypes(), m33090q);
                File file = new File(m33090q);
                Uri withAppendedId = ContentUris.withAppendedId(MediaStore.Files.getContentUri("external"), j);
                Intrinsics.checkNotNullExpressionValue(withAppendedId, "withAppendedId(...)");
                if (m33089p != null && !file.isDirectory() && file.exists()) {
                    ArrayList arrayList3 = arrayList2;
                    try {
                        documentBean = new DocumentBean(j, FileUtils.INSTANCE.getFileName(m33090q), withAppendedId, null, null, null, m33089p, 56, null);
                        documentBean.setDocumentType(m33089p);
                        String m33090q2 = m33090q(data, DefaultDownloadIndex.f24934i);
                        String str = "";
                        if (m33090q2 == null || TextUtils.isEmpty(m33090q2)) {
                            documentBean.setMimeType("");
                        } else {
                            documentBean.setMimeType(m33090q2);
                        }
                        String m33090q3 = m33090q(data, "_size");
                        if (m33090q3 == null) {
                            m33090q3 = "";
                        }
                        documentBean.setSize(m33090q3);
                        String m33090q4 = m33090q(data, "date_added");
                        if (m33090q4 != null) {
                            str = m33090q4;
                        }
                        documentBean.setTime(str);
                        r4 = arrayList3;
                    } catch (Exception e2) {
                        e = e2;
                        r4 = arrayList3;
                    }
                    try {
                        boolean contains = r4.contains(documentBean);
                        arrayList = r4;
                        if (!contains) {
                            arrayList = r4;
                            if (!Intrinsics.areEqual(documentBean.getSize(), "0")) {
                                r4.add(documentBean);
                                arrayList = r4;
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        LogUtils.eTag(QueryDocAction.class.getSimpleName(), "query doc error:" + e.getMessage());
                        arrayList = r4;
                        arrayList2 = arrayList;
                    }
                    arrayList2 = arrayList;
                }
            }
        }
        ArrayList arrayList4 = arrayList2;
        LogUtils.file("filter doc data end! data size:" + data.getCount() + " doc size:" + arrayList4.size());
        return arrayList4;
    }

    /* renamed from: p */
    public final DocumentType m33089p(ArrayList<DocumentType> types, String path) {
        boolean endsWith;
        int size = types.size();
        for (int i = 0; i < size; i++) {
            DocumentType documentType = types.get(i);
            Intrinsics.checkNotNullExpressionValue(documentType, "get(...)");
            DocumentType documentType2 = documentType;
            if (!Intrinsics.areEqual(documentType2.getTitle(), "ALL")) {
                for (String str : documentType2.getExtensions()) {
                    if (m33091r(path)) {
                        endsWith = StringsKt__StringsJVMKt.endsWith(path, str, true);
                        if (endsWith) {
                            return types.get(i);
                        }
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: q */
    public final String m33090q(Cursor cursor, String columnName) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(columnName);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return cursor.getString(columnIndexOrThrow);
    }

    /* renamed from: r */
    public final boolean m33091r(String string) {
        return new Regex(".*\\..*").matches(string);
    }

    /* renamed from: s */
    public final HashMap<DocumentType, List<DocumentBean>> m33092s() {
        Object[] plus;
        m33093t();
        HashMap<DocumentType, List<DocumentBean>> hashMap = new HashMap<>();
        Iterator<T> it2 = PickerManager.INSTANCE.getSupportExtensions().iterator();
        Object[] objArr = new String[0];
        while (it2.hasNext()) {
            plus = ArraysKt___ArraysJvmKt.plus((String[]) objArr, "%." + ((String) it2.next()));
            objArr = plus;
        }
        int length = objArr.length;
        String str = "";
        for (int i = 0; i < length; i++) {
            str = i == objArr.length - 1 ? str + "_data LIKE ?" : str + "_data LIKE ? or ";
        }
        Cursor query = getAppContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id", "_data", DefaultDownloadIndex.f24934i, "_size", "date_added"}, str, (String[]) objArr, "date_added DESC");
        if (query == null) {
            return hashMap;
        }
        HashMap<DocumentType, List<DocumentBean>> m33087n = m33087n(this.selectDocumentTypes, this.sortType.getComparator(), m33088o(query));
        query.close();
        return m33087n;
    }

    /* renamed from: t */
    public final void m33093t() {
        File file = this.pickerFile;
        if (file != null) {
            com.blankj.utilcode.util.FileUtils.notifySystemToScan(file);
        }
    }
}

package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.AppDataPBDocument;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.full.KClasses;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002RB\u0010\u0010\u001a.\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\r0\f0\u000bj\u0016\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\r0\f`\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000fRB\u0010\u0011\u001a.\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\r0\f0\u000bj\u0016\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\r0\f`\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u000fRB\u0010\u0013\u001a.\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\r0\f0\u000bj\u0016\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\r0\f`\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPbFactory;", "", "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;", "pbDataContext", "", "exportToFile", "copyPBToDB", "", "type", "b", "a", "Ljava/util/LinkedHashMap;", "Lkotlin/reflect/KClass;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBData;", "Lkotlin/collections/LinkedHashMap;", "Ljava/util/LinkedHashMap;", "pbMap", "exportToFileMap", "c", "copyPBToDBMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AppPbFactory {

    @NotNull
    public static final AppPbFactory INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends AppPBData>> pbMap;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends AppPBData>> exportToFileMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends AppPBData>> copyPBToDBMap;

    static {
        AppPbFactory appPbFactory = new AppPbFactory();
        INSTANCE = appPbFactory;
        pbMap = new LinkedHashMap<>();
        exportToFileMap = new LinkedHashMap<>();
        copyPBToDBMap = new LinkedHashMap<>();
        pbMap.put(16, Reflection.getOrCreateKotlinClass(FontPBData.class));
        appPbFactory.m35435b(16);
        appPbFactory.m35434a(16);
    }

    /* renamed from: a */
    public final void m35434a(int type) {
        LinkedHashMap<Integer, KClass<? extends AppPBData>> linkedHashMap = copyPBToDBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends AppPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyAppPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    /* renamed from: b */
    public final void m35435b(int type) {
        LinkedHashMap<Integer, KClass<? extends AppPBData>> linkedHashMap = exportToFileMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends AppPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyAppPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    public final void copyPBToDB(@NotNull AppPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        AppDataPBDocument appDataPBDocument = new AppDataPBDocument();
        appDataPBDocument.setPbDirPath(copyNoteListArgs.getSrcDirFilePath());
        pbDataContext.parseDataFromPB(appDataPBDocument);
        Iterator<Map.Entry<Integer, KClass<? extends AppPBData>>> it2 = copyPBToDBMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((AppPBData) KClasses.createInstance(it2.next().getValue())).copyPBToDB(pbDataContext);
        }
    }

    public final void exportToFile(@NotNull AppPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs == null) {
            return;
        }
        Iterator<Map.Entry<Integer, KClass<? extends AppPBData>>> it2 = exportToFileMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((AppPBData) KClasses.createInstance(it2.next().getValue())).collectDataExportToFile(pbDataContext);
        }
        AppDataPBDocument appDataPBDocument = new AppDataPBDocument();
        appDataPBDocument.setPbDirPath(exportNoteListArgs.getExportDirPath());
        pbDataContext.saveDataToPB(appDataPBDocument);
    }
}

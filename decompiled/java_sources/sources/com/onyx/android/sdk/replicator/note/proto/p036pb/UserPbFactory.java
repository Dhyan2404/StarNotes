package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.proto.doc.UserDataPBDocument;
import com.sun.org.apache.bcel.internal.Constants;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.full.KClasses;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b(\u0010)J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u001a\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u000bJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002RB\u0010!\u001a.\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u001ej\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010 RB\u0010\"\u001a.\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u001ej\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010 RB\u0010#\u001a.\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u001ej\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010 RB\u0010$\u001a.\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u001ej\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010 RB\u0010%\u001a.\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u001ej\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010 RB\u0010&\u001a.\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u001ej\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010 RB\u0010'\u001a.\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\u001ej\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010 ¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;", "", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "exportToPBFromDB", "exportToDBFromPB", "exportToFile", "parseCopyPBToDBData", "copyPBToDB", "copyUserPBToDB", "", "", "Lkotlin/reflect/KClass;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBData;", Constant.MAP_TAG, "copyDBToDB", "type", C6998g.f39679a, "e", C6997f.f39671c, "d", C6999h.f39688c, "c", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "exportArgs", "a", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "importArgs", "b", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "Ljava/util/LinkedHashMap;", "pbMap", "exportToPBFromDBMap", "exportToDBFromPBMap", "exportToFileMap", "copyPBToDBMap", "copyDBToDBMap", "copyUserPBToDBMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UserPbFactory {

    @NotNull
    public static final UserPbFactory INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends UserPBData>> pbMap;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends UserPBData>> exportToPBFromDBMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends UserPBData>> exportToDBFromPBMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends UserPBData>> exportToFileMap;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends UserPBData>> copyPBToDBMap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends UserPBData>> copyDBToDBMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends UserPBData>> copyUserPBToDBMap;

    static {
        UserPbFactory userPbFactory = new UserPbFactory();
        INSTANCE = userPbFactory;
        pbMap = new LinkedHashMap<>();
        exportToPBFromDBMap = new LinkedHashMap<>();
        exportToDBFromPBMap = new LinkedHashMap<>();
        exportToFileMap = new LinkedHashMap<>();
        copyPBToDBMap = new LinkedHashMap<>();
        copyDBToDBMap = new LinkedHashMap<>();
        copyUserPBToDBMap = new LinkedHashMap<>();
        pbMap.put(19, Reflection.getOrCreateKotlinClass(UserNoteFolderPBData.class));
        pbMap.put(20, Reflection.getOrCreateKotlinClass(UserTagPBData.class));
        pbMap.put(11, Reflection.getOrCreateKotlinClass(TemplatePBData.class));
        pbMap.put(12, Reflection.getOrCreateKotlinClass(CoverPBData.class));
        pbMap.put(14, Reflection.getOrCreateKotlinClass(DocTagPBData.class));
        pbMap.put(15, Reflection.getOrCreateKotlinClass(PageTagPBData.class));
        pbMap.put(9, Reflection.getOrCreateKotlinClass(ExcerptCollectionPBData.class));
        userPbFactory.m35516g(11);
        userPbFactory.m35516g(12);
        userPbFactory.m35516g(14);
        userPbFactory.m35516g(15);
        userPbFactory.m35516g(9);
        userPbFactory.m35516g(16);
        userPbFactory.m35514e(11);
        userPbFactory.m35514e(12);
        userPbFactory.m35514e(14);
        userPbFactory.m35514e(15);
        userPbFactory.m35514e(9);
        userPbFactory.m35514e(16);
        userPbFactory.m35515f(19);
        userPbFactory.m35515f(20);
        userPbFactory.m35515f(11);
        userPbFactory.m35515f(12);
        userPbFactory.m35515f(14);
        userPbFactory.m35515f(15);
        userPbFactory.m35515f(9);
        userPbFactory.m35515f(16);
        userPbFactory.m35513d(11);
        userPbFactory.m35513d(12);
        userPbFactory.m35513d(14);
        userPbFactory.m35513d(15);
        userPbFactory.m35513d(9);
        userPbFactory.m35513d(16);
        userPbFactory.m35512c(15);
        userPbFactory.m35512c(9);
        userPbFactory.m35517h(19);
        userPbFactory.m35517h(20);
    }

    /* renamed from: a */
    public final void m35510a(UserPBDataContext pbDataContext, ExportNoteListArgs exportArgs) {
        try {
            Paths paths = Paths.INSTANCE;
            Path append = paths.append(paths.append(paths.toPath(exportArgs.getExportDirPath()), SyncConstant.EXPORT_USER_DATA), SyncConstant.EXPORT_NOTE_FOLDER);
            if (!Files.exists(append, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                paths.asFile(append).mkdirs();
            }
            for (SyncNoteModel syncNoteModel : pbDataContext.getNoteFolderList()) {
                ThumbnailPaths thumbnailPaths = ThumbnailPaths.INSTANCE;
                Path appThumbnailPath = thumbnailPaths.appThumbnailPath(syncNoteModel.getUniqueId());
                if (Files.exists(appThumbnailPath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    Paths.copyFile$default(Paths.INSTANCE, appThumbnailPath, thumbnailPaths.thumbnailPath(append.toAbsolutePath().toString(), syncNoteModel.getUniqueId()), false, 2, null);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: b */
    public final void m35511b(UserPBDataContext pbDataContext, CopyNoteListArgs importArgs) {
        try {
            Paths paths = Paths.INSTANCE;
            Path append = paths.append(paths.append(paths.toPath(importArgs.getSrcDirFilePath()), SyncConstant.EXPORT_USER_DATA), SyncConstant.EXPORT_NOTE_FOLDER);
            for (SyncNoteModel syncNoteModel : pbDataContext.getNoteFolderList()) {
                ThumbnailPaths thumbnailPaths = ThumbnailPaths.INSTANCE;
                Path thumbnailPath = thumbnailPaths.thumbnailPath(append.toAbsolutePath().toString(), syncNoteModel.getUniqueId());
                if (Files.exists(thumbnailPath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    Path appThumbnailPath = thumbnailPaths.appThumbnailPath(syncNoteModel.getUniqueId());
                    if (!Files.exists(appThumbnailPath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                        Paths.copyFile$default(Paths.INSTANCE, thumbnailPath, appThumbnailPath, false, 2, null);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: c */
    public final void m35512c(int type) {
        LinkedHashMap<Integer, KClass<? extends UserPBData>> linkedHashMap = copyDBToDBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends UserPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyUserPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    public final void copyDBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Iterator<Map.Entry<Integer, KClass<? extends UserPBData>>> it2 = copyDBToDBMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((UserPBData) KClasses.createInstance(it2.next().getValue())).copyDBToDB(pbDataContext);
        }
    }

    public final void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        copyPBToDB(pbDataContext, copyPBToDBMap);
    }

    public final void copyUserPBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        copyPBToDB(pbDataContext, copyUserPBToDBMap);
    }

    /* renamed from: d */
    public final void m35513d(int type) {
        LinkedHashMap<Integer, KClass<? extends UserPBData>> linkedHashMap = copyPBToDBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends UserPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyUserPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    /* renamed from: e */
    public final void m35514e(int type) {
        LinkedHashMap<Integer, KClass<? extends UserPBData>> linkedHashMap = exportToDBFromPBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends UserPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyUserPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    public final void exportToDBFromPB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        UserPBDataContext.parseDataFromPB$default(pbDataContext, new UserDataPBDocument(), null, 2, null);
        Iterator<Map.Entry<Integer, KClass<? extends UserPBData>>> it2 = exportToDBFromPBMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((UserPBData) KClasses.createInstance(it2.next().getValue())).exportToDBFromPB(pbDataContext);
        }
        pbDataContext.savePBUserRecord();
    }

    public final void exportToFile(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs == null) {
            return;
        }
        Iterator<Map.Entry<Integer, KClass<? extends UserPBData>>> it2 = exportToFileMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((UserPBData) KClasses.createInstance(it2.next().getValue())).collectDataExportToFile(pbDataContext);
        }
        UserDataPBDocument userDataPBDocument = new UserDataPBDocument();
        userDataPBDocument.setPbDirPath(exportNoteListArgs.getExportDirPath());
        pbDataContext.saveDataToPB(userDataPBDocument, SyncConstant.EXPORT_USER_DATA);
        m35510a(pbDataContext, exportNoteListArgs);
    }

    public final void exportToPBFromDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Iterator<Map.Entry<Integer, KClass<? extends UserPBData>>> it2 = exportToPBFromDBMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((UserPBData) KClasses.createInstance(it2.next().getValue())).collectDataToPBFromDB(pbDataContext);
        }
        UserPBDataContext.saveDataToPB$default(pbDataContext, new UserDataPBDocument(), null, 2, null);
        pbDataContext.saveUserPBRecord(2);
        Iterator<Map.Entry<Integer, KClass<? extends UserPBData>>> it3 = exportToPBFromDBMap.entrySet().iterator();
        while (it3.hasNext()) {
            ((UserPBData) KClasses.createInstance(it3.next().getValue())).saveDataToDB(pbDataContext);
        }
    }

    /* renamed from: f */
    public final void m35515f(int type) {
        LinkedHashMap<Integer, KClass<? extends UserPBData>> linkedHashMap = exportToFileMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends UserPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyUserPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    /* renamed from: g */
    public final void m35516g(int type) {
        LinkedHashMap<Integer, KClass<? extends UserPBData>> linkedHashMap = exportToPBFromDBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends UserPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyUserPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    /* renamed from: h */
    public final void m35517h(int type) {
        LinkedHashMap<Integer, KClass<? extends UserPBData>> linkedHashMap = copyUserPBToDBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends UserPBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyUserPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    public final void parseCopyPBToDBData(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        UserDataPBDocument userDataPBDocument = new UserDataPBDocument();
        userDataPBDocument.setPbDirPath(copyNoteListArgs.getSrcDirFilePath());
        pbDataContext.parseDataFromPB(userDataPBDocument, SyncConstant.EXPORT_USER_DATA);
        m35511b(pbDataContext, copyNoteListArgs);
    }

    public final void copyPBToDB(@NotNull UserPBDataContext pbDataContext, @NotNull Map<Integer, ? extends KClass<? extends UserPBData>> map) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Intrinsics.checkNotNullParameter(map, "map");
        Iterator<Map.Entry<Integer, ? extends KClass<? extends UserPBData>>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            ((UserPBData) KClasses.createInstance(it2.next().getValue())).copyPBToDB(pbDataContext);
        }
    }
}

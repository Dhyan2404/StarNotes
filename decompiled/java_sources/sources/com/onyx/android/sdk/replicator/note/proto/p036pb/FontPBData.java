package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.FontProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.utils.TextShapes;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u000e\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/FontPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;", "pbDataContext", "", "collectDataExportToFile", "copyPBToDB", "", "a", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFontPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/FontPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1855#2:80\n1855#2,2:81\n1856#2:83\n766#2:84\n857#2,2:85\n1855#2,2:87\n1549#2:89\n1620#2,3:90\n766#2:93\n857#2,2:94\n1855#2,2:96\n*S KotlinDebug\n*F\n+ 1 FontPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/FontPBData\n*L\n39#1:80\n43#1:81,2\n39#1:83\n51#1:84\n51#1:85,2\n52#1:87,2\n67#1:89\n67#1:90,3\n68#1:93\n68#1:94,2\n70#1:96,2\n*E\n"})
/* loaded from: classes8.dex */
public final class FontPBData implements AppPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 16;

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBData
    public void collectDataExportToFile(@NotNull AppPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs != null && exportNoteListArgs.getExportFont()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it2 = exportNoteListArgs.getExportNoteArgsList().iterator();
            while (it2.hasNext()) {
                for (ShapeModel shapeModel : (List) NoteProviderHolder.Companion.withOnce$default(NoteProviderHolder.INSTANCE, null, pbDataContext.getUserId(), ((ExportNoteArgs) it2.next()).getDocumentId(), new Function1<NoteProviderHolder, List<? extends ShapeModel>>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.FontPBData$collectDataExportToFile$1$models$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final List<ShapeModel> invoke(@NotNull NoteProviderHolder holder) {
                        List listOf;
                        Intrinsics.checkNotNullParameter(holder, "holder");
                        NoteShapeProvider noteShapeProvider = holder.getNoteShapeProvider();
                        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{16, 48});
                        return noteShapeProvider.loadShapeList(ShapeQueryArgsExtKt.loadShapeModelByTypeListQuery$default(listOf, 0, 2, null));
                    }
                }, 1, null)) {
                    TextShapes textShapes = TextShapes.INSTANCE;
                    CollectionKt.safeAddAll(linkedHashSet, textShapes.parseTextShapeFontList(shapeModel));
                    CollectionKt.safeAddAll(linkedHashSet, textShapes.parseHwrTextShapeFontList(shapeModel));
                }
            }
            if (linkedHashSet.isEmpty()) {
                return;
            }
            List<FontModel> loadList = pbDataContext.getFontProvider().loadList();
            ArrayList<FontModel> arrayList = new ArrayList();
            for (Object obj : loadList) {
                if (linkedHashSet.contains(FontModelExt.INSTANCE.getDisplayName((FontModel) obj))) {
                    arrayList.add(obj);
                }
            }
            for (FontModel fontModel : arrayList) {
                Paths paths = Paths.INSTANCE;
                FontModelExt fontModelExt = FontModelExt.INSTANCE;
                Paths.copyFile$default(paths, paths.toPath(FontModelExt.getSavePath$default(fontModelExt, fontModel, null, 1, null)), paths.toPath(fontModelExt.getSavePath(fontModel, AppPaths.INSTANCE.fontDir(exportNoteListArgs.getExportDirPath()).toAbsolutePath().toString())), false, 2, null);
            }
            CollectionKt.safeAddAll(pbDataContext.getFontList(), arrayList);
            Debug.INSTANCE.m32052i(FontPBData.class, "collectDataExportToFile to pb count: " + arrayList.size(), new Object[0]);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBData
    public void copyPBToDB(@NotNull AppPBDataContext pbDataContext) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<FontModel> mutableList;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        List<FontModel> fontList = pbDataContext.getFontList();
        if (CollectionKt.isNullOrEmpty(fontList)) {
            return;
        }
        FontProvider fontProvider = pbDataContext.getFontProvider();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<FontModel> list = fontList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((FontModel) it2.next()).getMd5());
        }
        List<FontModel> loadList = fontProvider.loadList(cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_MD5, arrayList)));
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = loadList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((FontModel) it3.next()).getMd5());
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list) {
            if (true ^ arrayList2.contains(((FontModel) obj).getMd5())) {
                arrayList3.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
        for (FontModel fontModel : mutableList) {
            Paths paths = Paths.INSTANCE;
            FontModelExt fontModelExt = FontModelExt.INSTANCE;
            Paths.copyFile$default(paths, paths.toPath(fontModelExt.getSavePath(fontModel, AppPaths.INSTANCE.fontDir(copyNoteListArgs.getSrcDirFilePath()).toAbsolutePath().toString())), paths.toPath(FontModelExt.getSavePath$default(fontModelExt, fontModel, null, 1, null)), false, 2, null);
        }
        pbDataContext.getFontProvider().saveList(mutableList);
        Debug.INSTANCE.m32052i(FontPBData.class, "copyPBToDB count: " + mutableList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBData
    public void setType(int i) {
        this.type = i;
    }
}

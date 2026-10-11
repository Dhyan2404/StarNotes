package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.path.PathsKt__PathRecursiveFunctionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\b\u001a\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u000b\u001a\u00020\nJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\r\u001a\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\u000e\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0005J\b\u0010\u0015\u001a\u00020\u0014H\u0002R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/FontProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "fontList", "", "syncFontList", "list", "saveList", "loadList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "loadOnlineFontList", "removeList", "syncInkFontList", "loadAllInkFontList", "", "deleteFontFile", "deleteAllInkFont", "deleteOnlineFont", "Lcom/couchbase/lite/Collection;", "a", "Lkotlin/Lazy;", "b", "()Lcom/couchbase/lite/Collection;", "inkFontCollection", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFontProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontProvider.kt\ncom/onyx/android/sdk/replicator/note/db/FontProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 4 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,84:1\n1549#2:85\n1620#2,3:86\n766#2:89\n857#2:90\n858#2:92\n1549#2:103\n1620#2,3:104\n637#3:91\n48#4,5:93\n48#4,5:98\n48#4,5:107\n*S KotlinDebug\n*F\n+ 1 FontProvider.kt\ncom/onyx/android/sdk/replicator/note/db/FontProvider\n*L\n32#1:85\n32#1:86,3\n33#1:89\n33#1:90\n33#1:92\n58#1:103\n58#1:104,3\n33#1:91\n48#1:93,5\n54#1:98,5\n68#1:107,5\n*E\n"})
/* loaded from: classes8.dex */
public final class FontProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy inkFontCollection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Collection>() { // from class: com.onyx.android.sdk.replicator.note.db.FontProvider$inkFontCollection$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Collection invoke() {
                return FontProvider.this.ensureCollection(SyncConstant.COLLECTION_INK_FONT_MODEL);
            }
        });
        this.inkFontCollection = lazy;
    }

    /* renamed from: a */
    public final Collection m35170a() {
        return ensureCollection(SyncConstant.COLLECTION_FONT_MODEL);
    }

    /* renamed from: b */
    public final Collection m35171b() {
        return (Collection) this.inkFontCollection.getValue();
    }

    public final void deleteAllInkFont(boolean deleteFontFile) {
        if (deleteFontFile) {
            PathsKt__PathRecursiveFunctionsKt.deleteRecursively(AppPaths.INSTANCE.appFontDir());
        }
        CouchCollections.INSTANCE.deleteByExpression(m35171b(), getDatabase(), new CBQueryArgs().selectAll());
    }

    public final void deleteOnlineFont() {
        CouchCollections.INSTANCE.deleteByExpression(m35170a(), getDatabase(), new CBQueryArgs().andWith(CouchUtils.INSTANCE.notEmpty("url")));
    }

    @NotNull
    public final List<FontModel> loadAllInkFontList() {
        String str;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35171b = m35171b();
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        if (m35171b == null || (str = m35171b.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35171b, selectAll), FontModel.class, str);
    }

    @NotNull
    public final List<FontModel> loadList() {
        return loadList(new CBQueryArgs());
    }

    @NotNull
    public final List<FontModel> loadOnlineFontList() {
        String str;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.notEmpty("url"));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35171b = m35171b();
        if (m35171b == null || (str = m35171b.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35171b, andWith), FontModel.class, str);
    }

    public final void removeList(@NotNull List<FontModel> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "list");
        List<FontModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((FontModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35170a(), arrayList);
    }

    public final void saveList(@NotNull List<FontModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        CouchCollections.INSTANCE.saveList(m35170a(), getDatabase(), list);
    }

    public final void syncFontList(@NotNull List<FontModel> fontList) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fontList, "fontList");
        List<FontModel> loadOnlineFontList = loadOnlineFontList();
        List<FontModel> list = fontList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((FontModel) it2.next()).getUniqueId());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : loadOnlineFontList) {
            if (true ^ arrayList.contains(((FontModel) obj).getUniqueId())) {
                arrayList2.add(obj);
            }
        }
        deleteOnlineFont();
        CouchCollections.INSTANCE.saveList(m35170a(), getDatabase(), CollectionKt.mergeList(fontList, arrayList2));
    }

    public final void syncInkFontList(@NotNull List<FontModel> fontList) {
        Intrinsics.checkNotNullParameter(fontList, "fontList");
        deleteAllInkFont(false);
        CouchCollections.INSTANCE.saveList(m35171b(), getDatabase(), fontList);
    }

    @NotNull
    public final List<FontModel> loadList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35170a = m35170a();
        if (m35170a == null || (str = m35170a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35170a, cbQueryArgs), FontModel.class, str);
    }
}

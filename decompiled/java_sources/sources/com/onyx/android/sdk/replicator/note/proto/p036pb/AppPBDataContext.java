package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.FontProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.proto.AppDataProto;
import com.onyx.android.sdk.replicator.note.proto.FontProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.AppDataPBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b:\u0010;J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u0007HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0007HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J$\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u00162\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002J\b\u0010\u001a\u001a\u00020\u0007H\u0002R\u0017\u0010\t\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR$\u0010$\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010+\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0017\u0010-\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b,\u0010\u001dR\u001d\u00103\u001a\b\u0012\u0004\u0012\u00020/0.8\u0006¢\u0006\f\n\u0004\b\u0015\u00100\u001a\u0004\b1\u00102R\u001b\u00109\u001a\u0002048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;", "", "Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument;", "appDataPBDocument", "", "parseDataFromPB", "saveDataToPB", "", "component1", Constant.TAG_USER_ID, "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "b", "Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;", "a", "messagePrefix", "e", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "c", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "getExportNoteListArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "setExportNoteListArgs", "(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;)V", "exportNoteListArgs", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "getCopyNoteListArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "setCopyNoteListArgs", "(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V", "copyNoteListArgs", "getRevisionId", CouchFieldKey.KEY_REVISION_ID, "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "Ljava/util/List;", "getFontList", "()Ljava/util/List;", "fontList", "Lcom/onyx/android/sdk/replicator/note/db/FontProvider;", C6997f.f39671c, "Lkotlin/Lazy;", "getFontProvider", "()Lcom/onyx/android/sdk/replicator/note/db/FontProvider;", "fontProvider", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAppPBDataContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppPBDataContext.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 AppPBDataContext.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext\n*L\n41#1:77,2\n*E\n"})
/* loaded from: classes8.dex */
public final /* data */ class AppPBDataContext {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String userId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ExportNoteListArgs exportNoteListArgs;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public CopyNoteListArgs copyNoteListArgs;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final String revisionId;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<FontModel> fontList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy fontProvider;

    /* JADX WARN: Multi-variable type inference failed */
    public AppPBDataContext() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ AppPBDataContext copy$default(AppPBDataContext appPBDataContext, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = appPBDataContext.userId;
        }
        return appPBDataContext.copy(str);
    }

    /* renamed from: a */
    public final AppDataProto.DataCollection m35429a() {
        AppDataProto.DataCollection build = AppDataProto.DataCollection.newBuilder().setFontList(AppDataPBDocument.INSTANCE.toFontProtoList(this.fontList)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    /* renamed from: b */
    public final boolean m35430b() {
        return this.fontList.isEmpty();
    }

    /* renamed from: c */
    public final List<AppDataProto.DataCollection> m35431c(AppDataPBDocument appDataPBDocument, List<PBDocumentArgs> argsList) {
        ArrayList arrayList = new ArrayList();
        Iterator<PBDocumentArgs> it2 = argsList.iterator();
        while (it2.hasNext()) {
            AppDataProto.DataCollection data = appDataPBDocument.setArgs(it2.next()).load().getData();
            if (data != null) {
                arrayList.add(data);
            }
        }
        return arrayList;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final AppPBDataContext copy(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new AppPBDataContext(userId);
    }

    /* renamed from: d */
    public final String m35432d() {
        return UUIDUtils.INSTANCE.timeBasedEpochUUID();
    }

    /* renamed from: e */
    public final void m35433e(String messagePrefix) {
        Debug.INSTANCE.m32052i(AppPBDataContext.class, messagePrefix + " font count: " + this.fontList.size(), new Object[0]);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AppPBDataContext) && Intrinsics.areEqual(this.userId, ((AppPBDataContext) other).userId);
    }

    @Nullable
    public final CopyNoteListArgs getCopyNoteListArgs() {
        return this.copyNoteListArgs;
    }

    @Nullable
    public final ExportNoteListArgs getExportNoteListArgs() {
        return this.exportNoteListArgs;
    }

    @NotNull
    public final List<FontModel> getFontList() {
        return this.fontList;
    }

    @NotNull
    public final FontProvider getFontProvider() {
        return (FontProvider) this.fontProvider.getValue();
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return this.userId.hashCode();
    }

    public final void parseDataFromPB(@NotNull AppDataPBDocument appDataPBDocument) {
        Intrinsics.checkNotNullParameter(appDataPBDocument, "appDataPBDocument");
        for (AppDataProto.DataCollection dataCollection : m35431c(appDataPBDocument, PBDocumentUtils.INSTANCE.loadDocPBArgsList(appDataPBDocument.getPBFileDirPath("")))) {
            List<FontModel> list = this.fontList;
            AppDataPBDocument.Companion companion = AppDataPBDocument.INSTANCE;
            FontProto.FontList fontList = dataCollection.getFontList();
            Intrinsics.checkNotNullExpressionValue(fontList, "getFontList(...)");
            CollectionKt.safeAddAll(list, companion.fromFontProtoList(fontList));
        }
        m35433e("parse pb file: ");
    }

    public final void saveDataToPB(@NotNull AppDataPBDocument appDataPBDocument) {
        Intrinsics.checkNotNullParameter(appDataPBDocument, "appDataPBDocument");
        if (m35430b()) {
            return;
        }
        appDataPBDocument.setArgs(new PBDocumentArgs().setRevisionId(this.revisionId)).setData(m35429a()).save();
        m35433e("save data tp pb file: ");
    }

    public final void setCopyNoteListArgs(@Nullable CopyNoteListArgs copyNoteListArgs) {
        this.copyNoteListArgs = copyNoteListArgs;
    }

    public final void setExportNoteListArgs(@Nullable ExportNoteListArgs exportNoteListArgs) {
        this.exportNoteListArgs = exportNoteListArgs;
    }

    @NotNull
    public String toString() {
        return "AppPBDataContext(userId=" + this.userId + ')';
    }

    public AppPBDataContext(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.revisionId = m35432d();
        this.fontList = new ArrayList();
        this.fontProvider = LazyKt.lazy(new Function0<FontProvider>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.AppPBDataContext$fontProvider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FontProvider invoke() {
                return KSyncBundle.INSTANCE.getAppFontProvider();
            }
        });
    }

    public /* synthetic */ AppPBDataContext(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AccountDataBundle.INSTANCE.getSyncUserId() : str);
    }
}

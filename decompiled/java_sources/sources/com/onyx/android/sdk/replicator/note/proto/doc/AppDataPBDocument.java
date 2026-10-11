package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.proto.AppDataProto;
import com.onyx.android.sdk.replicator.note.proto.FontProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\f\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/AppDataProto$DataCollection;", "()V", "checkArgsNotComplete", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "getDataFilePath", "", "getPBFileDirPath", CouchFieldKey.KEY_UNIQUE_ID, "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "data", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AppDataPBDocument extends BasePBDocument<AppDataProto.DataCollection> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u0004J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\f\u0010\n\u001a\u00020\u0003*\u00020\bH\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/AppDataPBDocument$Companion;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$FontList;", "toFontProtoList", "fromFontProtoList", "model", "Lcom/onyx/android/sdk/replicator/note/proto/FontProto$Font;", "b", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final FontModel m35400a(FontProto.Font font) {
            FontModel fontModel = new FontModel();
            String uniqueId = font.getUniqueId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
            fontModel.setUniqueId(uniqueId);
            fontModel.setCreatedAt(font.getCreatedAt());
            fontModel.setUpdatedAt(font.getUpdatedAt());
            String name = font.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            fontModel.setName(name);
            String format = font.getFormat();
            Intrinsics.checkNotNullExpressionValue(format, "getFormat(...)");
            fontModel.setFormat(format);
            String url = font.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
            fontModel.setUrl(url);
            String md5 = font.getMd5();
            Intrinsics.checkNotNullExpressionValue(md5, "getMd5(...)");
            fontModel.setMd5(md5);
            return fontModel;
        }

        /* renamed from: b */
        public final FontProto.Font m35401b(FontModel model) {
            FontProto.Font.Builder updatedAt = FontProto.Font.newBuilder().setUniqueId(model.getUniqueId()).setCreatedAt(model.getCreatedAt()).setUpdatedAt(model.getUpdatedAt());
            BaseModel.Companion companion = BaseModel.INSTANCE;
            FontProto.Font build = updatedAt.setName(companion.ensureNotNull(model.getName())).setFormat(companion.ensureNotNull(model.getFormat())).setUrl(companion.ensureNotNull(model.getUrl())).setMd5(companion.ensureNotNull(model.getMd5())).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final List<FontModel> fromFontProtoList(@NotNull FontProto.FontList fontList) {
            Intrinsics.checkNotNullParameter(fontList, "<this>");
            ArrayList arrayList = new ArrayList();
            for (FontProto.Font font : fontList.getProtoList()) {
                Intrinsics.checkNotNull(font);
                arrayList.add(m35400a(font));
            }
            return arrayList;
        }

        @NotNull
        public final FontProto.FontList toFontProtoList(@NotNull List<FontModel> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            Iterator<FontModel> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(m35401b(it2.next()));
            }
            FontProto.FontList build = FontProto.FontList.newBuilder().addAllProto(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        public Companion() {
        }
    }

    public AppDataPBDocument() {
        setPbDirPath(AppFilePaths.INSTANCE.appFilesPath());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public boolean checkArgsNotComplete(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return false;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getDataFilePath(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        AppPaths appPaths = AppPaths.INSTANCE;
        String pbDirPath = getPbDirPath();
        String revisionId = args.getRevisionId();
        if (revisionId == null) {
            revisionId = "";
        }
        return appPaths.appPBPath(pbDirPath, revisionId).toAbsolutePath().toString();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public String getPBFileDirPath(@Nullable String uniqueId) {
        return AppPaths.INSTANCE.appPBDir(getPbDirPath()).toAbsolutePath().toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    @NotNull
    public AppDataProto.DataCollection parseFrom(@Nullable FileInputStream fin) throws IOException {
        AppDataProto.DataCollection parseFrom = AppDataProto.DataCollection.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public void writeTo(@NotNull AppDataProto.DataCollection data, @Nullable FileOutputStream fout) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        data.writeTo(fout);
    }
}

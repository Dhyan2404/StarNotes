package com.onyx.galaxy.note.category.data;

import android.net.Uri;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.p035db.model.TitleModel;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\n\"\u0004\b\u0019\u0010\fR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\n\"\u0004\b\u001c\u0010\fR\u001a\u0010\u001d\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\n\"\u0004\b\u001f\u0010\fR \u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0014\"\u0004\b#\u0010\u0016R\u001a\u0010$\u001a\u00020%X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", "", "()V", "exportFilePages", "", "getExportFilePages", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT, "", "getFormat", "()Ljava/lang/String;", "setFormat", "(Ljava/lang/String;)V", "id", "getId", "setId", "pageIndexList", "", "", "getPageIndexList", "()Ljava/util/List;", "setPageIndexList", "(Ljava/util/List;)V", "password", "getPassword", "setPassword", "saveFilePath", "getSaveFilePath", "setSaveFilePath", "title", "getTitle", "setTitle", MessageConst.KEY_TITLE_LIST, "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "getTitleList", "setTitleList", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TemplateFileBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private String format;

    @NotNull
    private String id;

    @Nullable
    private String saveFilePath;

    @NotNull
    private List<TitleModel> titleList;
    public Uri uri;

    @NotNull
    private List<Integer> pageIndexList = new ArrayList();

    @NotNull
    private String password = "";

    @NotNull
    private String title = "";

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;", "", "()V", "createTemplateFileBean", "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;", "uri", "Landroid/net/Uri;", "pageIndexList", "", "", "password", "", "createTemplateFileBeanList", "uris", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTemplateFileBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateFileBean.kt\ncom/onyx/galaxy/note/category/data/TemplateFileBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,41:1\n1855#2,2:42\n*S KotlinDebug\n*F\n+ 1 TemplateFileBean.kt\ncom/onyx/galaxy/note/category/data/TemplateFileBean$Companion\n*L\n35#1:42,2\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TemplateFileBean createTemplateFileBean$default(Companion companion, Uri uri, List list, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                list = new ArrayList();
            }
            if ((i & 4) != 0) {
                str = "";
            }
            return companion.createTemplateFileBean(uri, list, str);
        }

        @NotNull
        public final TemplateFileBean createTemplateFileBean(@NotNull Uri uri, @NotNull List<Integer> pageIndexList, @NotNull String password) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
            Intrinsics.checkNotNullParameter(password, "password");
            TemplateFileBean templateFileBean = new TemplateFileBean();
            templateFileBean.setUri(uri);
            templateFileBean.setPageIndexList(pageIndexList);
            templateFileBean.setPassword(password);
            return templateFileBean;
        }

        @NotNull
        public final List<TemplateFileBean> createTemplateFileBeanList(@NotNull List<? extends Uri> uris) {
            Intrinsics.checkNotNullParameter(uris, "uris");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = uris.iterator();
            while (it2.hasNext()) {
                arrayList.add(createTemplateFileBean$default(TemplateFileBean.INSTANCE, (Uri) it2.next(), null, null, 6, null));
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public TemplateFileBean() {
        List<TitleModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.titleList = emptyList;
        this.format = "";
        this.id = "";
    }

    public final boolean getExportFilePages() {
        return FileExtensionUtils.INSTANCE.isPdfFile(UriKt.getFileName(getUri(), ResManager.INSTANCE.getAppContext())) && CollectionKt.isNonBlank(this.pageIndexList);
    }

    @NotNull
    public final String getFormat() {
        return this.format;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final List<Integer> getPageIndexList() {
        return this.pageIndexList;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    @Nullable
    public final String getSaveFilePath() {
        return this.saveFilePath;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final List<TitleModel> getTitleList() {
        return this.titleList;
    }

    @NotNull
    public final Uri getUri() {
        Uri uri = this.uri;
        if (uri != null) {
            return uri;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uri");
        return null;
    }

    public final void setFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.format = str;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setPageIndexList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.pageIndexList = list;
    }

    public final void setPassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.password = str;
    }

    public final void setSaveFilePath(@Nullable String str) {
        this.saveFilePath = str;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setTitleList(@NotNull List<TitleModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.titleList = list;
    }

    public final void setUri(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<set-?>");
        this.uri = uri;
    }
}

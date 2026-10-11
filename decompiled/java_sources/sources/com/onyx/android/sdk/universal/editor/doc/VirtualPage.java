package com.onyx.android.sdk.universal.editor.doc;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.data.BoxCellInfo;
import com.onyx.android.sdk.geometry.data.BoxExtraInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.PaperBean;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 H2\u00020\u0001:\u0001HB\u0007¢\u0006\u0004\bF\u0010GJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0000J\u0006\u0010\u0005\u001a\u00020\u0000J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0002J\u0006\u0010\u0016\u001a\u00020\u0015R\"\u0010\u001d\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u00105\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006I"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "", "", "resetOrderIndex", "copy", "copyWithNewPageId", "Landroid/graphics/RectF;", "virtualPageSize", "updateVirtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "marginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "style", "updatePageMargin", "newOriginRectF", "updateOriginPageRectF", "", "degrees", "rotate", "updateTime", "updateBoxExtraInfo", "", "getColorTheme", "a", "F", "getOrderIndex", "()F", "setOrderIndex", "(F)V", CouchFieldKey.KEY_ORDER_INDEX, "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "b", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "getBoxCellInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "setBoxCellInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)V", "boxCellInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "c", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBox", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setBox", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "box", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;", "d", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;", "getConfig", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;", "setConfig", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)V", AbstractLogger.CONFIG, "", "e", Constants.HASIDCALL_INDEX_SIG, "getSaved", Constants.BOOLEAN_VALUE_SIG, "setSaved", "(Z)V", "saved", "", C6997f.f39671c, "J", "getUpdatedAt", "()J", "setUpdatedAt", "(J)V", "updatedAt", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class VirtualPage {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public float orderIndex = -1.0f;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public BoxCellInfo boxCellInfo = new BoxCellInfo(0, 0, 3, null);

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public BoxInfo box = new BoxInfo();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public VirtualPageConfig config = new VirtualPageConfig();

    /* renamed from: e, reason: from kotlin metadata */
    public boolean saved;

    /* renamed from: f, reason: from kotlin metadata */
    public long updatedAt;

    @Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b4\u00105J\u0010\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u0007\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\"\u0010\u000f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bJ\u001c\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00032\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\u0002J6\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u0019J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dJ \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u00172\b\u0010\"\u001a\u0004\u0018\u00010!J(\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010#\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00172\b\u0010\"\u001a\u0004\u0018\u00010!J\u000e\u0010&\u001a\u00020\u00032\u0006\u0010%\u001a\u00020$J\u0016\u0010\u000f\u001a\u00020\u00032\u0006\u0010(\u001a\u00020'2\u0006\u0010 \u001a\u00020\u0017J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020\t0)*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020\r0\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020\f0,*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001c\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00030\u000b*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010/\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\tH\u0002J$\u00100\u001a\u00020'2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bH\u0002J\u001a\u00102\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\r0\u00022\u0006\u00101\u001a\u00020'H\u0002J\"\u00103\u001a\u00020\u0006*\u00020\t2\u0006\u00101\u001a\u00020'2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\u0002H\u0002¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;", "", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "", "checkOrderIndex", "", "reorderOrderIndexByListIndex", "filterPdfPageList", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "model", "", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;", "pagePathInfoMap", "createVirtualPage", "virtualPage", "pagePathInfoList", "createVirtualPageModel", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "pageInfo", "contentId", CouchFieldKey.KEY_CONTENT_TYPE, "Landroid/graphics/RectF;", "pageRect", "", "colorTheme", "createVirtualPageByReader", EditorConstants.ARGS_DOC_ID, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "createDraftPage", "virtualPageSize", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "jsonBean", "contentOriginRectF", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "createVirtualPageFromKNoteNotePage", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;", "virtualPageConfig", "", "toVirtualPageModelList", "toPagePathInfoList", "", "toPageIdList", "toPageIdMap", "b", "a", AbstractLogger.CONFIG, "c", "d", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nVirtualPage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPage.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,385:1\n2661#2,7:386\n1864#2,3:393\n766#2:396\n857#2,2:397\n288#2,2:399\n1549#2:401\n1620#2,3:402\n1549#2:405\n1620#2,3:406\n1549#2:409\n1620#2,3:410\n*S KotlinDebug\n*F\n+ 1 VirtualPage.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion\n*L\n120#1:386,7\n130#1:393,3\n136#1:396\n136#1:397,2\n214#1:399,2\n372#1:401\n372#1:402,3\n374#1:405\n374#1:406,3\n378#1:409\n378#1:410,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ VirtualPage createVirtualPageByReader$default(Companion companion, ReaderPageInfo readerPageInfo, String str, String str2, RectF rectF, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                str = "";
            }
            String str3 = str;
            if ((i2 & 4) != 0) {
                str2 = ContentConstants.TYPE_IMPORT_PDF;
            }
            String str4 = str2;
            if ((i2 & 8) != 0) {
                rectF = new RectF();
            }
            RectF rectF2 = rectF;
            if ((i2 & 16) != 0) {
                i = 0;
            }
            return companion.createVirtualPageByReader(readerPageInfo, str3, str4, rectF2, i);
        }

        /* renamed from: a */
        public final VirtualPageConfig m40867a(VirtualPageModel model, Map<String, VirtualPagePathInfo> pagePathInfoMap) {
            VirtualPageConfig virtualPageConfig = new VirtualPageConfig();
            virtualPageConfig.setPageId(model.getUniqueId());
            virtualPageConfig.setContentOriginRectF(RectFKt.copy(model.getContentPageSize()));
            virtualPageConfig.setContentType(model.getContentType());
            VirtualPagePathInfo virtualPagePathInfo = pagePathInfoMap.get(VirtualPagePathInfo.INSTANCE.toPathKey(model));
            String absolutePath = virtualPagePathInfo != null ? virtualPagePathInfo.getAbsolutePath() : null;
            if (absolutePath == null) {
                absolutePath = "";
            }
            virtualPageConfig.setContentPath(absolutePath);
            virtualPageConfig.setContentPageId(model.getContentPageId());
            virtualPageConfig.setContentId(model.getContentId());
            virtualPageConfig.setColorTheme(model.getColorTheme());
            virtualPageConfig.setRotation(model.getRotation());
            return virtualPageConfig;
        }

        /* renamed from: b */
        public final RectF m40868b(VirtualPageModel model) {
            RectF copy = RectFKt.copy(model.getPageSizeWithMargin());
            if (RectKt.isEmptyInDocument$default(copy, 0.0f, 1, null)) {
                copy.set(model.getPageSize());
                Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "pageSizeWithMargin expected not empty, reset", new Object[0]);
            }
            return copy;
        }

        /* renamed from: c */
        public final String m40869c(List<VirtualPagePathInfo> list, VirtualPageConfig virtualPageConfig) {
            Object obj;
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                VirtualPagePathInfo virtualPagePathInfo = (VirtualPagePathInfo) obj;
                if (Intrinsics.areEqual(virtualPagePathInfo.getContentType(), virtualPageConfig.getContentType()) && Intrinsics.areEqual(virtualPagePathInfo.getAbsolutePath(), virtualPageConfig.getContentPath())) {
                    break;
                }
            }
            VirtualPagePathInfo virtualPagePathInfo2 = (VirtualPagePathInfo) obj;
            String relativePath = virtualPagePathInfo2 != null ? virtualPagePathInfo2.getRelativePath() : null;
            return relativePath == null ? "" : relativePath;
        }

        public final boolean checkOrderIndex(@NotNull List<VirtualPage> list) {
            List list2;
            Intrinsics.checkNotNullParameter(list, "<this>");
            list2 = CollectionsKt___CollectionsKt.toList(list);
            Iterator it2 = list2.iterator();
            if (!it2.hasNext()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object next = it2.next();
            while (it2.hasNext()) {
                VirtualPage virtualPage = (VirtualPage) it2.next();
                if (((VirtualPage) next).getOrderIndex() >= virtualPage.getOrderIndex()) {
                    return false;
                }
                next = virtualPage;
            }
            return true;
        }

        @NotNull
        public final VirtualPage createDraftPage(@NotNull String docId, @Nullable NoteCreateInfo noteCreateInfo) {
            TemplateJsonBean templateJsonBean;
            List<PaperBean> paperBeanList;
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(docId, "docId");
            RectF copy = RectFKt.copy(AppConfig.INSTANCE.getDraftPageOriginRectF());
            if (noteCreateInfo != null && (paperBeanList = noteCreateInfo.getPaperBeanList()) != null) {
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) paperBeanList);
                PaperBean paperBean = (PaperBean) firstOrNull;
                if (paperBean != null) {
                    templateJsonBean = paperBean.getPaperJsonBean();
                    return createVirtualPage(docId, copy, templateJsonBean);
                }
            }
            templateJsonBean = null;
            return createVirtualPage(docId, copy, templateJsonBean);
        }

        @NotNull
        public final VirtualPage createVirtualPage(@NotNull VirtualPageModel model, @NotNull Map<String, VirtualPagePathInfo> pagePathInfoMap) {
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(pagePathInfoMap, "pagePathInfoMap");
            VirtualPage virtualPage = new VirtualPage();
            virtualPage.setOrderIndex(model.getOrderIndex());
            virtualPage.setSaved(true);
            virtualPage.setUpdatedAt(model.getUpdatedAt());
            virtualPage.setBoxCellInfo(new BoxCellInfo(model.getCellRowIndex(), model.getCellColumnIndex()));
            virtualPage.getBox().setId(model.getUniqueId());
            virtualPage.getBox().setOriginRectF(model.getPageOriginRectFCopy());
            BoxInfo box = virtualPage.getBox();
            Companion companion = VirtualPage.INSTANCE;
            box.setOriginRectFWithMargin(companion.m40868b(model));
            virtualPage.getBox().setBox(RectFKt.copy(virtualPage.getBox().getOriginRectFWithMargin()));
            virtualPage.getBox().setRotation(model.getRotation());
            virtualPage.getBox().getMarginStyle().setColor(model.getMarginColor());
            virtualPage.getBox().getMarginStyle().setTemplateResource(model.getMarginTemplateResource());
            virtualPage.getBox().getMarginStyle().setTemplateSpace(model.getMarginTemplateSpace());
            virtualPage.getBox().getMarginStyle().setTemplateResourceId(model.getMarginTemplateResourceId());
            String contentPageId = model.getContentPageId();
            RectF copy = RectFKt.copy(model.getContentPageSize());
            RectF rectF = new RectF(virtualPage.getBox().getBox());
            RectF rectF2 = new RectF(copy);
            RectFKt.scaleToPage(rectF2, rectF);
            BoxInfo boxInfo = new BoxInfo();
            boxInfo.setId(contentPageId);
            boxInfo.setBox(rectF2);
            boxInfo.setOriginRectF(new RectF(copy));
            boxInfo.setRotation(model.getRotation());
            virtualPage.getBox().setContentInfo(boxInfo);
            BoxInfo boxInfo2 = new BoxInfo();
            boxInfo2.setId(model.getUniqueId());
            RectF pageOriginRectFCopy = model.getPageOriginRectFCopy();
            boxInfo2.setOriginRectF(new RectF(pageOriginRectFCopy));
            boxInfo2.setBox(new RectF(pageOriginRectFCopy));
            boxInfo2.setRotation(model.getRotation());
            virtualPage.getBox().setNoteInfo(boxInfo2);
            virtualPage.setConfig(companion.m40867a(model, pagePathInfoMap));
            virtualPage.updateBoxExtraInfo();
            return virtualPage;
        }

        @NotNull
        public final VirtualPage createVirtualPageByReader(@NotNull ReaderPageInfo pageInfo, @NotNull String contentId, @NotNull String contentType, @NotNull RectF pageRect, int colorTheme) {
            Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
            Intrinsics.checkNotNullParameter(contentId, "contentId");
            Intrinsics.checkNotNullParameter(contentType, "contentType");
            Intrinsics.checkNotNullParameter(pageRect, "pageRect");
            VirtualPage virtualPage = new VirtualPage();
            virtualPage.getBox().setId(UUIDUtils.INSTANCE.rawUUID());
            RectF pageOriginSize = pageInfo.getPageOriginSize();
            if (RectKt.isNullOrEmpty(pageRect)) {
                pageRect = SizeKt.toRectF(SizeFormat.f45503A4.getSize());
            }
            RectF copy = RectFKt.copy(pageOriginSize);
            RectFKt.scaleToWidth(copy, pageRect);
            RectFKt.offsetToOrigin(copy);
            virtualPage.updateVirtualPageBoxInfo(copy);
            String pageId = pageInfo.getPageId();
            RectF rectF = new RectF(pageOriginSize);
            RectF rectF2 = new RectF(virtualPage.getBox().getBox());
            RectF rectF3 = new RectF(rectF);
            RectFKt.scaleToPage(rectF3, rectF2);
            BoxInfo boxInfo = new BoxInfo();
            boxInfo.setId(pageId);
            boxInfo.setBox(rectF3);
            boxInfo.setOriginRectF(new RectF(rectF));
            virtualPage.getBox().setContentInfo(boxInfo);
            BoxInfo boxInfo2 = new BoxInfo();
            boxInfo2.setId(virtualPage.getBox().getId());
            RectF rectF4 = new RectF(copy);
            boxInfo2.setOriginRectF(new RectF(rectF4));
            boxInfo2.setBox(new RectF(rectF4));
            virtualPage.getBox().setNoteInfo(boxInfo2);
            virtualPage.setConfig(new VirtualPageConfig());
            virtualPage.getConfig().setPageId(virtualPage.getBox().getId());
            virtualPage.getConfig().setContentOriginRectF(RectFKt.copy(rectF));
            virtualPage.getConfig().setContentId(contentId);
            virtualPage.getConfig().setContentType(contentType);
            virtualPage.getConfig().setContentPath(pageInfo.getPath());
            virtualPage.getConfig().setContentPageId(pageId);
            virtualPage.getConfig().setSizeFormat(SizeFormat.CUSTOM);
            virtualPage.getConfig().setColorTheme(colorTheme);
            virtualPage.updateTime();
            virtualPage.updateBoxExtraInfo();
            return virtualPage;
        }

        @NotNull
        public final VirtualPage createVirtualPageFromKNoteNotePage(@NotNull NotePage notePage) {
            Intrinsics.checkNotNullParameter(notePage, "notePage");
            RectF rectF = new RectF(0.0f, 0.0f, notePage.getPageInfo().getWidth(), notePage.getPageInfo().getHeight());
            VirtualPageConfig virtualPageConfig = new VirtualPageConfig();
            virtualPageConfig.setPageId(notePage.getPageUniqueId());
            virtualPageConfig.setContentPath("");
            virtualPageConfig.setContentOriginRectF(RectFKt.copy(rectF));
            return createVirtualPage(virtualPageConfig, rectF);
        }

        @NotNull
        public final VirtualPageModel createVirtualPageModel(@NotNull VirtualPage virtualPage, @NotNull List<VirtualPagePathInfo> pagePathInfoList) {
            Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
            Intrinsics.checkNotNullParameter(pagePathInfoList, "pagePathInfoList");
            VirtualPageModel virtualPageModel = new VirtualPageModel();
            virtualPageModel.setOrderIndex(virtualPage.getOrderIndex());
            virtualPageModel.setPageSize(virtualPage.getBox().getCellOriginRectFCopy());
            virtualPageModel.setPageSizeWithMargin(RectFKt.copy(virtualPage.getBox().getOriginRectFWithMargin()));
            virtualPageModel.setMarginColor(virtualPage.getBox().getMarginStyle().getColor());
            virtualPageModel.setMarginTemplateResource(virtualPage.getBox().getMarginStyle().getTemplateResource());
            virtualPageModel.setMarginTemplateResourceId(virtualPage.getBox().getMarginStyle().getTemplateResourceId());
            virtualPageModel.setMarginTemplateSpace(virtualPage.getBox().getMarginStyle().getTemplateSpace());
            virtualPageModel.setUpdatedAt(virtualPage.getUpdatedAt());
            VirtualPage.INSTANCE.m40870d(virtualPageModel, virtualPage.getConfig(), pagePathInfoList);
            BoxInfo contentInfo = virtualPage.getBox().getContentInfo();
            if (contentInfo != null) {
                virtualPageModel.setContentPageSize(contentInfo.getOriginRectF());
            }
            return virtualPageModel;
        }

        /* renamed from: d */
        public final void m40870d(VirtualPageModel virtualPageModel, VirtualPageConfig virtualPageConfig, List<VirtualPagePathInfo> list) {
            virtualPageModel.setUniqueId(virtualPageConfig.getPageId());
            virtualPageModel.setContentPageSize(RectFKt.copy(virtualPageConfig.getContentOriginRectF()));
            virtualPageModel.setContentType(virtualPageConfig.getContentType());
            virtualPageModel.setContentRelativePath(m40869c(list, virtualPageConfig));
            virtualPageModel.setContentPageId(virtualPageConfig.getContentPageId());
            virtualPageModel.setContentId(virtualPageConfig.getContentId());
            virtualPageModel.setColorTheme(virtualPageConfig.getColorTheme());
            virtualPageModel.setRotation(virtualPageConfig.getRotation());
        }

        @NotNull
        public final List<VirtualPage> filterPdfPageList(@NotNull List<VirtualPage> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (ContentConstants.INSTANCE.isPDF(((VirtualPage) obj).getConfig().getContentType())) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }

        public final void reorderOrderIndexByListIndex(@NotNull List<VirtualPage> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                ((VirtualPage) obj).setOrderIndex(i2);
                i = i2;
            }
        }

        @NotNull
        public final Collection<String> toPageIdList(@NotNull List<VirtualPage> list) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(list, "<this>");
            List<VirtualPage> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((VirtualPage) it2.next()).getConfig().getPageId());
            }
            return arrayList;
        }

        @NotNull
        public final Map<String, VirtualPage> toPageIdMap(@NotNull List<VirtualPage> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            return CollectionKt.toMap(list, new Function1<VirtualPage, String>() { // from class: com.onyx.android.sdk.universal.editor.doc.VirtualPage$Companion$toPageIdMap$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final String invoke(@NotNull VirtualPage it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.getConfig().getPageId();
                }
            });
        }

        @NotNull
        public final List<VirtualPagePathInfo> toPagePathInfoList(@NotNull List<VirtualPage> list) {
            int collectionSizeOrDefault;
            List distinct;
            int collectionSizeOrDefault2;
            Intrinsics.checkNotNullParameter(list, "<this>");
            List<VirtualPage> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (VirtualPage virtualPage : list2) {
                arrayList.add(new VirtualPageAbsolutePathInfo(virtualPage.getConfig().getContentType(), virtualPage.getConfig().getContentPath()));
            }
            distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
            List list3 = distinct;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(VirtualPagePathInfoKt.toVirtualPagePathInfo((VirtualPageAbsolutePathInfo) it2.next()));
            }
            return arrayList2;
        }

        @NotNull
        public final List<VirtualPageModel> toVirtualPageModelList(@NotNull List<VirtualPage> list) {
            Sequence asSequence;
            Sequence map;
            List<VirtualPageModel> mutableList;
            Intrinsics.checkNotNullParameter(list, "<this>");
            final List<VirtualPagePathInfo> pagePathInfoList = toPagePathInfoList(list);
            asSequence = CollectionsKt___CollectionsKt.asSequence(list);
            map = SequencesKt___SequencesKt.map(asSequence, new Function1<VirtualPage, VirtualPageModel>() { // from class: com.onyx.android.sdk.universal.editor.doc.VirtualPage$Companion$toVirtualPageModelList$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final VirtualPageModel invoke(@NotNull VirtualPage it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return VirtualPage.INSTANCE.createVirtualPageModel(it2, pagePathInfoList);
                }
            });
            mutableList = SequencesKt___SequencesKt.toMutableList(map);
            return mutableList;
        }

        public Companion() {
        }

        @NotNull
        public final VirtualPage createVirtualPage(@NotNull String docId, @NotNull RectF virtualPageSize, @Nullable TemplateJsonBean jsonBean) {
            Intrinsics.checkNotNullParameter(docId, "docId");
            Intrinsics.checkNotNullParameter(virtualPageSize, "virtualPageSize");
            return createVirtualPage(docId, virtualPageSize, virtualPageSize, jsonBean);
        }

        @NotNull
        public final VirtualPage createVirtualPage(@NotNull String docId, @NotNull RectF contentOriginRectF, @NotNull RectF virtualPageSize, @Nullable TemplateJsonBean jsonBean) {
            Intrinsics.checkNotNullParameter(docId, "docId");
            Intrinsics.checkNotNullParameter(contentOriginRectF, "contentOriginRectF");
            Intrinsics.checkNotNullParameter(virtualPageSize, "virtualPageSize");
            Templates templates = Templates.INSTANCE;
            VirtualPageConfig virtualPageConfig = new VirtualPageConfig();
            virtualPageConfig.setPageId(UUIDUtils.INSTANCE.shortUUID());
            virtualPageConfig.setContentOriginRectF(RectFKt.copy(contentOriginRectF));
            return createVirtualPage(templates.updatePageConfigByTemplate(virtualPageConfig, jsonBean, docId), virtualPageSize);
        }

        @NotNull
        public final VirtualPage createVirtualPage(@NotNull VirtualPageConfig virtualPageConfig, @NotNull RectF virtualPageSize) {
            Intrinsics.checkNotNullParameter(virtualPageConfig, "virtualPageConfig");
            Intrinsics.checkNotNullParameter(virtualPageSize, "virtualPageSize");
            VirtualPage virtualPage = new VirtualPage();
            virtualPage.setConfig(virtualPageConfig);
            virtualPage.updateTime();
            virtualPage.getBox().setId(virtualPageConfig.getPageId());
            virtualPage.getBox().setRotation(virtualPage.getConfig().getRotation());
            RectF copy = RectFKt.copy(virtualPageConfig.getContentOriginRectF());
            virtualPage.updateVirtualPageBoxInfo(virtualPageSize);
            BoxInfo boxInfo = new BoxInfo();
            boxInfo.setId(virtualPageConfig.getContentPageId());
            boxInfo.setBox(copy);
            boxInfo.setOriginRectF(RectFKt.copy(virtualPageConfig.getContentOriginRectF()));
            boxInfo.setRotation(virtualPage.getConfig().getRotation());
            virtualPage.getBox().setContentInfo(boxInfo);
            BoxInfo boxInfo2 = new BoxInfo();
            boxInfo2.setId(virtualPageConfig.getPageId());
            boxInfo2.setOriginRectF(RectFKt.copy(virtualPageSize));
            boxInfo2.setBox(RectFKt.copy(virtualPageSize));
            boxInfo2.setRotation(virtualPage.getConfig().getRotation());
            virtualPage.getBox().setNoteInfo(boxInfo2);
            virtualPage.updateBoxExtraInfo();
            return virtualPage;
        }
    }

    @NotNull
    public final VirtualPage copy() {
        VirtualPage virtualPage = new VirtualPage();
        virtualPage.box = this.box.copy();
        virtualPage.config = this.config.copy();
        virtualPage.orderIndex = this.orderIndex;
        virtualPage.boxCellInfo = BoxCellInfo.copy$default(this.boxCellInfo, 0, 0, 3, null);
        virtualPage.saved = this.saved;
        virtualPage.updatedAt = this.updatedAt;
        return virtualPage;
    }

    @NotNull
    public final VirtualPage copyWithNewPageId() {
        VirtualPage copy = copy();
        String shortUUID = UUIDUtils.INSTANCE.shortUUID();
        copy.resetOrderIndex();
        copy.config.setPageId(shortUUID);
        copy.box.setId(shortUUID);
        BoxInfo noteInfo = copy.box.getNoteInfo();
        if (noteInfo != null) {
            noteInfo.setId(shortUUID);
        }
        copy.saved = false;
        updateTime();
        return copy;
    }

    @NotNull
    public final BoxInfo getBox() {
        return this.box;
    }

    @NotNull
    public final BoxCellInfo getBoxCellInfo() {
        return this.boxCellInfo;
    }

    public final int getColorTheme() {
        return this.config.getColorTheme();
    }

    @NotNull
    public final VirtualPageConfig getConfig() {
        return this.config;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    public final boolean getSaved() {
        return this.saved;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    public final void resetOrderIndex() {
        this.orderIndex = -1.0f;
    }

    public final void rotate(float degrees) {
        BoxInfo.INSTANCE.rotate(this.box, degrees);
        this.config.setRotation(this.box.getRotation());
        VirtualPageConfig virtualPageConfig = this.config;
        virtualPageConfig.setContentOriginRectF(com.onyx.android.sdk.base.lite.extension.RectFKt.rotatedSize$default(virtualPageConfig.getContentOriginRectF(), degrees, 0.0f, 0.0f, 6, null));
    }

    public final void setBox(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.box = boxInfo;
    }

    public final void setBoxCellInfo(@NotNull BoxCellInfo boxCellInfo) {
        Intrinsics.checkNotNullParameter(boxCellInfo, "<set-?>");
        this.boxCellInfo = boxCellInfo;
    }

    public final void setConfig(@NotNull VirtualPageConfig virtualPageConfig) {
        Intrinsics.checkNotNullParameter(virtualPageConfig, "<set-?>");
        this.config = virtualPageConfig;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setSaved(boolean z) {
        this.saved = z;
    }

    public final void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    public final void updateBoxExtraInfo() {
        BoxInfo boxInfo = this.box;
        BoxExtraInfo boxExtraInfo = new BoxExtraInfo();
        boxExtraInfo.setContentPath(this.config.getContentPath());
        boxExtraInfo.setBoxCellInfo(BoxCellInfo.copy$default(this.boxCellInfo, 0, 0, 3, null));
        boxInfo.setExtraInfo(boxExtraInfo);
    }

    public final void updateOriginPageRectF(@NotNull RectF newOriginRectF) {
        Intrinsics.checkNotNullParameter(newOriginRectF, "newOriginRectF");
        this.config.setContentOriginRectF(RectFKt.copy(newOriginRectF));
        updateVirtualPageBoxInfo(RectFKt.copy(newOriginRectF));
        BoxInfo contentInfo = this.box.getContentInfo();
        if (contentInfo != null) {
            contentInfo.setOriginRectF(RectFKt.copy(newOriginRectF));
        }
        BoxInfo noteInfo = this.box.getNoteInfo();
        if (noteInfo == null) {
            return;
        }
        noteInfo.setOriginRectF(RectFKt.copy(newOriginRectF));
    }

    public final void updatePageMargin(@NotNull MarginPercent marginPercent, @NotNull MarginStyle style) {
        Intrinsics.checkNotNullParameter(marginPercent, "marginPercent");
        Intrinsics.checkNotNullParameter(style, "style");
        BoxInfo boxInfo = this.box;
        boxInfo.setOriginRectFWithMargin(marginPercent.toRectFWithMargin(boxInfo.getOriginRectF()));
        boxInfo.setBox(RectFKt.copy(boxInfo.getOriginRectFWithMargin()));
        boxInfo.setMarginStyle(style);
    }

    public final void updateTime() {
        this.updatedAt = new Date().getTime();
    }

    public final void updateVirtualPageBoxInfo(@NotNull RectF virtualPageSize) {
        Intrinsics.checkNotNullParameter(virtualPageSize, "virtualPageSize");
        BoxInfo.INSTANCE.updateVirtualPageSize(this.box, virtualPageSize);
    }
}

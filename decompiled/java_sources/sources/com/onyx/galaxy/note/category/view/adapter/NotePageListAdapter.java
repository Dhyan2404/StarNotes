package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.PageModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SortModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.category.p044ui.TagsListPopup;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import com.onyx.galaxy.note.category.view.drag.NotePageDragListener;
import com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel;
import com.onyx.galaxy.note.databinding.ItemNoteGridCreateDisplayBinding;
import com.onyx.galaxy.note.databinding.ItemNoteLinearCreateDisplayBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListGridFolderBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListGridNoteLandBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListGridNotePortraitBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListGridPageTagLandBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListGridPageTagPortraitBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearFolderBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearNoteLandBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearNotePortraitBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearPageTagLandBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearPageTagPortraitBinding;
import com.onyx.galaxy.note.editor.view.popup.SyncErrorPopup;
import com.onyx.galaxy.note.utils.ThumbnailColorUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\u0017\u0018\u0000 ¢\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u001a¢\u0001£\u0001¤\u0001¥\u0001¦\u0001§\u0001¨\u0001©\u0001ª\u0001«\u0001¬\u0001\u00ad\u0001®\u0001B\t¢\u0006\u0006\b \u0001\u0010¡\u0001J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J0\u0010\u0013\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\"\u0010\u0014\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001bH\u0002J\u001e\u0010&\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020!2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0002J\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00020$0#2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0002J\u001e\u0010)\u001a\u00020\u00032\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#2\u0006\u0010(\u001a\u00020\fH\u0002J\u0010\u0010,\u001a\u00020$2\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010/\u001a\u00020$2\u0006\u0010.\u001a\u00020-H\u0002J\u0018\u00100\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020*H\u0002J\u0018\u00101\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\"\u00102\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010-H\u0002J\u0018\u00103\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0018\u00105\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u00104\u001a\u00020-H\u0002J\b\u00106\u001a\u00020\u001dH\u0002J\u0010\u00108\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0002J0\u00109\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0003J\u0010\u0010;\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010=\u001a\u00020<H\u0016J\u0006\u0010?\u001a\u00020\u0003J\u000e\u0010A\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u0007J\u000e\u0010C\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\u001dJ\u0016\u0010E\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\u0007J\u001a\u0010H\u001a\u00020\u00032\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001d0FJ\u000e\u0010J\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u001dJ \u0010M\u001a\u00020\u00032\u0018\u0010L\u001a\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00030KJ\u000e\u0010P\u001a\u00020\u00032\u0006\u0010O\u001a\u00020NJ\u0016\u0010R\u001a\u00020\u00032\u000e\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u0010J\u0014\u0010U\u001a\u00020\u00032\f\u0010T\u001a\b\u0012\u0004\u0012\u00020S0\u0010J\u001e\u0010Y\u001a\u00020\u00032\u0006\u0010V\u001a\u00020$2\u0006\u0010W\u001a\u00020$2\u0006\u0010X\u001a\u00020\u0007J\u000e\u0010[\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020$J\u000e\u0010\\\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020$J\u0006\u0010]\u001a\u00020\u0003R\"\u0010d\u001a\u00020^8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR$\u0010@\u001a\u00020\u00072\u0006\u0010e\u001a\u00020\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bf\u00101\u001a\u0004\bg\u0010hRB\u0010q\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020j0i2\u0012\u0010k\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020j0i8\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010l\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR\"\u0010y\u001a\u00020r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bs\u0010t\u001a\u0004\bu\u0010v\"\u0004\bw\u0010xR$\u0010\u0081\u0001\u001a\u00020z8\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b{\u0010|\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R)\u0010\u0088\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R+\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b:\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R+\u0010\u0096\u0001\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001\"\u0006\b\u0094\u0001\u0010\u0095\u0001R!\u0010\u0097\u0001\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u001b0i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010lR\u0016\u0010\u0099\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u00102R\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0091\u0001R\u0018\u0010\u009c\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010\u0083\u0001R\u0018\u0010\u009d\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b2\u0010\u0083\u0001R,\u0010\u009f\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0003\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b6\u0010\u009e\u0001¨\u0006¯\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/galaxy/note/category/data/NotePageBean;", "", "t", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "noteModelBean", "", "S", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "pageModel", "T", "Landroid/view/View;", "itemView", "position", "item", "", "", "payloads", "E", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Y", "X", "view", "U", "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", CouchFieldKey.KEY_SYNC_STATUS, "", "P", "", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "interval", "N", "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;", "llTags", "", "", CouchFieldKey.KEY_TAG_ID_LIST, "v", "J", Constants.ELEMNAME_ANCHOR_STRING, "V", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "L", "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", "pageModelBean", "K", "Q", "I", "F", "W", "model", "R", "G", "parentView", "H", "B", "z", "M", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "onViewRecycled", "resetDragView", "displayType", "setDisplayType", "enable", "enableMulSelect", "selected", "updateSelect", "", "changeItems", "updateSwipeSelectItems", "show", "setShowUpdateAt", "Lkotlin/Function2;", "callback", "setClickCallback", "Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;", NotificationCompat.CATEGORY_EVENT, "handleTitleUpdated", "docIds", "onDocSyncSuccess", "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", "syncNoteList", "handleSyncNoteProgressChangedEvent", "originId", "targetId", "dragState", BaiduYunConstant.OPERATION_MOVE, "id", "getNotePosition", "getNoteTypePosition", "updateHeaderLockView", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "getSelectionList", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "setSelectionList", "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V", "selectionList", "<set-?>", "u", "getDisplayType", "()I", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "value", "Ljava/util/Map;", "getTagByIdMap", "()Ljava/util/Map;", "setTagByIdMap", "(Ljava/util/Map;)V", "tagByIdMap", "Lcom/onyx/android/sdk/base/data/SortBy;", "w", "Lcom/onyx/android/sdk/base/data/SortBy;", "getSortBy", "()Lcom/onyx/android/sdk/base/data/SortBy;", "setSortBy", "(Lcom/onyx/android/sdk/base/data/SortBy;)V", "sortBy", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "x", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "getSelectType", "()Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "setSelectType", "(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V", "selectType", "y", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getEnableDrag", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setEnableDrag", "(Z)V", "enableDrag", "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "getNoteQuotaViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;", "setNoteQuotaViewModel", "(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V", "noteQuotaViewModel", "A", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getSelectedTagId", "()Ljava/lang/String;", "setSelectedTagId", "(Ljava/lang/String;)V", "selectedTagId", "lastSyncSuccessTime", "", "shadowAlpha", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "dragNoteId", "isMulSelect", "isShowUpdateAt", "Lkotlin/jvm/functions/Function2;", "clickCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "GridFolderItemViewHolder", "GridHeaderItemViewHolder", "GridNoteLandItemViewHolder", "GridNotePortraitItemViewHolder", "GridPageTagLandItemViewHolder", "GridPageTagPortraitItemViewHolder", "LinearFolderItemViewHolder", "LinearHeaderItemViewHolder", "LinearNoteLandItemViewHolder", "LinearNotePortraitItemViewHolder", "LinearPageTagLandItemViewHolder", "LinearPageTagPortraitItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,1233:1\n256#2,2:1234\n277#2,2:1236\n256#2,2:1238\n326#2,4:1240\n326#2,4:1244\n188#2,3:1253\n277#2,2:1273\n326#2,4:1275\n326#2,4:1279\n277#2,2:1283\n32#3,5:1248\n41#3,5:1285\n1603#4,9:1256\n1855#4:1265\n1856#4:1267\n1612#4:1268\n1549#4:1269\n1620#4,3:1270\n350#4,7:1290\n350#4,7:1298\n288#4,2:1306\n1855#4:1308\n350#4,7:1309\n1856#4:1316\n1855#4:1317\n766#4:1318\n857#4,2:1319\n1856#4:1322\n766#4:1323\n857#4,2:1324\n1855#4,2:1326\n350#4,7:1328\n766#4:1335\n857#4,2:1336\n350#4,7:1338\n350#4,7:1345\n1#5:1266\n1#5:1321\n215#6:1297\n216#6:1305\n1313#7,2:1352\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n*L\n696#1:1234,2\n698#1:1236,2\n717#1:1238,2\n730#1:1240,4\n735#1:1244,4\n803#1:1253,3\n902#1:1273,2\n952#1:1275,4\n957#1:1279,4\n977#1:1283,2\n790#1:1248,5\n996#1:1285,5\n840#1:1256,9\n840#1:1265\n840#1:1267\n840#1:1268\n842#1:1269\n842#1:1270,3\n1086#1:1290,7\n1114#1:1298,7\n1130#1:1306,2\n1140#1:1308\n1141#1:1309,7\n1140#1:1316\n1152#1:1317\n1155#1:1318\n1155#1:1319,2\n1152#1:1322\n1187#1:1323\n1187#1:1324,2\n1195#1:1326,2\n1215#1:1328,7\n1221#1:1335\n1221#1:1336,2\n1221#1:1338,7\n1227#1:1345,7\n840#1:1266\n1112#1:1297\n1112#1:1305\n850#1:1352,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NotePageListAdapter extends BaseMultiItemAdapter<NotePageBean> {

    @NotNull
    public static final String PAY_LOAD_KEY_HEADER_UPDATE_LOCK = "pay_load_key_header_lock";

    @NotNull
    public static final String PAY_LOAD_KEY_REFRESH_VIEW = "pay_load_key_refresh_view";

    @NotNull
    public static final String PAY_LOAD_KEY_SELECTED = "pay_load_key_selected";

    @NotNull
    public static final String PAY_LOAD_KEY_SYNC_PROGRESS = "pay_load_key_sync_progress";

    @NotNull
    public static final String PAY_LOAD_KEY_TOGGLE_MULTI_SELECT = "pay_load_key_toggle_multi_select";

    @NotNull
    public static final String TAG = "NotePageListAdapter";
    public static final int TYPE_GRID_DISPLAY = 1;
    public static final int TYPE_GRID_FOLDER = 3;
    public static final int TYPE_GRID_HEADER = 99;
    public static final int TYPE_GRID_NOTE_LAND = 2;
    public static final int TYPE_GRID_NOTE_PORTRAIT = 1;
    public static final int TYPE_GRID_PAGE_TAG_LAND = 8;
    public static final int TYPE_GRID_PAGE_TAG_PORTRAIT = 7;
    public static final int TYPE_LINEAR_FOLDER = 6;
    public static final int TYPE_LINEAR_HEADER = 98;
    public static final int TYPE_LINEAR_NOTE_LAND = 5;
    public static final int TYPE_LINEAR_NOTE_PORTRAIT = 4;
    public static final int TYPE_LINEAR_PAGE_TAG_LAND = 10;
    public static final int TYPE_LINEAR_PAGE_TAG_PORTRAIT = 9;
    public static final int TYPE_LIST_DISPLAY = 2;

    /* renamed from: A, reason: from kotlin metadata */
    @Nullable
    public String selectedTagId;

    /* renamed from: B, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Long> lastSyncSuccessTime;

    /* renamed from: C, reason: from kotlin metadata */
    public final float shadowAlpha;

    /* renamed from: D, reason: from kotlin metadata */
    @Nullable
    public String dragNoteId;

    /* renamed from: E, reason: from kotlin metadata */
    public boolean isMulSelect;

    /* renamed from: F, reason: from kotlin metadata */
    public boolean isShowUpdateAt;

    /* renamed from: G, reason: from kotlin metadata */
    @Nullable
    public Function2<? super Boolean, ? super View, Unit> clickCallback;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public NoteModelBeanList selectionList;

    /* renamed from: u, reason: from kotlin metadata */
    public int displayType;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public Map<String, SyncTagModel> tagByIdMap;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public SortBy sortBy;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public NoteSelectType selectType;

    /* renamed from: y, reason: from kotlin metadata */
    public boolean enableDrag;

    /* renamed from: z, reason: from kotlin metadata */
    @Nullable
    public NoteQuotaViewModel noteQuotaViewModel;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridFolderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridFolderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridFolderBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridFolderItemViewHolder(@NotNull ItemNoteListGridFolderBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridFolderBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridHeaderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteGridCreateDisplayBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteGridCreateDisplayBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteGridCreateDisplayBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteGridCreateDisplayBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridHeaderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteGridCreateDisplayBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridHeaderItemViewHolder(@NotNull ItemNoteGridCreateDisplayBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteGridCreateDisplayBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridNoteLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridNoteLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridNoteLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridNoteLandItemViewHolder(@NotNull ItemNoteListGridNoteLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridNoteLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridNotePortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridNotePortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridNotePortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridNotePortraitItemViewHolder(@NotNull ItemNoteListGridNotePortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridNotePortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridPageTagLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagLandBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridPageTagLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridPageTagLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridPageTagLandItemViewHolder(@NotNull ItemNoteListGridPageTagLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridPageTagLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$GridPageTagPortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagPortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagPortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagPortraitBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridPageTagPortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridPageTagPortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridPageTagPortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridPageTagPortraitItemViewHolder(@NotNull ItemNoteListGridPageTagPortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridPageTagPortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearFolderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearFolderBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearFolderItemViewHolder(@NotNull ItemNoteListLinearFolderBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearFolderBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearHeaderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteLinearCreateDisplayBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearHeaderItemViewHolder(@NotNull ItemNoteLinearCreateDisplayBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteLinearCreateDisplayBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearNoteLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearNoteLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearNoteLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearNoteLandItemViewHolder(@NotNull ItemNoteListLinearNoteLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearNoteLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearNotePortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearNotePortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearNotePortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearNotePortraitItemViewHolder(@NotNull ItemNoteListLinearNotePortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearNotePortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearPageTagLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagLandBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearPageTagLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearPageTagLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearPageTagLandItemViewHolder(@NotNull ItemNoteListLinearPageTagLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearPageTagLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearPageTagPortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagPortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagPortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagPortraitBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearPageTagPortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearPageTagPortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearPageTagPortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearPageTagPortraitItemViewHolder(@NotNull ItemNoteListLinearPageTagPortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearPageTagPortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    public NotePageListAdapter() {
        super(null, 1, null);
        this.selectionList = new NoteModelBeanList();
        this.displayType = 1;
        this.tagByIdMap = new LinkedHashMap();
        this.sortBy = SortBy.UpdateAt;
        this.selectType = NoteSelectType.TAB_ALL;
        this.enableDrag = true;
        this.lastSyncSuccessTime = new LinkedHashMap();
        this.shadowAlpha = ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_shadow_alpha, 1, 1);
        this.isShowUpdateAt = true;
        m44138t();
    }

    /* renamed from: A */
    public static final boolean m44101A(GestureDetector gesture, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gesture, "$gesture");
        gesture.onTouchEvent(motionEvent);
        return true;
    }

    /* renamed from: D */
    public static final boolean m44102D(NotePageListAdapter this$0, View itemView, NoteModelBean noteModelBean, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemView, "$itemView");
        if (this$0.isMulSelect || !this$0.enableDrag) {
            return true;
        }
        this$0.m44121I(itemView, noteModelBean);
        return true;
    }

    /* renamed from: Z */
    public static final void m44103Z(NotePageListAdapter this$0, ImageView imageView, NoteModelBean item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNull(imageView);
        this$0.m44133U(imageView, item);
    }

    /* renamed from: u */
    public static final int m44111u(NotePageListAdapter this$0, int i, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "list");
        NotePageBean notePageBean = (NotePageBean) list.get(i);
        if (notePageBean.isNoteType()) {
            NoteModelBean noteModelBean = notePageBean.getNoteModelBean();
            Intrinsics.checkNotNull(noteModelBean);
            return this$0.m44131S(noteModelBean);
        }
        if (!notePageBean.isPageType()) {
            return this$0.displayType == 1 ? 99 : 98;
        }
        PageModelBean pageModelBean = notePageBean.getPageModelBean();
        Intrinsics.checkNotNull(pageModelBean);
        return this$0.m44132T(pageModelBean);
    }

    /* renamed from: w */
    public static final void m44112w(TagsLinearLayout llTags, List nameColorPairList, final NotePageListAdapter this$0, final List tagIdList) {
        Intrinsics.checkNotNullParameter(llTags, "$llTags");
        Intrinsics.checkNotNullParameter(nameColorPairList, "$nameColorPairList");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tagIdList, "$tagIdList");
        llTags.initTags(nameColorPairList);
        if (this$0.displayType != 2) {
            ViewKt.click$default(llTags, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i0k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NotePageListAdapter.m44114y(NotePageListAdapter.this, tagIdList, view);
                }
            }, 1, null);
            return;
        }
        Iterator<View> it2 = ViewGroupKt.getChildren(llTags).iterator();
        while (it2.hasNext()) {
            ViewKt.click$default(it2.next(), 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.h0k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NotePageListAdapter.m44113x(NotePageListAdapter.this, tagIdList, view);
                }
            }, 1, null);
        }
    }

    /* renamed from: x */
    public static final void m44113x(NotePageListAdapter this$0, List tagIdList, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tagIdList, "$tagIdList");
        Intrinsics.checkNotNull(view);
        this$0.m44134V(tagIdList, view);
    }

    /* renamed from: y */
    public static final void m44114y(NotePageListAdapter this$0, List tagIdList, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tagIdList, "$tagIdList");
        Intrinsics.checkNotNull(view);
        this$0.m44134V(tagIdList, view);
    }

    /* renamed from: B */
    public final void m44115B(View itemView, int position, NotePageBean item, List<? extends Object> payloads) {
        Object firstOrNull;
        if (payloads.isEmpty()) {
            m44140z(itemView);
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(payloads);
        if (firstOrNull instanceof Map) {
            Map map = (Map) firstOrNull;
            String str = (String) map.get(PAY_LOAD_KEY_HEADER_UPDATE_LOCK);
            Boolean bool = (Boolean) map.get(PAY_LOAD_KEY_TOGGLE_MULTI_SELECT);
            if (str == null && bool == null) {
                return;
            }
            m44125M(itemView);
        }
    }

    /* renamed from: C */
    public final void m44116C(final View itemView, int position, final NoteModelBean item) {
        float f = Intrinsics.areEqual(this.dragNoteId, item != null ? item.getUniqueId() : null) ? this.shadowAlpha : 1.0f;
        CheckBox checkBox = (CheckBox) itemView.findViewById(C10651R.id.cb_sel);
        TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) itemView.findViewById(C10651R.id.ll_tags);
        TextView textView = (TextView) itemView.findViewById(C10651R.id.tv_time);
        TextView textView2 = (TextView) itemView.findViewById(C10651R.id.tv_name);
        View findViewById = itemView.findViewById(C10651R.id.v_click_open);
        itemView.setAlpha(f);
        Intrinsics.checkNotNull(checkBox);
        checkBox.setVisibility(this.isMulSelect ? 0 : 8);
        checkBox.setChecked(CollectionKt.contains(this.selectionList, new Function1<NoteModelBean, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$bindNoteViewHolder$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteModelBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String uniqueId = it2.getUniqueId();
                NoteModelBean noteModelBean = NoteModelBean.this;
                return Boolean.valueOf(Intrinsics.areEqual(uniqueId, noteModelBean != null ? noteModelBean.getUniqueId() : null));
            }
        }));
        Intrinsics.checkNotNull(item);
        if (item.isEnabled()) {
            Intrinsics.checkNotNull(tagsLinearLayout);
            m44139v(tagsLinearLayout, item.getTagIdList());
        } else {
            tagsLinearLayout.removeAllViews();
        }
        textView.setText(m44124L(item));
        if (item.getTitle() != null) {
            textView2.setCompoundDrawablePadding((int) textView2.getContext().getResources().getDimension(C7384R.dimen.dp_4));
            textView2.setText(item.getTitle());
            Intrinsics.checkNotNull(textView2);
            ViewGroup.LayoutParams layoutParams = textView2.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginEnd(0);
            textView2.setLayoutParams(marginLayoutParams);
        } else {
            textView2.setCompoundDrawablePadding(0);
            Intrinsics.checkNotNull(textView2);
            ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
            marginLayoutParams2.setMarginEnd((int) textView2.getContext().getResources().getDimension(C7384R.dimen.dp_8));
            textView2.setLayoutParams(marginLayoutParams2);
        }
        m44129Q(itemView, item);
        m44137Y(item, itemView);
        findViewById.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.f0k
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m44102D;
                m44102D = NotePageListAdapter.m44102D(NotePageListAdapter.this, itemView, item, view);
                return m44102D;
            }
        });
        itemView.setTag(item);
        itemView.setOnDragListener(new NotePageDragListener(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0072, code lost:
    
        if (r7.isSyncSuccess() == true) goto L21;
     */
    @android.annotation.SuppressLint({"CutPasteId"})
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m44117E(android.view.View r6, int r7, final com.onyx.android.sdk.replicator.note.bean.NoteModelBean r8, java.util.List<? extends java.lang.Object> r9) {
        /*
            r5 = this;
            boolean r0 = r9.isEmpty()
            if (r0 == 0) goto L9
            r5.m44116C(r6, r7, r8)
        L9:
            java.lang.Object r9 = kotlin.collections.CollectionsKt.firstOrNull(r9)
            boolean r0 = r9 instanceof java.util.Map
            if (r0 == 0) goto La6
            java.util.Map r9 = (java.util.Map) r9
            java.lang.String r0 = "pay_load_key_selected"
            java.lang.Object r0 = r9.get(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            java.lang.String r1 = "pay_load_key_sync_progress"
            java.lang.Object r1 = r9.get(r1)
            com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress r1 = (com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress) r1
            java.lang.String r2 = "pay_load_key_toggle_multi_select"
            java.lang.Object r9 = r9.get(r2)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            int r2 = com.onyx.galaxy.note.C10651R.id.cb_sel
            android.view.View r2 = r6.findViewById(r2)
            android.widget.CheckBox r2 = (android.widget.CheckBox) r2
            int r3 = com.onyx.galaxy.note.C10651R.id.iv_option
            android.view.View r3 = r6.findViewById(r3)
            android.widget.ImageView r3 = (android.widget.ImageView) r3
            if (r0 == 0) goto L44
            boolean r0 = r0.booleanValue()
            r2.setChecked(r0)
        L44:
            r0 = 0
            if (r1 == 0) goto L7b
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            boolean r4 = r8.isDocument()
            if (r4 == 0) goto L67
            java.util.List r4 = r5.getItems()
            java.lang.Object r7 = r4.get(r7)
            com.onyx.galaxy.note.category.data.NotePageBean r7 = (com.onyx.galaxy.note.category.data.NotePageBean) r7
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r7 = r7.getNoteModelBean()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            r7.setDocProgress(r1)
            r5.m44137Y(r7, r6)
        L67:
            com.onyx.android.sdk.replicator.bean.KSyncStatus r7 = r1.loadOnyxSyncStatus()
            if (r7 == 0) goto L75
            boolean r7 = r7.isSyncSuccess()
            r1 = 1
            if (r7 != r1) goto L75
            goto L76
        L75:
            r1 = r0
        L76:
            if (r1 == 0) goto L7b
            r5.m44129Q(r6, r8)
        L7b:
            if (r9 == 0) goto La6
            boolean r6 = r9.booleanValue()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            if (r6 == 0) goto L88
            r6 = r0
            goto L8a
        L88:
            r6 = 8
        L8a:
            r2.setVisibility(r6)
            com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList r6 = r5.selectionList
            com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$bindNoteViewHolderPayloads$3$1 r7 = new com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$bindNoteViewHolderPayloads$3$1
            r7.<init>()
            boolean r6 = com.onyx.android.sdk.base.extension.CollectionKt.contains(r6, r7)
            r2.setChecked(r6)
            if (r3 != 0) goto L9e
            goto La6
        L9e:
            boolean r5 = r5.isMulSelect
            if (r5 == 0) goto La3
            r0 = 4
        La3:
            r3.setVisibility(r0)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter.m44117E(android.view.View, int, com.onyx.android.sdk.replicator.note.bean.NoteModelBean, java.util.List):void");
    }

    /* renamed from: F */
    public final void m44118F(View itemView, int position, PageModelBean item) {
        TextView textView = (TextView) itemView.findViewById(C10651R.id.tv_name);
        TextView textView2 = (TextView) itemView.findViewById(C10651R.id.tv_time);
        TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) itemView.findViewById(C10651R.id.ll_tags);
        Intrinsics.checkNotNull(item);
        String docName = item.getDocName();
        Intrinsics.checkNotNull(tagsLinearLayout);
        m44139v(tagsLinearLayout, item.getPageAllTagIdList());
        textView2.setText(m44123K(item));
        if (docName.length() > 0) {
            textView.setCompoundDrawablePadding((int) getContext().getResources().getDimension(C7384R.dimen.dp_4));
            textView.setText(docName);
            Intrinsics.checkNotNull(textView);
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginEnd(0);
            textView.setLayoutParams(marginLayoutParams);
        } else {
            textView.setCompoundDrawablePadding(0);
            Intrinsics.checkNotNull(textView);
            ViewGroup.LayoutParams layoutParams2 = textView.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
            marginLayoutParams2.setMarginEnd((int) getContext().getResources().getDimension(C7384R.dimen.dp_8));
            textView.setLayoutParams(marginLayoutParams2);
        }
        m44135W(itemView, item);
        m44130R(itemView, item);
    }

    /* renamed from: G */
    public final boolean m44119G() {
        NoteQuotaViewModel noteQuotaViewModel = this.noteQuotaViewModel;
        return noteQuotaViewModel == null || noteQuotaViewModel.getLeftNoteQuota() > 0;
    }

    /* renamed from: H */
    public final boolean m44120H(View parentView) {
        NoteQuotaViewModel noteQuotaViewModel = this.noteQuotaViewModel;
        if (noteQuotaViewModel == null) {
            return true;
        }
        return noteQuotaViewModel.checkNoteQuotaUsedOut(parentView);
    }

    /* renamed from: I */
    public final void m44121I(View itemView, NoteModelBean item) {
        if (ViewCompat.startDragAndDrop(itemView, DragAndDropUtils.INSTANCE.createCustomClipData(TAG), new View.DragShadowBuilder(itemView.findViewById(C10651R.id.cl_thumbnail)), item, 512)) {
            itemView.setAlpha(this.shadowAlpha);
            this.dragNoteId = item.getUniqueId();
        }
    }

    /* renamed from: J */
    public final List<String> m44122J(List<String> tagIdList) {
        if (!tagIdList.isEmpty()) {
            String str = this.selectedTagId;
            if (!(str == null || str.length() == 0)) {
                tagIdList = CollectionKt.copy(tagIdList);
                if (TypeIntrinsics.asMutableCollection(tagIdList).remove(this.selectedTagId)) {
                    String str2 = this.selectedTagId;
                    Intrinsics.checkNotNull(str2);
                    tagIdList.add(0, str2);
                }
            }
        }
        return tagIdList;
    }

    /* renamed from: K */
    public final String m44123K(PageModelBean pageModelBean) {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_3().format(new Date(this.isShowUpdateAt ? pageModelBean.getDocUpdatedAt() : pageModelBean.getDocCreateAt()));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    /* renamed from: L */
    public final String m44124L(SyncNoteModel syncNoteModel) {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_3().format(new Date(this.isShowUpdateAt ? syncNoteModel.getUpdatedAt() : syncNoteModel.getCreatedAt()));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    /* renamed from: M */
    public final void m44125M(View itemView) {
        Drawable themeDrawable;
        Drawable themeDrawable2;
        int colorById;
        ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_note_create);
        ImageView imageView2 = (ImageView) itemView.findViewById(C10651R.id.iv_icon_create);
        TextView textView = (TextView) itemView.findViewById(C10651R.id.tv_item_create_title);
        ImageView imageView3 = (ImageView) itemView.findViewById(C10651R.id.lockImage);
        if (imageView3 != null) {
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(imageView3, !m44119G());
        }
        if (this.isMulSelect) {
            themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.shape_item_create_disable_bg);
            Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
            themeDrawable2 = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_note_create_disable);
            Intrinsics.checkNotNullExpressionValue(themeDrawable2, "getThemeDrawable(...)");
            colorById = ThemeUtils.getColorById(C7996R.color.theme_icon_color_03);
        } else {
            themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.shape_item_create_bg);
            Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
            themeDrawable2 = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_note_create);
            Intrinsics.checkNotNullExpressionValue(themeDrawable2, "getThemeDrawable(...)");
            colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        }
        imageView.setBackground(themeDrawable);
        imageView2.setBackground(themeDrawable2);
        textView.setTextColor(colorById);
    }

    /* renamed from: N */
    public final boolean m44126N(long interval) {
        return 1 <= interval && interval < 3000;
    }

    /* renamed from: O */
    public final boolean m44127O(KSyncStatus syncStatus) {
        return m44126N(m44128P(syncStatus));
    }

    /* renamed from: P */
    public final long m44128P(KSyncStatus syncStatus) {
        return System.currentTimeMillis() - syncStatus.getLatestSyncTime();
    }

    /* renamed from: Q */
    public final void m44129Q(View itemView, SyncNoteModel noteModelBean) {
        ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_thumbnail);
        String obj = ThumbnailPaths.INSTANCE.appThumbnailPath(noteModelBean.getUniqueId()).toAbsolutePath().toString();
        ImageView imageView2 = (ImageView) itemView.findViewById(C10651R.id.iv_lock_thumbnail);
        if (imageView2 != null) {
            imageView2.setVisibility(noteModelBean.hasEncryption() ^ true ? 4 : 0);
        }
        if (FileUtils.INSTANCE.fileExist(obj)) {
            Glide.with(getContext()).load(obj).override(imageView.getWidth(), imageView.getHeight()).signature(ImageManager.INSTANCE.getDefaultFileCacheKey(new File(obj))).dontAnimate().into(imageView);
        } else {
            imageView.setImageBitmap(null);
        }
    }

    /* renamed from: R */
    public final void m44130R(View itemView, PageModelBean model) {
        ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_thumbnail);
        String obj = ThumbnailPaths.INSTANCE.appPageThumbnailPath(model.getDocumentId(), model.getPageUniqueId()).toAbsolutePath().toString();
        ImageView imageView2 = (ImageView) itemView.findViewById(C10651R.id.iv_lock_thumbnail);
        Intrinsics.checkNotNull(imageView2);
        imageView2.setVisibility(model.getHasEncryption() ^ true ? 4 : 0);
        if (FileUtils.INSTANCE.fileExist(obj)) {
            Glide.with(getContext()).load(obj).override(imageView.getWidth(), imageView.getHeight()).signature(ImageManager.INSTANCE.getDefaultFileCacheKey(new File(obj))).dontAnimate().into(imageView);
        } else {
            imageView.setImageBitmap(null);
        }
    }

    /* renamed from: S */
    public final int m44131S(NoteModelBean noteModelBean) {
        if (this.displayType == 1) {
            if (noteModelBean.isLibrary()) {
                return 3;
            }
            return noteModelBean.getIsPortrait() ? 1 : 2;
        }
        if (noteModelBean.isLibrary()) {
            return 6;
        }
        return noteModelBean.getIsPortrait() ? 4 : 5;
    }

    /* renamed from: T */
    public final int m44132T(PageTagModel pageModel) {
        return this.displayType == 1 ? pageModel.getOrientation().isPortrait() ? 7 : 8 : pageModel.getOrientation().isPortrait() ? 9 : 10;
    }

    /* renamed from: U */
    public final void m44133U(View view, NoteModelBean item) {
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        SyncErrorPopup syncErrorPopup = new SyncErrorPopup(context);
        syncErrorPopup.updateErrorMsg(item.getUniqueId(), item.getDocProgress());
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        int centerX = (rect.centerX() - (view.getWidth() / 2)) - (syncErrorPopup.getContentView().getMeasuredWidth() / 2);
        ResManager resManager = ResManager.INSTANCE;
        syncErrorPopup.showAtLocation(view, 0, centerX - resManager.getDimens(C7384R.dimen.dp_2), (rect.top - syncErrorPopup.getContentView().getMeasuredHeight()) - resManager.getDimens(C7384R.dimen.dp_1));
    }

    /* renamed from: V */
    public final void m44134V(List<String> tagIdList, View anchor) {
        if (tagIdList.isEmpty()) {
            return;
        }
        TagsListPopup tagsListPopup = new TagsListPopup(getContext(), tagIdList);
        Object parent = getRecyclerView().getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        tagsListPopup.showCenterPositionPopView(anchor, com.onyx.android.sdk.base.extension.ViewKt.windowVisibleRect((View) parent), Boolean.TRUE);
    }

    /* renamed from: W */
    public final void m44135W(View itemView, PageTagModel item) {
        StringBuilder sb = new StringBuilder();
        sb.append('P');
        sb.append(item.getPageIndex() + 1);
        ((TextView) itemView.findViewById(C10651R.id.tv_note_page_index)).setText(sb.toString());
    }

    /* renamed from: X */
    public final void m44136X(final NoteModelBean item, View itemView) {
        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) itemView.findViewById(C10651R.id.progress_sync);
        ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_sync_status);
        Long l = this.lastSyncSuccessTime.get(item.getUniqueId());
        if (l == null) {
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(imageView, false);
        } else if (System.currentTimeMillis() - l.longValue() >= 3000) {
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(imageView, false);
        } else {
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(imageView, true);
            imageView.setImageResource(C10651R.drawable.icon_sync_succeed);
            itemView.postDelayed(new Runnable() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator<NotePageBean> it2 = NotePageListAdapter.this.getItems().iterator();
                    int i = 0;
                    while (true) {
                        if (!it2.hasNext()) {
                            i = -1;
                            break;
                        }
                        NoteModelBean noteModelBean = it2.next().getNoteModelBean();
                        if (Intrinsics.areEqual(noteModelBean != null ? noteModelBean.getUniqueId() : null, item.getUniqueId())) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    NotePageListAdapter.this.notifyItemChanged(i);
                }
            }, 3000L);
        }
    }

    /* renamed from: Y */
    public final void m44137Y(final NoteModelBean item, View itemView) {
        if (AccountDataBundle.INSTANCE.canSync()) {
            SyncDocProgress docProgress = item.getDocProgress();
            KSyncStatus loadOnyxSyncStatus = docProgress != null ? docProgress.loadOnyxSyncStatus() : null;
            if (!item.isDocument() || loadOnyxSyncStatus == null) {
                return;
            }
            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) itemView.findViewById(C10651R.id.progress_sync);
            final ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_sync_status);
            imageView.setTag(loadOnyxSyncStatus);
            if (loadOnyxSyncStatus.isSyncing()) {
                com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, true);
                com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(imageView, false);
                circularProgressIndicator.setProgressCompat(loadOnyxSyncStatus.getProgress(), false);
            } else {
                if (loadOnyxSyncStatus.isSyncFail()) {
                    com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
                    com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(imageView, true);
                    imageView.setImageResource(C10651R.drawable.icon_sync_error);
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c0k
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            NotePageListAdapter.m44103Z(NotePageListAdapter.this, imageView, item, view);
                        }
                    });
                    return;
                }
                if (loadOnyxSyncStatus.isSyncSuccess()) {
                    m44136X(item, itemView);
                } else {
                    com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
                    com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(imageView, false);
                }
            }
        }
    }

    public final void enableMulSelect(boolean enable) {
        Map mutableMapOf;
        this.isMulSelect = enable;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(PAY_LOAD_KEY_TOGGLE_MULTI_SELECT, Boolean.valueOf(enable)));
        notifyItemRangeChanged(0, getItemCount(), mutableMapOf);
    }

    public final int getDisplayType() {
        return this.displayType;
    }

    public final boolean getEnableDrag() {
        return this.enableDrag;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[LOOP:0: B:2:0x000f->B:13:0x0039, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getNotePosition(@org.jetbrains.annotations.NotNull java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "id"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.List r4 = r4.getItems()
            java.util.Iterator r4 = r4.iterator()
            r0 = 0
            r1 = r0
        Lf:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L3c
            java.lang.Object r2 = r4.next()
            com.onyx.galaxy.note.category.data.NotePageBean r2 = (com.onyx.galaxy.note.category.data.NotePageBean) r2
            boolean r3 = r2.isNoteType()
            if (r3 == 0) goto L35
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r2 = r2.getNoteModelBean()
            if (r2 == 0) goto L2c
            java.lang.String r2 = r2.getUniqueId()
            goto L2d
        L2c:
            r2 = 0
        L2d:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r5)
            if (r2 == 0) goto L35
            r2 = 1
            goto L36
        L35:
            r2 = r0
        L36:
            if (r2 == 0) goto L39
            goto L3d
        L39:
            int r1 = r1 + 1
            goto Lf
        L3c:
            r1 = -1
        L3d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter.getNotePosition(java.lang.String):int");
    }

    @Nullable
    public final NoteQuotaViewModel getNoteQuotaViewModel() {
        return this.noteQuotaViewModel;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005b A[LOOP:1: B:13:0x0031->B:24:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getNoteTypePosition(@org.jetbrains.annotations.NotNull java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "id"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.List r4 = r4.getItems()
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r4 = r4.iterator()
        L14:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L2b
            java.lang.Object r1 = r4.next()
            r2 = r1
            com.onyx.galaxy.note.category.data.NotePageBean r2 = (com.onyx.galaxy.note.category.data.NotePageBean) r2
            boolean r2 = r2.isNoteType()
            if (r2 == 0) goto L14
            r0.add(r1)
            goto L14
        L2b:
            java.util.Iterator r4 = r0.iterator()
            r0 = 0
            r1 = r0
        L31:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L5e
            java.lang.Object r2 = r4.next()
            com.onyx.galaxy.note.category.data.NotePageBean r2 = (com.onyx.galaxy.note.category.data.NotePageBean) r2
            boolean r3 = r2.isNoteType()
            if (r3 == 0) goto L57
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r2 = r2.getNoteModelBean()
            if (r2 == 0) goto L4e
            java.lang.String r2 = r2.getUniqueId()
            goto L4f
        L4e:
            r2 = 0
        L4f:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r5)
            if (r2 == 0) goto L57
            r2 = 1
            goto L58
        L57:
            r2 = r0
        L58:
            if (r2 == 0) goto L5b
            goto L5f
        L5b:
            int r1 = r1 + 1
            goto L31
        L5e:
            r1 = -1
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter.getNoteTypePosition(java.lang.String):int");
    }

    @NotNull
    public final NoteSelectType getSelectType() {
        return this.selectType;
    }

    @Nullable
    public final String getSelectedTagId() {
        return this.selectedTagId;
    }

    @NotNull
    public final NoteModelBeanList getSelectionList() {
        return this.selectionList;
    }

    @NotNull
    public final SortBy getSortBy() {
        return this.sortBy;
    }

    @NotNull
    public final Map<String, SyncTagModel> getTagByIdMap() {
        return this.tagByIdMap;
    }

    public final void handleSyncNoteProgressChangedEvent(@NotNull List<SyncProgressModel> syncNoteList) {
        Object obj;
        Map mutableMapOf;
        Intrinsics.checkNotNullParameter(syncNoteList, "syncNoteList");
        for (SyncProgressModel syncProgressModel : syncNoteList) {
            SyncDocProgress docProgress = syncProgressModel.getDocProgress();
            if (docProgress != null) {
                List<NotePageBean> items = getItems();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : items) {
                    if (((NotePageBean) obj2).isNoteType()) {
                        arrayList.add(obj2);
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    NoteModelBean noteModelBean = ((NotePageBean) obj).getNoteModelBean();
                    Intrinsics.checkNotNull(noteModelBean);
                    if (Intrinsics.areEqual(noteModelBean.getUniqueId(), syncProgressModel.getUniqueId())) {
                        break;
                    }
                }
                NotePageBean notePageBean = (NotePageBean) obj;
                if (notePageBean != null) {
                    NoteModelBean noteModelBean2 = notePageBean.getNoteModelBean();
                    Intrinsics.checkNotNull(noteModelBean2);
                    noteModelBean2.setDocProgress(docProgress);
                    int indexOf = getItems().indexOf(notePageBean);
                    if (indexOf >= 0) {
                        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("pay_load_key_sync_progress", docProgress));
                        notifyItemChanged(indexOf, mutableMapOf);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0042 A[EDGE_INSN: B:11:0x0042->B:12:0x0042 BREAK  A[LOOP:0: B:2:0x000f->B:21:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[LOOP:0: B:2:0x000f->B:21:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleTitleUpdated(@org.jetbrains.annotations.NotNull com.onyx.galaxy.note.category.event.NoteTitleUpdatedEvent r5) {
        /*
            r4 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.List r0 = r4.getItems()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        Lf:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L41
            java.lang.Object r1 = r0.next()
            r2 = r1
            com.onyx.galaxy.note.category.data.NotePageBean r2 = (com.onyx.galaxy.note.category.data.NotePageBean) r2
            boolean r3 = r2.isNoteType()
            if (r3 == 0) goto L3d
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r2 = r2.getNoteModelBean()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            java.lang.String r2 = r2.getUniqueId()
            com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r3 = r5.getNoteModel()
            java.lang.String r3 = r3.getUniqueId()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L3d
            r2 = 1
            goto L3e
        L3d:
            r2 = 0
        L3e:
            if (r2 == 0) goto Lf
            goto L42
        L41:
            r1 = 0
        L42:
            com.onyx.galaxy.note.category.data.NotePageBean r1 = (com.onyx.galaxy.note.category.data.NotePageBean) r1
            if (r1 != 0) goto L47
            return
        L47:
            java.util.List r0 = r4.getItems()
            int r0 = r0.indexOf(r1)
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r1 = r1.getNoteModelBean()
            if (r1 != 0) goto L56
            goto L61
        L56:
            com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r5 = r5.getNoteModel()
            java.lang.String r5 = r5.getTitle()
            r1.setTitle(r5)
        L61:
            r4.notifyItemChanged(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter.handleTitleUpdated(com.onyx.galaxy.note.category.event.NoteTitleUpdatedEvent):void");
    }

    public final void move(@NotNull String originId, @NotNull String targetId, int dragState) {
        SortModel sortModel;
        int lastIndex;
        Map mapOf;
        NoteModelBean noteModelBean;
        NoteModelBean noteModelBean2;
        Intrinsics.checkNotNullParameter(originId, "originId");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        int notePosition = getNotePosition(originId);
        int notePosition2 = getNotePosition(targetId);
        int noteTypePosition = getNoteTypePosition(originId);
        int noteTypePosition2 = getNoteTypePosition(targetId);
        if (notePosition < 0 || notePosition2 < 0 || notePosition == notePosition2) {
            return;
        }
        if (noteTypePosition + 1 == noteTypePosition2 && dragState == 1) {
            return;
        }
        if (noteTypePosition - 1 == noteTypePosition2 && dragState == 3) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        NotePageBean item = getItem(notePosition);
        Intrinsics.checkNotNull(item);
        NotePageBean notePageBean = item;
        List<NotePageBean> items = getItems();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = items.iterator();
        while (true) {
            boolean z = false;
            sortModel = null;
            sortModel = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            NotePageBean notePageBean2 = (NotePageBean) next;
            if (notePageBean2.isPageType()) {
                PageModelBean pageModelBean = notePageBean2.getPageModelBean();
                String documentId = pageModelBean != null ? pageModelBean.getDocumentId() : null;
                NoteModelBean noteModelBean3 = notePageBean.getNoteModelBean();
                if (Intrinsics.areEqual(documentId, noteModelBean3 != null ? noteModelBean3.getUniqueId() : null)) {
                    z = true;
                }
            }
            if (z) {
                arrayList2.add(next);
            }
        }
        arrayList.add(notePageBean);
        arrayList.addAll(arrayList2);
        NotePageBean item2 = getItem(notePosition);
        SortModel sortModel2 = (item2 == null || (noteModelBean2 = item2.getNoteModelBean()) == null) ? null : noteModelBean2.getSortModel();
        if (sortModel2 != null) {
            sortModel2.setOrderIndex(-1.0f);
        }
        NotePageBean item3 = getItem(notePosition2);
        if (item3 != null && (noteModelBean = item3.getNoteModelBean()) != null) {
            sortModel = noteModelBean.getSortModel();
        }
        if (sortModel != null) {
            sortModel.setOrderIndex(-1.0f);
        }
        removeAt(notePosition);
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            remove((NotePageBean) it3.next());
        }
        int notePosition3 = getNotePosition(targetId);
        if (dragState == 1) {
            addAll(notePosition3, arrayList);
        } else {
            int i = notePosition3 + 1;
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(getItems());
            if (i > lastIndex) {
                addAll(arrayList);
            } else {
                addAll(i, arrayList);
            }
        }
        int itemCount = getItemCount();
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to("pay_load_key_refresh_view", TAG));
        notifyItemRangeChanged(0, itemCount, mapOf);
    }

    public final void onDocSyncSuccess(@NotNull List<String> docIds) {
        Intrinsics.checkNotNullParameter(docIds, "docIds");
        for (String str : docIds) {
            Iterator<NotePageBean> it2 = getItems().iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                }
                NoteModelBean noteModelBean = it2.next().getNoteModelBean();
                if (Intrinsics.areEqual(noteModelBean != null ? noteModelBean.getUniqueId() : null, str)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                NoteModelBean noteModelBean2 = getItems().get(i).getNoteModelBean();
                if (noteModelBean2 != null) {
                    noteModelBean2.setStatus(2);
                }
                Map<String, Long> map = this.lastSyncSuccessTime;
                Intrinsics.checkNotNull(str);
                map.put(str, Long.valueOf(System.currentTimeMillis()));
                notifyItemChanged(i);
            }
        }
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ImageView imageView = (ImageView) holder.itemView.findViewById(C10651R.id.iv_thumbnail);
        TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) holder.itemView.findViewById(C10651R.id.ll_tags);
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        if (tagsLinearLayout != null) {
            tagsLinearLayout.removeAllViews();
        }
        holder.itemView.setAlpha(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_item_alpha, 1, 1));
        super.onViewRecycled(holder);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038 A[LOOP:0: B:2:0x000a->B:13:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c A[EDGE_INSN: B:14:0x003c->B:15:0x003c BREAK  A[LOOP:0: B:2:0x000a->B:13:0x0038], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resetDragView() {
        /*
            r7 = this;
            java.util.List r0 = r7.getItems()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = r1
        La:
            boolean r3 = r0.hasNext()
            r4 = 0
            r5 = -1
            if (r3 == 0) goto L3b
            java.lang.Object r3 = r0.next()
            com.onyx.galaxy.note.category.data.NotePageBean r3 = (com.onyx.galaxy.note.category.data.NotePageBean) r3
            boolean r6 = r3.isNoteType()
            if (r6 == 0) goto L34
            com.onyx.android.sdk.replicator.note.bean.NoteModelBean r3 = r3.getNoteModelBean()
            if (r3 == 0) goto L29
            java.lang.String r3 = r3.getUniqueId()
            goto L2a
        L29:
            r3 = r4
        L2a:
            java.lang.String r6 = r7.dragNoteId
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r6)
            if (r3 == 0) goto L34
            r3 = 1
            goto L35
        L34:
            r3 = r1
        L35:
            if (r3 == 0) goto L38
            goto L3c
        L38:
            int r2 = r2 + 1
            goto La
        L3b:
            r2 = r5
        L3c:
            r7.dragNoteId = r4
            if (r2 == r5) goto L43
            r7.notifyItemChanged(r2)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter.resetDragView():void");
    }

    public final void setClickCallback(@NotNull Function2<? super Boolean, ? super View, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.clickCallback = callback;
    }

    public final void setDisplayType(int displayType) {
        this.displayType = displayType;
    }

    public final void setEnableDrag(boolean z) {
        this.enableDrag = z;
    }

    public final void setNoteQuotaViewModel(@Nullable NoteQuotaViewModel noteQuotaViewModel) {
        this.noteQuotaViewModel = noteQuotaViewModel;
    }

    public final void setSelectType(@NotNull NoteSelectType noteSelectType) {
        Intrinsics.checkNotNullParameter(noteSelectType, "<set-?>");
        this.selectType = noteSelectType;
    }

    public final void setSelectedTagId(@Nullable String str) {
        this.selectedTagId = str;
    }

    public final void setSelectionList(@NotNull NoteModelBeanList noteModelBeanList) {
        Intrinsics.checkNotNullParameter(noteModelBeanList, "<set-?>");
        this.selectionList = noteModelBeanList;
    }

    public final void setShowUpdateAt(boolean show) {
        this.isShowUpdateAt = show;
    }

    public final void setSortBy(@NotNull SortBy sortBy) {
        Intrinsics.checkNotNullParameter(sortBy, "<set-?>");
        this.sortBy = sortBy;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setTagByIdMap(@NotNull Map<String, SyncTagModel> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tagByIdMap = value;
        notifyDataSetChanged();
    }

    /* renamed from: t */
    public final void m44138t() {
        addItemType(99, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, GridHeaderItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.GridHeaderItemViewHolder gridHeaderItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(gridHeaderItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.GridHeaderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteGridCreateDisplayBinding inflate = ItemNoteGridCreateDisplayBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.GridHeaderItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.GridHeaderItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44140z(itemView);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.GridHeaderItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44115B(itemView, position, item, payloads);
            }
        });
        addItemType(98, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, LinearHeaderItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$2
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.LinearHeaderItemViewHolder linearHeaderItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(linearHeaderItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.LinearHeaderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteLinearCreateDisplayBinding inflate = ItemNoteLinearCreateDisplayBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.LinearHeaderItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.LinearHeaderItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44140z(itemView);
                TintView vDivider = holder.getViewBinding().vDivider;
                Intrinsics.checkNotNullExpressionValue(vDivider, "vDivider");
                vDivider.setVisibility(NotePageListAdapter.this.getItemCount() == 1 ? 8 : 0);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.LinearHeaderItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44115B(itemView, position, item, payloads);
            }
        });
        addItemType(1, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, GridNotePortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$3
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.GridNotePortraitItemViewHolder gridNotePortraitItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(gridNotePortraitItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.GridNotePortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridNotePortraitBinding inflate = ItemNoteListGridNotePortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.GridNotePortraitItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.GridNotePortraitItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44116C(itemView, position, item.getNoteModelBean());
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.GridNotePortraitItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44117E(itemView, position, item.getNoteModelBean(), payloads);
            }
        });
        addItemType(2, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, GridNoteLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$4
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.GridNoteLandItemViewHolder gridNoteLandItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(gridNoteLandItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.GridNoteLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridNoteLandBinding inflate = ItemNoteListGridNoteLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.GridNoteLandItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.GridNoteLandItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44116C(itemView, position, item.getNoteModelBean());
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.GridNoteLandItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44117E(itemView, position, item.getNoteModelBean(), payloads);
            }
        });
        addItemType(3, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, GridFolderItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$5
            /* renamed from: a */
            public final void m44141a(NoteModelBean item, NotePageListAdapter.GridFolderItemViewHolder holder) {
                Intrinsics.checkNotNull(item);
                ColorStateList valueOf = ColorStateList.valueOf(item.getStyle().getColor());
                Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
                ThumbnailColorUtils thumbnailColorUtils = ThumbnailColorUtils.INSTANCE;
                ColorStateList folderThumbnailAlphaColor = thumbnailColorUtils.getFolderThumbnailAlphaColor(item.getStyle().getColor());
                ColorStateList folderThumbnailWhiteAlphaColor = thumbnailColorUtils.getFolderThumbnailWhiteAlphaColor();
                holder.getViewBinding().ivFaceBottom.setImageTintList(valueOf);
                holder.getViewBinding().ivFaceFourthTop.setImageTintList(folderThumbnailAlphaColor);
                holder.getViewBinding().ivFaceThrTop.setImageTintList(folderThumbnailWhiteAlphaColor);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.GridFolderItemViewHolder gridFolderItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(gridFolderItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.GridFolderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridFolderBinding inflate = ItemNoteListGridFolderBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.GridFolderItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.GridFolderItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44116C(itemView, position, noteModelBean);
                m44141a(noteModelBean, holder);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.GridFolderItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44117E(itemView, position, noteModelBean, payloads);
                m44141a(noteModelBean, holder);
            }
        });
        addItemType(4, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, LinearNotePortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$6
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.LinearNotePortraitItemViewHolder linearNotePortraitItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(linearNotePortraitItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.LinearNotePortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearNotePortraitBinding inflate = ItemNoteListLinearNotePortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.LinearNotePortraitItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.LinearNotePortraitItemViewHolder holder, int position, @Nullable NotePageBean item) {
                boolean z;
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44116C(itemView, position, item.getNoteModelBean());
                TintImageView ivOption = holder.getViewBinding().ivOption;
                Intrinsics.checkNotNullExpressionValue(ivOption, "ivOption");
                z = NotePageListAdapter.this.isMulSelect;
                ivOption.setVisibility(z ? 4 : 0);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.LinearNotePortraitItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                notePageListAdapter.m44117E(itemView, position, noteModelBean, payloads);
            }
        });
        addItemType(5, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, LinearNoteLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$7
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.LinearNoteLandItemViewHolder linearNoteLandItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(linearNoteLandItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.LinearNoteLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearNoteLandBinding inflate = ItemNoteListLinearNoteLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.LinearNoteLandItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.LinearNoteLandItemViewHolder holder, int position, @Nullable NotePageBean item) {
                boolean z;
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                notePageListAdapter.m44116C(itemView, position, noteModelBean);
                TintImageView ivOption = holder.getViewBinding().ivOption;
                Intrinsics.checkNotNullExpressionValue(ivOption, "ivOption");
                z = NotePageListAdapter.this.isMulSelect;
                ivOption.setVisibility(z ? 4 : 0);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.LinearNoteLandItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                notePageListAdapter.m44117E(itemView, position, noteModelBean, payloads);
            }
        });
        addItemType(6, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, LinearFolderItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$8
            /* renamed from: a */
            public final void m44142a(NoteModelBean item, NotePageListAdapter.LinearFolderItemViewHolder holder) {
                Intrinsics.checkNotNull(item);
                ColorStateList valueOf = ColorStateList.valueOf(item.getStyle().getColor());
                Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
                ThumbnailColorUtils thumbnailColorUtils = ThumbnailColorUtils.INSTANCE;
                ColorStateList folderThumbnailAlphaColor = thumbnailColorUtils.getFolderThumbnailAlphaColor(item.getStyle().getColor());
                ColorStateList folderThumbnailWhiteAlphaColor = thumbnailColorUtils.getFolderThumbnailWhiteAlphaColor();
                holder.getViewBinding().ivFaceBottom.setImageTintList(valueOf);
                holder.getViewBinding().ivFaceFourthTop.setImageTintList(folderThumbnailAlphaColor);
                holder.getViewBinding().ivFaceThrTop.setImageTintList(folderThumbnailAlphaColor);
                holder.getViewBinding().ivFaceThrTop.setImageTintList(folderThumbnailWhiteAlphaColor);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NotePageListAdapter.LinearFolderItemViewHolder linearFolderItemViewHolder, int i, NotePageBean notePageBean, List list) {
                onBind2(linearFolderItemViewHolder, i, notePageBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.LinearFolderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearFolderBinding inflate = ItemNoteListLinearFolderBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.LinearFolderItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.LinearFolderItemViewHolder holder, int position, @Nullable NotePageBean item) {
                boolean z;
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44116C(itemView, position, noteModelBean);
                TintImageView ivOption = holder.getViewBinding().ivOption;
                Intrinsics.checkNotNullExpressionValue(ivOption, "ivOption");
                z = NotePageListAdapter.this.isMulSelect;
                ivOption.setVisibility(z ? 4 : 0);
                m44142a(noteModelBean, holder);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NotePageListAdapter.LinearFolderItemViewHolder holder, int position, @Nullable NotePageBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item.getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean);
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                notePageListAdapter.m44117E(itemView, position, noteModelBean, payloads);
                m44142a(noteModelBean, holder);
            }
        });
        addItemType(7, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, GridPageTagPortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$9
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.GridPageTagPortraitItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44118F(itemView, position, item.getPageModelBean());
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.GridPageTagPortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridPageTagPortraitBinding inflate = ItemNoteListGridPageTagPortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.GridPageTagPortraitItemViewHolder(inflate);
            }
        });
        addItemType(8, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, GridPageTagLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$10
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.GridPageTagLandItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44118F(itemView, position, item.getPageModelBean());
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.GridPageTagLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridPageTagLandBinding inflate = ItemNoteListGridPageTagLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.GridPageTagLandItemViewHolder(inflate);
            }
        });
        addItemType(9, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, LinearPageTagPortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$11
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.LinearPageTagPortraitItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44118F(itemView, position, item.getPageModelBean());
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.LinearPageTagPortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearPageTagPortraitBinding inflate = ItemNoteListLinearPageTagPortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.LinearPageTagPortraitItemViewHolder(inflate);
            }
        });
        addItemType(10, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NotePageBean, LinearPageTagLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$addItemTypes$12
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NotePageListAdapter.LinearPageTagLandItemViewHolder holder, int position, @Nullable NotePageBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NotePageListAdapter notePageListAdapter = NotePageListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                Intrinsics.checkNotNull(item);
                notePageListAdapter.m44118F(itemView, position, item.getPageModelBean());
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NotePageListAdapter.LinearPageTagLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearPageTagLandBinding inflate = ItemNoteListLinearPageTagLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NotePageListAdapter.LinearPageTagLandItemViewHolder(inflate);
            }
        });
        onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.d0k
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
            public final int onItemViewType(int i, List list) {
                int m44111u;
                m44111u = NotePageListAdapter.m44111u(NotePageListAdapter.this, i, list);
                return m44111u;
            }
        });
    }

    public final void updateHeaderLockView() {
        Map mapOf;
        Iterator<NotePageBean> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (it2.next().isHeaderType()) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to(PAY_LOAD_KEY_HEADER_UPDATE_LOCK, TAG));
            notifyItemChanged(i, mapOf);
        }
    }

    public final void updateSelect(boolean selected, int position) {
        Map mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("pay_load_key_selected", Boolean.valueOf(selected)));
        notifyItemChanged(position, mutableMapOf);
    }

    public final void updateSwipeSelectItems(@NotNull Map<NoteModelBean, Boolean> changeItems) {
        Map mutableMapOf;
        Intrinsics.checkNotNullParameter(changeItems, "changeItems");
        for (Map.Entry<NoteModelBean, Boolean> entry : changeItems.entrySet()) {
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("pay_load_key_selected", entry.getValue()));
            Iterator<NotePageBean> it2 = getItems().iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                }
                if (Intrinsics.areEqual(entry.getKey(), it2.next().getNoteModelBean())) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                notifyItemChanged(i, mutableMapOf);
            }
        }
    }

    /* renamed from: v */
    public final void m44139v(final TagsLinearLayout llTags, final List<String> tagIdList) {
        int collectionSizeOrDefault;
        final List mutableList;
        List<String> m44122J = m44122J(tagIdList);
        ArrayList<SyncTagModel> arrayList = new ArrayList();
        Iterator<T> it2 = m44122J.iterator();
        while (it2.hasNext()) {
            SyncTagModel syncTagModel = this.tagByIdMap.get((String) it2.next());
            if (syncTagModel != null) {
                arrayList.add(syncTagModel);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (SyncTagModel syncTagModel2 : arrayList) {
            arrayList2.add(TuplesKt.m61535to(syncTagModel2.getContent(), Integer.valueOf(syncTagModel2.getStyle().getColor())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        llTags.post(new Runnable() { // from class: com.sunia.HTREnginev2.e0k
            @Override // java.lang.Runnable
            public final void run() {
                NotePageListAdapter.m44112w(TagsLinearLayout.this, mutableList, this, tagIdList);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: z */
    public final void m44140z(final View itemView) {
        final ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_note_create);
        final Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = System.currentTimeMillis();
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$bindHeaderViewHolder$gesture$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(@NotNull MotionEvent e) {
                boolean z;
                boolean m44120H;
                Function2 function2;
                Intrinsics.checkNotNullParameter(e, "e");
                if (System.currentTimeMillis() - Ref.LongRef.this.element > ResManager.INSTANCE.getLong(C10651R.integer.create_note_double_tap_time_interval)) {
                    z = this.isMulSelect;
                    if (!z) {
                        NotePageListAdapter notePageListAdapter = this;
                        View rootView = itemView.getRootView();
                        Intrinsics.checkNotNullExpressionValue(rootView, "getRootView(...)");
                        m44120H = notePageListAdapter.m44120H(rootView);
                        if (m44120H) {
                            function2 = this.clickCallback;
                            if (function2 != null) {
                                Boolean bool = Boolean.FALSE;
                                ImageView ivNoteCreate = imageView;
                                Intrinsics.checkNotNullExpressionValue(ivNoteCreate, "$ivNoteCreate");
                                function2.invoke(bool, ivNoteCreate);
                            }
                            Ref.LongRef.this.element = System.currentTimeMillis();
                        }
                    }
                }
                return true;
            }

            /* JADX WARN: Code restructure failed: missing block: B:3:0x000d, code lost:
            
                r3 = r2.clickCallback;
             */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onSingleTapConfirmed(@org.jetbrains.annotations.NotNull android.view.MotionEvent r3) {
                /*
                    r2 = this;
                    java.lang.String r0 = "e"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                    com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter r3 = r2
                    boolean r3 = com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter.access$isMulSelect$p(r3)
                    if (r3 != 0) goto L21
                    com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter r3 = r2
                    kotlin.jvm.functions.Function2 r3 = com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter.access$getClickCallback$p(r3)
                    if (r3 == 0) goto L21
                    java.lang.Boolean r0 = java.lang.Boolean.TRUE
                    android.widget.ImageView r2 = r4
                    java.lang.String r1 = "$ivNoteCreate"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
                    r3.invoke(r0, r2)
                L21:
                    r2 = 1
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter$bindHeaderViewHolder$gesture$1.onSingleTapConfirmed(android.view.MotionEvent):boolean");
            }
        });
        m44125M(itemView);
        itemView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.g0k
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m44101A;
                m44101A = NotePageListAdapter.m44101A(gestureDetector, view, motionEvent);
                return m44101A;
            }
        });
    }
}
